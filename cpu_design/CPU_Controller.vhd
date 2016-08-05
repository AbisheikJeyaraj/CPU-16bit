----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:47 07/12/2016 
-- Design Name: 
-- Module Name:    CPU_Controller - Behavioral 
-- Project Name: 	 CPU_Design

-- Notes : 
-- CPU controller is the unit which generates the internal control signal for other units
-- It takes the input and decoded to get the control signal for
-- # ALU operation # Register A, B, C # Write and read signal for data memory, # sel signal for mux
----------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	-- Entity declaration for the CPU controller unit begin.
	entity CPU_Controller is
		 Port ( Enable_C : in  STD_LOGIC;		--	Input from user
				  Opcode_C : in  STD_LOGIC_VECTOR (7 downto 0);	-- Input from instruction register	
				  Load_PC_C : out  STD_LOGIC;		-- control signal for program counter
				  ALU_Mode_C : out  STD_LOGIC;	-- mode signal for alu
				  ALU_Opcode_C : out  STD_LOGIC_VECTOR (2 downto 0);	-- opcode signal for alu
				  Load_A_C : out  STD_LOGIC;		-- control signal for register A
				  Load_B_C : out  STD_LOGIC;		-- control signal for register B
				  Load_C_C : out  STD_LOGIC;		-- control signal for register C
				  WeDM_C : out  STD_LOGIC;			-- write enable signal for data memory
				  ReDM_C : out  STD_LOGIC;			-- read enable signal for data memory
				  Sel_C : out  STD_LOGIC;			-- select signal for mux
				  Load_IR_C : out  STD_LOGIC);	-- select signal for instruction register
	end CPU_Controller;
	-- end entity
	
	-- Behavioral implementation of CPU controller unit begin
	architecture Behavioral of CPU_Controller is
		-- architecture begin
		begin
		-- process with Enable_C, Opcode_C in sensitivity list
		process (Enable_C,Opcode_C)
			-- process begin
			begin
				-- Enable_C will be select signal for mux
				Sel_C <= Enable_C;
				-- check for Enable_C = 0
				If (Enable_C = '0') Then
						-- pc load signal is 0
						Load_PC_C <= '0';
						-- instruction register load signal is 0						
						Load_IR_C <= '0';
						-- alu controller mode and opcode signal is 0						
						ALU_Mode_C <= '0'; ALU_Opcode_C<= "000";
						-- all registers load signal is 0
						Load_A_C <= '0'; Load_B_C <= '0'; Load_C_C <= '0';	
						-- write and read enable signal to data memory is 0
						WeDM_C <= '0'; ReDM_C <= '0';
				-- check for Enable_C = 1
				elsif (Enable_C = '1') Then
				
						-- Opcode_C(1) will be the mode signal to alu controller
						ALU_Mode_C <= Opcode_C(1);
						-- Opcode_C4 downto 2) will be the opcode to alu controller
						ALU_Opcode_C<= Opcode_C(4 downto 2);
						
						-- check for Opcode_C(7 downto 5) = "000" will do load operation
						if Opcode_C(7 downto 5) = "000" Then
								-- Opcode_C(0) = 0 to enable register A
								if Opcode_C(0) ='0' Then
									-- program counter unit is enabled
									Load_PC_C <= '1';
									-- instruction register unit is enabled
									Load_IR_C <= '1';
									-- load register A will be 1 and other register will be 0
									Load_A_C <= '1'; Load_B_C <= '0'; Load_C_C <= '0';
									-- write and read enable signal to data memory is 0
									WeDM_C <= '0'; ReDM_C <= '0'; 							
								elsif Opcode_C(0) ='1' Then
									-- program counter unit is enabled
									Load_PC_C <= '1';
									-- instruction register unit is enabled
									Load_IR_C <= '1';
									-- load register B will be 1 and other register will be 0
									Load_A_C <= '0'; Load_B_C <= '1'; Load_C_C <= '0';
									-- write and read enable signal to data memory is 0 when load operation
									WeDM_C <= '0'; ReDM_C <= '0'; 
								end If;
						-- check for Opcode_C(7 downto 5) = "001" will store register C output to data memory
						elsif Opcode_C(7 downto 5) = "001" Then
								-- program counter unit is enabled
								Load_PC_C <= '1';
								-- instruction register unit is enabled
								Load_IR_C <= '1';
								-- all registers load signal is 0
								Load_A_C <= '0'; Load_B_C <= '0'; Load_C_C <= '0';
								-- write signal is enabled to write the register C data to data memory
								WeDM_C <= '1'; ReDM_C <= '0'; 
						-- check for Opcode_C(7 downto 5) = "010" will perform alu operation
						elsif Opcode_C(7 downto 5) = "010" Then
								-- program counter unit is enabled
								Load_PC_C <= '1';
								-- instruction register unit is enabled
								Load_IR_C <= '1';
								-- load c register will be enabled to store the alu out data to register C
								Load_A_C <= '0'; Load_B_C <= '0'; Load_C_C <= '1';
								-- write and read enable signal to data memory is 0
								WeDM_C <= '0'; ReDM_C <= '0';
						-- check for Opcode_C(7 downto 5) = "011" will read value from data memory to output
						elsif Opcode_C(7 downto 5) = "011" Then
								-- program counter unit is enabled
								Load_PC_C <= '1';
								-- instruction register unit is enabled
								Load_IR_C <= '1';
								-- while reading from memory all registers load signal is 0
								Load_A_C <= '0'; Load_B_C <= '0'; Load_C_C <= '0';
								-- read signal is enabled to read the data memory to dm out
								WeDM_C <= '0'; ReDM_C <= '1';
						-- check for Opcode_C(7 downto 5) = "111" system must exit and cpu is disabled.
						elsif Opcode_C(7 downto 5) = "111" Then
								-- pc load signal is 0
								Load_PC_C <= '0';
								-- instruction register load signal is 0						
								Load_IR_C <= '0';
								-- alu controller mode and opcode signal is 0						
								ALU_Mode_C <= '0'; ALU_Opcode_C<= "000";
								-- all registers load signal is 0
								Load_A_C <= '0'; Load_B_C <= '0'; Load_C_C <= '0';	
								-- write and read enable signal to data memory is 0
								WeDM_C <= '0'; ReDM_C <= '0';
						else
								-- for all other Opcode_C(7 downto 5) valus pc load signal is 1
								Load_PC_C <= '1';
								-- for all other Opcode_C(7 downto 5) valus instruction register value is enabled					
								Load_IR_C <= '1';
								-- for all other Opcode_C(7 downto 5) valus alu controller mode and opcode signal is 0						
								ALU_Mode_C <= '0'; ALU_Opcode_C<= "000";
								-- for all other Opcode_C(7 downto 5) valus all registers load signal is 0
								Load_A_C <= '0'; Load_B_C <= '0'; Load_C_C <= '0';	
								-- for all other Opcode_C(7 downto 5) valus write and read enable signal to data memory is 0
								WeDM_C <= '0'; ReDM_C <= '0';
						end if;
				end if;
				
		end process;
		-- end of process
	end Behavioral;
	-- end of architecture

