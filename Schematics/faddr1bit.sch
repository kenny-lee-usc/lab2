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
        SIGNAL XLXN_4
        SIGNAL CO
        SIGNAL SUM
        SIGNAL A
        SIGNAL B
        SIGNAL Cin
        PORT Output CO
        PORT Output SUM
        PORT Input A
        PORT Input B
        PORT Input Cin
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 Cin
            PIN I1 A
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 Cin
            PIN I1 B
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_4 or3
            PIN I0 XLXN_4
            PIN I1 XLXN_3
            PIN I2 XLXN_2
            PIN O CO
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_6 xor2
            PIN I0 Cin
            PIN I1 XLXN_1
            PIN O SUM
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 832 1072 R0
        INSTANCE XLXI_2 832 1232 R0
        INSTANCE XLXI_3 832 1392 R0
        INSTANCE XLXI_5 784 768 R0
        INSTANCE XLXI_6 1136 864 R0
        BEGIN BRANCH XLXN_1
            WIRE 1040 672 1088 672
            WIRE 1088 672 1088 736
            WIRE 1088 736 1136 736
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1088 976 1136 976
            WIRE 1136 976 1136 1072
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1088 1136 1136 1136
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1088 1296 1136 1296
            WIRE 1136 1200 1136 1296
        END BRANCH
        INSTANCE XLXI_4 1136 1264 R0
        BEGIN BRANCH CO
            WIRE 1392 1136 1568 1136
        END BRANCH
        BEGIN BRANCH SUM
            WIRE 1392 768 1584 768
        END BRANCH
        BEGIN BRANCH A
            WIRE 544 640 720 640
            WIRE 720 640 784 640
            WIRE 720 640 720 944
            WIRE 720 944 832 944
            WIRE 720 944 720 1104
            WIRE 720 1104 832 1104
        END BRANCH
        BEGIN BRANCH B
            WIRE 544 704 736 704
            WIRE 736 704 784 704
            WIRE 736 704 736 1008
            WIRE 736 1008 832 1008
            WIRE 736 1008 736 1264
            WIRE 736 1264 832 1264
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 544 800 800 800
            WIRE 800 800 1136 800
            WIRE 800 800 800 1168
            WIRE 800 1168 832 1168
            WIRE 800 1168 800 1328
            WIRE 800 1328 832 1328
        END BRANCH
        IOMARKER 544 640 A R180 28
        IOMARKER 544 704 B R180 28
        IOMARKER 544 800 Cin R180 28
        IOMARKER 1584 768 SUM R0 28
        IOMARKER 1568 1136 CO R0 28
    END SHEET
END SCHEMATIC
