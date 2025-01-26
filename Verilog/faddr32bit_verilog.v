`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:56 01/25/2025 
// Design Name: 
// Module Name:    faddr32bit_verilog 
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
module faddr32bit_verilog(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output co,
    output [31:0] sum
    );
	wire [3:0] carry;
	faddr8bit_verilog b0(.a(a[7:0]), .b(b[7:0]), .cin(cin), .co(carry[0]), .sum(sum[7:0]));
	faddr8bit_verilog b1(.a(a[15:8]), .b(b[15:8]), .cin(carry[0]), .co(carry[1]), .sum(sum[15:8]));
	faddr8bit_verilog b2(.a(a[23:16]), .b(b[23:16]), .cin(carry[1]), .co(carry[2]), .sum(sum[23:16]));
	faddr8bit_verilog b3(.a(a[31:24]), .b(b[31:24]), .cin(carry[2]), .co(carry[3]), .sum(sum[31:24]));
	assign co = carry[3];

endmodule
