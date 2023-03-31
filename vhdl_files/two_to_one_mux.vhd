-- Author: Group 2 - George Wang, Samson Shaji

LIBRARY ieee;

USE ieee.std_logic_1164.all;

ENTITY two_to_one_mux IS PORT(
	INPUT_A : IN std_logic_vector(3 downto 0); -- 4 bit input 1
	INPUT_B : IN std_logic_vector(3 downto 0); -- 4 bit input 2
	SELECT_IN : IN std_logic; 						 -- 1 bit selector
	OUTPUT : OUT std_logic_vector(3 downto 0)  -- 4 bit output
	);
END two_to_one_mux;


ARCHITECTURE logic OF two_to_one_mux IS

BEGIN
	-- selects input A when selector is 0 and input B when selector is 1
	WITH SELECT_IN SELECT 
	OUTPUT <= INPUT_A when '0',
				 INPUT_B when '1';


END logic;
	