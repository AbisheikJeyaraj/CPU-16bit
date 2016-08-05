--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:42:35 07/12/2016
-- Design Name:   
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_Instruction_Memory.vhd
-- Project Name:  CPU_Design
-- 
-- VHDL Test Bench Created by ISE for module: Instruction_Memory
-- 
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Test_Instruction_Memory IS
END Test_Instruction_Memory;
 
ARCHITECTURE behavior OF Test_Instruction_Memory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Instruction_Memory
    PORT(
         Input_Instruction_IM : IN  std_logic_vector(23 downto 0);
         Address_IM : IN  std_logic_vector(3 downto 0);
         WeIM_IM : IN  std_logic;
         Clock_IM : IN  std_logic;
         Instruction_IM : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal Input_Instruction_IM : std_logic_vector(23 downto 0) := (others => '0');
   signal Address_IM : std_logic_vector(3 downto 0) := (others => '0');
   signal WeIM_IM : std_logic := '0';
   signal Clock_IM : std_logic := '0';

 	--Outputs
   signal Instruction_IM : std_logic_vector(23 downto 0);

   -- Clock period definitions
   constant Clock_IM_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Instruction_Memory PORT MAP (
          Input_Instruction_IM => Input_Instruction_IM,
          Address_IM => Address_IM,
          WeIM_IM => WeIM_IM,
          Clock_IM => Clock_IM,
          Instruction_IM => Instruction_IM
        );

   -- Clock process definitions
   Clock_IM_process :process
   begin
		Clock_IM <= '0';
		wait for Clock_IM_period/2;
		Clock_IM <= '1';
		wait for Clock_IM_period/2;
   end process;
 
	Process
	Begin
	
		WeIM_IM  <='1';			-- write operation is enabled 
		
		Address_IM <= "1100"; 	-- Writes Input_Instruction_IM to address Address_IM
		Input_Instruction_IM <= "111100001111000011110000";
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Address_IM <= "1011"; 	-- Writes Input_Instruction_IM to address Address_IM
		Input_Instruction_IM <= "000011110000111100001111";
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Address_IM <= "0011"; 	-- Writes Input_Instruction_IM to address Address_IM
		Input_Instruction_IM <= "110011001100110011001100";
		-- hold reset state for 100 ns.		
		wait for 100ns;
		
		WeIM_IM  <='0';			-- write operation is disabled and read enabled
		
		Address_IM <= "1100"; 	--Reads data from address Address_IM to instruction memory signal Instruction_IM
		Input_Instruction_IM <= "000000001111111100000000";
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Address_IM <= "1011"; 	--Reads data from address Address_IM to instruction memory signal Instruction_IM
		Input_Instruction_IM <= "111111110000000011111111";
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Address_IM <= "0011"; 	--Reads data from address Address_IM to instruction memory signal Instruction_IM
		Input_Instruction_IM <= "111111111111111111111111";
		-- hold reset state for 100 ns.
		wait for 100ns;
	
	end Process;
	
END;
