`timescale 1ns/1ns
`include "gate.v"
module gate_tb;
 reg A,B,C;
 wire D, Borr_out;
 Gate UUT(A,B,C,D,Borr_out);
initial begin
    $dumpfile("gate.vcd");
    $dumpvars(0,gate_tb);
    {A,B,C}=3'b000 ; #20 ;
    {A,B,C}=3'b001 ; #20 ;
    {A,B,C}=3'b010 ; #20 ;
    {A,B,C}=3'b011 ; #20 ;
    {A,B,C}=3'b100 ; #20 ;
    {A,B,C}=3'b101 ; #20 ; 
    {A,B,C}=3'b110 ; #20 ;
    {A,B,C}=3'b111 ; #20 ;
   

end

endmodule