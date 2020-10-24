`timescale 1ns/1ns
`include "ALU.v"

module TestBench;
reg [3:0]A,B,F;
reg C;
wire [3:0]D;
Alu UUT(A,B,C,D,F);
integer i;
initial begin
    $dumpfile("ALU.vcd");
    $dumpvars(0,TestBench);
    A= 4; //intialize 4,B as 2, C as 1
    B=2;
    C=1;
    for(i=0;i<=12;i+=1) /// looping from 0-12 for for select function F
    begin
        F=i; #20;
    end

end 
endmodule