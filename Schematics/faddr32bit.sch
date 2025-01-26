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
        SIGNAL ce
        SIGNAL rst
        SIGNAL clk
        SIGNAL B(31:0)
        SIGNAL A(31:0)
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        SIGNAL SUM(7:0)
        SIGNAL B(15:8)
        SIGNAL A(15:8)
        SIGNAL SUM(15:8)
        SIGNAL B(23:16)
        SIGNAL A(23:16)
        SIGNAL SUM(23:16)
        SIGNAL CO
        SIGNAL B(31:24)
        SIGNAL A(31:24)
        SIGNAL SUM(31:24)
        SIGNAL SUM(31:0)
        PORT Input Cin
        PORT Input ce
        PORT Input rst
        PORT Input clk
        PORT Input B(31:0)
        PORT Input A(31:0)
        PORT Output CO
        PORT Output SUM(31:0)
        BEGIN BLOCKDEF faddr8bit
            TIMESTAMP 2025 1 24 7 33 38
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 faddr8bit
            PIN Cin Cin
            PIN B(7:0) B(7:0)
            PIN A(7:0) A(7:0)
            PIN clk clk
            PIN rst rst
            PIN ce ce
            PIN CO XLXN_1
            PIN SUM(7:0) SUM(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 faddr8bit
            PIN Cin XLXN_1
            PIN B(7:0) B(15:8)
            PIN A(7:0) A(15:8)
            PIN clk clk
            PIN rst rst
            PIN ce ce
            PIN CO XLXN_2
            PIN SUM(7:0) SUM(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 faddr8bit
            PIN Cin XLXN_2
            PIN B(7:0) B(23:16)
            PIN A(7:0) A(23:16)
            PIN clk clk
            PIN rst rst
            PIN ce ce
            PIN CO XLXN_3
            PIN SUM(7:0) SUM(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 faddr8bit
            PIN Cin XLXN_3
            PIN B(7:0) B(31:24)
            PIN A(7:0) A(31:24)
            PIN clk clk
            PIN rst rst
            PIN ce ce
            PIN CO CO
            PIN SUM(7:0) SUM(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 512 1264 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 896 912 1152 912
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1536 912 1552 912
            WIRE 1552 912 1824 912
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 352 912 512 912
        END BRANCH
        IOMARKER 352 912 Cin R180 28
        BEGIN BRANCH ce
            WIRE 384 608 576 608
        END BRANCH
        IOMARKER 384 608 ce R180 28
        IOMARKER 384 672 rst R180 28
        BEGIN BRANCH rst
            WIRE 384 672 576 672
        END BRANCH
        BEGIN BRANCH clk
            WIRE 384 736 576 736
        END BRANCH
        IOMARKER 384 736 clk R180 28
        BEGIN BRANCH B(31:0)
            WIRE 400 1344 592 1344
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 400 1408 592 1408
        END BRANCH
        IOMARKER 400 1344 B(31:0) R180 28
        IOMARKER 400 1408 A(31:0) R180 28
        BEGIN BRANCH B(7:0)
            WIRE 400 976 512 976
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 400 1040 512 1040
        END BRANCH
        BEGIN BRANCH clk
            WIRE 400 1104 512 1104
            BEGIN DISPLAY 400 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 400 1168 512 1168
            BEGIN DISPLAY 400 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 400 1232 496 1232
            WIRE 496 1232 512 1232
            BEGIN DISPLAY 400 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SUM(7:0)
            WIRE 896 1232 976 1232
        END BRANCH
        BEGIN INSTANCE XLXI_2 1152 1264 R0
        END INSTANCE
        BEGIN BRANCH B(15:8)
            WIRE 1040 976 1152 976
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1040 1040 1152 1040
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1040 1104 1152 1104
            BEGIN DISPLAY 1040 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1040 1168 1152 1168
            BEGIN DISPLAY 1040 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1040 1232 1136 1232
            WIRE 1136 1232 1152 1232
            BEGIN DISPLAY 1040 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SUM(15:8)
            WIRE 1536 1232 1616 1232
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 2208 912 2224 912
            WIRE 2224 912 2528 912
        END BRANCH
        BEGIN INSTANCE XLXI_3 1824 1264 R0
        END INSTANCE
        BEGIN BRANCH B(23:16)
            WIRE 1712 976 1824 976
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1712 1040 1824 1040
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1712 1104 1824 1104
            BEGIN DISPLAY 1712 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1712 1168 1824 1168
            BEGIN DISPLAY 1712 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1712 1232 1808 1232
            WIRE 1808 1232 1824 1232
            BEGIN DISPLAY 1712 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SUM(23:16)
            WIRE 2208 1232 2288 1232
        END BRANCH
        BEGIN INSTANCE XLXI_4 2528 1264 R0
        END INSTANCE
        BEGIN BRANCH CO
            WIRE 2912 912 3024 912
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 2416 976 2528 976
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 2416 1040 2528 1040
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2416 1104 2528 1104
            BEGIN DISPLAY 2416 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2416 1168 2528 1168
            BEGIN DISPLAY 2416 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 2416 1232 2512 1232
            WIRE 2512 1232 2528 1232
            BEGIN DISPLAY 2416 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SUM(31:24)
            WIRE 2912 1232 2992 1232
        END BRANCH
        IOMARKER 3024 912 CO R0 28
        BEGIN BRANCH SUM(31:0)
            WIRE 2912 1392 3152 1392
        END BRANCH
        IOMARKER 3152 1392 SUM(31:0) R0 28
    END SHEET
END SCHEMATIC
