VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reg_out(31:16)
        SIGNAL reg_out(15:0)
        SIGNAL reg_in(31:16)
        SIGNAL reg_in(15:0)
        SIGNAL reg_out(31:0)
        SIGNAL ce
        SIGNAL clk
        SIGNAL reg_in(31:0)
        SIGNAL rst
        PORT Output reg_out(31:0)
        PORT Input ce
        PORT Input clk
        PORT Input reg_in(31:0)
        PORT Input rst
        BEGIN BLOCKDEF fd16re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 320 -268 384 -244 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd16re
            PIN C clk
            PIN CE ce
            PIN D(15:0) reg_in(31:16)
            PIN R rst
            PIN Q(15:0) reg_out(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16re
            PIN C clk
            PIN CE ce
            PIN D(15:0) reg_in(15:0)
            PIN R rst
            PIN Q(15:0) reg_out(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 848 944 R0
        INSTANCE XLXI_2 848 1312 R0
        BEGIN BRANCH reg_out(31:16)
            WIRE 1232 688 1328 688
        END BRANCH
        BEGIN BRANCH reg_out(15:0)
            WIRE 1232 1056 1328 1056
        END BRANCH
        BEGIN BRANCH clk
            WIRE 720 816 848 816
            BEGIN DISPLAY 720 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 720 752 848 752
            BEGIN DISPLAY 720 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reg_in(31:16)
            WIRE 720 688 848 688
        END BRANCH
        BEGIN BRANCH reg_in(15:0)
            WIRE 720 1056 848 1056
        END BRANCH
        BEGIN BRANCH ce
            WIRE 720 1120 848 1120
            BEGIN DISPLAY 720 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 720 1184 848 1184
            BEGIN DISPLAY 720 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reg_out(31:0)
            WIRE 1424 864 1552 864
        END BRANCH
        IOMARKER 1552 864 reg_out(31:0) R0 28
        BEGIN BRANCH ce
            WIRE 240 768 400 768
        END BRANCH
        BEGIN BRANCH clk
            WIRE 240 832 400 832
        END BRANCH
        BEGIN BRANCH reg_in(31:0)
            WIRE 240 688 400 688
        END BRANCH
        IOMARKER 240 768 ce R180 28
        IOMARKER 240 832 clk R180 28
        IOMARKER 240 688 reg_in(31:0) R180 28
        BEGIN BRANCH rst
            WIRE 224 896 400 896
        END BRANCH
        IOMARKER 224 896 rst R180 28
        BEGIN BRANCH rst
            WIRE 688 912 848 912
            BEGIN DISPLAY 688 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 688 1280 848 1280
            BEGIN DISPLAY 688 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
