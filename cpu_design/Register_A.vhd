----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:08 07/13/2016 
-- Design Name: 
-- Module Name:    Register_A - Behavioral 
-- Project Name:   CPU_Design
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
	
	-- Entity declaration for register unit begin.
	entity Register_A is
		 Port ( Data_Address_A : in  STD_LOGIC_VECTOR (15 downto 0);
				  Load_A_A : in  STD_LOGIC;
				  Clock_A : in  STD_LOGIC;
				  Out_A_A : out  STD_LOGIC_VECTOR (15 downto 0));
	end Register_A;
	-- end entity
	
	-- Behavioral implementation of register unit begin
	architecture Behavioral of Register_A is
		-- architecture begin
		begin
			-- process with Clock_A in sensitivity list
			Process (Clock_A)
				-- process begin
				Begin
					-- check for active clock edge
					If (Clock_A'Event and Clock_A = '1') Then
						-- check for load signal = 1
						If (Load_A_A = '1' )Then
							-- if 1, value loads to the register
							Out_A_A <= Data_Address_A;
						End if;
					End if;	
			End Process;
			-- end of process
	end Behavioral;
	-- end of architecture

