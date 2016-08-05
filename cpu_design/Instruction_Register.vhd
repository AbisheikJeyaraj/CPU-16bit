----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:44 07/13/2016 
-- Module Name:    Instruction_Register - Behavioral 
-- Project Name: 	 CPU_Design
-- Notes :
-- # It is a register that stores the instruction that currently being executed.
-- # This unit will decode the opcode and data/instruction address.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	-- Inputs :: Instruction_IR, Load_IR_IR, Clock_IR of type STD_LOGIC and STD_LOGIC_VECTOR.
	-- Outputs :: OpCode_IR, Data_Address_IR of type STD_LOGIC_VECTOR
	-- Entity declaration for the instruction register begin.
	entity Instruction_Register is
		 Port ( Instruction_IR : in  STD_LOGIC_VECTOR (23 downto 0);	-- input from instruction memory
				  Load_IR_IR : in  STD_LOGIC;	-- input from cpu controller
				  Clock_IR : in  STD_LOGIC;	-- clock input
				  OpCode_IR : out  STD_LOGIC_VECTOR (7 downto 0) :=(Others=>'0') ;	-- opcode output to cpu controller
				  Data_Address_IR : out  STD_LOGIC_VECTOR (15 downto 0) :=(Others=>'0'));	-- address output to data memory
	end Instruction_Register;
	-- end entity
	
	-- Behavioral implementation of instruction register begin
	architecture Behavioral of Instruction_Register is
		-- architecture begin
		begin
			-- process with Clock_IR in sensitivity list
			process (Clock_IR)
			begin
				-- check for active clock edge 
				if (Clock_IR'Event and Clock_IR = '1') then
					-- check for Load_IR_IR signal from cpu controller is enabled
					if Load_IR_IR = '1' then
						-- last eight bits are decoded from input and assign to opcode
						OpCode_IR <= Instruction_IR(23 downto 16);
						-- remaining 16 bits are assigned to the data address signal to the data memory
						Data_Address_IR <= Instruction_IR(15 downto 0);
					end if;
				end if;
			end process;
			-- end of process
	end Behavioral;
	-- end of architecture
