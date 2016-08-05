----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:27:16 07/13/2016 
-- Module Name:    Data_Memory - Behavioral 
-- Project Name: 	 CPU_Design	
-- Notes:
-- Data memory is the unit where the final output will be stored.
-- Based on the read/write enable signal, values will be pushed and poped from the memory.
-- The address to be stored/read will be drive by instruction register output.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

	-- Inputs :: CPU_Out_DM, Cout_DM, Clock_DM, WeDM_DM, ReDM_DM, Data_Address_DM of type STD_LOGIC and STD_LOGIC_VECTOR.
	-- Output :: DM_Out_DM of type STD_LOGIC_VECTOR
	-- Entity declaration for the Data memory begin.
	entity Data_Memory is
		 Port ( CPU_Out_DM : in  STD_LOGIC_VECTOR (15 downto 0);			-- input from register c which is the cpu out 
				  Cout_DM : in  STD_LOGIC;		-- input from alu
				  Clock_DM : in  STD_LOGIC;	-- clock input
				  WeDM_DM : in  STD_LOGIC;		-- input from cpu controller
				  ReDM_DM : in  STD_LOGIC;		-- input from cpu controller
				  Data_Address_DM : in  STD_LOGIC_VECTOR (15 downto 0);	-- input from instruction register
				  DM_Out_DM : out  STD_LOGIC_VECTOR (16 downto 0) :=(Others=>'0') );		-- output from data memory
	end Data_Memory;
	-- end entity
	
	-- Behavioral implementation of Data memory begin
	architecture Behavioral of Data_Memory is
		
		-- declaring new data type called data_memory which is of 17 bits data and contains 16 entry.
		Type Data_Memory is array(0 to 15)of STD_LOGIC_VECTOR (16 downto 0);
		signal Memory : Data_Memory;
		
		-- architecture begin
		begin
			-- process with Clock_P in sensitivity list
			process(Clock_DM)
				-- process begin
				begin
					-- check for active clock edge 
					if (Clock_DM'Event and Clock_DM='1') then
							-- check for WeDM_DM = 1 which enables the write operation to memory.
							if (WeDM_DM = '1') then
								-- cout from alu operation and cpu_out from register c are stored together as 17 bits data in the memory.
								Memory(to_integer(unsigned(Data_Address_DM))) <= (Cout_DM & CPU_Out_DM);
							-- check for ReDM_DM = 1 which enables the read operation from memory.
							elsif ReDM_DM = '1' then
								-- when read, value from Data_Address_DM is pushed to data memory out.
								DM_Out_DM <= Memory(to_integer(unsigned(Data_Address_DM)));
							end If;
					end If;
			end process;	
			-- end of process
	end Behavioral;
	-- end of architecture

