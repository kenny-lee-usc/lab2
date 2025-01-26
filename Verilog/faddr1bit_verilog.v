`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:49:43 01/25/2025 
// Design Name: 
// Module Name:    faddr1bit_verilog 
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
module faddr1bit_verilog(
    input a,
    input b,
    input cin,
    output sum,
    output co
    );
	assign co =(b*cin)|(a*cin)|(a*b);
   assign sum = (a^b)^cin;
endmodule
