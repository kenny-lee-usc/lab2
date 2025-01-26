VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL shift
        SIGNAL clk
        SIGNAL rst
        SIGNAL ce
        SIGNAL shift(7:0)
        SIGNAL shift(3:0)
        SIGNAL d(3:0)
        SIGNAL d(7:0)
        SIGNAL shift(7:4)
        SIGNAL d(7:4)
        PORT Input shift
        PORT Input clk
        PORT Input rst
        PORT Input ce
        PORT Output shift(7:0)
        PORT Input d(7:0)
        BEGIN BLOCKDEF shifter4bit
            TIMESTAMP 2025 1 24 9 21 30
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 shifter4bit
            PIN shift shift
            PIN clk clk
            PIN rst rst
            PIN ce ce
            PIN d(3:0) d(3:0)
            PIN shift(3:0) shift(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 shifter4bit
            PIN shift shift
            PIN clk clk
            PIN rst rst
            PIN ce ce
            PIN d(3:0) d(7:4)
            PIN shift(3:0) shift(7:4)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH shift
            WIRE 320 800 528 800
        END BRANCH
        BEGIN BRANCH clk
            WIRE 320 864 528 864
        END BRANCH
        IOMARKER 320 800 shift R180 28
        IOMARKER 320 864 clk R180 28
        BEGIN BRANCH rst
            WIRE 320 944 528 944
        END BRANCH
        IOMARKER 320 944 rst R180 28
        BEGIN BRANCH ce
            WIRE 320 1040 528 1040
        END BRANCH
        IOMARKER 320 1040 ce R180 28
        BEGIN INSTANCE XLXI_1 928 1072 R0
        END INSTANCE
        BEGIN BRANCH shift(7:0)
            WIRE 2176 784 2304 784
        END BRANCH
        IOMARKER 2304 784 shift(7:0) R0 28
        BEGIN BRANCH shift
            WIRE 848 784 928 784
            BEGIN DISPLAY 848 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 848 848 928 848
            BEGIN DISPLAY 848 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 848 912 928 912
            BEGIN DISPLAY 848 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift(3:0)
            WIRE 1312 784 1408 784
        END BRANCH
        BEGIN BRANCH ce
            WIRE 848 976 928 976
            BEGIN DISPLAY 848 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(3:0)
            WIRE 848 1040 912 1040
            WIRE 912 1040 928 1040
        END BRANCH
        BEGIN BRANCH d(7:0)
            WIRE 288 1104 528 1104
        END BRANCH
        IOMARKER 288 1104 d(7:0) R180 28
        BEGIN INSTANCE XLXI_5 1568 1072 R0
        END INSTANCE
        BEGIN BRANCH shift
            WIRE 1488 784 1568 784
            BEGIN DISPLAY 1488 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1488 848 1568 848
            BEGIN DISPLAY 1488 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1488 912 1568 912
            BEGIN DISPLAY 1488 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift(7:4)
            WIRE 1952 784 2048 784
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1488 976 1568 976
            BEGIN DISPLAY 1488 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(7:4)
            WIRE 1488 1040 1552 1040
            WIRE 1552 1040 1568 1040
        END BRANCH
    END SHEET
END SCHEMATIC
