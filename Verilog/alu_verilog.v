`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:54 01/25/2025 
// Design Name: 
// Module Name:    alu_verilog 
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
module alu_verilog(
    input clk,
    input rst,
	 input shift,
    input [1:0] sel,
    input [31:0] a,
    input [31:0] b,
    output [31:0] alu_result,
    output co_out
    );
	wire[31:0] a_reg, b_reg;
	wire co_wire;
	wire [31:0] add_result, sub_result, lsb_msb_result, shift_result, mux_out;
	dff32bit a_input(.d(a), .clk(clk), .rst(rst), .q(a_reg));
	dff32bit b_input(.d(b), .clk(clk), .rst(rst), .q(b_reg));
	
	faddr32bit_verilog adder(.a(a_reg), .b(sub_result), .cin(sel[0]), .co(co_wire), .sum(add_result));
	subtractor_verilog subtractor(.sub_in(b_reg), .k(sel[0]), . sub_out(sub_result));
	lsb_msb_combination_verilog lsb_msb(.a(a_reg), .b(b_reg), .z(lsb_msb_result));
	left_right_shift_verilog shifter(.shift_in(add_result), .shift_lr(shift), .shift_out(shift_result));
	
	mux_32bit_4x1_verilog mux(.x0(add_result), .x1(add_result), .x2(shift_result), .x3(lsb_msb_result), .sel(sel), .z(mux_out));
	
	dff32bit result(.d(mux_out), .clk(clk), .rst(rst), .q(alu_result));
	dff1bit cout(.d(co_wire), .clk(clk), .rst(rst), .q(co_out));
endmodule
