VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL z(7:0)
        SIGNAL s
        SIGNAL x(7:0)
        SIGNAL y(7:0)
        SIGNAL x(1:0)
        SIGNAL y(1:0)
        SIGNAL x(3:2)
        SIGNAL y(3:2)
        SIGNAL x(5:4)
        SIGNAL y(5:4)
        SIGNAL x(7:6)
        SIGNAL y(7:6)
        SIGNAL z(1:0)
        SIGNAL z(3:2)
        SIGNAL z(5:4)
        SIGNAL z(7:6)
        PORT Output z(7:0)
        PORT Input s
        PORT Input x(7:0)
        PORT Input y(7:0)
        BEGIN BLOCKDEF mux2bit
            TIMESTAMP 2025 1 24 9 59 44
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_8 mux2bit
            PIN s s
            PIN x(1:0) x(1:0)
            PIN y(1:0) y(1:0)
            PIN z(1:0) z(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 mux2bit
            PIN s s
            PIN x(1:0) x(3:2)
            PIN y(1:0) y(3:2)
            PIN z(1:0) z(3:2)
        END BLOCK
        BEGIN BLOCK XLXI_10 mux2bit
            PIN s s
            PIN x(1:0) x(5:4)
            PIN y(1:0) y(5:4)
            PIN z(1:0) z(5:4)
        END BLOCK
        BEGIN BLOCK XLXI_11 mux2bit
            PIN s s
            PIN x(1:0) x(7:6)
            PIN y(1:0) y(7:6)
            PIN z(1:0) z(7:6)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_8 704 704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 704 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 704 1248 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 704 1536 R0
        END INSTANCE
        BEGIN BRANCH z(7:0)
            WIRE 1424 896 1664 896
        END BRANCH
        IOMARKER 1664 896 z(7:0) R0 28
        BEGIN BRANCH s
            WIRE 208 528 336 528
        END BRANCH
        IOMARKER 208 528 s R180 28
        BEGIN BRANCH s
            WIRE 592 544 704 544
            BEGIN DISPLAY 592 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH y(7:0)
            WIRE 208 656 336 656
        END BRANCH
        IOMARKER 208 656 y(7:0) R180 28
        IOMARKER 208 592 x(7:0) R180 28
        BEGIN BRANCH x(7:0)
            WIRE 208 592 336 592
        END BRANCH
        BEGIN BRANCH s
            WIRE 592 816 704 816
            BEGIN DISPLAY 592 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s
            WIRE 592 1088 704 1088
            BEGIN DISPLAY 592 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s
            WIRE 592 1376 704 1376
            BEGIN DISPLAY 592 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH x(1:0)
            WIRE 576 608 704 608
        END BRANCH
        BEGIN BRANCH y(1:0)
            WIRE 576 672 704 672
        END BRANCH
        BEGIN BRANCH x(3:2)
            WIRE 592 880 704 880
        END BRANCH
        BEGIN BRANCH y(3:2)
            WIRE 592 944 704 944
        END BRANCH
        BEGIN BRANCH x(5:4)
            WIRE 592 1152 704 1152
        END BRANCH
        BEGIN BRANCH y(5:4)
            WIRE 592 1216 704 1216
        END BRANCH
        BEGIN BRANCH x(7:6)
            WIRE 608 1440 704 1440
        END BRANCH
        BEGIN BRANCH y(7:6)
            WIRE 608 1504 704 1504
        END BRANCH
        BEGIN BRANCH z(1:0)
            WIRE 1088 544 1216 544
        END BRANCH
        BEGIN BRANCH z(3:2)
            WIRE 1088 816 1216 816
        END BRANCH
        BEGIN BRANCH z(5:4)
            WIRE 1088 1088 1104 1088
            WIRE 1104 1088 1216 1088
        END BRANCH
        BEGIN BRANCH z(7:6)
            WIRE 1088 1376 1216 1376
        END BRANCH
    END SHEET
END SCHEMATIC
