module Gate(A,B,Borr_in,D,Borr_out);


input A,B, Borr_in;
output D, Borr_out;
xor(D,A,B,Borr_in);
wire a,b,c,a_not;
not(a_not,A);
and(b,B,Borr_in);
and(c,a_not,Borr_in);
and(a,a_not,B);
or(Borr_out,a,b,c);

endmodule