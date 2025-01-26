VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL Cin
        SIGNAL CO
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        SIGNAL A_Q(7:0)
        SIGNAL B_Q(7:0)
        SIGNAL SUM(7:0)
        SIGNAL SUM_Q(3:0)
        SIGNAL SUM_Q(7:4)
        SIGNAL SUM_Q(7:0)
        SIGNAL B_Q(3:0)
        SIGNAL A_Q(3:0)
        SIGNAL B_Q(7:4)
        SIGNAL A_Q(7:4)
        SIGNAL clk
        SIGNAL rst
        SIGNAL ce
        PORT Input Cin
        PORT Output CO
        PORT Input B(7:0)
        PORT Input A(7:0)
        PORT Output SUM(7:0)
        PORT Input clk
        PORT Input rst
        PORT Input ce
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
        BEGIN BLOCKDEF fd8re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 320 -268 384 -244 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdr
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 faddr4bit
            PIN B(3:0) B_Q(3:0)
            PIN A(3:0) A_Q(3:0)
            PIN Cin XLXN_3
            PIN SUM(3:0) SUM_Q(3:0)
            PIN CO XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 faddr4bit
            PIN B(3:0) B_Q(7:4)
            PIN A(3:0) A_Q(7:4)
            PIN Cin XLXN_1
            PIN SUM(3:0) SUM_Q(7:4)
            PIN CO XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_26 fdr
            PIN C clk
            PIN D Cin
            PIN R rst
            PIN Q XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_27 fdr
            PIN C clk
            PIN D XLXN_4
            PIN R rst
            PIN Q CO
        END BLOCK
        BEGIN BLOCK XLXI_31 fd8re
            PIN C clk
            PIN CE ce
            PIN D(7:0) A(7:0)
            PIN R rst
            PIN Q(7:0) A_Q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_32 fd8re
            PIN C clk
            PIN CE ce
            PIN D(7:0) B(7:0)
            PIN R rst
            PIN Q(7:0) B_Q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_33 fd8re
            PIN C clk
            PIN CE ce
            PIN D(7:0) SUM_Q(7:0)
            PIN R rst
            PIN Q(7:0) SUM(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 960 1168 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1680 1168 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1344 1136 1680 1136
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 704 1136 720 1136
            WIRE 720 1136 960 1136
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 2064 1136 2432 1136
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 224 1136 320 1136
            WIRE 320 1136 336 1136
        END BRANCH
        BEGIN BRANCH clk
            WIRE 224 1264 320 1264
            WIRE 320 1264 336 1264
            BEGIN DISPLAY 224 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CO
            WIRE 2816 1136 2992 1136
        END BRANCH
        IOMARKER 2992 1136 CO R0 28
        IOMARKER 224 1136 Cin R180 28
        INSTANCE XLXI_26 320 1392 R0
        INSTANCE XLXI_27 2432 1392 R0
        BEGIN BRANCH B(7:0)
            WIRE 1632 544 1680 544
        END BRANCH
        IOMARKER 1632 544 B(7:0) R180 28
        BEGIN BRANCH A(7:0)
            WIRE 912 544 960 544
        END BRANCH
        BEGIN BRANCH A_Q(7:0)
            WIRE 1344 544 1408 544
        END BRANCH
        BEGIN BRANCH B_Q(7:0)
            WIRE 2064 544 2176 544
        END BRANCH
        BEGIN BRANCH SUM(7:0)
            WIRE 2816 640 2976 640
        END BRANCH
        IOMARKER 2976 640 SUM(7:0) R0 28
        BEGIN BRANCH SUM_Q(3:0)
            WIRE 1344 1008 1456 1008
        END BRANCH
        BEGIN BRANCH SUM_Q(7:4)
            WIRE 2064 1008 2208 1008
        END BRANCH
        BEGIN BRANCH SUM_Q(7:0)
            WIRE 2304 640 2432 640
        END BRANCH
        BEGIN BRANCH ce
            WIRE 864 608 960 608
            BEGIN DISPLAY 864 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 912 544 A(7:0) R180 28
        BEGIN BRANCH ce
            WIRE 1584 608 1680 608
            BEGIN DISPLAY 1584 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 2336 704 2432 704
            BEGIN DISPLAY 2336 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_Q(3:0)
            WIRE 848 1008 960 1008
        END BRANCH
        BEGIN BRANCH A_Q(3:0)
            WIRE 848 1072 960 1072
        END BRANCH
        BEGIN BRANCH B_Q(7:4)
            WIRE 1568 1008 1680 1008
        END BRANCH
        BEGIN BRANCH A_Q(7:4)
            WIRE 1568 1072 1680 1072
        END BRANCH
        BEGIN BRANCH rst
            WIRE 224 1360 320 1360
            BEGIN DISPLAY 224 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 176 800 368 800
        END BRANCH
        BEGIN BRANCH rst
            WIRE 176 880 368 880
        END BRANCH
        IOMARKER 176 800 clk R180 28
        IOMARKER 176 880 rst R180 28
        BEGIN BRANCH ce
            WIRE 176 944 368 944
        END BRANCH
        IOMARKER 176 944 ce R180 28
        BEGIN BRANCH clk
            WIRE 2320 1264 2416 1264
            WIRE 2416 1264 2432 1264
            BEGIN DISPLAY 2320 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2320 1360 2416 1360
            WIRE 2416 1360 2432 1360
            BEGIN DISPLAY 2320 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2320 768 2432 768
            BEGIN DISPLAY 2320 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2320 864 2432 864
            BEGIN DISPLAY 2320 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1568 672 1680 672
            BEGIN DISPLAY 1568 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1568 768 1680 768
            BEGIN DISPLAY 1568 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 848 672 960 672
            BEGIN DISPLAY 848 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 848 768 960 768
            BEGIN DISPLAY 848 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_31 960 800 R0
        INSTANCE XLXI_32 1680 800 R0
        INSTANCE XLXI_33 2432 896 R0
    END SHEET
END SCHEMATIC
