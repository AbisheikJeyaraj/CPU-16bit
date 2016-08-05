----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:58:46 07/13/2016 
-- Module Name:    Mux2to1 - Behavioral 
-- Project Name:   CPU_Design
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	-- Entity declaration for the 2 to 1 MUX begin.
	entity Mux2to1 is
		 Port ( Instruction_Address_M : in  STD_LOGIC_VECTOR (3 downto 0);
				  PC_Out_M : in  STD_LOGIC_VECTOR (3 downto 0);
				  Sel_M : in  STD_LOGIC;
				  Address_M : out  STD_LOGIC_VECTOR (3 downto 0));
	end Mux2to1;
	-- end entity
	
	-- Behavioral implementation of 2 to 1 MUX begin
	architecture Behavioral of Mux2to1 is
	-- architecture begin
		begin
		-- process with Instruction_Address_M, PC_Out_M, Sel_M in sensitivity list
		process (Instruction_Address_M,PC_Out_M,Sel_M)
			-- process begin
			begin
				-- check for select signal from cpu controller
				If Sel_M = '0' then
					-- if 0, Instruction_Address_M will be pushed to output
					Address_M <= Instruction_Address_M ;
				else
					-- if 1, PC_Out_M will be pushed to output
					Address_M <= PC_Out_M ; 
				end if;
		end process;
		-- end of process
	end Behavioral;
	-- end of architecture

