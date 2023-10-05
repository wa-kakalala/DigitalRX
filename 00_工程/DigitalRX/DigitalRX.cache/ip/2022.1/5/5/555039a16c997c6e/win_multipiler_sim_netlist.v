// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Sep 27 21:13:01 2023
// Host        : DESKTOP-7S7UGPP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ win_multipiler_sim_netlist.v
// Design      : win_multipiler
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "win_multipiler,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_18 U0
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
X2jPSLCFJVN+zhcYDozpMgeGhGnGtoB7onF1zMNaobjYx+Xl3USPbMIfmDNQnSKR+z5Vfc1CajnM
50rFFZ4gS3quO1xA5Sr/FiMCV0Y8ttTsRN42HO4bfIVRLAf3AsLnyim6fWM+gq6NF0DzKSMjNxhO
xfTl/vkDU0xaczzLX6J9sdVARH7ssekVLOSG6DKjm+KITeSz8IsYyUbFPhTcVVVkxYVbIIMc8MsA
OkV89GpVHpbeIaK9JBESQv35A0dqXHfdDLHznXft/NAAk5pbZcYCfmfLukM6hdpaxLZ/p7Z4gWd9
NagaDgXih0a0byR1V9M0hLrtS/0PRciZLJtWOw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jK8nD/DryVaOp8rwN6Gc1iLaNhdyRGzb7MrSPqieP6EDdi8s5DQQVDoZ3u+uZVnEVesJbpDHthro
Ub6JQsZysgOHjZ0jqSVsc+TMZP1qEPTj3HYGHHW5r31gkq2sXMSHtg7iWMajcOPi2+zKq1WagFJw
Dlp1HFj3cpm0Tjdmadvw0kJUZH7DgXinJ8hmGt6zjkuXUSP+jxEiBnjFBVjWufXyB4df0viLplgS
fqyaw4+hTwT43e0PTaZkOv9aX0x1Ysl2bZ6eaJkRnbR22iv8gjlBE7LAzFEgTJQMxg3rAaGBx0Nr
0i0pOh1+FBqXotcWsWJNu0bznoVFZeBDDfKa/g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
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
sLGNKY4=
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
