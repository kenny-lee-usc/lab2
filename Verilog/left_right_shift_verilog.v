`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:30 01/25/2025 
// Design Name: 
// Module Name:    left_right_shift 
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
module left_right_shift_verilog(
    input shift_lr,
    input [31:0] shift_in,
    output [31:0] shift_out
    );
	assign shift_out = shift_lr ? {1'b0,shift_in[30:0]} : {shift_in[31:1],1'b0};

endmodule
