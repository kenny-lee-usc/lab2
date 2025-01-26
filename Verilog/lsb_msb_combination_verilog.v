`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:53 01/25/2025 
// Design Name: 
// Module Name:    lsb_msb_combination_verilog 
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
module lsb_msb_combination_verilog(
    input [31:0] a,
    input [31:0] b,
    output [31:0] z
    );
	genvar i;
	generate
		for(i =0; i<32;i=i+1)
		begin : gen_loop
			assign z[i] = a[31-i]^b[i];
		end
	endgenerate

endmodule
