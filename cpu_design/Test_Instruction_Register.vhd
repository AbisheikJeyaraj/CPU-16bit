--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:55:16 07/13/2016
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_Instruction_Register.vhd
-- Project Name:  CPU_Design

-- VHDL Test Bench Created by ISE for module: Instruction_Register

-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
-- 
-- This test bench is used to check the behaviour of the instruction register.
-- based on Load_IR_IR value, opcode and data address signal are assigned.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_Instruction_Register IS
END Test_Instruction_Register;
 
ARCHITECTURE behavior OF Test_Instruction_Register IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Instruction_Register
    PORT(
         Instruction_IR : IN  std_logic_vector(23 downto 0);
         Load_IR_IR : IN  std_logic;
         Clock_IR : IN  std_logic;
         OpCode_IR : OUT  std_logic_vector(7 downto 0);
         Data_Address_IR : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal Instruction_IR : std_logic_vector(23 downto 0) := (others => '0');
   signal Load_IR_IR : std_logic := '0';
   signal Clock_IR : std_logic := '0';

 	--Outputs
   signal OpCode_IR : std_logic_vector(7 downto 0);
   signal Data_Address_IR : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clock_IR_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Instruction_Register PORT MAP (
          Instruction_IR => Instruction_IR,
          Load_IR_IR => Load_IR_IR,
          Clock_IR => Clock_IR,
          OpCode_IR => OpCode_IR,
          Data_Address_IR => Data_Address_IR
        );

   -- Clock process definitions
   Clock_IR_process :process
   begin
		Clock_IR <= '0';
		wait for Clock_IR_period/2;
		Clock_IR <= '1';
		wait for Clock_IR_period/2;
   end process;
 
	-- Stimulus process
	process
	begin

		Load_IR_IR <= '1'; 	-- if Load_IR_IR = 1 Instruction_IR is decoded and values assigned
		Instruction_IR <= "111100001100110011001100"; 	-- Loads "11110000" into Opcode and loads "1100110011001100" into RegOut
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Load_IR_IR <= '0';	-- if Load_IR_IR = 0 values will not change
		Instruction_IR <= "000011110011001100110011"; 	-- Output doesn't change
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Load_IR_IR <= '1';	-- if Load_IR_IR = 1 Instruction_IR is decoded and values assigned
		Instruction_IR <= "110011001111111100000000"; 	-- Loads "11001100" into Opcode and loads "1111111100000000" into RegOut
		-- hold reset state for 100 ns.
		wait for 100ns;  
		
	end Process;
	

END;
