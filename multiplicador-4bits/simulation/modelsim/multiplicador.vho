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

-- DATE "05/01/2017 21:02:58"

-- 
-- Device: Altera EPM240T100I5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	multiplicador IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	R : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- A[0]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[0]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R[2]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R[3]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R[4]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R[5]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R[6]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- R[7]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF multiplicador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \U0|S~combout\ : std_logic;
SIGNAL \U1|S~4_combout\ : std_logic;
SIGNAL \U1|S~5_combout\ : std_logic;
SIGNAL \U4|S~combout\ : std_logic;
SIGNAL \U1|Cout~3_combout\ : std_logic;
SIGNAL \U1|Cout~9_combout\ : std_logic;
SIGNAL \U2|S~combout\ : std_logic;
SIGNAL \U5|S~combout\ : std_logic;
SIGNAL \U8|S~combout\ : std_logic;
SIGNAL \U2|Cout~0_combout\ : std_logic;
SIGNAL \U5|Cout~0_combout\ : std_logic;
SIGNAL \U6|S~combout\ : std_logic;
SIGNAL \U9|S~combout\ : std_logic;
SIGNAL \U7|S~4_combout\ : std_logic;
SIGNAL \U9|Cout~0_combout\ : std_logic;
SIGNAL \U10|S~0_combout\ : std_logic;
SIGNAL \U10|Cout~0_combout\ : std_logic;
SIGNAL \U6|Cout~0_combout\ : std_logic;
SIGNAL \U7|Cout~0_combout\ : std_logic;
SIGNAL \U11|S~0_combout\ : std_logic;
SIGNAL \U11|Cout~0_combout\ : std_logic;
SIGNAL C : std_logic_vector(14 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LC_X5_Y1_N5
\R~0\ : maxii_lcell
-- Equation(s):
-- \R~0_combout\ = (((\A~combout\(0) & \B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \R~0_combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LC_X5_Y1_N8
\U0|S\ : maxii_lcell
-- Equation(s):
-- \U0|S~combout\ = (\B~combout\(0) & (\A~combout\(1) $ (((\A~combout\(0) & \B~combout\(1)))))) # (!\B~combout\(0) & (\A~combout\(0) & ((\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datac => \A~combout\(1),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U0|S~combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LC_X5_Y1_N9
\U1|S~4\ : maxii_lcell
-- Equation(s):
-- \U1|S~4_combout\ = \A~combout\(2) $ (((\A~combout\(1) & (!\A~combout\(0) & \B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(0),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|S~4_combout\);

-- Location: LC_X5_Y1_N7
\U1|S~5\ : maxii_lcell
-- Equation(s):
-- \U1|S~5_combout\ = (\B~combout\(0) & (\U1|S~4_combout\)) # (!\B~combout\(0) & (((\A~combout\(1) & \B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \U1|S~4_combout\,
	datac => \A~combout\(1),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|S~5_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LC_X5_Y3_N5
\U4|S\ : maxii_lcell
-- Equation(s):
-- \U4|S~combout\ = \U1|S~5_combout\ $ (((\A~combout\(0) & (\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|S~5_combout\,
	datab => \A~combout\(0),
	datac => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|S~combout\);

-- Location: LC_X5_Y3_N0
\C[8]\ : maxii_lcell
-- Equation(s):
-- C(8) = (\A~combout\(1) & (((\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(8));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LC_X5_Y1_N3
\C[4]\ : maxii_lcell
-- Equation(s):
-- C(4) = (((\A~combout\(3) & \B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(3),
	datad => \B~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(4));

-- Location: LC_X5_Y1_N4
\U1|Cout~3\ : maxii_lcell
-- Equation(s):
-- \U1|Cout~3_combout\ = ((\A~combout\(0)) # ((\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Cout~3_combout\);

-- Location: LC_X5_Y1_N0
\U1|Cout~9\ : maxii_lcell
-- Equation(s):
-- \U1|Cout~9_combout\ = (\B~combout\(0) & (\A~combout\(1) & (\U1|Cout~3_combout\ & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(1),
	datac => \U1|Cout~3_combout\,
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Cout~9_combout\);

-- Location: LC_X5_Y1_N2
\U2|S\ : maxii_lcell
-- Equation(s):
-- \U2|S~combout\ = C(4) $ (\U1|Cout~9_combout\ $ (((\A~combout\(2) & \B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => C(4),
	datab => \U1|Cout~9_combout\,
	datac => \A~combout\(2),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|S~combout\);

-- Location: LC_X5_Y3_N1
\C[7]\ : maxii_lcell
-- Equation(s):
-- C(7) = ((\A~combout\(0) & (\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(7));

-- Location: LC_X5_Y3_N6
\U5|S\ : maxii_lcell
-- Equation(s):
-- \U5|S~combout\ = C(8) $ (\U2|S~combout\ $ (((\U1|S~5_combout\ & C(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|S~5_combout\,
	datab => C(8),
	datac => \U2|S~combout\,
	datad => C(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U5|S~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LC_X5_Y3_N8
\U8|S\ : maxii_lcell
-- Equation(s):
-- \U8|S~combout\ = (\U5|S~combout\ $ (((\A~combout\(0) & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \U5|S~combout\,
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U8|S~combout\);

-- Location: LC_X5_Y3_N4
\C[12]\ : maxii_lcell
-- Equation(s):
-- C(12) = (\A~combout\(1) & (((\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(12));

-- Location: LC_X5_Y1_N6
\U2|Cout~0\ : maxii_lcell
-- Equation(s):
-- \U2|Cout~0_combout\ = (C(4) & ((\U1|Cout~9_combout\) # ((\A~combout\(2) & \B~combout\(1))))) # (!C(4) & (\U1|Cout~9_combout\ & (\A~combout\(2) & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => C(4),
	datab => \U1|Cout~9_combout\,
	datac => \A~combout\(2),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|Cout~0_combout\);

-- Location: LC_X5_Y3_N3
\U5|Cout~0\ : maxii_lcell
-- Equation(s):
-- \U5|Cout~0_combout\ = (C(8) & ((\U2|S~combout\) # ((\U1|S~5_combout\ & C(7))))) # (!C(8) & (\U1|S~5_combout\ & (\U2|S~combout\ & C(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|S~5_combout\,
	datab => C(8),
	datac => \U2|S~combout\,
	datad => C(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U5|Cout~0_combout\);

-- Location: LC_X5_Y1_N1
\C[6]\ : maxii_lcell
-- Equation(s):
-- C(6) = (((\A~combout\(3) & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(3),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(6));

-- Location: LC_X7_Y2_N2
\C[9]\ : maxii_lcell
-- Equation(s):
-- C(9) = ((\A~combout\(2) & (\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(9));

-- Location: LC_X5_Y2_N5
\U6|S\ : maxii_lcell
-- Equation(s):
-- \U6|S~combout\ = \U2|Cout~0_combout\ $ (\U5|Cout~0_combout\ $ (C(6) $ (C(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Cout~0_combout\,
	datab => \U5|Cout~0_combout\,
	datac => C(6),
	datad => C(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|S~combout\);

-- Location: LC_X5_Y3_N2
\C[11]\ : maxii_lcell
-- Equation(s):
-- C(11) = ((\A~combout\(0) & ((\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(11));

-- Location: LC_X5_Y3_N9
\U9|S\ : maxii_lcell
-- Equation(s):
-- \U9|S~combout\ = C(12) $ (\U6|S~combout\ $ (((\U5|S~combout\ & C(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => C(12),
	datab => \U6|S~combout\,
	datac => \U5|S~combout\,
	datad => C(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U9|S~combout\);

-- Location: LC_X5_Y2_N8
\C[10]\ : maxii_lcell
-- Equation(s):
-- C(10) = ((\A~combout\(3) & ((\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(10));

-- Location: LC_X5_Y2_N2
\C[13]\ : maxii_lcell
-- Equation(s):
-- C(13) = (((\A~combout\(2) & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(2),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => C(13));

-- Location: LC_X5_Y2_N7
\U7|S~4\ : maxii_lcell
-- Equation(s):
-- \U7|S~4_combout\ = (\U2|Cout~0_combout\ & ((\U5|Cout~0_combout\ & ((!C(9)) # (!C(6)))) # (!\U5|Cout~0_combout\ & ((C(6)) # (C(9)))))) # (!\U2|Cout~0_combout\ & ((\U5|Cout~0_combout\ & ((C(6)) # (C(9)))) # (!\U5|Cout~0_combout\ & (C(6) & C(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Cout~0_combout\,
	datab => \U5|Cout~0_combout\,
	datac => C(6),
	datad => C(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U7|S~4_combout\);

-- Location: LC_X5_Y3_N7
\U9|Cout~0\ : maxii_lcell
-- Equation(s):
-- \U9|Cout~0_combout\ = (C(12) & ((\U6|S~combout\) # ((\U5|S~combout\ & C(11))))) # (!C(12) & (\U6|S~combout\ & (\U5|S~combout\ & C(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => C(12),
	datab => \U6|S~combout\,
	datac => \U5|S~combout\,
	datad => C(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U9|Cout~0_combout\);

-- Location: LC_X5_Y2_N0
\U10|S~0\ : maxii_lcell
-- Equation(s):
-- \U10|S~0_combout\ = C(10) $ (C(13) $ (\U7|S~4_combout\ $ (\U9|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => C(10),
	datab => C(13),
	datac => \U7|S~4_combout\,
	datad => \U9|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U10|S~0_combout\);

-- Location: LC_X5_Y2_N4
\U10|Cout~0\ : maxii_lcell
-- Equation(s):
-- \U10|Cout~0_combout\ = (C(13) & ((\U9|Cout~0_combout\) # (C(10) $ (\U7|S~4_combout\)))) # (!C(13) & (\U9|Cout~0_combout\ & (C(10) $ (\U7|S~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => C(10),
	datab => C(13),
	datac => \U7|S~4_combout\,
	datad => \U9|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U10|Cout~0_combout\);

-- Location: LC_X5_Y2_N1
\U6|Cout~0\ : maxii_lcell
-- Equation(s):
-- \U6|Cout~0_combout\ = (\U5|Cout~0_combout\ & ((C(9)) # (\U2|Cout~0_combout\ $ (C(6))))) # (!\U5|Cout~0_combout\ & (C(9) & (\U2|Cout~0_combout\ $ (C(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Cout~0_combout\,
	datab => \U5|Cout~0_combout\,
	datac => C(6),
	datad => C(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|Cout~0_combout\);

-- Location: LC_X5_Y2_N6
\U7|Cout~0\ : maxii_lcell
-- Equation(s):
-- \U7|Cout~0_combout\ = (C(10) & ((\U6|Cout~0_combout\) # ((\U2|Cout~0_combout\ & C(6))))) # (!C(10) & (\U2|Cout~0_combout\ & (C(6) & \U6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => C(10),
	datab => \U2|Cout~0_combout\,
	datac => C(6),
	datad => \U6|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U7|Cout~0_combout\);

-- Location: LC_X5_Y2_N9
\U11|S~0\ : maxii_lcell
-- Equation(s):
-- \U11|S~0_combout\ = \U10|Cout~0_combout\ $ (\U7|Cout~0_combout\ $ (((\A~combout\(3) & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U10|Cout~0_combout\,
	datab => \A~combout\(3),
	datac => \U7|Cout~0_combout\,
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U11|S~0_combout\);

-- Location: LC_X5_Y2_N3
\U11|Cout~0\ : maxii_lcell
-- Equation(s):
-- \U11|Cout~0_combout\ = (\U10|Cout~0_combout\ & ((\U7|Cout~0_combout\) # ((\A~combout\(3) & \B~combout\(3))))) # (!\U10|Cout~0_combout\ & (\A~combout\(3) & (\U7|Cout~0_combout\ & \B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U10|Cout~0_combout\,
	datab => \A~combout\(3),
	datac => \U7|Cout~0_combout\,
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U11|Cout~0_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \R~0_combout\,
	oe => VCC,
	padio => ww_R(0));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U0|S~combout\,
	oe => VCC,
	padio => ww_R(1));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U4|S~combout\,
	oe => VCC,
	padio => ww_R(2));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U8|S~combout\,
	oe => VCC,
	padio => ww_R(3));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U9|S~combout\,
	oe => VCC,
	padio => ww_R(4));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U10|S~0_combout\,
	oe => VCC,
	padio => ww_R(5));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U11|S~0_combout\,
	oe => VCC,
	padio => ww_R(6));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\R[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U11|Cout~0_combout\,
	oe => VCC,
	padio => ww_R(7));
END structure;


