-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/07/2023 16:03:04"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab3_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|clk_divider:counter[0]~0_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[10]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[10]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[10]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \inst7|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \inst7|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \inst7|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \inst5|OUTPUT[2]~1_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \inst5|OUTPUT[3]~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \inst5|OUTPUT[0]~3_combout\ : std_logic;
SIGNAL \inst7|Add1~1_cout\ : std_logic;
SIGNAL \inst7|Add1~3\ : std_logic;
SIGNAL \inst7|Add1~4_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[2]~4_combout\ : std_logic;
SIGNAL \inst6|output_AGTB~2_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \inst5|OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \inst6|output_ALTB~1_combout\ : std_logic;
SIGNAL \inst6|output_ALTB~0_combout\ : std_logic;
SIGNAL \inst6|output_ALTB~2_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[2]~3_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[2]~q\ : std_logic;
SIGNAL \inst7|counter:cnt[2]~2_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[0]~1_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[0]~q\ : std_logic;
SIGNAL \inst6|inst3|output_AEQB~0_combout\ : std_logic;
SIGNAL \inst6|output_AEQB~0_combout\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \inst7|counter:cnt[2]~0_combout\ : std_logic;
SIGNAL \inst7|cnt~0_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[2]~1_combout\ : std_logic;
SIGNAL \inst7|Add1~5\ : std_logic;
SIGNAL \inst7|Add1~6_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[3]~0_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[3]~q\ : std_logic;
SIGNAL \inst6|output_AGTB~0_combout\ : std_logic;
SIGNAL \inst6|output_AGTB~1_combout\ : std_logic;
SIGNAL \inst6|output_AGTB~3_combout\ : std_logic;
SIGNAL \inst7|Add1~2_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[1]~0_combout\ : std_logic;
SIGNAL \inst7|counter:cnt[1]~q\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \inst8|blower~0_combout\ : std_logic;
SIGNAL \inst8|blower~1_combout\ : std_logic;
SIGNAL \inst9|LessThan0~0_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~6_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~7_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~3_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~4_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~5_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~8_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~0_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~1_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~2_combout\ : std_logic;
SIGNAL \inst9|TEST_PASS~9_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_pb_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[3]~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_output_AEQB~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_clk_divider:counter[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\inst7|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|clk_divider:counter[23]~q\);
\ALT_INV_pb_n[1]~input_o\ <= NOT \pb_n[1]~input_o\;
\ALT_INV_pb_n[0]~input_o\ <= NOT \pb_n[0]~input_o\;
\ALT_INV_pb_n[3]~input_o\ <= NOT \pb_n[3]~input_o\;
\inst3|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst3|DOUT[4]~4_combout\;
\inst3|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst3|DOUT[3]~3_combout\;
\inst3|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst3|DOUT[2]~2_combout\;
\inst3|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst3|DOUT[0]~0_combout\;
\inst6|ALT_INV_output_AEQB~0_combout\ <= NOT \inst6|output_AEQB~0_combout\;
\inst7|ALT_INV_clk_divider:counter[10]~q\ <= NOT \inst7|clk_divider:counter[10]~q\;

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output_AGTB~3_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_output_AEQB~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output_ALTB~2_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|blower~1_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|TEST_PASS~9_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_clk_divider:counter[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|clk_divider:counter[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y15_N2
\inst7|clk_divider:counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[0]~0_combout\ = !\inst7|clk_divider:counter[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|clk_divider:counter[0]~q\,
	combout => \inst7|clk_divider:counter[0]~0_combout\);

-- Location: FF_X14_Y15_N3
\inst7|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[0]~q\);

-- Location: LCCOMB_X14_Y15_N10
\inst7|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[1]~1_combout\ = (\inst7|clk_divider:counter[1]~q\ & (\inst7|clk_divider:counter[0]~q\ $ (VCC))) # (!\inst7|clk_divider:counter[1]~q\ & (\inst7|clk_divider:counter[0]~q\ & VCC))
-- \inst7|clk_divider:counter[1]~2\ = CARRY((\inst7|clk_divider:counter[1]~q\ & \inst7|clk_divider:counter[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[1]~q\,
	datab => \inst7|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \inst7|clk_divider:counter[1]~1_combout\,
	cout => \inst7|clk_divider:counter[1]~2\);

-- Location: FF_X14_Y15_N11
\inst7|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X14_Y15_N12
\inst7|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[2]~1_combout\ = (\inst7|clk_divider:counter[2]~q\ & (!\inst7|clk_divider:counter[1]~2\)) # (!\inst7|clk_divider:counter[2]~q\ & ((\inst7|clk_divider:counter[1]~2\) # (GND)))
-- \inst7|clk_divider:counter[2]~2\ = CARRY((!\inst7|clk_divider:counter[1]~2\) # (!\inst7|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[1]~2\,
	combout => \inst7|clk_divider:counter[2]~1_combout\,
	cout => \inst7|clk_divider:counter[2]~2\);

-- Location: FF_X14_Y15_N13
\inst7|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X14_Y15_N14
\inst7|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[3]~1_combout\ = (\inst7|clk_divider:counter[3]~q\ & (\inst7|clk_divider:counter[2]~2\ $ (GND))) # (!\inst7|clk_divider:counter[3]~q\ & (!\inst7|clk_divider:counter[2]~2\ & VCC))
-- \inst7|clk_divider:counter[3]~2\ = CARRY((\inst7|clk_divider:counter[3]~q\ & !\inst7|clk_divider:counter[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[2]~2\,
	combout => \inst7|clk_divider:counter[3]~1_combout\,
	cout => \inst7|clk_divider:counter[3]~2\);

-- Location: FF_X14_Y15_N15
\inst7|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X14_Y15_N16
\inst7|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[4]~1_combout\ = (\inst7|clk_divider:counter[4]~q\ & (!\inst7|clk_divider:counter[3]~2\)) # (!\inst7|clk_divider:counter[4]~q\ & ((\inst7|clk_divider:counter[3]~2\) # (GND)))
-- \inst7|clk_divider:counter[4]~2\ = CARRY((!\inst7|clk_divider:counter[3]~2\) # (!\inst7|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[3]~2\,
	combout => \inst7|clk_divider:counter[4]~1_combout\,
	cout => \inst7|clk_divider:counter[4]~2\);

-- Location: FF_X14_Y15_N17
\inst7|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X14_Y15_N18
\inst7|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[5]~1_combout\ = (\inst7|clk_divider:counter[5]~q\ & (\inst7|clk_divider:counter[4]~2\ $ (GND))) # (!\inst7|clk_divider:counter[5]~q\ & (!\inst7|clk_divider:counter[4]~2\ & VCC))
-- \inst7|clk_divider:counter[5]~2\ = CARRY((\inst7|clk_divider:counter[5]~q\ & !\inst7|clk_divider:counter[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[4]~2\,
	combout => \inst7|clk_divider:counter[5]~1_combout\,
	cout => \inst7|clk_divider:counter[5]~2\);

-- Location: FF_X14_Y15_N19
\inst7|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X14_Y15_N20
\inst7|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[6]~1_combout\ = (\inst7|clk_divider:counter[6]~q\ & (!\inst7|clk_divider:counter[5]~2\)) # (!\inst7|clk_divider:counter[6]~q\ & ((\inst7|clk_divider:counter[5]~2\) # (GND)))
-- \inst7|clk_divider:counter[6]~2\ = CARRY((!\inst7|clk_divider:counter[5]~2\) # (!\inst7|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[5]~2\,
	combout => \inst7|clk_divider:counter[6]~1_combout\,
	cout => \inst7|clk_divider:counter[6]~2\);

-- Location: FF_X14_Y15_N21
\inst7|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X14_Y15_N22
\inst7|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[7]~1_combout\ = (\inst7|clk_divider:counter[7]~q\ & (\inst7|clk_divider:counter[6]~2\ $ (GND))) # (!\inst7|clk_divider:counter[7]~q\ & (!\inst7|clk_divider:counter[6]~2\ & VCC))
-- \inst7|clk_divider:counter[7]~2\ = CARRY((\inst7|clk_divider:counter[7]~q\ & !\inst7|clk_divider:counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[6]~2\,
	combout => \inst7|clk_divider:counter[7]~1_combout\,
	cout => \inst7|clk_divider:counter[7]~2\);

-- Location: FF_X14_Y15_N23
\inst7|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X14_Y15_N24
\inst7|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[8]~1_combout\ = (\inst7|clk_divider:counter[8]~q\ & (!\inst7|clk_divider:counter[7]~2\)) # (!\inst7|clk_divider:counter[8]~q\ & ((\inst7|clk_divider:counter[7]~2\) # (GND)))
-- \inst7|clk_divider:counter[8]~2\ = CARRY((!\inst7|clk_divider:counter[7]~2\) # (!\inst7|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[7]~2\,
	combout => \inst7|clk_divider:counter[8]~1_combout\,
	cout => \inst7|clk_divider:counter[8]~2\);

-- Location: FF_X14_Y15_N25
\inst7|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X14_Y15_N26
\inst7|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[9]~1_combout\ = (\inst7|clk_divider:counter[9]~q\ & (\inst7|clk_divider:counter[8]~2\ $ (GND))) # (!\inst7|clk_divider:counter[9]~q\ & (!\inst7|clk_divider:counter[8]~2\ & VCC))
-- \inst7|clk_divider:counter[9]~2\ = CARRY((\inst7|clk_divider:counter[9]~q\ & !\inst7|clk_divider:counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[8]~2\,
	combout => \inst7|clk_divider:counter[9]~1_combout\,
	cout => \inst7|clk_divider:counter[9]~2\);

-- Location: FF_X14_Y15_N27
\inst7|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X14_Y15_N28
\inst7|clk_divider:counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[10]~1_combout\ = (\inst7|clk_divider:counter[10]~q\ & (!\inst7|clk_divider:counter[9]~2\)) # (!\inst7|clk_divider:counter[10]~q\ & ((\inst7|clk_divider:counter[9]~2\) # (GND)))
-- \inst7|clk_divider:counter[10]~2\ = CARRY((!\inst7|clk_divider:counter[9]~2\) # (!\inst7|clk_divider:counter[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[10]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[9]~2\,
	combout => \inst7|clk_divider:counter[10]~1_combout\,
	cout => \inst7|clk_divider:counter[10]~2\);

-- Location: FF_X14_Y15_N29
\inst7|clk_divider:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[10]~q\);

-- Location: LCCOMB_X14_Y15_N30
\inst7|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[11]~1_combout\ = (\inst7|clk_divider:counter[11]~q\ & (\inst7|clk_divider:counter[10]~2\ $ (GND))) # (!\inst7|clk_divider:counter[11]~q\ & (!\inst7|clk_divider:counter[10]~2\ & VCC))
-- \inst7|clk_divider:counter[11]~2\ = CARRY((\inst7|clk_divider:counter[11]~q\ & !\inst7|clk_divider:counter[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[10]~2\,
	combout => \inst7|clk_divider:counter[11]~1_combout\,
	cout => \inst7|clk_divider:counter[11]~2\);

-- Location: FF_X14_Y15_N31
\inst7|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X14_Y14_N0
\inst7|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[12]~1_combout\ = (\inst7|clk_divider:counter[12]~q\ & (!\inst7|clk_divider:counter[11]~2\)) # (!\inst7|clk_divider:counter[12]~q\ & ((\inst7|clk_divider:counter[11]~2\) # (GND)))
-- \inst7|clk_divider:counter[12]~2\ = CARRY((!\inst7|clk_divider:counter[11]~2\) # (!\inst7|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[11]~2\,
	combout => \inst7|clk_divider:counter[12]~1_combout\,
	cout => \inst7|clk_divider:counter[12]~2\);

-- Location: FF_X14_Y14_N1
\inst7|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X14_Y14_N2
\inst7|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[13]~1_combout\ = (\inst7|clk_divider:counter[13]~q\ & (\inst7|clk_divider:counter[12]~2\ $ (GND))) # (!\inst7|clk_divider:counter[13]~q\ & (!\inst7|clk_divider:counter[12]~2\ & VCC))
-- \inst7|clk_divider:counter[13]~2\ = CARRY((\inst7|clk_divider:counter[13]~q\ & !\inst7|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[12]~2\,
	combout => \inst7|clk_divider:counter[13]~1_combout\,
	cout => \inst7|clk_divider:counter[13]~2\);

-- Location: FF_X14_Y14_N3
\inst7|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X14_Y14_N4
\inst7|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[14]~1_combout\ = (\inst7|clk_divider:counter[14]~q\ & (!\inst7|clk_divider:counter[13]~2\)) # (!\inst7|clk_divider:counter[14]~q\ & ((\inst7|clk_divider:counter[13]~2\) # (GND)))
-- \inst7|clk_divider:counter[14]~2\ = CARRY((!\inst7|clk_divider:counter[13]~2\) # (!\inst7|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[13]~2\,
	combout => \inst7|clk_divider:counter[14]~1_combout\,
	cout => \inst7|clk_divider:counter[14]~2\);

-- Location: FF_X14_Y14_N5
\inst7|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X14_Y14_N6
\inst7|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[15]~1_combout\ = (\inst7|clk_divider:counter[15]~q\ & (\inst7|clk_divider:counter[14]~2\ $ (GND))) # (!\inst7|clk_divider:counter[15]~q\ & (!\inst7|clk_divider:counter[14]~2\ & VCC))
-- \inst7|clk_divider:counter[15]~2\ = CARRY((\inst7|clk_divider:counter[15]~q\ & !\inst7|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[14]~2\,
	combout => \inst7|clk_divider:counter[15]~1_combout\,
	cout => \inst7|clk_divider:counter[15]~2\);

-- Location: FF_X14_Y14_N7
\inst7|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X14_Y14_N8
\inst7|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[16]~1_combout\ = (\inst7|clk_divider:counter[16]~q\ & (!\inst7|clk_divider:counter[15]~2\)) # (!\inst7|clk_divider:counter[16]~q\ & ((\inst7|clk_divider:counter[15]~2\) # (GND)))
-- \inst7|clk_divider:counter[16]~2\ = CARRY((!\inst7|clk_divider:counter[15]~2\) # (!\inst7|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[15]~2\,
	combout => \inst7|clk_divider:counter[16]~1_combout\,
	cout => \inst7|clk_divider:counter[16]~2\);

-- Location: FF_X14_Y14_N9
\inst7|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X14_Y14_N10
\inst7|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[17]~1_combout\ = (\inst7|clk_divider:counter[17]~q\ & (\inst7|clk_divider:counter[16]~2\ $ (GND))) # (!\inst7|clk_divider:counter[17]~q\ & (!\inst7|clk_divider:counter[16]~2\ & VCC))
-- \inst7|clk_divider:counter[17]~2\ = CARRY((\inst7|clk_divider:counter[17]~q\ & !\inst7|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[16]~2\,
	combout => \inst7|clk_divider:counter[17]~1_combout\,
	cout => \inst7|clk_divider:counter[17]~2\);

-- Location: FF_X14_Y14_N11
\inst7|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X14_Y14_N12
\inst7|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[18]~1_combout\ = (\inst7|clk_divider:counter[18]~q\ & (!\inst7|clk_divider:counter[17]~2\)) # (!\inst7|clk_divider:counter[18]~q\ & ((\inst7|clk_divider:counter[17]~2\) # (GND)))
-- \inst7|clk_divider:counter[18]~2\ = CARRY((!\inst7|clk_divider:counter[17]~2\) # (!\inst7|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[17]~2\,
	combout => \inst7|clk_divider:counter[18]~1_combout\,
	cout => \inst7|clk_divider:counter[18]~2\);

-- Location: FF_X14_Y14_N13
\inst7|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X14_Y14_N14
\inst7|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[19]~1_combout\ = (\inst7|clk_divider:counter[19]~q\ & (\inst7|clk_divider:counter[18]~2\ $ (GND))) # (!\inst7|clk_divider:counter[19]~q\ & (!\inst7|clk_divider:counter[18]~2\ & VCC))
-- \inst7|clk_divider:counter[19]~2\ = CARRY((\inst7|clk_divider:counter[19]~q\ & !\inst7|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[18]~2\,
	combout => \inst7|clk_divider:counter[19]~1_combout\,
	cout => \inst7|clk_divider:counter[19]~2\);

-- Location: FF_X14_Y14_N15
\inst7|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X14_Y14_N16
\inst7|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[20]~1_combout\ = (\inst7|clk_divider:counter[20]~q\ & (!\inst7|clk_divider:counter[19]~2\)) # (!\inst7|clk_divider:counter[20]~q\ & ((\inst7|clk_divider:counter[19]~2\) # (GND)))
-- \inst7|clk_divider:counter[20]~2\ = CARRY((!\inst7|clk_divider:counter[19]~2\) # (!\inst7|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[19]~2\,
	combout => \inst7|clk_divider:counter[20]~1_combout\,
	cout => \inst7|clk_divider:counter[20]~2\);

-- Location: FF_X14_Y14_N17
\inst7|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X14_Y14_N18
\inst7|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[21]~1_combout\ = (\inst7|clk_divider:counter[21]~q\ & (\inst7|clk_divider:counter[20]~2\ $ (GND))) # (!\inst7|clk_divider:counter[21]~q\ & (!\inst7|clk_divider:counter[20]~2\ & VCC))
-- \inst7|clk_divider:counter[21]~2\ = CARRY((\inst7|clk_divider:counter[21]~q\ & !\inst7|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[20]~2\,
	combout => \inst7|clk_divider:counter[21]~1_combout\,
	cout => \inst7|clk_divider:counter[21]~2\);

-- Location: FF_X14_Y14_N19
\inst7|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X14_Y14_N20
\inst7|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[22]~1_combout\ = (\inst7|clk_divider:counter[22]~q\ & (!\inst7|clk_divider:counter[21]~2\)) # (!\inst7|clk_divider:counter[22]~q\ & ((\inst7|clk_divider:counter[21]~2\) # (GND)))
-- \inst7|clk_divider:counter[22]~2\ = CARRY((!\inst7|clk_divider:counter[21]~2\) # (!\inst7|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \inst7|clk_divider:counter[21]~2\,
	combout => \inst7|clk_divider:counter[22]~1_combout\,
	cout => \inst7|clk_divider:counter[22]~2\);

-- Location: FF_X14_Y14_N21
\inst7|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X14_Y14_N22
\inst7|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|clk_divider:counter[23]~1_combout\ = \inst7|clk_divider:counter[22]~2\ $ (!\inst7|clk_divider:counter[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|clk_divider:counter[23]~q\,
	cin => \inst7|clk_divider:counter[22]~2\,
	combout => \inst7|clk_divider:counter[23]~1_combout\);

-- Location: FF_X14_Y14_N23
\inst7|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst7|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_divider:counter[23]~q\);

-- Location: CLKCTRL_G5
\inst7|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|clk_divider:counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X6_Y0_N15
\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X11_Y14_N14
\inst5|OUTPUT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|OUTPUT[2]~1_combout\ = (\pb_n[3]~input_o\ & ((\sw[2]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[3]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \inst5|OUTPUT[2]~1_combout\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X11_Y14_N24
\inst5|OUTPUT[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|OUTPUT[3]~0_combout\ = (\pb_n[3]~input_o\ & (\sw[3]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \pb_n[3]~input_o\,
	datac => \sw[7]~input_o\,
	combout => \inst5|OUTPUT[3]~0_combout\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X11_Y14_N30
\inst5|OUTPUT[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|OUTPUT[0]~3_combout\ = (\pb_n[3]~input_o\ & (\sw[0]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \inst5|OUTPUT[0]~3_combout\);

-- Location: LCCOMB_X12_Y14_N12
\inst7|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add1~1_cout\ = CARRY(!\inst7|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter:cnt[0]~q\,
	datad => VCC,
	cout => \inst7|Add1~1_cout\);

-- Location: LCCOMB_X12_Y14_N14
\inst7|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add1~2_combout\ = (\inst7|counter:cnt[1]~q\ & ((\inst6|output_AGTB~3_combout\ & ((\inst7|Add1~1_cout\) # (GND))) # (!\inst6|output_AGTB~3_combout\ & (!\inst7|Add1~1_cout\)))) # (!\inst7|counter:cnt[1]~q\ & ((\inst6|output_AGTB~3_combout\ & 
-- (!\inst7|Add1~1_cout\)) # (!\inst6|output_AGTB~3_combout\ & (\inst7|Add1~1_cout\ & VCC))))
-- \inst7|Add1~3\ = CARRY((\inst7|counter:cnt[1]~q\ & ((\inst6|output_AGTB~3_combout\) # (!\inst7|Add1~1_cout\))) # (!\inst7|counter:cnt[1]~q\ & (\inst6|output_AGTB~3_combout\ & !\inst7|Add1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[1]~q\,
	datab => \inst6|output_AGTB~3_combout\,
	datad => VCC,
	cin => \inst7|Add1~1_cout\,
	combout => \inst7|Add1~2_combout\,
	cout => \inst7|Add1~3\);

-- Location: LCCOMB_X12_Y14_N16
\inst7|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add1~4_combout\ = ((\inst7|counter:cnt[2]~q\ $ (\inst6|output_AGTB~3_combout\ $ (!\inst7|Add1~3\)))) # (GND)
-- \inst7|Add1~5\ = CARRY((\inst7|counter:cnt[2]~q\ & (!\inst6|output_AGTB~3_combout\ & !\inst7|Add1~3\)) # (!\inst7|counter:cnt[2]~q\ & ((!\inst7|Add1~3\) # (!\inst6|output_AGTB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[2]~q\,
	datab => \inst6|output_AGTB~3_combout\,
	datad => VCC,
	cin => \inst7|Add1~3\,
	combout => \inst7|Add1~4_combout\,
	cout => \inst7|Add1~5\);

-- Location: LCCOMB_X12_Y14_N20
\inst7|counter:cnt[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[2]~4_combout\ = !\inst7|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add1~4_combout\,
	combout => \inst7|counter:cnt[2]~4_combout\);

-- Location: LCCOMB_X12_Y14_N0
\inst6|output_AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|output_AGTB~2_combout\ = (\inst5|OUTPUT[2]~1_combout\ & (!\inst7|counter:cnt[2]~q\ & (\inst5|OUTPUT[3]~0_combout\ $ (!\inst7|counter:cnt[3]~q\)))) # (!\inst5|OUTPUT[2]~1_combout\ & (\inst7|counter:cnt[2]~q\ & (\inst5|OUTPUT[3]~0_combout\ $ 
-- (!\inst7|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[2]~1_combout\,
	datab => \inst5|OUTPUT[3]~0_combout\,
	datac => \inst7|counter:cnt[3]~q\,
	datad => \inst7|counter:cnt[2]~q\,
	combout => \inst6|output_AGTB~2_combout\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X11_Y14_N0
\inst5|OUTPUT[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|OUTPUT[1]~2_combout\ = (\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \pb_n[3]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \inst5|OUTPUT[1]~2_combout\);

-- Location: LCCOMB_X13_Y14_N14
\inst6|output_ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|output_ALTB~1_combout\ = (\inst5|OUTPUT[1]~2_combout\ & (!\inst7|counter:cnt[0]~q\ & (!\inst5|OUTPUT[0]~3_combout\ & !\inst7|counter:cnt[1]~q\))) # (!\inst5|OUTPUT[1]~2_combout\ & (((!\inst7|counter:cnt[0]~q\ & !\inst5|OUTPUT[0]~3_combout\)) # 
-- (!\inst7|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[1]~2_combout\,
	datab => \inst7|counter:cnt[0]~q\,
	datac => \inst5|OUTPUT[0]~3_combout\,
	datad => \inst7|counter:cnt[1]~q\,
	combout => \inst6|output_ALTB~1_combout\);

-- Location: LCCOMB_X13_Y14_N16
\inst6|output_ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|output_ALTB~0_combout\ = (\inst5|OUTPUT[3]~0_combout\ & (!\inst5|OUTPUT[2]~1_combout\ & (\inst7|counter:cnt[3]~q\ & !\inst7|counter:cnt[2]~q\))) # (!\inst5|OUTPUT[3]~0_combout\ & ((\inst7|counter:cnt[3]~q\) # ((!\inst5|OUTPUT[2]~1_combout\ & 
-- !\inst7|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[3]~0_combout\,
	datab => \inst5|OUTPUT[2]~1_combout\,
	datac => \inst7|counter:cnt[3]~q\,
	datad => \inst7|counter:cnt[2]~q\,
	combout => \inst6|output_ALTB~0_combout\);

-- Location: LCCOMB_X13_Y14_N8
\inst6|output_ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|output_ALTB~2_combout\ = (\inst6|output_ALTB~0_combout\) # ((\inst6|output_AGTB~2_combout\ & \inst6|output_ALTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output_AGTB~2_combout\,
	datac => \inst6|output_ALTB~1_combout\,
	datad => \inst6|output_ALTB~0_combout\,
	combout => \inst6|output_ALTB~2_combout\);

-- Location: LCCOMB_X12_Y14_N30
\inst7|counter:cnt[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[2]~3_combout\ = (!\inst7|counter:cnt[2]~1_combout\ & ((\inst6|output_AGTB~3_combout\) # ((!\inst7|counter:cnt[2]~2_combout\ & \inst6|output_ALTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[2]~2_combout\,
	datab => \inst6|output_ALTB~2_combout\,
	datac => \inst6|output_AGTB~3_combout\,
	datad => \inst7|counter:cnt[2]~1_combout\,
	combout => \inst7|counter:cnt[2]~3_combout\);

-- Location: FF_X12_Y14_N21
\inst7|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst7|counter:cnt[2]~4_combout\,
	ena => \inst7|counter:cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter:cnt[2]~q\);

-- Location: LCCOMB_X13_Y14_N4
\inst7|counter:cnt[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[2]~2_combout\ = (\inst7|counter:cnt[1]~q\ & (!\inst7|counter:cnt[3]~q\ & (\inst7|counter:cnt[0]~q\ & \inst7|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[1]~q\,
	datab => \inst7|counter:cnt[3]~q\,
	datac => \inst7|counter:cnt[0]~q\,
	datad => \inst7|counter:cnt[2]~q\,
	combout => \inst7|counter:cnt[2]~2_combout\);

-- Location: LCCOMB_X13_Y14_N26
\inst7|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[0]~0_combout\ = (!\inst6|output_AGTB~3_combout\ & ((\inst7|counter:cnt[2]~2_combout\) # (!\inst6|output_ALTB~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter:cnt[2]~2_combout\,
	datac => \inst6|output_ALTB~2_combout\,
	datad => \inst6|output_AGTB~3_combout\,
	combout => \inst7|counter:cnt[0]~0_combout\);

-- Location: LCCOMB_X13_Y14_N0
\inst7|counter:cnt[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[0]~1_combout\ = \inst7|counter:cnt[0]~q\ $ (((!\inst7|counter:cnt[0]~0_combout\ & !\inst7|counter:cnt[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter:cnt[0]~q\,
	datac => \inst7|counter:cnt[0]~0_combout\,
	datad => \inst7|counter:cnt[2]~1_combout\,
	combout => \inst7|counter:cnt[0]~1_combout\);

-- Location: FF_X12_Y14_N25
\inst7|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \inst7|counter:cnt[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter:cnt[0]~q\);

-- Location: LCCOMB_X12_Y14_N4
\inst6|inst3|output_AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3|output_AEQB~0_combout\ = \inst7|counter:cnt[1]~q\ $ (((\pb_n[3]~input_o\ & ((!\sw[1]~input_o\))) # (!\pb_n[3]~input_o\ & (!\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb_n[3]~input_o\,
	datad => \inst7|counter:cnt[1]~q\,
	combout => \inst6|inst3|output_AEQB~0_combout\);

-- Location: LCCOMB_X12_Y14_N6
\inst6|output_AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|output_AEQB~0_combout\ = (\inst6|inst3|output_AEQB~0_combout\) # ((\inst5|OUTPUT[0]~3_combout\ $ (!\inst7|counter:cnt[0]~q\)) # (!\inst6|output_AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[0]~3_combout\,
	datab => \inst7|counter:cnt[0]~q\,
	datac => \inst6|inst3|output_AEQB~0_combout\,
	datad => \inst6|output_AGTB~2_combout\,
	combout => \inst6|output_AEQB~0_combout\);

-- Location: IOIBUF_X9_Y0_N22
\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

-- Location: LCCOMB_X11_Y13_N2
\inst7|counter:cnt[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[2]~0_combout\ = ((!\pb_n[2]~input_o\) # (!\pb_n[0]~input_o\)) # (!\pb_n[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[1]~input_o\,
	datac => \pb_n[0]~input_o\,
	datad => \pb_n[2]~input_o\,
	combout => \inst7|counter:cnt[2]~0_combout\);

-- Location: LCCOMB_X12_Y14_N24
\inst7|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|cnt~0_combout\ = (\inst7|counter:cnt[3]~q\ & (!\inst7|counter:cnt[2]~q\ & (!\inst7|counter:cnt[0]~q\ & !\inst7|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[3]~q\,
	datab => \inst7|counter:cnt[2]~q\,
	datac => \inst7|counter:cnt[0]~q\,
	datad => \inst7|counter:cnt[1]~q\,
	combout => \inst7|cnt~0_combout\);

-- Location: LCCOMB_X12_Y14_N28
\inst7|counter:cnt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[2]~1_combout\ = ((\inst7|counter:cnt[2]~0_combout\) # ((\inst7|cnt~0_combout\ & \inst6|output_AGTB~3_combout\))) # (!\inst6|output_AEQB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output_AEQB~0_combout\,
	datab => \inst7|counter:cnt[2]~0_combout\,
	datac => \inst7|cnt~0_combout\,
	datad => \inst6|output_AGTB~3_combout\,
	combout => \inst7|counter:cnt[2]~1_combout\);

-- Location: LCCOMB_X12_Y14_N18
\inst7|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Add1~6_combout\ = \inst7|counter:cnt[3]~q\ $ (\inst7|Add1~5\ $ (!\inst6|output_AGTB~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[3]~q\,
	datad => \inst6|output_AGTB~3_combout\,
	cin => \inst7|Add1~5\,
	combout => \inst7|Add1~6_combout\);

-- Location: LCCOMB_X12_Y14_N22
\inst7|counter:cnt[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[3]~0_combout\ = (\inst7|counter:cnt[2]~1_combout\ & (((\inst7|counter:cnt[3]~q\)))) # (!\inst7|counter:cnt[2]~1_combout\ & ((\inst7|counter:cnt[0]~0_combout\ & (\inst7|counter:cnt[3]~q\)) # (!\inst7|counter:cnt[0]~0_combout\ & 
-- ((\inst7|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[2]~1_combout\,
	datab => \inst7|counter:cnt[0]~0_combout\,
	datac => \inst7|counter:cnt[3]~q\,
	datad => \inst7|Add1~6_combout\,
	combout => \inst7|counter:cnt[3]~0_combout\);

-- Location: FF_X12_Y14_N23
\inst7|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst7|counter:cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter:cnt[3]~q\);

-- Location: LCCOMB_X12_Y14_N8
\inst6|output_AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|output_AGTB~0_combout\ = (\inst5|OUTPUT[3]~0_combout\ & (((\inst5|OUTPUT[2]~1_combout\ & \inst7|counter:cnt[2]~q\)) # (!\inst7|counter:cnt[3]~q\))) # (!\inst5|OUTPUT[3]~0_combout\ & (\inst5|OUTPUT[2]~1_combout\ & (!\inst7|counter:cnt[3]~q\ & 
-- \inst7|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[2]~1_combout\,
	datab => \inst5|OUTPUT[3]~0_combout\,
	datac => \inst7|counter:cnt[3]~q\,
	datad => \inst7|counter:cnt[2]~q\,
	combout => \inst6|output_AGTB~0_combout\);

-- Location: LCCOMB_X12_Y14_N26
\inst6|output_AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|output_AGTB~1_combout\ = (\inst7|counter:cnt[1]~q\ & ((\inst5|OUTPUT[1]~2_combout\) # ((\inst5|OUTPUT[0]~3_combout\ & \inst7|counter:cnt[0]~q\)))) # (!\inst7|counter:cnt[1]~q\ & (\inst5|OUTPUT[1]~2_combout\ & (\inst5|OUTPUT[0]~3_combout\ & 
-- \inst7|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[1]~q\,
	datab => \inst5|OUTPUT[1]~2_combout\,
	datac => \inst5|OUTPUT[0]~3_combout\,
	datad => \inst7|counter:cnt[0]~q\,
	combout => \inst6|output_AGTB~1_combout\);

-- Location: LCCOMB_X12_Y14_N2
\inst6|output_AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|output_AGTB~3_combout\ = (\inst6|output_AGTB~0_combout\) # ((\inst6|output_AGTB~1_combout\ & \inst6|output_AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|output_AGTB~0_combout\,
	datac => \inst6|output_AGTB~1_combout\,
	datad => \inst6|output_AGTB~2_combout\,
	combout => \inst6|output_AGTB~3_combout\);

-- Location: LCCOMB_X12_Y14_N10
\inst7|counter:cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|counter:cnt[1]~0_combout\ = !\inst7|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add1~2_combout\,
	combout => \inst7|counter:cnt[1]~0_combout\);

-- Location: FF_X12_Y14_N11
\inst7|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst7|counter:cnt[1]~0_combout\,
	ena => \inst7|counter:cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|counter:cnt[1]~q\);

-- Location: LCCOMB_X13_Y14_N24
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst7|counter:cnt[1]~q\ & (!\inst7|counter:cnt[2]~q\ & (\inst7|counter:cnt[3]~q\ $ (!\inst7|counter:cnt[0]~q\)))) # (!\inst7|counter:cnt[1]~q\ & ((\inst7|counter:cnt[0]~q\ & ((!\inst7|counter:cnt[2]~q\))) # 
-- (!\inst7|counter:cnt[0]~q\ & (\inst7|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[1]~q\,
	datab => \inst7|counter:cnt[3]~q\,
	datac => \inst7|counter:cnt[0]~q\,
	datad => \inst7|counter:cnt[2]~q\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y14_N18
\inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst5|OUTPUT[3]~0_combout\ & ((\inst5|OUTPUT[0]~3_combout\ & ((\inst5|OUTPUT[1]~2_combout\))) # (!\inst5|OUTPUT[0]~3_combout\ & (\inst5|OUTPUT[2]~1_combout\)))) # (!\inst5|OUTPUT[3]~0_combout\ & (\inst5|OUTPUT[2]~1_combout\ & 
-- (\inst5|OUTPUT[0]~3_combout\ $ (\inst5|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[3]~0_combout\,
	datab => \inst5|OUTPUT[2]~1_combout\,
	datac => \inst5|OUTPUT[0]~3_combout\,
	datad => \inst5|OUTPUT[1]~2_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y14_N22
\inst3|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[1]~0_combout\ = (\inst7|clk_divider:counter[10]~q\ & ((!\inst1|Mux5~0_combout\))) # (!\inst7|clk_divider:counter[10]~q\ & (!\inst2|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux5~0_combout\,
	datac => \inst7|clk_divider:counter[10]~q\,
	datad => \inst1|Mux5~0_combout\,
	combout => \inst3|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X13_Y14_N2
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst7|counter:cnt[1]~q\ & ((\inst7|counter:cnt[3]~q\ & ((!\inst7|counter:cnt[2]~q\))) # (!\inst7|counter:cnt[3]~q\ & (!\inst7|counter:cnt[0]~q\ & \inst7|counter:cnt[2]~q\)))) # (!\inst7|counter:cnt[1]~q\ & 
-- (!\inst7|counter:cnt[3]~q\ & ((\inst7|counter:cnt[2]~q\) # (!\inst7|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[1]~q\,
	datab => \inst7|counter:cnt[3]~q\,
	datac => \inst7|counter:cnt[0]~q\,
	datad => \inst7|counter:cnt[2]~q\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y14_N12
\inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst5|OUTPUT[3]~0_combout\ & (\inst5|OUTPUT[2]~1_combout\ & ((!\inst5|OUTPUT[1]~2_combout\)))) # (!\inst5|OUTPUT[3]~0_combout\ & ((\inst5|OUTPUT[2]~1_combout\ & (\inst5|OUTPUT[0]~3_combout\ & \inst5|OUTPUT[1]~2_combout\)) # 
-- (!\inst5|OUTPUT[2]~1_combout\ & ((\inst5|OUTPUT[0]~3_combout\) # (\inst5|OUTPUT[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[3]~0_combout\,
	datab => \inst5|OUTPUT[2]~1_combout\,
	datac => \inst5|OUTPUT[0]~3_combout\,
	datad => \inst5|OUTPUT[1]~2_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst3|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[5]~1_combout\ = (\inst7|clk_divider:counter[10]~q\ & ((!\inst1|Mux1~0_combout\))) # (!\inst7|clk_divider:counter[10]~q\ & (!\inst2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux1~0_combout\,
	datac => \inst7|clk_divider:counter[10]~q\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst3|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X13_Y14_N6
\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst5|OUTPUT[3]~0_combout\) # ((\inst5|OUTPUT[2]~1_combout\ & ((!\inst5|OUTPUT[1]~2_combout\) # (!\inst5|OUTPUT[0]~3_combout\))) # (!\inst5|OUTPUT[2]~1_combout\ & ((\inst5|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[3]~0_combout\,
	datab => \inst5|OUTPUT[2]~1_combout\,
	datac => \inst5|OUTPUT[0]~3_combout\,
	datad => \inst5|OUTPUT[1]~2_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y14_N20
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst7|counter:cnt[3]~q\) # ((\inst7|counter:cnt[1]~q\ & ((!\inst7|counter:cnt[2]~q\))) # (!\inst7|counter:cnt[1]~q\ & ((\inst7|counter:cnt[0]~q\) # (\inst7|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[1]~q\,
	datab => \inst7|counter:cnt[3]~q\,
	datac => \inst7|counter:cnt[0]~q\,
	datad => \inst7|counter:cnt[2]~q\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y14_N10
\inst3|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[6]~2_combout\ = (\inst7|clk_divider:counter[10]~q\ & (\inst1|Mux0~0_combout\)) # (!\inst7|clk_divider:counter[10]~q\ & ((\inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~0_combout\,
	datac => \inst7|clk_divider:counter[10]~q\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst3|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X11_Y13_N0
\inst8|blower~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|blower~0_combout\ = (\pb_n[2]~input_o\) # ((\pb_n[1]~input_o\ & \pb_n[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[1]~input_o\,
	datac => \pb_n[0]~input_o\,
	datad => \pb_n[2]~input_o\,
	combout => \inst8|blower~0_combout\);

-- Location: LCCOMB_X11_Y14_N4
\inst8|blower~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|blower~1_combout\ = (\inst8|blower~0_combout\ & ((\inst6|output_AGTB~3_combout\) # (\inst6|output_ALTB~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|output_AGTB~3_combout\,
	datac => \inst6|output_ALTB~2_combout\,
	datad => \inst8|blower~0_combout\,
	combout => \inst8|blower~1_combout\);

-- Location: LCCOMB_X11_Y14_N16
\inst9|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~0_combout\ = \inst7|counter:cnt[1]~q\ $ (!\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \inst9|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y14_N26
\inst9|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~6_combout\ = (\sw[3]~input_o\ & (\inst7|counter:cnt[3]~q\ & (\inst7|counter:cnt[2]~q\ $ (\sw[2]~input_o\)))) # (!\sw[3]~input_o\ & (!\inst7|counter:cnt[3]~q\ & (\inst7|counter:cnt[2]~q\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \inst7|counter:cnt[3]~q\,
	datac => \inst7|counter:cnt[2]~q\,
	datad => \sw[2]~input_o\,
	combout => \inst9|TEST_PASS~6_combout\);

-- Location: LCCOMB_X11_Y14_N22
\inst9|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~7_combout\ = (!\inst9|LessThan0~0_combout\ & (\inst9|TEST_PASS~6_combout\ & (\sw[0]~input_o\ $ (\inst7|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \inst9|LessThan0~0_combout\,
	datac => \inst9|TEST_PASS~6_combout\,
	datad => \inst7|counter:cnt[0]~q\,
	combout => \inst9|TEST_PASS~7_combout\);

-- Location: LCCOMB_X11_Y14_N12
\inst9|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~3_combout\ = (\sw[1]~input_o\ & ((\inst7|counter:cnt[1]~q\) # ((\sw[0]~input_o\ & \inst7|counter:cnt[0]~q\)))) # (!\sw[1]~input_o\ & (\inst7|counter:cnt[1]~q\ & (\sw[0]~input_o\ & \inst7|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \inst7|counter:cnt[1]~q\,
	datac => \sw[0]~input_o\,
	datad => \inst7|counter:cnt[0]~q\,
	combout => \inst9|TEST_PASS~3_combout\);

-- Location: LCCOMB_X11_Y14_N2
\inst9|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~4_combout\ = (\sw[2]~input_o\ & ((\inst7|counter:cnt[2]~q\) # (\inst9|TEST_PASS~3_combout\))) # (!\sw[2]~input_o\ & (\inst7|counter:cnt[2]~q\ & \inst9|TEST_PASS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[2]~input_o\,
	datac => \inst7|counter:cnt[2]~q\,
	datad => \inst9|TEST_PASS~3_combout\,
	combout => \inst9|TEST_PASS~4_combout\);

-- Location: LCCOMB_X11_Y14_N28
\inst9|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~5_combout\ = (\inst7|counter:cnt[3]~q\ & (\sw[3]~input_o\ & \inst9|TEST_PASS~4_combout\)) # (!\inst7|counter:cnt[3]~q\ & ((\sw[3]~input_o\) # (\inst9|TEST_PASS~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|counter:cnt[3]~q\,
	datac => \sw[3]~input_o\,
	datad => \inst9|TEST_PASS~4_combout\,
	combout => \inst9|TEST_PASS~5_combout\);

-- Location: LCCOMB_X11_Y14_N8
\inst9|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~8_combout\ = (\inst6|output_AEQB~0_combout\ & (((\inst6|output_AGTB~3_combout\ & \inst9|TEST_PASS~5_combout\)))) # (!\inst6|output_AEQB~0_combout\ & ((\inst9|TEST_PASS~7_combout\) # ((\inst6|output_AGTB~3_combout\ & 
-- \inst9|TEST_PASS~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output_AEQB~0_combout\,
	datab => \inst9|TEST_PASS~7_combout\,
	datac => \inst6|output_AGTB~3_combout\,
	datad => \inst9|TEST_PASS~5_combout\,
	combout => \inst9|TEST_PASS~8_combout\);

-- Location: LCCOMB_X11_Y14_N6
\inst9|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~0_combout\ = (\sw[1]~input_o\ & ((\inst7|counter:cnt[1]~q\) # ((\sw[0]~input_o\) # (\inst7|counter:cnt[0]~q\)))) # (!\sw[1]~input_o\ & (\inst7|counter:cnt[1]~q\ & ((\sw[0]~input_o\) # (\inst7|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \inst7|counter:cnt[1]~q\,
	datac => \sw[0]~input_o\,
	datad => \inst7|counter:cnt[0]~q\,
	combout => \inst9|TEST_PASS~0_combout\);

-- Location: LCCOMB_X11_Y14_N20
\inst9|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~1_combout\ = (\sw[2]~input_o\ & ((\inst7|counter:cnt[2]~q\) # (\inst9|TEST_PASS~0_combout\))) # (!\sw[2]~input_o\ & (\inst7|counter:cnt[2]~q\ & \inst9|TEST_PASS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[2]~input_o\,
	datac => \inst7|counter:cnt[2]~q\,
	datad => \inst9|TEST_PASS~0_combout\,
	combout => \inst9|TEST_PASS~1_combout\);

-- Location: LCCOMB_X11_Y14_N10
\inst9|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~2_combout\ = (\inst6|output_ALTB~2_combout\ & ((\inst7|counter:cnt[3]~q\ & ((!\inst9|TEST_PASS~1_combout\) # (!\sw[3]~input_o\))) # (!\inst7|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & !\inst9|TEST_PASS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output_ALTB~2_combout\,
	datab => \inst7|counter:cnt[3]~q\,
	datac => \sw[3]~input_o\,
	datad => \inst9|TEST_PASS~1_combout\,
	combout => \inst9|TEST_PASS~2_combout\);

-- Location: LCCOMB_X11_Y14_N18
\inst9|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|TEST_PASS~9_combout\ = (!\pb_n[2]~input_o\ & ((\inst9|TEST_PASS~8_combout\) # (\inst9|TEST_PASS~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datac => \inst9|TEST_PASS~8_combout\,
	datad => \inst9|TEST_PASS~2_combout\,
	combout => \inst9|TEST_PASS~9_combout\);

-- Location: LCCOMB_X14_Y13_N16
\inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst7|counter:cnt[1]~q\ & (\inst7|counter:cnt[2]~q\ $ (((\inst7|counter:cnt[3]~q\) # (\inst7|counter:cnt[0]~q\))))) # (!\inst7|counter:cnt[1]~q\ & (\inst7|counter:cnt[3]~q\ & (\inst7|counter:cnt[2]~q\ & 
-- !\inst7|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[1]~q\,
	datab => \inst7|counter:cnt[3]~q\,
	datac => \inst7|counter:cnt[2]~q\,
	datad => \inst7|counter:cnt[0]~q\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y15_N24
\inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst5|OUTPUT[2]~1_combout\ & (!\inst5|OUTPUT[1]~2_combout\ & ((\inst5|OUTPUT[3]~0_combout\) # (!\inst5|OUTPUT[0]~3_combout\)))) # (!\inst5|OUTPUT[2]~1_combout\ & (\inst5|OUTPUT[0]~3_combout\ & (\inst5|OUTPUT[3]~0_combout\ $ 
-- (!\inst5|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[2]~1_combout\,
	datab => \inst5|OUTPUT[0]~3_combout\,
	datac => \inst5|OUTPUT[3]~0_combout\,
	datad => \inst5|OUTPUT[1]~2_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y15_N8
\inst3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[0]~0_combout\ = (\inst7|clk_divider:counter[10]~q\ & ((\inst1|Mux6~0_combout\))) # (!\inst7|clk_divider:counter[10]~q\ & (\inst2|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|clk_divider:counter[10]~q\,
	datac => \inst2|Mux6~0_combout\,
	datad => \inst1|Mux6~0_combout\,
	combout => \inst3|DOUT[0]~0_combout\);

-- Location: LCCOMB_X13_Y13_N10
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst7|counter:cnt[3]~q\ & (!\inst7|counter:cnt[2]~q\ & ((\inst7|counter:cnt[0]~q\) # (!\inst7|counter:cnt[1]~q\)))) # (!\inst7|counter:cnt[3]~q\ & (\inst7|counter:cnt[0]~q\ & (\inst7|counter:cnt[2]~q\ & 
-- !\inst7|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[3]~q\,
	datab => \inst7|counter:cnt[0]~q\,
	datac => \inst7|counter:cnt[2]~q\,
	datad => \inst7|counter:cnt[1]~q\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y13_N28
\inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst5|OUTPUT[2]~1_combout\ & (\inst5|OUTPUT[3]~0_combout\ & ((\inst5|OUTPUT[1]~2_combout\) # (!\inst5|OUTPUT[0]~3_combout\)))) # (!\inst5|OUTPUT[2]~1_combout\ & (!\inst5|OUTPUT[3]~0_combout\ & (!\inst5|OUTPUT[0]~3_combout\ & 
-- \inst5|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[2]~1_combout\,
	datab => \inst5|OUTPUT[3]~0_combout\,
	datac => \inst5|OUTPUT[0]~3_combout\,
	datad => \inst5|OUTPUT[1]~2_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst3|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[2]~2_combout\ = (\inst7|clk_divider:counter[10]~q\ & ((\inst1|Mux4~0_combout\))) # (!\inst7|clk_divider:counter[10]~q\ & (\inst2|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~0_combout\,
	datac => \inst7|clk_divider:counter[10]~q\,
	datad => \inst1|Mux4~0_combout\,
	combout => \inst3|DOUT[2]~2_combout\);

-- Location: LCCOMB_X13_Y13_N22
\inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst5|OUTPUT[1]~2_combout\ & ((\inst5|OUTPUT[2]~1_combout\ & ((\inst5|OUTPUT[0]~3_combout\))) # (!\inst5|OUTPUT[2]~1_combout\ & (\inst5|OUTPUT[3]~0_combout\ & !\inst5|OUTPUT[0]~3_combout\)))) # (!\inst5|OUTPUT[1]~2_combout\ & 
-- (!\inst5|OUTPUT[3]~0_combout\ & (\inst5|OUTPUT[2]~1_combout\ $ (\inst5|OUTPUT[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[2]~1_combout\,
	datab => \inst5|OUTPUT[3]~0_combout\,
	datac => \inst5|OUTPUT[0]~3_combout\,
	datad => \inst5|OUTPUT[1]~2_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y13_N16
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst7|counter:cnt[1]~q\ & (!\inst7|counter:cnt[3]~q\ & (\inst7|counter:cnt[0]~q\ $ (\inst7|counter:cnt[2]~q\)))) # (!\inst7|counter:cnt[1]~q\ & ((\inst7|counter:cnt[0]~q\ & (\inst7|counter:cnt[3]~q\ & \inst7|counter:cnt[2]~q\)) 
-- # (!\inst7|counter:cnt[0]~q\ & ((!\inst7|counter:cnt[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[3]~q\,
	datab => \inst7|counter:cnt[0]~q\,
	datac => \inst7|counter:cnt[2]~q\,
	datad => \inst7|counter:cnt[1]~q\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y13_N14
\inst3|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[3]~3_combout\ = (\inst7|clk_divider:counter[10]~q\ & (\inst1|Mux3~0_combout\)) # (!\inst7|clk_divider:counter[10]~q\ & ((\inst2|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datac => \inst7|clk_divider:counter[10]~q\,
	datad => \inst2|Mux3~0_combout\,
	combout => \inst3|DOUT[3]~3_combout\);

-- Location: LCCOMB_X13_Y13_N4
\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst7|counter:cnt[1]~q\ & ((\inst7|counter:cnt[2]~q\ & ((!\inst7|counter:cnt[0]~q\))) # (!\inst7|counter:cnt[2]~q\ & (!\inst7|counter:cnt[3]~q\)))) # (!\inst7|counter:cnt[1]~q\ & (!\inst7|counter:cnt[3]~q\ & 
-- (!\inst7|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|counter:cnt[3]~q\,
	datab => \inst7|counter:cnt[0]~q\,
	datac => \inst7|counter:cnt[2]~q\,
	datad => \inst7|counter:cnt[1]~q\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y14_N30
\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst5|OUTPUT[1]~2_combout\ & (!\inst5|OUTPUT[3]~0_combout\ & ((\inst5|OUTPUT[0]~3_combout\)))) # (!\inst5|OUTPUT[1]~2_combout\ & ((\inst5|OUTPUT[2]~1_combout\ & (!\inst5|OUTPUT[3]~0_combout\)) # (!\inst5|OUTPUT[2]~1_combout\ & 
-- ((\inst5|OUTPUT[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|OUTPUT[3]~0_combout\,
	datab => \inst5|OUTPUT[2]~1_combout\,
	datac => \inst5|OUTPUT[0]~3_combout\,
	datad => \inst5|OUTPUT[1]~2_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y13_N18
\inst3|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[4]~4_combout\ = (\inst7|clk_divider:counter[10]~q\ & ((\inst1|Mux2~0_combout\))) # (!\inst7|clk_divider:counter[10]~q\ & (\inst2|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_divider:counter[10]~q\,
	datab => \inst2|Mux2~0_combout\,
	datac => \inst1|Mux2~0_combout\,
	combout => \inst3|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


