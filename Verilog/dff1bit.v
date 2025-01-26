`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:31 01/25/2025 
// Design Name: 
// Module Name:    dff1bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dff1bit(
    input d,
    input rst,
    input clk,
    output reg q
    );

	always @(posedge clk or negedge rst)
	begin
		if(!rst)
		begin
			q <= 1'b0;
		end
		else
		begin
			q <= d;
		end
	end

endmodule
