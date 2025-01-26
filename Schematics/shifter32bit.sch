VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL shift_L_R
        BEGIN SIGNAL XLXN_7
            BEGIN ATTR Zero "0"
                VERILOG all:0 wsynth:1
                VHDL all:0 wa:1 wd:1
            END ATTR
        END SIGNAL
        SIGNAL XLXN_5(31:0)
        SIGNAL shift_out(31:0)
        SIGNAL XLXN_11(31:0)
        SIGNAL XLXN_12(31:0)
        SIGNAL XLXN_15
        SIGNAL shift_in(31:0)
        SIGNAL XLXN_20
        PORT Input shift_L_R
        PORT Output shift_out(31:0)
        PORT Input shift_in(31:0)
        BEGIN BLOCKDEF mux32bit
            TIMESTAMP 2025 1 25 6 29 14
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux32bit
            PIN y(31:0) XLXN_11(31:0)
            PIN x(31:0) XLXN_12(31:0)
            PIN s shift_L_R
            PIN z(31:0) shift_out(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1504 896 R0
        END INSTANCE
        BEGIN BRANCH shift_L_R
            WIRE 1360 864 1504 864
        END BRANCH
        IOMARKER 1360 864 shift_L_R R180 28
        BEGIN BRANCH shift_out(31:0)
            WIRE 1888 736 2032 736
        END BRANCH
        IOMARKER 2032 736 shift_out(31:0) R0 28
        BEGIN BRANCH XLXN_11(31:0)
            WIRE 1328 736 1504 736
        END BRANCH
        BEGIN BRANCH XLXN_12(31:0)
            WIRE 1328 800 1504 800
        END BRANCH
        BEGIN BRANCH shift_in(31:0)
            WIRE 512 624 576 624
            WIRE 576 624 576 736
            WIRE 576 624 944 624
            WIRE 944 624 944 640
        END BRANCH
        IOMARKER 512 624 shift_in(31:0) R180 28
    END SHEET
END SCHEMATIC
