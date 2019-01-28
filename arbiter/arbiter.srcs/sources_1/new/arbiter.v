`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2019 04:34:00 PM
// Design Name: 
// Module Name: arbiter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module arbiter(
    clk,
    rst,
    req_0,
    req_1,
    gnt_0,
    gnt_1
);

//define i/o
input clk, rst, req_0, req_1;
output gnt_0, gnt_1;

//set necessariy i/o drivers
//regs store values (unlike wires which must be driven all the time)
reg gnt_0, gnt_1;

always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        gnt_0 <= 0;
        gnt_1 <= 0;
    end
    
    else if (req_0)
    begin
        gnt_0 <= 1;
        gnt_1 <= 0;
    end
    
    else if (req_1)
    begin
        gnt_0 <= 0;
        gnt_1 <= 1;
    end
end

endmodule
