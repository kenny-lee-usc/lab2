`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:46 01/25/2025 
// Design Name: 
// Module Name:    faddr8bit_verilog 
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
module faddr8bit_verilog(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output co,
    output [7:0] sum
    );
	wire [1:0] carry;
	faddr4bit_verilog b0( .a(a[3:0]), .b(b[3:0]), .cin(cin), .co(carry[0]), .sum(sum[3:0]));
	faddr4bit_verilog b1( .a(a[7:4]), .b(b[7:4]), .cin(carry[0]), .co(carry[1]), .sum(sum[7:4]));
	assign co = carry[1];
endmodule
