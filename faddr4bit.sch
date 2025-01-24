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
        SIGNAL B(3:0)
        SIGNAL A(3:0)
        SIGNAL SUM(3:0)
        SIGNAL Cin
        SIGNAL CO
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL SUM(0)
        SIGNAL B(1)
        SIGNAL A(1)
        SIGNAL SUM(1)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL SUM(2)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL SUM(3)
        PORT Input B(3:0)
        PORT Input A(3:0)
        PORT Output SUM(3:0)
        PORT Input Cin
        PORT Output CO
        BEGIN BLOCKDEF faddr1bit
            TIMESTAMP 2025 1 24 4 47 7
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 faddr1bit
            PIN A A(0)
            PIN B B(0)
            PIN Cin Cin
            PIN CO XLXN_1
            PIN SUM SUM(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 faddr1bit
            PIN A A(1)
            PIN B B(1)
            PIN Cin XLXN_1
            PIN CO XLXN_2
            PIN SUM SUM(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 faddr1bit
            PIN A A(2)
            PIN B B(2)
            PIN Cin XLXN_2
            PIN CO XLXN_3
            PIN SUM SUM(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 faddr1bit
            PIN A A(3)
            PIN B B(3)
            PIN Cin XLXN_3
            PIN CO CO
            PIN SUM SUM(3)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1120 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1712 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2368 832 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 832 688 976 688
            WIRE 976 688 976 816
            WIRE 976 816 1120 816
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1504 688 1600 688
            WIRE 1600 688 1600 816
            WIRE 1600 816 1712 816
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 2096 688 2224 688
            WIRE 2224 688 2224 800
            WIRE 2224 800 2368 800
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 880 304 1104 304
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 880 224 1104 224
        END BRANCH
        IOMARKER 880 304 B(3:0) R180 28
        IOMARKER 880 224 A(3:0) R180 28
        BEGIN BRANCH SUM(3:0)
            WIRE 1232 224 1408 224
        END BRANCH
        IOMARKER 1408 224 SUM(3:0) R0 28
        BEGIN BRANCH Cin
            WIRE 432 816 448 816
        END BRANCH
        BEGIN BRANCH CO
            WIRE 2752 672 2896 672
        END BRANCH
        IOMARKER 432 816 Cin R180 28
        IOMARKER 2896 672 CO R0 28
        BEGIN INSTANCE XLXI_1 448 848 R0
        END INSTANCE
        BEGIN BRANCH A(0)
            WIRE 384 688 448 688
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 384 752 448 752
        END BRANCH
        BEGIN BRANCH SUM(0)
            WIRE 832 816 896 816
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1024 752 1120 752
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 1024 688 1120 688
        END BRANCH
        BEGIN BRANCH SUM(1)
            WIRE 1504 816 1552 816
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1648 688 1712 688
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1648 752 1712 752
        END BRANCH
        BEGIN BRANCH SUM(2)
            WIRE 2096 816 2176 816
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 2272 672 2368 672
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 2272 736 2368 736
        END BRANCH
        BEGIN BRANCH SUM(3)
            WIRE 2752 800 2944 800
        END BRANCH
    END SHEET
END SCHEMATIC
