--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:34:24 07/13/2016
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_Data_Memory.vhd
-- Project Name:  CPU_Design
-- VHDL Test Bench Created by ISE for module: Data_Memory
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
 
ENTITY Test_Data_Memory IS
END Test_Data_Memory;
 
ARCHITECTURE behavior OF Test_Data_Memory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Data_Memory
    PORT(
         CPU_Out_DM : IN  std_logic_vector(15 downto 0);
         Cout_DM : IN  std_logic;
         Clock_DM : IN  std_logic;
         WeDM_DM : IN  std_logic;
         ReDM_DM : IN  std_logic;
         Data_Address_DM : IN  std_logic_vector(15 downto 0);
         DM_Out_DM : OUT  std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal CPU_Out_DM : std_logic_vector(15 downto 0) := (others => '0');
   signal Cout_DM : std_logic := '0';
   signal Clock_DM : std_logic := '0';
   signal WeDM_DM : std_logic := '0';
   signal ReDM_DM : std_logic := '0';
   signal Data_Address_DM : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal DM_Out_DM : std_logic_vector(16 downto 0);

   -- Clock period definitions
   constant Clock_DM_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Data_Memory PORT MAP (
          CPU_Out_DM => CPU_Out_DM,
          Cout_DM => Cout_DM,
          Clock_DM => Clock_DM,
          WeDM_DM => WeDM_DM,
          ReDM_DM => ReDM_DM,
          Data_Address_DM => Data_Address_DM,
          DM_Out_DM => DM_Out_DM
        );

   -- Clock process definitions
   Clock_DM_process :process
   begin
		Clock_DM <= '0';
		wait for Clock_DM_period/2;
		Clock_DM <= '1';
		wait for Clock_DM_period/2;
   end process;

	process
	begin
	
		WeDM_DM <= '1';								-- making write enabled
		ReDM_DM <= '0';								-- making read disabled	
	
		Data_Address_DM <= "0000000000001100"; -- Writes Cout_DM and CPU_Out_DM to address Data_Address_DM
		CPU_Out_DM <= "1111000011110000";		-- cpu output value to be write to above address
		Cout_DM <= '0';								-- cout from alu is 0
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Data_Address_DM <= "0000000000001011"; -- Writes Cout_DM and CPU_Out_DM to address Data_Address_DM
		CPU_Out_DM <= "0000111100001111";		-- cpu output value to be write to above address
		Cout_DM <= '1';								-- cout from alu is 1
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Data_Address_DM <= "0000000000000011"; -- Writes Cout_DM and CPU_Out_DM to address Data_Address_DM
		CPU_Out_DM <= "1100110011001100";		-- cpu output value to be write to above address
		Cout_DM <= '0';								-- cout from alu is 0
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		WeDM_DM <= '0';								-- making write disabled
		ReDM_DM <= '1';								-- making read enabled	
		
		Data_Address_DM <= "0000000000001100"; -- Reads data from address Data_Address_DM to DM_Out_DM
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Data_Address_DM <= "0000000000001011"; -- Reads data from address Data_Address_DM to DM_Out_DM
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Data_Address_DM <= "0000000000000011"; -- Reads data from address Data_Address_DM to DM_Out_DM
		-- hold reset state for 100 ns.
		wait for 100ns;
		
	end Process;

END;
