`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:32 01/25/2025 
// Design Name: 
// Module Name:    mux_32bit_4x1_verilog 
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
module mux_32bit_4x1_verilog(
    input [31:0] x0,
    input [31:0] x1,
    input [31:0] x2,
    input [31:0] x3,
    input [1:0] sel,
    output [31:0] z
    );
	wire [31:0] mux0, mux1;
	assign mux0 = sel[0] ? x1: x0;
	assign mux1 = sel[0] ? x3: x2;
	assign z = sel[1] ? mux1 : mux0;

endmodule
