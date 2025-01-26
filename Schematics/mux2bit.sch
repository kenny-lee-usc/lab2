VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL z(1)
        SIGNAL z(0)
        SIGNAL y(0)
        SIGNAL x(0)
        SIGNAL y(1)
        SIGNAL x(1)
        SIGNAL s
        SIGNAL x(1:0)
        SIGNAL y(1:0)
        SIGNAL z(1:0)
        PORT Input s
        PORT Input x(1:0)
        PORT Input y(1:0)
        PORT Output z(1:0)
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 x(1)
            PIN D1 y(1)
            PIN S0 s
            PIN O z(1)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 x(0)
            PIN D1 y(0)
            PIN S0 s
            PIN O z(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 624 720 R0
        INSTANCE XLXI_2 624 944 R0
        BEGIN BRANCH z(1)
            WIRE 944 592 1120 592
        END BRANCH
        BEGIN BRANCH z(0)
            WIRE 944 816 1120 816
        END BRANCH
        BEGIN BRANCH s
            WIRE 464 688 624 688
            BEGIN DISPLAY 464 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s
            WIRE 464 912 480 912
            WIRE 480 912 624 912
            BEGIN DISPLAY 464 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH y(0)
            WIRE 464 848 480 848
            WIRE 480 848 624 848
        END BRANCH
        BEGIN BRANCH x(0)
            WIRE 464 784 480 784
            WIRE 480 784 624 784
        END BRANCH
        BEGIN BRANCH y(1)
            WIRE 464 624 480 624
            WIRE 480 624 624 624
        END BRANCH
        BEGIN BRANCH x(1)
            WIRE 464 560 480 560
            WIRE 480 560 624 560
        END BRANCH
        BEGIN BRANCH s
            WIRE 240 688 320 688
        END BRANCH
        BEGIN BRANCH x(1:0)
            WIRE 240 576 320 576
        END BRANCH
        BEGIN BRANCH y(1:0)
            WIRE 240 640 320 640
        END BRANCH
        IOMARKER 240 688 s R180 28
        IOMARKER 240 576 x(1:0) R180 28
        IOMARKER 240 640 y(1:0) R180 28
        BEGIN BRANCH z(1:0)
            WIRE 1152 688 1168 688
            WIRE 1168 688 1280 688
        END BRANCH
        IOMARKER 1280 688 z(1:0) R0 28
    END SHEET
END SCHEMATIC
