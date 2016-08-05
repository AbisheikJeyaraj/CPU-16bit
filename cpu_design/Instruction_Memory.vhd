----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:37:36 07/12/2016 
-- Module Name:    Instruction_Memory - Behavioral 
-- Project Name:	 CPU_Design
-- Notes : 
-- Instruction memory is used to store the instructions to be excecuted.
-- Based on the read/write enable signal, values will be pushed and poped from the memory.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

	-- Inputs :: Input_Instruction_IM, Address_IM, Clock_IM, WeIM_IM of type STD_LOGIC and STD_LOGIC_VECTOR.
	-- Output :: Instruction_IM of type STD_LOGIC_VECTOR
	-- Entity declaration for the Instruction memory begin.
	entity Instruction_Memory is
		 Port ( Input_Instruction_IM : in  STD_LOGIC_VECTOR (23 downto 0);	-- Input from user
				  Address_IM : in  STD_LOGIC_VECTOR (3 downto 0);					-- Input from mux unit
				  WeIM_IM : in  STD_LOGIC;		-- Input from user
				  Clock_IM : in  STD_LOGIC;	-- clock input
				  Instruction_IM : out  STD_LOGIC_VECTOR (23 downto 0) :=(Others=>'0') );			-- Output to instruction register
	end Instruction_Memory;
	-- end entity
	
	-- Behavioral implementation of Instruction memory begin
	architecture Behavioral of Instruction_Memory is

		-- declaring new data type called Instruction_Memory which is of 24 bits data and contains 16 entry.
		Type Instruction_Memory is array(0 to 15)of STD_LOGIC_VECTOR (23 downto 0);
		signal Memory : Instruction_Memory;
		
		-- architecture begin
		begin
			-- process with Clock_IM in sensitivity list
			process(Clock_IM)
				-- process begin
				Begin
					-- check for active clock edge 
					If (Clock_IM'Event and Clock_IM='1') then
						-- check for WeIM_IM = 1 which enables the write operation to memory.
						If (WeIM_IM = '1') then
							-- when write, value will be stored to the Address_IM.
							Memory(to_integer(unsigned(Address_IM))) <= Input_Instruction_IM;
						-- check for WeIM_IM = 0 which enables the read operation from memory.
						elsif WeIM_IM = '0' then
							-- when read, value from Address_IM is pushed to data memory out.
							Instruction_IM <= Memory(to_integer(unsigned(Address_IM)));
						end If;
					end If;
			end process;	
			-- end of process
	end Behavioral;
	-- end of architecture

