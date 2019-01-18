`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2019 06:39:55 AM
// Design Name: 
// Module Name: decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 2 to 4 decoder with enable
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder(
    input [1:0] sel,
    input en,
    output reg [3:0] y
    );
    
    always @ (sel, en)
    begin
        if (en == 1)
            y = 4'b1111;
        else
            //the decoding protocol here is arbitrary
            //how the input decodes to the output is implementation dependent
            //it is what you the designer want it to be
            //here it just disables the nth place bit where n is the value of SEL
            case(sel)
                2'b00: y = 4'b1110;
                2'b01: y = 4'b1101;
                2'b10: y = 4'b1011;
                2'b11: y = 4'b0111;
            endcase
    end
endmodule
