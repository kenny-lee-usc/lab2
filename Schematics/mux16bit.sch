VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        BEGIN SIGNAL z(15:8)
        END SIGNAL
        SIGNAL z(7:0)
        SIGNAL z(15:0)
        SIGNAL x(15:0)
        SIGNAL y(15:0)
        SIGNAL s
        SIGNAL x(15:8)
        SIGNAL y(15:8)
        SIGNAL x(7:0)
        SIGNAL y(7:0)
        PORT Output z(15:0)
        PORT Input x(15:0)
        PORT Input y(15:0)
        PORT Input s
        BEGIN BLOCKDEF mux8bit
            TIMESTAMP 2025 1 24 10 8 23
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 mux8bit
            PIN s s
            PIN x(7:0) x(7:0)
            PIN y(7:0) y(7:0)
            PIN z(7:0) z(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 mux8bit
            PIN s s
            PIN x(7:0) x(15:8)
            PIN y(7:0) y(15:8)
            PIN z(7:0) z(15:8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH z(15:8)
            WIRE 1248 816 1264 816
            WIRE 1264 816 1360 816
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1248 1216 1360 1216
        END BRANCH
        BEGIN BRANCH z(15:0)
            WIRE 1408 1008 1536 1008
        END BRANCH
        IOMARKER 1536 1008 z(15:0) R0 28
        BEGIN BRANCH x(15:0)
            WIRE 304 1008 448 1008
        END BRANCH
        BEGIN BRANCH y(15:0)
            WIRE 304 1072 448 1072
        END BRANCH
        IOMARKER 304 1008 x(15:0) R180 28
        IOMARKER 304 1072 y(15:0) R180 28
        BEGIN INSTANCE XLXI_3 864 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 864 976 R0
        END INSTANCE
        BEGIN BRANCH s
            WIRE 304 1136 448 1136
        END BRANCH
        IOMARKER 304 1136 s R180 28
        BEGIN BRANCH s
            WIRE 736 816 864 816
            BEGIN DISPLAY 736 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH x(15:8)
            WIRE 736 880 864 880
        END BRANCH
        BEGIN BRANCH y(15:8)
            WIRE 736 944 864 944
        END BRANCH
        BEGIN BRANCH s
            WIRE 736 1216 864 1216
            BEGIN DISPLAY 736 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH x(7:0)
            WIRE 736 1280 864 1280
        END BRANCH
        BEGIN BRANCH y(7:0)
            WIRE 736 1344 864 1344
        END BRANCH
    END SHEET
END SCHEMATIC
