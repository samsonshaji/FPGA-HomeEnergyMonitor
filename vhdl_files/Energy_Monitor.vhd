library ieee;
use ieee.std_logic_1164.all;

ENTITY Energy_Monitor IS
	PORT(
	AGTB : in std_logic;
	AEQB : in std_logic;
	ALTB : in std_logic;
	vacation_mode : in std_logic;
	MC_test_mode : in std_logic;
	window_open : in std_logic;
	door_open : in std_logic;
	furnace : out std_logic;
	at_temp: out std_logic;
	AC : out std_logic;
	blower : out std_logic;
	window : out std_logic;
	door : out std_logic;
	vacation : out std_logic;
	run : out std_logic;
	increase : out std_logic;
	decrease : out std_logic
	);
END Energy_Monitor;


architecture logic of Energy_Monitor is 



begin

	increase <= AGTB;
	decrease <= ALTB;
	run <= NOT(AEQB OR (window_open OR door_open) OR MC_test_mode);
	
	
	AC <= ALTB;
	furnace <= AGTB;
	
	at_temp <= AEQB;
	
	blower <= (AGTB OR ALTB) AND ((NOT MC_test_mode) OR NOT(window_open OR  door_open)); --ASK AT OFFICE HOURS
	
	-- (AGTB OR ALTB) AND NOT (MC_test_mode OR window_open OR door_open)
	-- ( (AGTB OR ALTB) AND (NOT MC_test_mode)) OR window_open OR door_open
	
	door <= door_open;
	window <= window_open;
	vacation <= vacation_mode;
	
	
	




end logic;



