// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Sep 27 21:13:02 2023
// Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA/DigitalRX/DigitalRX.gen/sources_1/ip/win_multipiler/win_multipiler_sim_netlist.v
// Design      : win_multipiler
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "win_multipiler,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module win_multipiler
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  win_multipiler_mult_gen_v12_0_18 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t16GlZFP6wSHOfCuAKBB/aPhRt430na0RFcw9RLqLlFnTIXf0J5icL3Tu/TFzA59bhtk+ZNdlj7F
7orXq0M9haENsb+TBIeK/GuLcI1S2IEIkFVmtIvegJBlN3srdWrLqI/AyFdszg5PkZrzXG88Xc2b
2WO3QwoaFVIK/AojhI0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtSqlFV62lL0vsa+Fh+XV0GodQOhNU+6dPw5SjSuv0OvMPVTZXVGpv55T6fELMTk959mSyk6Ry8g
0O9Y+nqYj7I0zkNLWT7cwBX+iLCmX2JSQo0kktzf26plrcNa51Bs4Rbc4NpXOM0qb4rXVuoKypyP
HSgLU/Y/LJXF61+xWUxlO/iS23d098gIYO7aX1Nz0Zpxw9ecqpaiqqmINjKd7+FoOYwpOnngiAXz
pOgYfhxk1ISU+bUSjZjeDoP7g1lNCWE31RTqWkWQGF10aXAKjpV/urSILMIltA6tEQlYe504jcmA
K6CG5Be/e48W9rZhr524SoZsyb09Xu0ljFmYyw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
s9gMEzowcFxkq1MbQ+ohDFKy7tBz/pLyjan2X3aZrppPTnWFYxUwzBEF/ro/EfUUM8uTCttMSXmu
O+6LCUK5jgPjkaMWPsMS55hYAR6EBnyybIWMRKkzEnFIHYmOxoJXN6aejqQdGAJpk/GM0k2kE/2C
QJ0emaNzqpUFy8zVyD8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a0jBWiKNqZ7hnx/6B7nI5ufxVeaI4NzBKnxHHL8rwEz+qZ6mQupkBL3OTKmXAoK5zM5zDX0BoIdg
g+qNbp2F/8a5NuDvQMSkFxXdX7tOsauze3WM5EFttlHDYHZKU6UpAJzbezDElKw67YmPdL2ias/f
cSf3Fsh+XYTJ2zk/Aki0aFTehgi8L4XtguQEsT9XeeJ+tXYAZohSNP/ZXyhbkIW1mpV3SlcC1dRy
fSbB/vnosDy99WZN5QQbdfYRLfBvXzklzldu53DJpWg3jshPotjjSI5uzp9DlhnDpOfdwh9CxlWq
JE6qCDbRp5l1ZZOW0Ts19+g/aN9sVzjbQ4oDlA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qAarq/HXu81d0yuylcPPXIPWsCCc2TC6LAm/TCo4PR7216jMtwG+SOM1+zlbzk5Kpoch2SxtyiyE
5sK7WhCCZrOW1iGC/V20t18okkAYc4u3L4md0H66B/+eKmZgbzcFSwiDhMJoBwjF2zjk2TM4Bm93
BlxsT6IQkVfY9OKxz3GKD18ZjGSQJb5rVaf/7yNlHKzsG7Zc5elrKUlCAelqg//v1qERxc0ZG5Mj
w9CJUiyPyaJZc6G+R+HfcZEK0Fuzs6xXGFnB6brHur9bHoCc0zmUXG+id4uvtFlqHTuH9Q8Ki3tS
3rXAl0lciyqfBhhsnTnP0yNu1Nj58S3wQZETeQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m+BUnInKIetlcLwW5iyofYSLsTDcXRlNB6pr6H27L0tCYqG/fBmMFNiAUrJVb1hcbAOcDFCc5rjd
xA3xq3XzBTBLb5c6E202/xQvY32FumZ7gT+LPjb38Dqx7+alozDd+UEUruhrn6Sf4y8lmFklMZwW
a+Mf69X3eouV8s/54pNM77bHRMFHIqgva8hdzjjPB4kd8LddABMlTi3n2xgGCzXS8TAAAInPnR91
J9/U+l7mZ2BaratH/KLMMYOyoh4VmQUGPqHz2qXcCqu5CgODCZd5pkhugY9ByDQjLYVnmlxFG9Kc
4zXrtf2d25q9Kn9btoNwzwELaiybU8i6WgtJxg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nSH0KxJSxKPrCObmIHBcS8P1BA8mMtMKqPe8mvzoRbgsm/8Hz3rOL+ObP57qGSnFfseFbJy9iUl4
6EJIYYkZ94Q6lS6wsmymnSoy+vX3DDIbRcxWwZa8R3Zi3CDJdN+2l8QTxVl+S9SKUWPl1QseYb7V
bEl29QVgno6+ByYpHrXetmxVyG9o+GqR7GXlr/EZDwiUB/mB2Vyy7uNdZ/Fr9y/FsEphy+7K2lIx
nszpEPcZoKK2zlEs9wAnacKPuzf2VujZw4paW7aIhaUZlfzpP97rwUq4nCcDhV+xfol9uV1ThT1+
ZpLPKV9L6J7YIr0IXR65jxMP75KM36Wmqsns4g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gpqCjOGJ637kBUJ19PgbSJOhTU2E6DfZTimxleISPs9RU7JykCGy9SPqx5xyVl3r6c6UYgi5hKNu
BVJDY+U9sVxwTjIgNs7zH/d8a5TQkliqDGq/Y/imWwPXYCADds3+N4PR+uXE+Ul2KsnNQP/gHXdU
ycgvwzTDcsyE+cntZUH35EtHyv2IvPhE9aJb1ZPvCY3uR1kG6KQwF10Ww7LEKRWTr5oMxz/R0s35
M833FVtkrZ9uTzKLa4Joo8ARMQx66IAKO6CKl30kcdr6kGrVWo8ArEB8h/7amQkkEKGVq/D0sTHK
2uHyOt6xvSrj6l9Hae1Sd1o6qu4mcFIsIacU+BJLJXt8FwLu6oobnGTewU+GNlAqvMxjdly3MScb
LDBHIzqAlqgCo2w4/I5QLKRCErydKjZ/8en4d1c22Zr89egLY08IctZj0FJ+GBh8Z04DzVom/E8V
CsPGJD1cFSZfb2/Uu9L3NPANh/eOGvxqlVycjSoPL4y/QjfdEZkR1djC

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lzl+f5a5cWrBOpktelLybDJh26zODO1cHXsoEd4TW3dG5VAyRkeqtbBdb2PUWyKp7FY1uPuLyZog
BI9Pe1gS/m4LY6swFIngwuj94CQmLxPk9/yO7WrUCtlvlQrzSmQfxSpsqripZlybkc1jfloeNkb5
FoKJ9ORCPnEzASlhTb7+ZNMpY3FSm46yfpRyBw9OylwmX7enBBmMuxzGgVilSG1Zb2pCbJuWdplU
vc0acLwej8Ct03etO29l9Voikk1nGEBCUDPO/RrHuTvxnv0uruDhViyY/1Aq27n3r9qK1Ii5IGRY
t8uLW08VQmUHPHrU/dETI3BxChGHPvbitgbnkQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q/hvH4fGtfba6wLkAEWNTACRPVlqV8w9jQIqiBbglnEe5QKrk8MkGAThRXff2jCrka5aguEQchYD
hG0qE9FPWr2ypjIMwZzC0WKd/v6lvr8G45SnG+rC6YDYqPqVRQ6Ymm0/9wCB9HL4aHVPSKdkuxIr
lZU7BNbdy8h0TSBEstZod32bBPFr9ZSLUuPIxT7AeE53Aao0NgeKMQaki1pxiWKwjR+ye7GHCYz6
OE8adIPTNxg2TXR4R0RiF4i1MGfFZQoW2qkqu9lK91xn8+wtjKJc3ifbrNbMqpGqZq7ZQMVdXs7J
WpF0rKYcXM7t/Mniyhx2WSJGWbtVDczyyxiZNw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cZBeJADr6z0qq+fignVjAuSifp/pgF6FESI1Nsqj6f8GSeMozCRNINL9Ylgj5hTd/MMrQ5LXcbtw
c8UVW8lqfqLBzc/wr4Ium4sa2yw7MwAfvlHXk/AxRscY9ZfxjDc+qdlc5T3c+3PgWAJmTYWAbJmk
YZPWMUNMtgNNu89PjL+ymWhl0vcNPrgYY142GF5aMBLreePc6K9OSiBHY5IHGR4Zv4E4AHOusLac
ayAxTIFQGOSAFF5MSPe/i1tT1RypymIjV9+Y13CHVlPmT6HhQzDscH2xRiNzKd1pwxOuKIqlvRQf
/Kxan5rWn/wkB/DVwDEQlHg2ZCrnfb48EKqL5A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
