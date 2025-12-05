// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 27 22:23:40 2025
// Host        : LAPTOP-J1BHH9N0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    ADD,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [7:0]S;

  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [7:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "2" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "8" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [7:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [7:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "2" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fycd6mO9QPeFsugoCttu/lmqSLCzg4hmmwE7xCoqvWFW9yGppGyTFaooxX26wpf+SCOumMXH0dHn
hcQ2L2G+wTDKE6mpdMupXFQ71ho+W5+iWp1mU7+zfioxiXQgDoHFtfEG4qmKccJD5nq1Sg13AUkc
0eiX+s9maeWD7z9QAlN64wYkiEj/DkIoHKwY+G2aR56gmteFj4clK0cY0GYe3vqSFAYcZMhOKt37
G5yhFTc/OTMzgPa2QNxcqZL4hmJFw7c70M2vIvGqhGefRzTSI3J/ziMuc5IYwzNxKT8BkwW4ijYi
gbtFM+mvM5+kYS7mAdY1EbfiPsnUX26Szm+BIw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wazk4udMsAUpNMhOtKnJUoQZ1EMEOtPWmT046E/rtUQoafRu1BAEGRqhL5uZMAKywaAUhuxockOO
LVO62EYymO+s0AChcDUTpWglm2+M0GqfvfXKZFOmBP7T4rF/bWmFO/GJZL523GNNsIOWIZPO8A3c
1BH279wrUNgxVM6NT6bBQqYbWC+tshz5zqJW9BNaLFGA0Ag7Dkl0GsDPcXXE/mGbYs1DZlHWV+wP
2iMQpAoRY+ZZZ+XqF/nq84gK+9P7BDxDCvTdWos2dPfqux3lFwKrHYuc6fO4I0Ioxu9w78LquK0i
aO1hXkirBlpUwwXnWhydgct+ULF14q3pgPx38g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8560)
`pragma protect data_block
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
xUIT6T5botOhtA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
