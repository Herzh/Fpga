-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/04/2017 20:01:23"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ContadorUpDown IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	UpDown : IN std_logic;
	f : INOUT std_logic_vector(6 DOWNTO 0);
	q : INOUT std_logic_vector(3 DOWNTO 0)
	);
END ContadorUpDown;

-- Design Ports Information
-- f[0]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[3]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[4]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[5]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[6]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rst	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UpDown	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ContadorUpDown IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_UpDown : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \UpDown~combout\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \q~4_combout\ : std_logic;
SIGNAL \q~44_combout\ : std_logic;
SIGNAL \q[3]~reg0_regout\ : std_logic;
SIGNAL \q~33_combout\ : std_logic;
SIGNAL \q~32_combout\ : std_logic;
SIGNAL \q~47_combout\ : std_logic;
SIGNAL \q[2]~reg0_regout\ : std_logic;
SIGNAL \q~26_combout\ : std_logic;
SIGNAL \q~25_combout\ : std_logic;
SIGNAL \q~46_combout\ : std_logic;
SIGNAL \q[1]~reg0_regout\ : std_logic;
SIGNAL \q~19_combout\ : std_logic;
SIGNAL \q~45_combout\ : std_logic;
SIGNAL \q[0]~reg0_regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_UpDown <= UpDown;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G7
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UpDown~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_UpDown,
	combout => \UpDown~combout\);

-- Location: LCCOMB_X9_Y1_N28
\q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~3_combout\ = (\q[0]~reg0_regout\ & (\UpDown~combout\ & (\q[2]~reg0_regout\ & \q[1]~reg0_regout\))) # (!\q[0]~reg0_regout\ & (!\UpDown~combout\ & (!\q[2]~reg0_regout\ & !\q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~reg0_regout\,
	datab => \UpDown~combout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[1]~reg0_regout\,
	combout => \q~3_combout\);

-- Location: LCCOMB_X9_Y1_N30
\q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~4_combout\ = (\UpDown~combout\ & (!\q[1]~reg0_regout\ & (!\q[2]~reg0_regout\))) # (!\UpDown~combout\ & ((\q[1]~reg0_regout\) # ((\q[2]~reg0_regout\) # (\q[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDown~combout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[0]~reg0_regout\,
	combout => \q~4_combout\);

-- Location: LCCOMB_X9_Y1_N18
\q~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~44_combout\ = (\rst~combout\ & ((\q[3]~reg0_regout\ & ((\q~4_combout\))) # (!\q[3]~reg0_regout\ & (\q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \q~3_combout\,
	datac => \q[3]~reg0_regout\,
	datad => \q~4_combout\,
	combout => \q~44_combout\);

-- Location: LCFF_X9_Y1_N19
\q[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[3]~reg0_regout\);

-- Location: LCCOMB_X9_Y1_N20
\q~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~33_combout\ = (!\UpDown~combout\ & (\q[2]~reg0_regout\ $ (((!\q[1]~reg0_regout\ & !\q[0]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDown~combout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[0]~reg0_regout\,
	combout => \q~33_combout\);

-- Location: LCCOMB_X9_Y1_N22
\q~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~32_combout\ = (\UpDown~combout\ & (\q[2]~reg0_regout\ $ (((\q[1]~reg0_regout\ & \q[0]~reg0_regout\))))) # (!\UpDown~combout\ & (\q[2]~reg0_regout\ & ((\q[1]~reg0_regout\) # (\q[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDown~combout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[0]~reg0_regout\,
	combout => \q~32_combout\);

-- Location: LCCOMB_X9_Y1_N24
\q~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~47_combout\ = (\rst~combout\ & ((\q[3]~reg0_regout\ & (\q~33_combout\)) # (!\q[3]~reg0_regout\ & ((\q~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \q[3]~reg0_regout\,
	datac => \q~33_combout\,
	datad => \q~32_combout\,
	combout => \q~47_combout\);

-- Location: LCFF_X9_Y1_N25
\q[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[2]~reg0_regout\);

-- Location: LCCOMB_X9_Y1_N16
\q~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~26_combout\ = (\UpDown~combout\ & (!\q[1]~reg0_regout\ & ((!\q[3]~reg0_regout\) # (!\q[2]~reg0_regout\)))) # (!\UpDown~combout\ & (\q[1]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDown~combout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[3]~reg0_regout\,
	combout => \q~26_combout\);

-- Location: LCCOMB_X9_Y1_N26
\q~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~25_combout\ = (\UpDown~combout\ & (\q[1]~reg0_regout\ & !\q[3]~reg0_regout\)) # (!\UpDown~combout\ & (!\q[1]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDown~combout\,
	datac => \q[1]~reg0_regout\,
	datad => \q[3]~reg0_regout\,
	combout => \q~25_combout\);

-- Location: LCCOMB_X9_Y1_N14
\q~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~46_combout\ = (\rst~combout\ & ((\q[0]~reg0_regout\ & (\q~26_combout\)) # (!\q[0]~reg0_regout\ & ((\q~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~reg0_regout\,
	datab => \rst~combout\,
	datac => \q~26_combout\,
	datad => \q~25_combout\,
	combout => \q~46_combout\);

-- Location: LCFF_X9_Y1_N15
\q[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[1]~reg0_regout\);

-- Location: LCCOMB_X9_Y1_N0
\q~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~19_combout\ = (\UpDown~combout\ & (\q[3]~reg0_regout\ & ((\q[1]~reg0_regout\) # (\q[2]~reg0_regout\)))) # (!\UpDown~combout\ & (!\q[1]~reg0_regout\ & (!\q[2]~reg0_regout\ & !\q[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDown~combout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[3]~reg0_regout\,
	combout => \q~19_combout\);

-- Location: LCCOMB_X9_Y1_N12
\q~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \q~45_combout\ = (\rst~combout\ & (!\q[0]~reg0_regout\ & !\q~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \q[0]~reg0_regout\,
	datad => \q~19_combout\,
	combout => \q~45_combout\);

-- Location: LCFF_X9_Y1_N13
\q[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[0]~reg0_regout\);

-- Location: LCCOMB_X9_Y1_N4
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\q[1]~reg0_regout\ & ((\q[3]~reg0_regout\) # ((\q[0]~reg0_regout\ & \q[2]~reg0_regout\)))) # (!\q[1]~reg0_regout\ & ((\q[3]~reg0_regout\ $ (!\q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~reg0_regout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[3]~reg0_regout\,
	datad => \q[2]~reg0_regout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X9_Y1_N10
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\q[0]~reg0_regout\ & ((\q[1]~reg0_regout\) # (\q[3]~reg0_regout\ $ (!\q[2]~reg0_regout\)))) # (!\q[0]~reg0_regout\ & ((\q[2]~reg0_regout\ & ((\q[3]~reg0_regout\))) # (!\q[2]~reg0_regout\ & (\q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~reg0_regout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[3]~reg0_regout\,
	datad => \q[2]~reg0_regout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X9_Y1_N8
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\q[0]~reg0_regout\) # ((\q[1]~reg0_regout\ & (\q[3]~reg0_regout\)) # (!\q[1]~reg0_regout\ & ((\q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~reg0_regout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[3]~reg0_regout\,
	datad => \q[2]~reg0_regout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X9_Y1_N6
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\q[1]~reg0_regout\ & ((\q[3]~reg0_regout\) # ((\q[0]~reg0_regout\ & \q[2]~reg0_regout\)))) # (!\q[1]~reg0_regout\ & (\q[2]~reg0_regout\ $ (((\q[0]~reg0_regout\ & !\q[3]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~reg0_regout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[3]~reg0_regout\,
	datad => \q[2]~reg0_regout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X14_Y1_N16
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\q[2]~reg0_regout\ & (\q[3]~reg0_regout\)) # (!\q[2]~reg0_regout\ & (\q[1]~reg0_regout\ & ((\q[3]~reg0_regout\) # (!\q[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~reg0_regout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[0]~reg0_regout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X14_Y1_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\q[3]~reg0_regout\ & ((\q[1]~reg0_regout\) # ((\q[2]~reg0_regout\)))) # (!\q[3]~reg0_regout\ & (\q[2]~reg0_regout\ & (\q[1]~reg0_regout\ $ (\q[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~reg0_regout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[0]~reg0_regout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X14_Y1_N20
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\q[1]~reg0_regout\ & (\q[3]~reg0_regout\)) # (!\q[1]~reg0_regout\ & (\q[2]~reg0_regout\ $ (((!\q[3]~reg0_regout\ & \q[0]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~reg0_regout\,
	datab => \q[1]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[0]~reg0_regout\,
	combout => \Mux0~0_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => f(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => f(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => f(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => f(3));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => f(4));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => f(5));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => f(6));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \q[0]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => q(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \q[1]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => q(1));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \q[2]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => q(2));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \q[3]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => q(3));
END structure;


