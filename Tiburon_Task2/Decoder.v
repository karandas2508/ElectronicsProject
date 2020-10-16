module Decoder2_4(A,D,En);

input [0:1]A;
input En;
output [0:3]D;
assign D[0] = En &  ~A[0] & ~A[1];
assign D[1] = En &  ~A[0] & A[1];
assign D[2] = En &  A[0] & ~A[1];
assign D[3] = En &  A[0] & A[1];

endmodule

/* A 3:8 Decoder is designed using two 2:4 Decoder .A[1] and A[2] are used as common input to both decoders. 
Complemnt of A[0] is used as Enable to Decoder 1 and A[0] as Enable to Decoder 2*/
 
module Decoder3_8(A,D);

input [0:2]A;
output [0:7]D;
Decoder2_4 dec1(A[1:2],D[0:3],~A[0]);
Decoder2_4 dec2(A[1:2],D[4:7],A[0]);

endmodule