VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL Cin
        SIGNAL Co
        SIGNAL SUM(7:0)
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        SIGNAL B(15:8)
        SIGNAL A(15:8)
        SIGNAL SUM(15:8)
        SIGNAL B(23:16)
        SIGNAL A(23:16)
        SIGNAL SUM(23:16)
        SIGNAL B(31:24)
        SIGNAL A(31:24)
        SIGNAL SUM(31:24)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL SUM(31:0)
        PORT Input Cin
        PORT Output Co
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output SUM(31:0)
        BEGIN BLOCKDEF faddr8bit_asych
            TIMESTAMP 2025 1 24 23 39 16
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 faddr8bit_asych
            PIN A(7:0) A(7:0)
            PIN Cin Cin
            PIN B(7:0) B(7:0)
            PIN CO XLXN_1
            PIN SUM(7:0) SUM(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 faddr8bit_asych
            PIN A(7:0) A(15:8)
            PIN Cin XLXN_1
            PIN B(7:0) B(15:8)
            PIN CO XLXN_2
            PIN SUM(7:0) SUM(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_6 faddr8bit_asych
            PIN A(7:0) A(23:16)
            PIN Cin XLXN_2
            PIN B(7:0) B(23:16)
            PIN CO XLXN_3
            PIN SUM(7:0) SUM(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_7 faddr8bit_asych
            PIN A(7:0) A(31:24)
            PIN Cin XLXN_3
            PIN B(7:0) B(31:24)
            PIN CO Co
            PIN SUM(7:0) SUM(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_4 336 992 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2624 992 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1888 992 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1136 992 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 720 832 928 832
            WIRE 928 832 928 896
            WIRE 928 896 1136 896
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1520 832 1696 832
            WIRE 1696 832 1696 896
            WIRE 1696 896 1888 896
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 2272 832 2448 832
            WIRE 2448 832 2448 896
            WIRE 2448 896 2624 896
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 208 896 336 896
        END BRANCH
        BEGIN BRANCH Co
            WIRE 3008 832 3152 832
        END BRANCH
        IOMARKER 3152 832 Co R0 28
        IOMARKER 208 896 Cin R180 28
        BEGIN BRANCH SUM(7:0)
            WIRE 720 960 848 960
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 208 960 336 960
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 208 832 336 832
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 1008 960 1136 960
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1008 832 1136 832
        END BRANCH
        BEGIN BRANCH SUM(15:8)
            WIRE 1520 960 1648 960
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1760 960 1888 960
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1760 832 1888 832
        END BRANCH
        BEGIN BRANCH SUM(23:16)
            WIRE 2272 960 2400 960
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 2496 960 2624 960
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 2496 832 2624 832
        END BRANCH
        BEGIN BRANCH SUM(31:24)
            WIRE 3008 960 3136 960
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 208 1056 336 1056
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 208 1104 336 1104
        END BRANCH
        BEGIN BRANCH SUM(31:0)
            WIRE 3024 1040 3152 1040
        END BRANCH
        IOMARKER 3152 1040 SUM(31:0) R0 28
        IOMARKER 208 1056 A(31:0) R180 28
        IOMARKER 208 1104 B(31:0) R180 28
    END SHEET
END SCHEMATIC
