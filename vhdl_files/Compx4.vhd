library ieee;
use ieee.std_logic_1164.all;

entity Compx4 is port(
	input_A : in std_logic_vector(3 downto 0);
	input_B : in std_logic_vector(3 downto 0);
	output_AGTB : out std_logic;
	output_AEQB : out std_logic;
	output_ALTB : out std_logic
	);
end Compx4;


architecture logic of Compx4 is

component Compx1 port(
	input_A : in std_logic;
	input_B : in std_logic;
	output_AGTB : out std_logic;
	output_AEQB : out std_logic;
	output_ALTB : out std_logic
	);
end component Compx1;

signal AGTB : std_logic_vector(3 downto 0);
signal AEQB : std_logic_vector(3 downto 0);
signal ALTB : std_logic_vector(3 downto 0);

begin

	inst1: Compx1 port map(input_A(3), input_B(3), AGTB(3), AEQB(3), ALTB(3));
	inst2: Compx1 port map(input_A(2), input_B(2), AGTB(2), AEQB(2), ALTB(2));
	inst3: Compx1 port map(input_A(1), input_B(1), AGTB(1), AEQB(1), ALTB(1));
	inst4: Compx1 port map(input_A(0), input_B(0), AGTB(0), AEQB(0), ALTB(0));
	
	output_AGTB <= AGTB(3) OR (AEQB(3) AND AGTB(2)) OR (AEQB(3) AND AEQB(2) AND AGTB(1)) OR (AEQB(3) AND AEQB(2) AND AEQB(1) AND AGTB(0));
	output_AEQB <= AEQB(3) AND AEQB(2) AND AEQB(1) AND AEQB(0);
	output_ALTB <= ALTB(3) OR (AEQB(3) AND ALTB(2)) OR (AEQB(3) AND AEQB(2) AND ALTB(1)) OR (AEQB(3) AND AEQB(2) AND AEQB(1) AND ALTB(0));
	

	


end logic;