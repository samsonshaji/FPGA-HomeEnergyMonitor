library ieee;
use ieee.std_logic_1164.all;

entity Compx1 is port(
	input_A : in std_logic;
	input_B : in std_logic;
	output_AGTB : out std_logic;
	output_AEQB : out std_logic;
	output_ALTB : out std_logic
	);
end Compx1;


architecture logic of Compx1 is

begin

	output_AGTB <= input_A AND (NOT input_B);
	output_AEQB <= input_A XNOR input_B;
	output_ALTB <= (NOT input_A) AND input_B;


end logic;