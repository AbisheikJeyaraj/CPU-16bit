--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:19:24 07/13/2016
-- Design Name:   
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_Register_C.vhd
-- Project Name:  CPU_Design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register_C
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
 
ENTITY Test_Register_C IS
END Test_Register_C;
 
ARCHITECTURE behavior OF Test_Register_C IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_C
    PORT(
         ALU_Out_C : IN  std_logic_vector(15 downto 0);
         Load_C_C : IN  std_logic;
         Clock_C : IN  std_logic;
         CPU_Out_C : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_Out_C : std_logic_vector(15 downto 0) := (others => '0');
   signal Load_C_C : std_logic := '0';
   signal Clock_C : std_logic := '0';

 	--Outputs
   signal CPU_Out_C : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clock_C_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_C PORT MAP (
          ALU_Out_C => ALU_Out_C,
          Load_C_C => Load_C_C,
          Clock_C => Clock_C,
          CPU_Out_C => CPU_Out_C
        );

   -- Clock process definitions
   Clock_C_process :process
   begin
		Clock_C <= '0';
		wait for Clock_C_period/2;
		Clock_C <= '1';
		wait for Clock_C_period/2;
   end process;
 

	Process
	Begin
		
		ALU_Out_C<= "0000000011111111" ; --Loads input value to output
		Load_C_C <= '1' ;
		wait for 100ns;
		
		ALU_Out_C<= "1111111100000000" ; --Output stays in previous state
		Load_C_C <= '0';
		wait for 100ns;
		
		ALU_Out_C<= "1111000011110000" ; --Loads input value to output
		Load_C_C <= '1' ;
		wait for 100ns;
		
	End Process;

END;
