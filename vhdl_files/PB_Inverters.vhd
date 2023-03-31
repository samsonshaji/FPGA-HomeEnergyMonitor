 -- Author: Group 2 - George Wang, Samson Shaji

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY PB_Inverters IS
	PORT
	(
		pb_n : IN std_logic_vector(3 downto 0); -- 4 bit active low push button inputs
		pb_out1 : OUT std_logic;
		pb_out2 : OUT std_logic;
		pb_out3 : OUT std_logic;
		pb_out4 : OUT std_logic
	);
END PB_Inverters;

ARCHITECTURE gates OF PB_Inverters IS


BEGIN
pb_out1 <= NOT pb_n(3);
pb_out2 <= NOT pb_n(2);
pb_out3 <= NOT pb_n(1);
pb_out4 <= NOT pb_n(0);

END gates;
	