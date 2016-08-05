--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:50:47 07/12/2016
-- Design Name:   
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_Program_Counter.vhd
-- Project Name:  CPU_Design
-- 
-- VHDL Test Bench Created by ISE for module: Program_Counter
-- 
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.

-- This test bench is used to test the behavioral of the program counter.
-- Load_PC_P is pushed in the process and corresponding output value will be shown in simulation
-------------------------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test_Program_Counter IS
END Test_Program_Counter;
 
ARCHITECTURE behavior OF Test_Program_Counter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Program_Counter
    PORT(
         Load_PC_P : IN  std_logic;
         Clock_P : IN  std_logic;
         PC_Out_P : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal Load_PC_P : std_logic := '0';
   signal Clock_P : std_logic := '0';

 	--Outputs
   signal PC_Out_P : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clock_P_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Program_Counter PORT MAP (
          Load_PC_P => Load_PC_P,
          Clock_P => Clock_P,
          PC_Out_P => PC_Out_P
        );

   -- Clock process definitions
   Clock_P_process :process
   begin
		Clock_P <= '0';
		wait for Clock_P_period/2;
		Clock_P <= '1';
		wait for Clock_P_period/2;
   end process;

	-- Stimulus process
	process
	Begin
	
		Load_PC_P <= '1';  	-- pc value should get increment when Load_PC_P = 1
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Load_PC_P <= '0';  	-- pc value remains same when Load_PC_P = 0
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Load_PC_P <= '1';		-- pc value should get increment when Load_PC_P = 1
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Load_PC_P <= '0';		-- pc value remains same when Load_PC_P = 0
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Load_PC_P <= '1';		-- pc value should get increment when Load_PC_P = 1
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Load_PC_P <= '1';		-- pc value should get increment when Load_PC_P = 1
		-- hold reset state for 100 ns.
		wait for 100ns;
		
	end process;
	
END;
