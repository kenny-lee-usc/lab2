VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_11
        SIGNAL XLXN_13
        SIGNAL z(31:0)
        SIGNAL s(0)
        SIGNAL XLXN_25
        SIGNAL s(1)
        SIGNAL s(1:0)
        SIGNAL x1(31:0)
        SIGNAL x0(31:0)
        SIGNAL x3(31:0)
        SIGNAL x2(31:0)
        SIGNAL XLXN_34(31:0)
        SIGNAL XLXN_35(31:0)
        PORT Output z(31:0)
        PORT Input s(1:0)
        PORT Input x1(31:0)
        PORT Input x0(31:0)
        PORT Input x3(31:0)
        PORT Input x2(31:0)
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
            PIN y(31:0) x1(31:0)
            PIN x(31:0) x0(31:0)
            PIN s s(0)
            PIN z(31:0) XLXN_34(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux32bit
            PIN y(31:0) x3(31:0)
            PIN x(31:0) x2(31:0)
            PIN s s(0)
            PIN z(31:0) XLXN_35(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux32bit
            PIN y(31:0) XLXN_35(31:0)
            PIN x(31:0) XLXN_34(31:0)
            PIN s s(1)
            PIN z(31:0) z(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1008 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1008 1248 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1776 1056 R0
        END INSTANCE
        BEGIN BRANCH z(31:0)
            WIRE 2160 896 2416 896
        END BRANCH
        BEGIN BRANCH s(0)
            WIRE 864 944 1008 944
        END BRANCH
        BEGIN BRANCH s(0)
            WIRE 864 1216 1008 1216
            BEGIN DISPLAY 864 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s(1)
            WIRE 1488 1184 1648 1184
            WIRE 1648 1024 1776 1024
            WIRE 1648 1024 1648 1184
            BEGIN DISPLAY 1488 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2416 896 z(31:0) R0 28
        BEGIN BRANCH s(1:0)
            WIRE 224 896 416 896
        END BRANCH
        IOMARKER 224 896 s(1:0) R180 28
        BEGIN BRANCH x1(31:0)
            WIRE 800 816 1008 816
        END BRANCH
        BEGIN BRANCH x0(31:0)
            WIRE 800 880 1008 880
        END BRANCH
        BEGIN BRANCH x3(31:0)
            WIRE 800 1088 1008 1088
        END BRANCH
        BEGIN BRANCH x2(31:0)
            WIRE 800 1152 1008 1152
        END BRANCH
        IOMARKER 800 880 x0(31:0) R180 28
        IOMARKER 800 816 x1(31:0) R180 28
        IOMARKER 800 1152 x2(31:0) R180 28
        IOMARKER 800 1088 x3(31:0) R180 28
        BEGIN BRANCH XLXN_34(31:0)
            WIRE 1392 816 1584 816
            WIRE 1584 816 1584 960
            WIRE 1584 960 1776 960
        END BRANCH
        BEGIN BRANCH XLXN_35(31:0)
            WIRE 1392 1088 1568 1088
            WIRE 1568 896 1568 1088
            WIRE 1568 896 1776 896
        END BRANCH
    END SHEET
END SCHEMATIC
