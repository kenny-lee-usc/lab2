VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL Cin
        SIGNAL CO
        SIGNAL SUM(7:0)
        SIGNAL B(3:0)
        SIGNAL A(3:0)
        SIGNAL SUM(3:0)
        SIGNAL B(7:4)
        SIGNAL A(7:4)
        SIGNAL SUM(7:4)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        PORT Input Cin
        PORT Output CO
        PORT Output SUM(7:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        BEGIN BLOCKDEF faddr4bit
            TIMESTAMP 2025 1 24 5 5 4
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 faddr4bit
            PIN B(3:0) B(3:0)
            PIN A(3:0) A(3:0)
            PIN Cin Cin
            PIN SUM(3:0) SUM(3:0)
            PIN CO XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 faddr4bit
            PIN B(3:0) B(7:4)
            PIN A(3:0) A(7:4)
            PIN Cin XLXN_1
            PIN SUM(3:0) SUM(7:4)
            PIN CO CO
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_1
            WIRE 992 1056 1344 1056
        END BRANCH
        BEGIN INSTANCE XLXI_2 1344 1088 R0
        END INSTANCE
        BEGIN BRANCH Cin
            WIRE 192 1056 592 1056
            WIRE 592 1056 608 1056
        END BRANCH
        BEGIN BRANCH CO
            WIRE 1728 1056 1872 1056
        END BRANCH
        IOMARKER 1872 1056 CO R0 28
        BEGIN BRANCH SUM(7:0)
            WIRE 1952 928 2096 928
        END BRANCH
        IOMARKER 2096 928 SUM(7:0) R0 28
        BEGIN INSTANCE XLXI_1 608 1088 R0
        END INSTANCE
        BEGIN BRANCH B(3:0)
            WIRE 464 928 608 928
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 464 992 608 992
        END BRANCH
        BEGIN BRANCH SUM(3:0)
            WIRE 992 928 1136 928
        END BRANCH
        BEGIN BRANCH B(7:4)
            WIRE 1200 928 1344 928
        END BRANCH
        BEGIN BRANCH A(7:4)
            WIRE 1200 992 1344 992
        END BRANCH
        BEGIN BRANCH SUM(7:4)
            WIRE 1728 928 1872 928
        END BRANCH
        IOMARKER 192 1056 Cin R180 28
        BEGIN BRANCH A(7:0)
            WIRE 224 928 368 928
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 224 992 368 992
        END BRANCH
        IOMARKER 224 928 A(7:0) R180 28
        IOMARKER 224 992 B(7:0) R180 28
    END SHEET
END SCHEMATIC
