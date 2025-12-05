// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 27 22:38:16 2025
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
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [7:0]S;

  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire CLK;
  wire [7:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
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
        .CE(1'b1),
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
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
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
  (* C_HAS_CE = "0" *) 
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
        .CE(1'b0),
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
qlFZQFcA63UbVNsgscZ2CQ9xmpOex0/jh8ov3wJ9Lm5tWq60YMLq+vbm1zWm/RaIEZAvhoIxpBzN
n2vsQvdS8ryo3xkvBJyg4qtENY4cKM8L1UsAQl6E1Z6c26sBi9d9M1EGkj3nEuzKvpacPJmsK7Sy
BaqMr2h29glIl3fdI/YJvo0ZlPDGurP6rK6zA14aojcUoC8o7GbvaV6wfvy/5RHE0JyVbwS0viY3
zKqnMVf0O1OYMWy7+yNbhkCLsgs2G7xoDmo7onuv0izC6LHGkjRclHPHYitaFDNmgO7685dpjYLg
5As792+Eau+GphSyQV4iT+/gfZ8/oHGzI+9KSw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kiXPjvaTDPUK8j9fYvLf/SANzJu11EFV4xoOZtTEk2WsGtep3CgOAFk27LHyGplpXqbLVdB8voFT
5iLYLKC3z0cB6VEKP+/kbkpb3atxF38DZnY8HUI6IT3uyxtVfqyMeHsqlMc2/wybh+qkefTmUq8d
vraj5OjslP3y51qEStoFKGKglvH5TRIvV6qgNY5COP68VgK2wHlKTenFAtuypkHEWlhMrix2exiw
6OsJQk5kzHTg9QzCiIO21TfT++wKxNdMIRCoYysU0DF86toSxUdl4se75S9J8pl2JC6ge2VSSzMM
/9ZmfD4FFGQCWtAqDXkjOHcUtaKI5VmVTVY8/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8368)
`pragma protect data_block
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
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
