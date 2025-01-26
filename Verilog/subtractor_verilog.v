`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:48 01/25/2025 
// Design Name: 
// Module Name:    subtractor_verilog 
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
module subtractor_verilog(
    input [31:0] sub_in,
    input k,
    output [31:0] sub_out
    );
	genvar i;
	generate
		for(i = 0; i < 32; i=i+1)
		begin : gen_loop
			assign sub_out[i] = sub_in[i]^k;
		end
	endgenerate
endmodule
