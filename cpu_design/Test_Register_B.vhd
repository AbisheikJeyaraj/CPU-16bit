--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:13:57 07/13/2016
-- Design Name:   
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_Register_B.vhd
-- Project Name:  CPU_Design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register_B
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
 
ENTITY Test_Register_B IS
END Test_Register_B;
 
ARCHITECTURE behavior OF Test_Register_B IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_B
    PORT(
         Data_Address_B : IN  std_logic_vector(15 downto 0);
         Load_B_B : IN  std_logic;
         Clock_B : IN  std_logic;
         Out_B_B : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_Address_B : std_logic_vector(15 downto 0) := (others => '0');
   signal Load_B_B : std_logic := '0';
   signal Clock_B : std_logic := '0';

 	--Outputs
   signal Out_B_B : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clock_B_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_B PORT MAP (
          Data_Address_B => Data_Address_B,
          Load_B_B => Load_B_B,
          Clock_B => Clock_B,
          Out_B_B => Out_B_B
        );

   -- Clock process definitions
   Clock_B_process :process
   begin
		Clock_B <= '0';
		wait for Clock_B_period/2;
		Clock_B <= '1';
		wait for Clock_B_period/2;
   end process;
 

	Process
	Begin
		
		Data_Address_B<= "0000000011111111" ; --Loads input value to output
		Load_B_B <= '1' ;
		wait for 100ns;
		
		Data_Address_B<= "1111111100000000" ; --Output stays in previous state
		Load_B_B <= '0';
		wait for 100ns;
		
		Data_Address_B<= "1111000011110000" ; --Loads input value to output
		Load_B_B <= '1' ;
		wait for 100ns;
		
	End Process;

END;
