// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 27 22:38:16 2025
// Host        : LAPTOP-J1BHH9N0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_addsub_0 -prefix
//               c_addsub_0_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_addsub_0
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
  c_addsub_0_c_addsub_v12_0_12 U0
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
module c_addsub_0_c_addsub_v12_0_12
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
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
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
2oE=
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
