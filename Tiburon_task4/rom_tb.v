`timescale 1ns/1ns
`include "rom.v"

module TestBench;
reg [3:0]addr;
wire [9:0] data;
integer i;

Rom UUT(addr,data);
initial 
begin
    $dumpfile("rom.vcd");
    $dumpvars(0,TestBench);
    for(i=0;i<10;i=i+1)// running for loop to assign addr value 0-9
    begin
        addr=i;#20;
        $display("%h",data); // printing  value corresponding  to address
    end 

    
end

endmodule