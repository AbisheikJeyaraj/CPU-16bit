----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:39 07/13/2016 
-- Module Name:    Register_B - Behavioral 
-- Project Name: 	 CPU_Design
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	-- Entity declaration for register unit begin.
	entity Register_B is
		 Port ( Data_Address_B : in  STD_LOGIC_VECTOR (15 downto 0);
				  Load_B_B : in  STD_LOGIC;
				  Clock_B : in  STD_LOGIC;
				  Out_B_B : out  STD_LOGIC_VECTOR (15 downto 0));
	end Register_B;
	-- end entity
	
	-- Behavioral implementation of register unit begin
	architecture Behavioral of Register_B is
		-- architecture begin
		begin
			-- process with Clock_B in sensitivity list
			Process (Clock_B)
				-- process begin
				Begin
					-- check for active clock edge
					If (Clock_B'Event and Clock_B = '1') Then
						-- check for load signal = 1
						If (Load_B_B = '1' )Then
							-- if 1, value loads to the register
							Out_B_B <= Data_Address_B;
						End if;
					End if;	
			End Process;
			-- end of process
	end Behavioral;
	-- end of architecture
