`timescale 1ns/1ns
`include "Decoder.v"

module TestBench;
reg [0:2]A;
wire [0:7]D;
Decoder3_8 UUT(A,D);
initial begin
    $dumpfile("Decoder.vcd");
    $dumpvars(0,TestBench);
    A=3'b000 ; #20;
    A=3'b001 ; #20;
    A=3'b010 ; #20;
    A=3'b011 ; #20;
    A=3'b100 ; #20;
    A=3'b101 ; #20;
    A=3'b110 ; #20;
    A=3'b111 ; #20;
end
    
endmodule