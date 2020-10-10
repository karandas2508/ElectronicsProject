`timescale 1ns/1ns
`include "sub_behavior.v"
module Behavior_tb;
 reg A,B,C;
 wire D, Borr_out;
 Behavior dut(A,B,C,D,Borr_out);
initial begin
    $dumpfile("sub_behavior.vcd");
    $dumpvars(0,Behavior_tb);
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