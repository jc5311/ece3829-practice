`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2019 10:07:20 AM
// Design Name: 
// Module Name: eightbitsr
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


module eightbitsr(
    input clk,
    input latch,
    input left_right_shift,
    input [3:0] d,
    output reg [3:0] q    
    );
    
    always @ (posedge clk)
    begin
        if (latch) //async latch
        begin
            q <= d;
        end
        
        else if (left_right_shift == 0)//shift left if zero
        begin
            q <= q << 1'b1;
        end
        
        else //shift right otherwise
        begin
            q <= q >> 1'b1;
        end
    end
endmodule
