library ieee;
use ieee.std_logic_1164.all;


entity LogicalStep_Lab3_top is port (
	clkin_50		: in 	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
	
	----------------------------------------------------
--	HVAC_temp : out std_logic_vector(3 downto 0); -- used for simulations only. Comment out for FPGA download compiles.
	----------------------------------------------------
	
   leds			: out std_logic_vector(7 downto 0);
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
--
-- Provided Project Components Used
------------------------------------------------------------------- 

component SevenSegment  port (
   hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end component SevenSegment;

component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
        );
end component segment7_mux;
	
component Tester port (
 MC_TESTMODE				: in  std_logic;
 I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
	); 
	end component;
--	
component HVAC 	port (
	HVAC_SIM					: in boolean;
	clk						: in std_logic; 
	run		   			: in std_logic;
	increase					: in std_logic;
	decrease					: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
	);
end component;
------------------------------------------------------------------
-- Add any Other Components here
------------------------------------------------------------------

component Compx4 port(
	input_A : in std_logic_vector(3 downto 0);
	input_B : in std_logic_vector(3 downto 0);
	output_AGTB : out std_logic;
	output_AEQB : out std_logic;
	output_ALTB : out std_logic
	);
end component Compx4;

component bidir_shift_reg port(
			CLK				:	in std_logic := '0';
			RESET				:	in std_logic := '0';
			CLK_EN			:	in std_logic := '0';
			LEFT0_RIGHT1	:	in std_logic := '0';
			REG_BITS			:	out std_logic_vector(7 downto 0)
	);
end component bidir_shift_reg;

component U_D_Bin_Counter8bit port
	(
		CLK : in std_logic;
		RESET : in std_logic;
		CLK_EN : in std_logic;
		UP1_DOWN0 : in std_logic;
		COUNTER_BITS : out std_logic_vector(7 downto 0)
	);

end component U_D_Bin_Counter8bit;

--component HVAC 
--
--	port
--	(
--		HVAC_SIM					: in boolean;
--		clk						: in std_logic; 
--		run		   			: in std_logic;
--		increase, decrease	: in std_logic;
--		temp						: out std_logic_vector (3 downto 0)
--	);
--
--end component HVAC;

component PB_Inverters 
	PORT
	(
		pb_n : IN std_logic_vector(3 downto 0); -- 4 bit active low push button inputs
		pb_out1 : OUT std_logic;
		pb_out2 : OUT std_logic;
		pb_out3 : OUT std_logic;
		pb_out4 : OUT std_logic
	);
END component PB_Inverters;

component two_to_one_mux 
	PORT(
	INPUT_A : IN std_logic_vector(3 downto 0); -- 4 bit input 1
	INPUT_B : IN std_logic_vector(3 downto 0); -- 4 bit input 2
	SELECT_IN : IN std_logic; 						 -- 1 bit selector
	OUTPUT : OUT std_logic_vector(3 downto 0)  -- 4 bit output
	);
END component two_to_one_mux;

component Energy_Monitor
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
END component Energy_Monitor;

------------------------------------------------------------------	
-- Create any additional internal signals to be used
------------------------------------------------------------------	
constant HVAC_SIM : boolean := FALSE; -- set to FALSE when compiling for FPGA download to LogicalStep board 
                                      -- or TRUE for doing simulations with the HVAC Component
------------------------------------------------------------------	

-- global clock
signal clk_in					: std_logic;
--signal hex_A, hex_B 			: std_logic_vector(3 downto 0);
signal hexA_7seg, hexB_7seg: std_logic_vector(6 downto 0);
signal temp_hex 				: std_logic_vector(3 downto 0);

signal desired_temp			: std_logic_vector(3 downto 0);
signal vacation_temp 		: std_logic_vector(3 downto 0);
signal vacation_mode			: std_logic;
signal MC_test_mode 			: std_logic;
signal window_open			: std_logic;
signal door_open				: std_logic;
signal mux_temp				: std_logic_vector(3 downto 0);
signal current_temp 			: std_logic_vector(3 downto 0);
signal decrease				: std_logic;
signal increase 				: std_logic;
signal run 						: std_logic;

signal furnace					: std_logic;
signal at_temp					: std_logic;
signal AC						: std_logic;
signal blower					: std_logic;
signal window					: std_logic;
signal door 					: std_logic;
signal vacation				: std_logic;

signal MC_test_pass			: std_logic;
signal AGTB						: std_logic;
signal AEQB 					: std_logic;
signal ALTB						: std_logic;



------------------------------------------------------------------- 
begin -- Here the circuit begins

clk_in <= clkin_50;	--hook up the clock input

-- temp inputs hook-up to internal busses.
--hex_A <= sw(3 downto 0);
--hex_B <= sw(7 downto 4);
desired_temp <= sw(3 downto 0);
vacation_temp <= sw(7 downto 4);

inst1: sevensegment port map (mux_temp, hexA_7seg);
inst2: sevensegment port map (current_temp, hexB_7seg);
inst3: segment7_mux port map (clk_in, hexA_7seg, hexB_7seg, seg7_data, seg7_char2, seg7_char1);
--inst4: Compx4 port map (hex_A, hex_B, leds(2), leds(1), leds(0));
--inst5: bidir_shift_reg port map (clk_in, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));
--inst6: U_D_Bin_Counter8bit port map (clk_in, NOT(pb_n(0)), sw(0), sw(1), leds(7 downto 0));
inst7: HVAC port map(HVAC_SIM, clk_in, run, increase, decrease, current_temp);
inst4: PB_Inverters port map (pb_n, vacation_mode, MC_test_mode, window_open, door_open);
inst5: two_to_one_mux port map (desired_temp, vacation_temp, vacation_mode, mux_temp);
inst6: Compx4 port map (mux_temp, current_temp, AGTB, AEQB, ALTB);
inst8: Energy_Monitor port map (AGTB, AEQB, ALTB, vacation_mode, MC_test_mode, window_open, door_open, furnace, at_temp, AC, blower, window, door, vacation, run, increase, decrease);
inst9: Tester port map ( MC_test_mode, AEQB, AGTB, ALTB, desired_temp, current_temp, MC_test_pass);

--HVAC_TEMP <= current_temp;
leds(0) <= furnace;
leds(1) <= at_temp;
leds(2) <= AC;
leds(3) <= blower;
leds(4) <= window;
leds(5) <= door;
leds(6) <= MC_test_pass;
leds(7) <= vacation;


end design;
