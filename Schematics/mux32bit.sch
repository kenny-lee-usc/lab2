VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL z(31:16)
        SIGNAL z(15:0)
        SIGNAL z(31:0)
        SIGNAL y(31:0)
        SIGNAL x(31:0)
        SIGNAL s
        SIGNAL x(31:16)
        SIGNAL y(31:16)
        SIGNAL x(15:0)
        SIGNAL y(15:0)
        PORT Output z(31:0)
        PORT Input y(31:0)
        PORT Input x(31:0)
        PORT Input s
        BEGIN BLOCKDEF mux16bit
            TIMESTAMP 2025 1 24 10 9 14
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux16bit
            PIN x(15:0) x(31:16)
            PIN y(15:0) y(31:16)
            PIN s s
            PIN z(15:0) z(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux16bit
            PIN x(15:0) x(15:0)
            PIN y(15:0) y(15:0)
            PIN s s
            PIN z(15:0) z(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 896 1072 R0
        END INSTANCE
        BEGIN BRANCH z(15:0)
            WIRE 1280 912 1440 912
        END BRANCH
        BEGIN BRANCH y(31:0)
            WIRE 400 688 576 688
        END BRANCH
        BEGIN BRANCH x(31:0)
            WIRE 400 752 576 752
        END BRANCH
        BEGIN BRANCH s
            WIRE 400 816 576 816
        END BRANCH
        BEGIN BRANCH s
            WIRE 720 768 896 768
            BEGIN DISPLAY 720 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s
            WIRE 720 1040 896 1040
            BEGIN DISPLAY 720 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 400 688 y(31:0) R180 28
        IOMARKER 400 752 x(31:0) R180 28
        IOMARKER 400 816 s R180 28
        BEGIN BRANCH z(31:0)
            WIRE 1440 768 1600 768
        END BRANCH
        IOMARKER 1600 768 z(31:0) R0 28
        BEGIN BRANCH x(15:0)
            WIRE 720 912 896 912
        END BRANCH
        BEGIN BRANCH y(15:0)
            WIRE 720 976 896 976
        END BRANCH
        BEGIN INSTANCE XLXI_1 896 800 R0
        END INSTANCE
        BEGIN BRANCH x(31:16)
            WIRE 720 640 896 640
        END BRANCH
        BEGIN BRANCH y(31:16)
            WIRE 720 704 896 704
        END BRANCH
        BEGIN BRANCH z(31:16)
            WIRE 1280 640 1424 640
        END BRANCH
    END SHEET
END SCHEMATIC
