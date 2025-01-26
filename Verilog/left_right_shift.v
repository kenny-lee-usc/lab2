`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:48:18 01/25/2025 
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
module left_right_shift(
    input [31:0] A,
    input shift_L_R,
    output [31:0] shift_out
    );
    // NOT gate for shift input
    wire shift_L_R_n; //shift, left = 0, right = 1 S
    not (shift_L_R_n, shift_L_R); //shift control

    // Wire for shift output signals
    wire [31:0] and_out_1, and_out_2;

    // AND gates
    and (and_out_1[0], A[0], shift_L_R_n);
    and (and_out_1[1], A[1], shift_L_R_n);
    and (and_out_1[2], A[2], shift_L_R_n);
    and (and_out_1[3], A[3], shift_L_R_n);
    and (and_out_1[4], A[4], shift_L_R_n);
    and (and_out_1[5], A[5], shift_L_R_n);
    and (and_out_1[6], A[6], shift_L_R_n);
    and (and_out_1[7], A[7], shift_L_R_n);
    and (and_out_1[8], A[8], shift_L_R_n);
    and (and_out_1[9], A[9], shift_L_R_n);
    and (and_out_1[10], A[10], shift_L_R_n);
    and (and_out_1[11], A[11], shift_L_R_n);
    and (and_out_1[12], A[12], shift_L_R_n);
    and (and_out_1[13], A[13], shift_L_R_n);
    and (and_out_1[14], A[14], shift_L_R_n);
    and (and_out_1[15], A[15], shift_L_R_n);
    and (and_out_1[16], A[16], shift_L_R_n);
    and (and_out_1[17], A[17], shift_L_R_n);
    and (and_out_1[18], A[18], shift_L_R_n);
    and (and_out_1[19], A[19], shift_L_R_n);
    and (and_out_1[20], A[20], shift_L_R_n);
    and (and_out_1[21], A[21], shift_L_R_n);
    and (and_out_1[22], A[22], shift_L_R_n);
    and (and_out_1[23], A[23], shift_L_R_n);
    and (and_out_1[24], A[24], shift_L_R_n);
    and (and_out_1[25], A[25], shift_L_R_n);
    and (and_out_1[26], A[26], shift_L_R_n);
    and (and_out_1[27], A[27], shift_L_R_n);
    and (and_out_1[28], A[28], shift_L_R_n);
    and (and_out_1[29], A[29], shift_L_R_n);
    and (and_out_1[30], A[30], shift_L_R_n);
    and (and_out_1[31], A[31], shift_L_R_n);

    and (and_out_2[0], A[1], shift_L_R);
    and (and_out_2[1], A[2], shift_L_R);
    and (and_out_2[2], A[3], shift_L_R);
    and (and_out_2[3], A[4], shift_L_R);
    and (and_out_2[4], A[5], shift_L_R);
    and (and_out_2[5], A[6], shift_L_R);
    and (and_out_2[6], A[7], shift_L_R);
    and (and_out_2[7], A[8], shift_L_R);
    and (and_out_2[8], A[9], shift_L_R);
    and (and_out_2[9], A[10], shift_L_R);
    and (and_out_2[10], A[11], shift_L_R);
    and (and_out_2[11], A[12], shift_L_R);
    and (and_out_2[12], A[13], shift_L_R);
    and (and_out_2[13], A[14], shift_L_R);
    and (and_out_2[14], A[15], shift_L_R);
    and (and_out_2[15], A[16], shift_L_R);
    and (and_out_2[16], A[17], shift_L_R);
    and (and_out_2[17], A[18], shift_L_R);
    and (and_out_2[18], A[19], shift_L_R);
    and (and_out_2[19], A[20], shift_L_R);
    and (and_out_2[20], A[21], shift_L_R);
    and (and_out_2[21], A[22], shift_L_R);
    and (and_out_2[22], A[23], shift_L_R);
    and (and_out_2[23], A[24], shift_L_R);
    and (and_out_2[24], A[25], shift_L_R);
    and (and_out_2[25], A[26], shift_L_R);
    and (and_out_2[26], A[27], shift_L_R);
    and (and_out_2[27], A[28], shift_L_R);
    and (and_out_2[28], A[29], shift_L_R);
    and (and_out_2[29], A[30], shift_L_R);
    and (and_out_2[30], A[31], shift_L_R);
    and (and_out_2[31], A[0], shift_L_R);

    // OR gates
    or (shift_out[0], and_out_1[0], and_out_2[0]);
    or (shift_out[1], and_out_1[1], and_out_2[1]);
    or (shift_out[2], and_out_1[2], and_out_2[2]);
    or (shift_out[3], and_out_1[3], and_out_2[3]);
    or (shift_out[4], and_out_1[4], and_out_2[4]);
    or (shift_out[5], and_out_1[5], and_out_2[5]);
    or (shift_out[6], and_out_1[6], and_out_2[6]);
    or (shift_out[7], and_out_1[7], and_out_2[7]);
    or (shift_out[8], and_out_1[8], and_out_2[8]);
    or (shift_out[9], and_out_1[9], and_out_2[9]);
    or (shift_out[10], and_out_1[10], and_out_2[10]);
    or (shift_out[11], and_out_1[11], and_out_2[11]);
    or (shift_out[12], and_out_1[12], and_out_2[12]);
    or (shift_out[13], and_out_1[13], and_out_2[13]);
    or (shift_out[14], and_out_1[14], and_out_2[14]);
    or (shift_out[15], and_out_1[15], and_out_2[15]);
    or (shift_out[16], and_out_1[16], and_out_2[16]);
    or (shift_out[17], and_out_1[17], and_out_2[17]);
    or (shift_out[18], and_out_1[18], and_out_2[18]);
    or (shift_out[19], and_out_1[19], and_out_2[19]);
    or (shift_out[20], and_out_1[20], and_out_2[20]);
    or (shift_out[21], and_out_1[21], and_out_2[21]);
    or (shift_out[22], and_out_1[22], and_out_2[22]);
    or (shift_out[23], and_out_1[23], and_out_2[23]);
    or (shift_out[24], and_out_1[24], and_out_2[24]);
    or (shift_out[25], and_out_1[25], and_out_2[25]);
    or (shift_out[26], and_out_1[26], and_out_2[26]);
    or (shift_out[27], and_out_1[27], and_out_2[27]);
    or (shift_out[28], and_out_1[28], and_out_2[28]);
    or (shift_out[29], and_out_1[29], and_out_2[29]);
    or (shift_out[30], and_out_1[30], and_out_2[30]);
    or (shift_out[31], and_out_1[31], and_out_2[31]);
endmodule
