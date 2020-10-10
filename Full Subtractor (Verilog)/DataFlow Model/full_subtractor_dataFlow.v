module FullSubtractor(A,B,Borr_in,D,Borr_out);


input A,B, Borr_in;
output D, Borr_out;
assign D =A^B^Borr_in;
assign Borr_out = ~A&B | ~A&Borr_in | B&Borr_in;


endmodule