`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2019 06:00:01 PM
// Design Name: 
// Module Name: counter8bit
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


module counter8bit(
    input clk,
    input clr,
    output reg [7:0] cnt,
    output reg [7:0] led
    );
    
    always @ (posedge clk or posedge clr)
        begin
            if (clr)
            begin
                cnt <= 0;
            end
            
            else
            begin
            cnt <= cnt + 1'b1;
            end
            
            led <= cnt;
        end
endmodule
