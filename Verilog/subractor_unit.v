`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:01:58 01/24/2025 
// Design Name: 
// Module Name:    subractor_unit 
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
module subractor_unit(
    input [31:0] sub_in,
    input k,
    output [31:0] sub_out
    );
	 
    xor g0(sub_out[0], sub_in[0], k);
    xor g1(sub_out[1], sub_in[1], k);
    xor g2(sub_out[2], sub_in[2], k);
    xor g3(sub_out[3], sub_in[3], k);
    xor g4(sub_out[4], sub_in[4], k);
    xor g5(sub_out[5], sub_in[5], k);
    xor g6(sub_out[6], sub_in[6], k);
    xor g7(sub_out[7], sub_in[7], k);
    xor g8(sub_out[8], sub_in[8], k);
    xor g9(sub_out[9], sub_in[9], k);
    xor g10(sub_out[10], sub_in[10], k);
    xor g11(sub_out[11], sub_in[11], k);
    xor g12(sub_out[12], sub_in[12], k);
    xor g13(sub_out[13], sub_in[13], k);
    xor g14(sub_out[14], sub_in[14], k);
    xor g15(sub_out[15], sub_in[15], k);
    xor g16(sub_out[16], sub_in[16], k);
    xor g17(sub_out[17], sub_in[17], k);
    xor g18(sub_out[18], sub_in[18], k);
    xor g19(sub_out[19], sub_in[19], k);
    xor g20(sub_out[20], sub_in[20], k);
    xor g21(sub_out[21], sub_in[21], k);
    xor g22(sub_out[22], sub_in[22], k);
    xor g23(sub_out[23], sub_in[23], k);
    xor g24(sub_out[24], sub_in[24], k);
    xor g25(sub_out[25], sub_in[25], k);
    xor g26(sub_out[26], sub_in[26], k);
    xor g27(sub_out[27], sub_in[27], k);
    xor g28(sub_out[28], sub_in[28], k);
    xor g29(sub_out[29], sub_in[29], k);
    xor g30(sub_out[30], sub_in[30], k);
    xor g31(sub_out[31], sub_in[31], k);
	 
endmodule
