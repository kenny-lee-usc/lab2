VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_3(31:0)
        SIGNAL XLXN_6(31:0)
        SIGNAL XLXN_58(31:0)
        SIGNAL sel(0)
        SIGNAL XLXN_62
        SIGNAL XLXN_63(31:0)
        SIGNAL XLXN_66(31:0)
        SIGNAL XLXN_67(31:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL XLXN_71(31:0)
        SIGNAL shift
        SIGNAL clk
        SIGNAL rst
        SIGNAL ce
        SIGNAL sel(1:0)
        SIGNAL Co
        SIGNAL alu_out(31:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input shift
        PORT Input clk
        PORT Input rst
        PORT Input ce
        PORT Input sel(1:0)
        PORT Output Co
        PORT Output alu_out(31:0)
        BEGIN BLOCKDEF faddr32bit_asych
            TIMESTAMP 2025 1 25 6 27 6
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF subractor_unit
            TIMESTAMP 2025 1 25 7 9 19
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -128 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF reg32bit
            TIMESTAMP 2025 1 25 7 44 34
            RECTANGLE N 64 -256 384 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -236 448 -212 
            LINE N 384 -224 448 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF mux32bit_4x1
            TIMESTAMP 2025 1 25 9 21 8
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF lsb_msb_combination
            TIMESTAMP 2025 1 25 8 28 7
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF left_right_shift
            TIMESTAMP 2025 1 25 9 2 50
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF fdre
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_12 reg32bit
            PIN ce ce
            PIN clk clk
            PIN reg_in(31:0) XLXN_58(31:0)
            PIN rst rst
            PIN reg_out(31:0) alu_out(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 mux32bit_4x1
            PIN s(1:0) sel(1:0)
            PIN x1(31:0) XLXN_66(31:0)
            PIN x0(31:0) XLXN_66(31:0)
            PIN x3(31:0) XLXN_67(31:0)
            PIN x2(31:0) XLXN_71(31:0)
            PIN z(31:0) XLXN_58(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 faddr32bit_asych
            PIN Cin sel(0)
            PIN A(31:0) XLXN_3(31:0)
            PIN B(31:0) XLXN_63(31:0)
            PIN Co XLXN_62
            PIN SUM(31:0) XLXN_66(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 subractor_unit
            PIN k sel(0)
            PIN sub_in(31:0) XLXN_6(31:0)
            PIN sub_out(31:0) XLXN_63(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_27 lsb_msb_combination
            PIN a(31:0) XLXN_3(31:0)
            PIN b(31:0) XLXN_6(31:0)
            PIN z(31:0) XLXN_67(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 reg32bit
            PIN ce ce
            PIN clk clk
            PIN reg_in(31:0) A(31:0)
            PIN rst rst
            PIN reg_out(31:0) XLXN_3(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 reg32bit
            PIN ce ce
            PIN clk clk
            PIN reg_in(31:0) B(31:0)
            PIN rst rst
            PIN reg_out(31:0) XLXN_6(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_30 left_right_shift
            PIN shift_L_R shift
            PIN A(31:0) XLXN_66(31:0)
            PIN shift_out(31:0) XLXN_71(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_33 fdre
            PIN C clk
            PIN CE ce
            PIN D XLXN_62
            PIN R rst
            PIN Q Co
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1712 752 R0
        END INSTANCE
        BEGIN BRANCH XLXN_3(31:0)
            WIRE 736 416 1088 416
            WIRE 1088 416 1216 416
            WIRE 1216 416 1216 656
            WIRE 1216 656 1712 656
            WIRE 1088 416 1088 1440
            WIRE 1088 1440 1536 1440
        END BRANCH
        BEGIN INSTANCE XLXI_3 1152 944 R0
        END INSTANCE
        BEGIN BRANCH XLXN_6(31:0)
            WIRE 784 912 1040 912
            WIRE 1040 912 1152 912
            WIRE 1040 912 1040 1504
            WIRE 1040 1504 1536 1504
        END BRANCH
        BEGIN BRANCH XLXN_58(31:0)
            WIRE 2800 720 2912 720
        END BRANCH
        BEGIN BRANCH sel(0)
            WIRE 912 768 1152 768
            WIRE 1152 768 1152 848
            WIRE 1152 592 1152 768
            WIRE 1152 592 1712 592
        END BRANCH
        BEGIN BRANCH XLXN_63(31:0)
            WIRE 1536 976 1616 976
            WIRE 1616 720 1616 976
            WIRE 1616 720 1712 720
        END BRANCH
        BEGIN BRANCH XLXN_66(31:0)
            WIRE 1712 912 1712 1248
            WIRE 1712 1248 1744 1248
            WIRE 1712 912 2240 912
            WIRE 2240 912 2416 912
            WIRE 2096 720 2240 720
            WIRE 2240 720 2240 912
            WIRE 2240 720 2416 720
        END BRANCH
        BEGIN BRANCH XLXN_67(31:0)
            WIRE 1920 1440 2256 1440
            WIRE 2256 848 2256 1440
            WIRE 2256 848 2416 848
        END BRANCH
        BEGIN INSTANCE XLXI_27 1536 1536 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 144 544 272 544
            WIRE 272 544 288 544
        END BRANCH
        BEGIN INSTANCE XLXI_9 288 640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 336 1136 R0
        END INSTANCE
        BEGIN BRANCH B(31:0)
            WIRE 144 1040 336 1040
        END BRANCH
        IOMARKER 144 1040 B(31:0) R180 28
        BEGIN BRANCH XLXN_71(31:0)
            WIRE 2128 1184 2144 1184
            WIRE 2144 784 2416 784
            WIRE 2144 784 2144 1184
        END BRANCH
        BEGIN BRANCH rst
            WIRE 160 1104 336 1104
            BEGIN DISPLAY 160 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 160 976 336 976
            BEGIN DISPLAY 160 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 160 912 336 912
            BEGIN DISPLAY 160 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 112 608 288 608
            BEGIN DISPLAY 112 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 112 480 288 480
            BEGIN DISPLAY 112 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 112 416 288 416
            BEGIN DISPLAY 112 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_30 1744 1280 R0
        END INSTANCE
        BEGIN BRANCH shift
            WIRE 1520 1184 1744 1184
        END BRANCH
        BEGIN BRANCH clk
            WIRE 208 1264 384 1264
        END BRANCH
        IOMARKER 208 1264 clk R180 28
        BEGIN BRANCH rst
            WIRE 208 1328 384 1328
        END BRANCH
        IOMARKER 208 1328 rst R180 28
        BEGIN BRANCH ce
            WIRE 208 1392 384 1392
        END BRANCH
        IOMARKER 208 1392 ce R180 28
        BEGIN BRANCH sel(1:0)
            WIRE 224 1472 400 1472
        END BRANCH
        IOMARKER 224 1472 sel(1:0) R180 28
        BEGIN INSTANCE XLXI_12 2912 816 R0
        END INSTANCE
        BEGIN BRANCH ce
            WIRE 2880 592 2912 592
            BEGIN DISPLAY 2880 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2880 656 2912 656
            BEGIN DISPLAY 2880 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2880 784 2912 784
            BEGIN DISPLAY 2880 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_33 2976 496 R0
        BEGIN BRANCH XLXN_62
            WIRE 2096 592 2112 592
            WIRE 2112 240 2976 240
            WIRE 2112 240 2112 592
        END BRANCH
        BEGIN BRANCH ce
            WIRE 2928 304 2976 304
            BEGIN DISPLAY 2928 304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2928 368 2976 368
            BEGIN DISPLAY 2928 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2928 464 2976 464
            BEGIN DISPLAY 2928 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Co
            WIRE 3360 240 3376 240
            WIRE 3376 240 3392 240
        END BRANCH
        IOMARKER 3392 240 Co R0 28
        IOMARKER 144 544 A(31:0) R180 28
        IOMARKER 1520 1184 shift R180 28
        BEGIN BRANCH alu_out(31:0)
            WIRE 3072 832 3440 832
            WIRE 3072 832 3072 992
            WIRE 3072 992 3232 992
            WIRE 3360 592 3376 592
            WIRE 3376 592 3440 592
            WIRE 3440 592 3440 832
        END BRANCH
        IOMARKER 3232 992 alu_out(31:0) R0 28
        BEGIN INSTANCE XLXI_15 2416 1008 R0
        END INSTANCE
        BEGIN BRANCH sel(1:0)
            WIRE 2368 976 2416 976
            BEGIN DISPLAY 2368 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
