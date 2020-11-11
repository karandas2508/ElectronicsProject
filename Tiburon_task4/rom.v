module Rom(addr,data);

input [3:0]addr;
output [9:0]data;
reg [9:0] mem[9:0];
reg [9:0]data;
initial 
begin
    //openning file input.txt
    $readmemh("input.txt",mem);

end
always @(addr)
    begin
        case(addr)
        //starting cases for addr and assiginng corresponding memory value to the output
            4'b0000: data=mem[0];
            4'b0001: data=mem[1]; 
            4'b0010: data=mem[2];
            4'b0011: data=mem[3];
            4'b0100: data=mem[4]; 
            4'b0101: data=mem[5]; 
            4'b0110: data=mem[6]; 
            4'b0111: data=mem[7]; 
            4'b1000: data=mem[8]; 
            4'b1001: data=mem[9]; 
        endcase
    end

endmodule
