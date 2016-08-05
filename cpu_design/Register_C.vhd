----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:57 07/13/2016 
-- Module Name:    Register_C - Behavioral 
-- Project Name:   CPU_Design
--------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	-- Entity declaration for register unit begin.
	entity Register_C is
		 Port ( ALU_Out_C : in  STD_LOGIC_VECTOR (15 downto 0);
				  Load_C_C : in  STD_LOGIC;
				  Clock_C : in  STD_LOGIC;
				  CPU_Out_C : out  STD_LOGIC_VECTOR (15 downto 0) :=(Others=>'0') );
	end Register_C;
	-- end entity

	-- Behavioral implementation of register unit begin
	architecture Behavioral of Register_C is
		-- architecture begin
		begin
			-- process with Clock_C in sensitivity list
			Process (Clock_C)
				-- process begin
				Begin
					-- check for active clock edge
					If (Clock_C'Event and Clock_C = '1') Then
						-- check for load signal = 1
						If (Load_C_C = '1' )Then
							-- if 1, value loads to the register
							CPU_Out_C <= ALU_Out_C;
						End if;
					End if;	
			End Process;
			-- end of process
	end Behavioral;
	-- end of architecture

