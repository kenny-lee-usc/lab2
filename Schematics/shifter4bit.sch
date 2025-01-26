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
        SIGNAL shift(3:0)
        SIGNAL shift(1)
        SIGNAL shift(2)
        SIGNAL shift(3)
        SIGNAL XLXN_13
        SIGNAL d(2)
        SIGNAL shift(0)
        SIGNAL d(3)
        SIGNAL d(1)
        SIGNAL d(0)
        SIGNAL XLXN_20
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL shift
        SIGNAL XLXN_32
        SIGNAL XLXN_35
        SIGNAL XLXN_38
        SIGNAL XLXN_41
        SIGNAL XLXN_44
        SIGNAL XLXN_47
        SIGNAL XLXN_50
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        SIGNAL shift_reg(0)
        SIGNAL shift_reg(3)
        SIGNAL shift_reg(2)
        SIGNAL shift_reg(1)
        SIGNAL clk
        SIGNAL rst
        SIGNAL ce
        SIGNAL d(3:0)
        SIGNAL XLXN_73
        PORT Output shift(3:0)
        PORT Input shift
        PORT Input clk
        PORT Input rst
        PORT Input ce
        PORT Input d(3:0)
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
        BEGIN BLOCKDEF fd4re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -448 320 -448 
            LINE N 384 -384 320 -384 
            LINE N 0 -384 64 -384 
            LINE N 0 -448 64 -448 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
            LINE N 0 -128 64 -128 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 64 -512 320 -64 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -32 64 -32 
            LINE N 0 -192 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 d(2)
            PIN D1 XLXN_13
            PIN S0 shift
            PIN O shift_reg(3)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 d(1)
            PIN D1 d(3)
            PIN S0 shift
            PIN O shift_reg(2)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 d(0)
            PIN D1 d(2)
            PIN S0 shift
            PIN O shift_reg(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 m2_1
            PIN D0 XLXN_73
            PIN D1 d(1)
            PIN S0 shift
            PIN O shift_reg(0)
        END BLOCK
        BEGIN BLOCK XLXI_15 fd4re
            PIN C clk
            PIN CE ce
            PIN D0 shift_reg(0)
            PIN D1 shift_reg(1)
            PIN D2 shift_reg(2)
            PIN D3 shift_reg(3)
            PIN R rst
            PIN Q0 shift(0)
            PIN Q1 shift(1)
            PIN Q2 shift(2)
            PIN Q3 shift(3)
        END BLOCK
        BEGIN BLOCK XLXI_16 gnd
            PIN G XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_17 gnd
            PIN G XLXN_73
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 560 1088 R0
        IOMARKER 432 1264 shift R180 28
        BEGIN BRANCH shift(3:0)
            WIRE 2320 1504 2528 1504
        END BRANCH
        IOMARKER 2528 1504 shift(3:0) R0 28
        BEGIN BRANCH shift(1)
            WIRE 2016 1488 2112 1488
        END BRANCH
        BEGIN BRANCH shift(2)
            WIRE 2016 1552 2112 1552
        END BRANCH
        BEGIN BRANCH shift(3)
            WIRE 2016 1616 2112 1616
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 432 992 560 992
        END BRANCH
        BEGIN BRANCH d(2)
            WIRE 432 928 560 928
        END BRANCH
        INSTANCE XLXI_3 1952 1072 R0
        BEGIN BRANCH shift(0)
            WIRE 2016 1424 2112 1424
        END BRANCH
        BEGIN BRANCH d(2)
            WIRE 1840 976 1952 976
            BEGIN DISPLAY 1840 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(0)
            WIRE 1840 912 1952 912
        END BRANCH
        BEGIN BRANCH shift
            WIRE 432 1264 560 1264
            WIRE 560 1264 1184 1264
            WIRE 1184 1264 1808 1264
            WIRE 1808 1264 1952 1264
            WIRE 1808 1264 2736 1264
            WIRE 560 1056 560 1264
            WIRE 1184 1040 1280 1040
            WIRE 1184 1040 1184 1264
            WIRE 1952 1040 1952 1264
            WIRE 2736 1040 2736 1264
        END BRANCH
        INSTANCE XLXI_2 1280 1072 R0
        BEGIN BRANCH d(1)
            WIRE 1216 912 1280 912
        END BRANCH
        BEGIN BRANCH d(3)
            WIRE 1216 976 1280 976
            BEGIN DISPLAY 1216 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 2736 1072 R0
        BEGIN BRANCH d(1)
            WIRE 2608 976 2736 976
            BEGIN DISPLAY 2608 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift_reg(0)
            WIRE 3056 944 3168 944
        END BRANCH
        BEGIN BRANCH shift_reg(0)
            WIRE 1536 1424 1632 1424
            BEGIN DISPLAY 1536 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift_reg(1)
            WIRE 1536 1488 1632 1488
            BEGIN DISPLAY 1536 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift_reg(2)
            WIRE 1536 1552 1632 1552
            BEGIN DISPLAY 1536 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift_reg(3)
            WIRE 1536 1616 1632 1616
            BEGIN DISPLAY 1536 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1536 1680 1632 1680
            BEGIN DISPLAY 1536 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1536 1744 1632 1744
            BEGIN DISPLAY 1536 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1536 1840 1632 1840
            BEGIN DISPLAY 1536 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift_reg(3)
            WIRE 880 960 976 960
        END BRANCH
        BEGIN BRANCH shift_reg(2)
            WIRE 1600 944 1696 944
        END BRANCH
        BEGIN BRANCH shift_reg(1)
            WIRE 2272 944 2368 944
        END BRANCH
        BEGIN BRANCH clk
            WIRE 432 1344 528 1344
        END BRANCH
        BEGIN BRANCH rst
            WIRE 432 1392 528 1392
        END BRANCH
        BEGIN BRANCH ce
            WIRE 432 1440 528 1440
        END BRANCH
        BEGIN BRANCH d(3:0)
            WIRE 432 768 528 768
        END BRANCH
        IOMARKER 432 768 d(3:0) R180 28
        IOMARKER 432 1344 clk R180 28
        IOMARKER 432 1392 rst R180 28
        IOMARKER 432 1440 ce R180 28
        INSTANCE XLXI_15 1632 1872 R0
        INSTANCE XLXI_16 368 1120 R0
        BEGIN BRANCH XLXN_73
            WIRE 2464 912 2464 928
            WIRE 2464 912 2736 912
        END BRANCH
        INSTANCE XLXI_17 2400 1056 R0
    END SHEET
END SCHEMATIC
