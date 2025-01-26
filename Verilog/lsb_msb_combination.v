`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:19:38 01/25/2025 
// Design Name: 
// Module Name:    lsb_msb_combination 
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
module lsb_msb_combination(
    input [31:0] a,
    input [31:0] b,
    output [31:0] z
    );
    xor g0 (z[0], a[31], b[0]);
    xor g1 (z[1], a[30], b[1]);
    xor g2 (z[2], a[29], b[2]);
    xor g3 (z[3], a[28], b[3]);
    xor g4 (z[4], a[27], b[4]);
    xor g5 (z[5], a[26], b[5]);
    xor g6 (z[6], a[25], b[6]);
    xor g7 (z[7], a[24], b[7]);
    xor g8 (z[8], a[23], b[8]);
    xor g9 (z[9], a[22], b[9]);
    xor g10 (z[10], a[21], b[10]);
    xor g11 (z[11], a[20], b[11]);
    xor g12 (z[12], a[19], b[12]);
    xor g13 (z[13], a[18], b[13]);
    xor g14 (z[14], a[17], b[14]);
    xor g15 (z[15], a[16], b[15]);
    xor g16 (z[16], a[15], b[16]);
    xor g17 (z[17], a[14], b[17]);
    xor g18 (z[18], a[13], b[18]);
    xor g19 (z[19], a[12], b[19]);
    xor g20 (z[20], a[11], b[20]);
    xor g21 (z[21], a[10], b[21]);
    xor g22 (z[22], a[9], b[22]);
    xor g23 (z[23], a[8], b[23]);
    xor g24 (z[24], a[7], b[24]);
    xor g25 (z[25], a[6], b[25]);
    xor g26 (z[26], a[5], b[26]);
    xor g27 (z[27], a[4], b[27]);
    xor g28 (z[28], a[3], b[28]);
    xor g29 (z[29], a[2], b[29]);
    xor g30 (z[30], a[1], b[30]);
    xor g31 (z[31], a[0], b[31]);
endmodule
