--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:58 07/13/2016
-- Design Name:   
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_Mux2to1.vhd
-- Project Name:  CPU_Design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux2to1
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
 
ENTITY Test_Mux2to1 IS
END Test_Mux2to1;
 
ARCHITECTURE behavior OF Test_Mux2to1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux2to1
    PORT(
         Instruction_Address_M : IN  std_logic_vector(3 downto 0);
         PC_Out_M : IN  std_logic_vector(3 downto 0);
         Sel_M : IN  std_logic;
         Address_M : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Instruction_Address_M : std_logic_vector(3 downto 0) := (others => '0');
   signal PC_Out_M : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel_M : std_logic := '0';

 	--Outputs
   signal Address_M : std_logic_vector(3 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux2to1 PORT MAP (
          Instruction_Address_M => Instruction_Address_M,
          PC_Out_M => PC_Out_M,
          Sel_M => Sel_M,
          Address_M => Address_M
        );

	Process
	Begin
		Instruction_Address_M <= "0101" ;
		
		PC_Out_M <= "1100" ;
		
		Sel_M <= '0' ;		
		wait for 100ns;		
		Sel_M <= '1' ;		
		wait for 100ns;
	End Process;

END;
