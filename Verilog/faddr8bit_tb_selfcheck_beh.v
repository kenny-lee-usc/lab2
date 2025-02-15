////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : ISE
//  /   /         Filename : faddr8bit_tb_selfcheck.tfw
// /___/   /\     Timestamp : Fri Jan 24 00:12:16 2025
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: faddr8bit_tb_selfcheck_beh
//Device: Xilinx
//
`timescale 1ns/1ps

module faddr8bit_tb_selfcheck_beh;
    reg [7:0] A = 8'b00000000;
    reg [7:0] B = 8'b00000000;
    reg ce = 1'b0;
    reg Cin = 1'b0;
    reg clk = 1'b0;
    reg rst = 1'b0;
    wire CO;
    wire [7:0] SUM;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 100;

    initial    // Clock process for clk
    begin
        #OFFSET;
        forever
        begin
            clk = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    faddr8bit UUT (
        .A(A),
        .B(B),
        .ce(ce),
        .Cin(Cin),
        .clk(clk),
        .rst(rst),
        .CO(CO),
        .SUM(SUM));

    integer TX_ERROR = 0;
    
    initial begin  // Open the results file...
        #5200 // Final time:  5200 ns
        if (TX_ERROR == 0) begin
            $display("No errors or warnings.");
        end else begin
            $display("%d errors found in simulation.", TX_ERROR);
        end
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        ce = 1'b1;
        rst = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  185ns
        #85;
        rst = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  215ns
        #30;
        CHECK_CO(1'bX);
        // -------------------------------------
        // -------------  Current Time:  385ns
        #170;
        A = 8'b01111111;
        B = 8'b00010001;
        // -------------------------------------
        // -------------  Current Time:  415ns
        #30;
        CHECK_CO(1'b0);
        CHECK_SUM(8'b00000000);
        // -------------------------------------
        // -------------  Current Time:  585ns
        #170;
        Cin = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  615ns
        #30;
        CHECK_SUM(8'b10010000);
        // -------------------------------------
        // -------------  Current Time:  785ns
        #170;
        ce = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1185ns
        #400;
        Cin = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1385ns
        #200;
        ce = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1785ns
        #400;
        A = 8'b11110000;
        B = 8'b00100000;
        // -------------------------------------
        // -------------  Current Time:  2015ns
        #230;
        CHECK_CO(1'b1);
        CHECK_SUM(8'b00010000);
        // -------------------------------------
    end

    task CHECK_CO;
        input NEXT_CO;

        #0 begin
            if (NEXT_CO !== CO) begin
                $display("Error at time=%dns CO=%b, expected=%b", $time, CO, NEXT_CO);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask
    task CHECK_SUM;
        input [7:0] NEXT_SUM;

        #0 begin
            if (NEXT_SUM !== SUM) begin
                $display("Error at time=%dns SUM=%b, expected=%b", $time, SUM, NEXT_SUM);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask

endmodule

