--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:50:57 07/14/2016
-- Module Name:   F:/ADSD - 1/ceng5534_Project_Shaik/CPU_Design/Test_CPU_Design.vhd
-- Project Name:  CPU_Design
-- 
-- VHDL Test Bench Created by ISE for module: CPU_Design
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
 
ENTITY Test_CPU_Design IS
END Test_CPU_Design;
 
ARCHITECTURE behavior OF Test_CPU_Design IS 
 
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
	
		-- CC1
		Enable <= '0';		-- enable is 0 for disabling the cpu controller unit
		WeIM   <= '1';		-- write enable to load the below instructions to instruction memory
		
		-- Input_Instruction(23 downto 21) = "000" -> load instruction
		-- Input_Instruction(16) = '0' -> refer register A
		-- Input_Instruction(15 downto 0) = "0000000000000011" -> represent data value 3
		Input_Instruction   <= "000000000000000000000011";	-- Input_Instruction to load register A with value 3 to Instruction_Address 0000
		Instruction_Address <= "0000";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC2
		-- Input_Instruction(23 downto 21) = "000" -> load instruction
		-- Input_Instruction(16) = '1' -> refer register B
		-- Input_Instruction(15 downto 0) = "0000000000000110" -> represent data value 6
		Input_Instruction   <= "000000010000000000000110";	-- Input_Instruction to load register B with value 6 to Instruction_Address 0001
		Instruction_Address <= "0001";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC3
		-- Input_Instruction(23 downto 21) = "010" -> represent ALU operation instruction
		-- Input_Instruction(20 downto 18) = "001" -> represent ADD operation
		-- Input_Instruction(17) = '1' -> refer mode to alu to do arithmetic operation
		Input_Instruction   <= "010001100000000000000000";	-- Input_Instruction to perform ALU operation
		Instruction_Address <= "0010";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC4
		-- Input_Instruction(23 downto 21) = "001" -> represent store register C value to data memory
		-- Input_Instruction(15 downto 0) = "0000000000000001" -> represent address 1 in data memory
		Input_Instruction   <= "001000000000000000000001";	-- Input_Instruction to store register C value to data memory
		Instruction_Address <= "0011";
		-- hold reset state for 100 ns.
		Wait for 100ns;	
		
		-- CC5
		-- Input_Instruction(23 downto 21) = "010" -> represent ALU operation instruction
		-- Input_Instruction(20 downto 18) = "011" -> represent AND operation
		-- Input_Instruction(17) = '0' -> refer mode to alu to do logical operation
		Input_Instruction   <= "010011000000000000000000";	-- Input_Instruction to perform ALU operation
		Instruction_Address <= "0100";
		-- hold reset state for 100 ns.
		Wait for 100ns;	
		
		-- CC6
		-- Input_Instruction(23 downto 21) = "001" -> represent store register C value to data memory
		-- Input_Instruction(15 downto 0) = "0000000000000010" -> represent address 2 in data memory
		Input_Instruction   <= "001000000000000000000010";	-- Input_Instruction to store register C value to data memory
		Instruction_Address <= "0101";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC7
		-- Input_Instruction(23 downto 21) = "011" -> represent read data from data memory
		-- Input_Instruction(15 downto 0) = "0000000000000001" -> represent read from location 1 in data memory
		Input_Instruction   <= "011000000000000000000001";	-- Input_Instruction to read value from data memory
		Instruction_Address <= "0110";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC8
		-- Input_Instruction(23 downto 21) = "000" -> load instruction
		-- Input_Instruction(16) = '1' -> refer register B
		-- Input_Instruction(15 downto 0) = "0000000000001011" -> represent data value 11 
		Input_Instruction   <= "000000010000000000001011";	-- Input_Instruction to load register B with value 11 to Instruction_Address 0111
		Instruction_Address <= "0111";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC9
		-- Input_Instruction(23 downto 21) = "010" -> represent ALU operation instruction
		-- Input_Instruction(20 downto 18) = "000" -> represent Multiplication operation
		-- Input_Instruction(17) = '1' -> refer mode to alu to do arithmetic operation
		Input_Instruction   <= "010000100000000000000000";	-- Input_Instruction to perform ALU operation
		Instruction_Address <= "1000";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC10
		-- Input_Instruction(23 downto 21) = "001" -> represent store register C value to data memory
		-- Input_Instruction(15 downto 0) = "0000000000000011" -> represent address 3 in data memory
		Input_Instruction   <= "001000000000000000000011";	-- Input_Instruction to store register C value to data memory
		Instruction_Address <= "1001";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC11
		-- Input_Instruction(23 downto 21) = "011" -> represent read data from data memory
		-- Input_Instruction(15 downto 0) = "0000000000000011" -> represent read from location 3 in data memory
		Input_Instruction   <= "011000000000000000000011";	-- Input_Instruction to read value from data memory
		Instruction_Address <= "1010";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC12
		-- Input_Instruction(23 downto 21) = "111" -> represent exit operation
		Input_Instruction   <= "111000000000000000000000";	
		Instruction_Address <= "1011";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC13
		-- Input_Instruction(23 downto 21) = "011" -> represent read data from data memory
		-- Input_Instruction(15 downto 0) = "0000000000000000" -> represent read from location 0 in data memory
		-- this instruction should not happen since exit operation is performed
		Input_Instruction   <= "011000000000000000000000";	
		Instruction_Address <= "1100";
		-- hold reset state for 100 ns.
		Wait for 100ns;
		
		-- CC14
		Enable <= '1';
		WeIM   <= '0';
		Wait;
		
		-- @CC15 Load A
		-- @CC16 Load B
		-- @CC17 ADD A,B
		-- @CC18 Store to DM location 1. ADD Output will be drive to CPU_Out at this CC.
		-- @CC19 AND A,B
		-- @CC20 Store to DM location 2. AND Output will be drive to CPU_Out at this CC.
		-- @CC21 Read from DM @ location 1. @ Next CC (@22)ADD Output will be drive to DM_Out at this CC.
		-- @CC22 Load B.
		-- @CC23 MUL A, B
		-- @CC24 Store to DM location 3. MUL Output will be drive to CPU_Out at this CC.
		-- @CC25 Read from DM @ location 3. @ Next CC (@26) MUL Output will be drive to DM_Out at this CC.
		-- @CC26 Exit. After this no change in CPU_Out and DM_Out.
	
	End Process;
END;
