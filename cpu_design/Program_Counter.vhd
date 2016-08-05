----------------------------------------------------------------------------------
----------------------------------------------------------------
-- Student Name: Jayaraja Perumal, Abisheik
-- Student ID: 1464440  
----------------------------------------------------------------

----------------------------------------------------------------
-- Student Name: : Shaik, Khaja
-- Student ID: 1496037  
----------------------------------------------------------------

-- Create Date:    21:11:01 07/12/2016 
-- Updated Date:   07/23/2016
-- Module Name:    Program_Counter - Behavioral 
-- Project Name:   CPU_Design
-- Notes :
-- # It is a register that stores the address of the current instruction.
-- # Initial value starts at 0 and incremented by 1 on active clock edge.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

	-- Inputs :: Load_PC_P, Clock_P of type STD_LOGIC.
	-- Output :: PC_Out_P of type STD_LOGIC_VECTOR
	-- Entity declaration for the program counter begin.
	entity Program_Counter is
		 Port ( Load_PC_P : in  STD_LOGIC;	-- input from cpu controller
				  Clock_P : in  STD_LOGIC;		-- clock input
				  PC_Out_P : out  STD_LOGIC_VECTOR (3 downto 0):=(Others=>'0'));	-- output from the pc counter
	end Program_Counter;
	-- end entity
	
	-- Behavioral implementation of program counter begin
	architecture Behavioral of Program_Counter is
		-- architecture begin
		begin
		-- process with Clock_P in sensitivity list
		process(Clock_P) 
			-- process begin
			variable PC: STD_LOGIC_VECTOR (3 downto 0):="0000"; -- initial value start with 0
			begin
				-- check for active clock edge 
				if Clock_P'Event and Clock_P='1' then
					-- check for load_pc signal from cpu controller is enabled
					if Load_PC_P = '1' then
						-- pc value gets incremented by 1 and convert to 4 bits
						PC := conv_std_logic_vector((conv_integer(PC) + 1),4);
					end if;
				end If;
				-- local variable assigns to output signal at end of process
				PC_Out_P <= PC;
		end process;
		-- end of process
	end Behavioral;
	-- end of architecture

