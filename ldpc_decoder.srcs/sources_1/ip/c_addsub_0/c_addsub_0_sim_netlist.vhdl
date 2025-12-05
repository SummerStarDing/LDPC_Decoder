-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May 27 22:38:16 2025
-- Host        : LAPTOP-J1BHH9N0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top c_addsub_0 -prefix
--               c_addsub_0_ c_addsub_0_sim_netlist.vhdl
-- Design      : c_addsub_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
PkyhyBb59EPgq8kANKUgNUvJSxwVgcYTKLlfXroHeM6zPnPHm+ATuJPY2OmCojZnDY2A6SHiMUmx
ylnsx6jVAA==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
XgKClVpS+h3z22aTgNZepCZW5Yffl4m6nNLRjY88G0b6Og6dF7wA3of30X3Vr2BKX5GVSe+jeu6a
q3D7Qa0T3sEnO1qnWdbom/P31G6nS7/pQCPaLh+suxznQX2imRfhfTkmY1B9wExxZtZBbss2GPfs
EFGX8a+efiUiZLAKaSE=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LYMHL9qwz9VPPAbHAyLFK1YM6t0YBJUbhdak6y3IQta7KscLfLakFo9QXv7rXKj3R5WEjx6Vg+9K
QUgoa/uCYy+n2t004DDpVeDamNuGIrJU3WXV9mo6tEi21Rm+kIG+CFgVuqLY9JSjwI3dhmEqYYtS
wC2GIO6hKaV0keq1ldvsRFBu71kLY+jczboTe6EddpUktWp3UM/RqnrSfHPMlZWhHp1k3YC0SDq9
gvcPn9DB3vIjXgn+xRbyzZOt/j+s8RfjF446i2RalkF5p/den9o/OMG5jmv4rZKHj9S1V3Z2UuL1
c2fxe26sNIvZ7tpz8RHVWRMloPfcPVakam2zhg==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BACIRg239ZSAZHpsLobWk7IZyWSAM1rsaZq5LesIgnba07iijhvT5s8WIOIIgHZs1XEDKelSnU1J
+5cyEbU9WgPZsja6FQEw6J0GuN3L/1QyrvmNIJKsNXINx7R+xaY/n0uby2eFsFE9luplvdOyrCEw
eK82BghXwPdasTT1ZUgKiycyGYtNsp5ZaPIWXI9ezN9oHowcWp7Mn6v2jrdDl4lzJuoHgqRtkZvG
7GqevJFheGfXkRPuQGkNK2Pk6XN9woSB1a9C+FUsQBM5MlIE7zrBQAjONIQj/nd82Hlp1H4PRxBW
1mmFP7PskMeNR2hH5xwkvg4Q3IfYBlw8gdzneg==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
vUWbACu3JL9XeVH21XChN1bLnACIM0U/dLRQNf2LGaDFNW9CL0o3SY9pOtV226o71+9Eal6i7P4l
ht62RU2AHTweJsgWkXtQBI0/jHIw4/gxbBebNbqZM6m3qjEE5blPsuzJ1njoX2JWCJElO3p9FfRu
uHpC+4hYoccdFayGku3vk1gwz9lLJ4FcYG9mi1vLIY+tzs0o83THQ8dLrg50Rr/r2n0Xf4hxWe4U
tJ6iUOYBQUYjeOwNQOOxfjv5PKfLIgGA2WC8sJb2GFe9MkTDoMAo40nBLK0Y8+klDIJTyx079Bx0
wdRg2JxUF3+TGlXW98+2/iWy94H1CPEVRm18FQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
VX8rVAT0l4oniSvb1X0sblwaqcWh2XE0oCAZbC0SVv8fCy8dLmmtqBzFq3w2V/7nyMmJzWKNP/yV
0GW7ICEfrGaBejU3VpwaHA69xE56Y/8NSHGlZOhr390/5/UqELcFOknZEPJXMLpeKjUn2ijACn/u
O0myDIvGFiUyRGWWYKM=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dlKAt52rb1rebbUvCxUw/pmWR03F+be3vApC1VuekYTvk7BFt7xopdHrqsvoU8rgaCBc2wuCudx5
nUcu7bKEyHKFc6bcbp6J84c2uG0ZckyqBn/OHRMbmq4Vbar8C3ERI2YmcbL0Q0fBLzMosVarF9eM
+c6VfE9hA5lx9qpwFJhgk5v/yx6kjgu+kEnG+xsdWrpKrj8LIxxh6gkrPOn+jQtKQSX3o7q35Rcv
W3vWLRYdH+pHsfJqCdT0wL4oBTLa7ozdsufX9l6UDgT4ECxLf7R1TtNj7XA1jaaefThL0F1AUCjF
5WuhMqBOotpDZUmvB91yVtbXLMm0r85tK9b/iA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
F+2u+w5qYCItGY6yOOscyGTguBx9r0jHUCk8DDfs4SLXTleYo0ATyJZl9P8HOx22hBMEmLx7IUbf
4736W2ug/6yYcjGe9fruLXNYGN+UGhnsZhMbtDG4+lSVKNU0CW05/qAdd6dU3dCPfwoHEA7jD+kv
ko6S1phvJkBz5OpSmeG1OW2hNzUeLKmVRewGUsg3n7nl9N4Rz0qKvvv74MmODvnZUhX3wrWrCDZV
VIPcEUAsL3FQsuxu8Tbv8iPGPyX4MXcw0X5uZIs1/a49E35eXN+s3OlNRBuleFz5CwQLhZBOpTn9
JQ4RvzukO0vlkw61Di6vaLTOD5OVehRjw7yIdQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
eO4uQgQ8xXjCXEhr+uNmUKNOWYQoqMhLmG9ubZUdQYXJ3qcua3j9esmo5jVliI2tS1ACfIKrUlJ0
aYT/zaYi4XnXYQwvfW2YdJfum6A7OxXVZOL/9Y5B0KYiYLyiA1qEgdU3R3UHeDpaaw8Y5qX7QZVP
edeuPjGxYBR++IR9P0s2AgFrthn0xJ64kEM1qy/h/cC0KxnLyTwlqfY9AmQ790FeicwTUJaziO4L
/6pS7Rg1rc5tiU2GQfaZKKZyaOqGD7J+WmXIyygP4xWJxDzVOvgVSnhnNB8jkJBWpN3bmPM1U8KH
oEGq5cqwvUR+4qAq89nYxG1qg0YMMMOwST7BXg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15888)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity c_addsub_0_c_addsub_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of c_addsub_0_c_addsub_v12_0_12 : entity is 2;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of c_addsub_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of c_addsub_0_c_addsub_v12_0_12 : entity is 8;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of c_addsub_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of c_addsub_0_c_addsub_v12_0_12 : entity is "00000000";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of c_addsub_0_c_addsub_v12_0_12 : entity is 8;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of c_addsub_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of c_addsub_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of c_addsub_0_c_addsub_v12_0_12 : entity is 8;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of c_addsub_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of c_addsub_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of c_addsub_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of c_addsub_0_c_addsub_v12_0_12 : entity is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of c_addsub_0_c_addsub_v12_0_12 : entity is "yes";
end c_addsub_0_c_addsub_v12_0_12;

architecture STRUCTURE of c_addsub_0_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xst_addsub_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL of xst_addsub : label is "0";
  attribute C_BORROW_LOW of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_BYPASS of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_SCLR of xst_addsub : label is 0;
  attribute C_HAS_CE of xst_addsub : label is 0;
  attribute C_HAS_SCLR of xst_addsub : label is 0;
  attribute C_HAS_SINIT of xst_addsub : label is 0;
  attribute C_HAS_SSET of xst_addsub : label is 0;
  attribute C_IMPLEMENTATION of xst_addsub : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of xst_addsub : label is 1;
  attribute C_SINIT_VAL of xst_addsub : label is "0";
  attribute C_VERBOSITY of xst_addsub : label is 0;
  attribute C_XDEVICEFAMILY of xst_addsub : label is "zynq";
  attribute c_a_type of xst_addsub : label is 0;
  attribute c_a_width of xst_addsub : label is 8;
  attribute c_add_mode of xst_addsub : label is 2;
  attribute c_b_constant of xst_addsub : label is 0;
  attribute c_b_type of xst_addsub : label is 0;
  attribute c_b_value of xst_addsub : label is "00000000";
  attribute c_b_width of xst_addsub : label is 8;
  attribute c_bypass_low of xst_addsub : label is 0;
  attribute c_has_bypass of xst_addsub : label is 0;
  attribute c_has_c_in of xst_addsub : label is 0;
  attribute c_has_c_out of xst_addsub : label is 0;
  attribute c_latency of xst_addsub : label is 1;
  attribute c_out_width of xst_addsub : label is 8;
  attribute downgradeipidentifiedwarnings of xst_addsub : label is "yes";
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.c_addsub_0_c_addsub_v12_0_12_viv
     port map (
      A(7 downto 0) => A(7 downto 0),
      ADD => ADD,
      B(7 downto 0) => B(7 downto 0),
      BYPASS => '0',
      CE => '0',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_xst_addsub_C_OUT_UNCONNECTED,
      S(7 downto 0) => S(7 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity c_addsub_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of c_addsub_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of c_addsub_0 : entity is "c_addsub_0,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of c_addsub_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of c_addsub_0 : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end c_addsub_0;

architecture STRUCTURE of c_addsub_0 is
  signal NLW_U0_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of U0 : label is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of U0 : label is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute c_a_type : integer;
  attribute c_a_type of U0 : label is 0;
  attribute c_a_width : integer;
  attribute c_a_width of U0 : label is 8;
  attribute c_add_mode : integer;
  attribute c_add_mode of U0 : label is 2;
  attribute c_b_constant : integer;
  attribute c_b_constant of U0 : label is 0;
  attribute c_b_type : integer;
  attribute c_b_type of U0 : label is 0;
  attribute c_b_value : string;
  attribute c_b_value of U0 : label is "00000000";
  attribute c_b_width : integer;
  attribute c_b_width of U0 : label is 8;
  attribute c_bypass_low : integer;
  attribute c_bypass_low of U0 : label is 0;
  attribute c_has_bypass : integer;
  attribute c_has_bypass of U0 : label is 0;
  attribute c_has_c_in : integer;
  attribute c_has_c_in of U0 : label is 0;
  attribute c_has_c_out : integer;
  attribute c_has_c_out of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_out_width : integer;
  attribute c_out_width of U0 : label is 8;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of ADD : signal is "xilinx.com:signal:data:1.0 add_intf DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ADD : signal is "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef";
begin
U0: entity work.c_addsub_0_c_addsub_v12_0_12
     port map (
      A(7 downto 0) => A(7 downto 0),
      ADD => ADD,
      B(7 downto 0) => B(7 downto 0),
      BYPASS => '0',
      CE => '1',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(7 downto 0) => S(7 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
