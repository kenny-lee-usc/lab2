`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:09 01/25/2025 
// Design Name: 
// Module Name:    faddr4bit_verilog 
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
module faddr4bit_verilog(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output co,
    output [3:0] sum
    );
	wire [3:0]carry;
	faddr1bit_verilog b0(.a(a[0]), .b(b[0]), .cin(cin), .co(carry[0]), .sum(sum[0]) );
	faddr1bit_verilog b1(.a(a[1]), .b(b[1]), .cin(carry[0]), .co(carry[1]), .sum(sum[1]) );
	faddr1bit_verilog b2(.a(a[2]), .b(b[2]), .cin(carry[1]), .co(carry[2]), .sum(sum[2]) );
	faddr1bit_verilog b3(.a(a[3]), .b(b[3]), .cin(carry[2]), .co(carry[3]), .sum(sum[3]) );
assign co = carry[3];
endmodule
