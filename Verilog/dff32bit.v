`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:41 01/25/2025 
// Design Name: 
// Module Name:    dff32bit 
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
module dff32bit(
    input [31:0] d,
    input rst,
    input clk,
    output reg [31:0] q
    );
	always @(posedge clk or negedge rst)
	begin
		if(!rst)
		begin
			q <= 32'h0;
		end
		else
		begin
			q <= d;
		end
	end

endmodule
