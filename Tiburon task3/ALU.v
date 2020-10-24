module Alu(A,B,Cin,D,F);
// 4 bit inputs A,B,F
input [3:0]A,B,f; 
input Cin;
output [3:0]D;// 4bit output d
reg [3:0]D;

always @(F,A , B , Cin , D)
begin
    case(F) //conditions for F
        4'b0000: D=~A;// compliment
        4'b0001: D=A-B-Cin; //subtraction
        4'b0010: D=A+B+Cin;//addition
        4'b0011: D= A & B;// And
        4'b0100: D=A | B; // or
        4'b0101: D=A ^ B; // xor
        4'b0110: D=A ~^ B; // xnor
        4'b0111: D=A*B; //multiplication
        4'b1000: D=A / B; //division
        4'b1001: D=A<<1; // left shift
        4'b1010: D=A>>1; // right shift
        4'b1011: D=A+1; //increment by 1
        4'b1100: D=A-1; // decrement by 1 
    endcase

end


endmodule