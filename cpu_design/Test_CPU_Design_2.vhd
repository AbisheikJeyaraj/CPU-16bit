--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:10:54 07/24/2016
-- Design Name:   
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_CPU_Design_2.vhd
-- Project Name:  CPU_Design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU_Design
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_CPU_Design_2 IS
END Test_CPU_Design_2;
 
ARCHITECTURE behavior OF Test_CPU_Design_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU_Design
    PORT(
         Instruction_Address : IN  std_logic_vector(3 downto 0);
         Input_Instruction : IN  std_logic_vector(23 downto 0);
         Enable : IN  std_logic;
         WeIM : IN  std_logic;
         Clock : IN  std_logic;
         Cout : OUT  std_logic;
         CPU_Out : OUT  std_logic_vector(15 downto 0);
         DM_Out : OUT  std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Instruction_Address : std_logic_vector(3 downto 0) := (others => '0');
   signal Input_Instruction : std_logic_vector(23 downto 0) := (others => '0');
   signal Enable : std_logic := '0';
   signal WeIM : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal CPU_Out : std_logic_vector(15 downto 0);
   signal DM_Out : std_logic_vector(16 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU_Design PORT MAP (
          Instruction_Address => Instruction_Address,
          Input_Instruction => Input_Instruction,
          Enable => Enable,
          WeIM => WeIM,
          Clock => Clock,
          Cout => Cout,
          CPU_Out => CPU_Out,
          DM_Out => DM_Out
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   Process
	Begin
	
	Enable <= '0';
	WeIM   <= '1';
	
	Input_Instruction   <= "000000000000000000111111";
	Instruction_Address <= "0000";
	Wait for 100ns;
	
	Input_Instruction   <= "000000010000000000000011";
	Instruction_Address <= "0001";
	Wait for 100ns;
	
	Input_Instruction   <= "010010100000000000000000";
	Instruction_Address <= "0010";
	Wait for 100ns;
	
	Input_Instruction   <= "001000000000000000000001";
	Instruction_Address <= "0011";
	Wait for 100ns;	
	
	Input_Instruction   <= "010010000000000000000000";
	Instruction_Address <= "0100";
	Wait for 100ns;	
	
	Input_Instruction   <= "001000000000000000000011";
	Instruction_Address <= "0101";
	Wait for 100ns;
	
	Input_Instruction   <= "011000000000000000000011";
	Instruction_Address <= "0110";
	Wait for 100ns;
	
	Input_Instruction   <= "000000010000000000000010";
	Instruction_Address <= "0111";
	Wait for 100ns;
	
	Input_Instruction   <= "010100100000000000000000";
	Instruction_Address <= "1000";
	Wait for 100ns;
	
	Input_Instruction   <= "001000000000000000000111";
	Instruction_Address <= "1001";
	Wait for 100ns;
	
	Input_Instruction   <= "011000000000000000000111";
	Instruction_Address <= "1010";
	Wait for 100ns;
	
	Input_Instruction   <= "010011100000000000000000";
	Instruction_Address <= "1011";
	Wait for 100ns;
	
	Input_Instruction   <= "111000000000000000000000";
	Instruction_Address <= "1100";
	Wait for 100ns;
	
	Input_Instruction   <= "010001100000000000000000";
	Instruction_Address <= "1101";
	Wait for 100ns;
	
	Enable <= '1';
	WeIM   <= '0';
	Wait;
	
	End Process;

END;
