--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:58:52 07/12/2016
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_CPU_Controller.vhd
-- Project Name:  CPU_Design
-- VHDL Test Bench Created by ISE for module: CPU_Controller
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
 
ENTITY Test_CPU_Controller IS
END Test_CPU_Controller;
 
ARCHITECTURE behavior OF Test_CPU_Controller IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT CPU_Controller
    PORT(
         Enable_C : IN  std_logic;
         Opcode_C : IN  std_logic_vector(7 downto 0);
         Load_PC_C : OUT  std_logic;
         ALU_Mode_C : OUT  std_logic;
         ALU_Opcode_C : OUT  std_logic_vector(2 downto 0);
         Load_A_C : OUT  std_logic;
         Load_B_C : OUT  std_logic;
         Load_C_C : OUT  std_logic;
         WeDM_C : OUT  std_logic;
         ReDM_C : OUT  std_logic;
         Sel_C : OUT  std_logic;
         Load_IR_C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Enable_C : std_logic := '0';
   signal Opcode_C : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Load_PC_C : std_logic;
   signal ALU_Mode_C : std_logic;
   signal ALU_Opcode_C : std_logic_vector(2 downto 0);
   signal Load_A_C : std_logic;
   signal Load_B_C : std_logic;
   signal Load_C_C : std_logic;
   signal WeDM_C : std_logic;
   signal ReDM_C : std_logic;
   signal Sel_C : std_logic;
   signal Load_IR_C : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU_Controller PORT MAP (
          Enable_C => Enable_C,
          Opcode_C => Opcode_C,
          Load_PC_C => Load_PC_C,
          ALU_Mode_C => ALU_Mode_C,
          ALU_Opcode_C => ALU_Opcode_C,
          Load_A_C => Load_A_C,
          Load_B_C => Load_B_C,
          Load_C_C => Load_C_C,
          WeDM_C => WeDM_C,
          ReDM_C => ReDM_C,
          Sel_C => Sel_C,
          Load_IR_C => Load_IR_C
        );

	Process
	Begin
	
		Enable_C <= '0';			-- If enable is 0, all select signals are 0
		Opcode_C <= "01011101";
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Enable_C <= '1';			-- if enable is 1, based on opcode value select signal are assigned
		
		Opcode_C <= "00011100"; -- opcode to Load A
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Opcode_C <= "00011101"; -- opcode to Load B
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Opcode_C <= "00111101"; -- opcode to Store C
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Opcode_C <= "01011101"; -- opcode to ALU Operation
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Opcode_C <= "01111101"; -- opcode to data Memory read
		-- hold reset state for 100 ns.
		wait for 100ns;
		
		Opcode_C <= "11111101"; -- opcode to Exit the operation
		-- hold reset state for 100 ns.
		wait for 100ns;
	
	End Process;
END;
