----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:52:05 07/13/2016 
-- Module Name:    CPU_Design - Behavioral 
-- Project Name: 	 CPU_Design
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	-- Entity declaration for the CPU begin.
	entity CPU_Design is
		 Port ( Instruction_Address : in  STD_LOGIC_VECTOR (3 downto 0);	-- Address Input from user
				  Input_Instruction : in  STD_LOGIC_VECTOR (23 downto 0);	-- Instruction input from user
				  Enable : in  STD_LOGIC;	-- Enable signal for cpu controller
				  WeIM : in  STD_LOGIC;		-- Write enable input signal for instruction memory
				  Clock : in  STD_LOGIC;	-- clock input
				  Cout : out  STD_LOGIC;	-- ALU carry out
				  CPU_Out : out  STD_LOGIC_VECTOR (15 downto 0);	-- CPU output
				  DM_Out : out  STD_LOGIC_VECTOR (16 downto 0));	-- data memory output based on read from address
	end CPU_Design;
	-- end entity
	
	-- Behavioral implementation of CPU begin
	architecture Structural of CPU_Design is
		
		-- Component for 16 bit arithmetic logic unit starts
		Component ALU is
			 Port ( Out_A_ALU : in  STD_LOGIC_VECTOR (15 downto 0);
					  Out_B_ALU : in  STD_LOGIC_VECTOR (15 downto 0);
					  Alu_Opcode_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
					  Alu_Mode_ALU : in  STD_LOGIC;
					  Cout_ALU : out  STD_LOGIC;
					  ALU_Out_ALU : out  STD_LOGIC_VECTOR (15 downto 0));
		end Component;
		-- end of component
		
		-- Component for cpu controller unit starts
		Component CPU_Controller is
			 Port ( Enable_C : in  STD_LOGIC;
					  Opcode_C : in  STD_LOGIC_VECTOR (7 downto 0);
					  Load_PC_C : out  STD_LOGIC;
					  ALU_Mode_C : out  STD_LOGIC;
					  ALU_Opcode_C : out  STD_LOGIC_VECTOR (2 downto 0);
					  Load_A_C : out  STD_LOGIC;
					  Load_B_C : out  STD_LOGIC;
					  Load_C_C : out  STD_LOGIC;
					  WeDM_C : out  STD_LOGIC;
					  ReDM_C : out  STD_LOGIC;
					  Sel_C : out  STD_LOGIC;
					  Load_IR_C : out  STD_LOGIC);
		end Component;
		-- end of component
		
		-- component for data memory starts
		Component Data_Memory is
			 Port ( CPU_Out_DM : in  STD_LOGIC_VECTOR (15 downto 0);
					  Cout_DM : in  STD_LOGIC;
					  Clock_DM : in  STD_LOGIC;
					  WeDM_DM : in  STD_LOGIC;
					  ReDM_DM : in  STD_LOGIC;
					  Data_Address_DM : in  STD_LOGIC_VECTOR (15 downto 0);
					  DM_Out_DM : out  STD_LOGIC_VECTOR (16 downto 0));
		end Component;
		-- end of component

		-- component for instruction memory starts
		Component Instruction_Memory is
			 Port ( Input_Instruction_IM : in  STD_LOGIC_VECTOR (23 downto 0);
					  Address_IM : in  STD_LOGIC_VECTOR (3 downto 0);
					  WeIM_IM : in  STD_LOGIC;
					  Clock_IM : in  STD_LOGIC;
					  Instruction_IM : out  STD_LOGIC_VECTOR (23 downto 0));
		end Component;
		-- end of component

		-- component for instruction register starts
		Component Instruction_Register is
			 Port ( Instruction_IR : in  STD_LOGIC_VECTOR (23 downto 0);
					  Load_IR_IR : in  STD_LOGIC;
					  Clock_IR : in  STD_LOGIC;
					  OpCode_IR : out  STD_LOGIC_VECTOR (7 downto 0);
					  Data_Address_IR : out  STD_LOGIC_VECTOR (15 downto 0));
		end Component;
		-- end of component

		-- component for 2:1 mux starts
		Component Mux2to1 is
			 Port ( Instruction_Address_M : in  STD_LOGIC_VECTOR (3 downto 0);
					  PC_Out_M : in  STD_LOGIC_VECTOR (3 downto 0);
					  Sel_M : in  STD_LOGIC;
					  Address_M : out  STD_LOGIC_VECTOR (3 downto 0));
		end Component;
		-- end of component

		-- component for progrma counter starts
		Component Program_Counter is
			 Port ( Load_PC_P : in  STD_LOGIC;
					  Clock_P : in  STD_LOGIC;
					  PC_Out_P : out  STD_LOGIC_VECTOR (3 downto 0):=(Others=>'0'));
		end Component;
		-- end of component

		-- component for register A starts
		Component Register_A is
			 Port ( Data_Address_A : in  STD_LOGIC_VECTOR (15 downto 0);
					  Load_A_A : in  STD_LOGIC;
					  Clock_A : in  STD_LOGIC;
					  Out_A_A : out  STD_LOGIC_VECTOR (15 downto 0));
		end Component;
		-- end of component

		-- component for register B starts
		Component Register_B is
			 Port ( Data_Address_B : in  STD_LOGIC_VECTOR (15 downto 0);
					  Load_B_B : in  STD_LOGIC;
					  Clock_B : in  STD_LOGIC;
					  Out_B_B : out  STD_LOGIC_VECTOR (15 downto 0));
		end Component;
		-- end of component

		-- component for register C starts
		Component Register_C is
			 Port ( ALU_Out_C : in  STD_LOGIC_VECTOR (15 downto 0);
					  Load_C_C : in  STD_LOGIC;
					  Clock_C : in  STD_LOGIC;
					  CPU_Out_C : out  STD_LOGIC_VECTOR (15 downto 0));
		end Component;
		-- end of component
		
		-- Internal signal declaration starts
			
			-- for program counter unit
			signal Load_PC, Sel : STD_LOGIC;
			Signal PC_Out : STD_LOGIC_VECTOR (3 downto 0);
			
			-- for Instruction register unit
			signal Load_IR : STD_LOGIC;
			Signal Instruction : STD_LOGIC_VECTOR (23 downto 0);
			
			-- for Data memory unit
			signal WeDM, ReDM : STD_LOGIC;
			Signal Data_Address : STD_LOGIC_VECTOR (15 downto 0);
			
			-- for register A
			signal Load_A : STD_LOGIC;
			Signal Out_A : STD_LOGIC_VECTOR (15 downto 0);
			
			-- for register B
			signal Load_B : STD_LOGIC;
			Signal Out_B : STD_LOGIC_VECTOR (15 downto 0);
			
			-- for register C
			signal Load_C : STD_LOGIC;
			
			-- for ALU unit
			signal ALU_Mode : STD_LOGIC;
			Signal ALU_Opcode : STD_LOGIC_VECTOR (2 downto 0);
			
			-- for Instruction memory unit
			Signal Address : STD_LOGIC_VECTOR (3 downto 0);
			
			-- for cpu controller unit
			Signal Opcode : STD_LOGIC_VECTOR (7 downto 0);
			
			-- for ALU unit
			Signal ALU_Out : STD_LOGIC_VECTOR (15 downto 0);
			
			-- for cpu design unit
			Signal CPU_Out_I : STD_LOGIC_VECTOR (15 downto 0);
			Signal Cout_I : STD_LOGIC;

		-- Internal signal declaration ends
		
		-- architecture begin
		begin

			-- ########### CPU Controller unit operation begin ########### --
				Component1  : CPU_Controller Port Map (Enable, Opcode, Load_PC, ALU_Mode, ALU_Opcode, Load_A, Load_B, Load_C, WeDM, ReDM, Sel, Load_IR);
			-- ########### Controller unit operation ends ########### --
			
			-- ########### Instruction register unit operation starts ########### --
				Component2  : Instruction_Register Port Map (Instruction, Load_IR, Clock, Opcode, Data_Address);    
			-- ########### Instruction register operation ends ########### --				

			-- ########### Instruction memory unit operation starts ########### --
				Component3  : Instruction_Memory Port Map (Input_Instruction, Address, WeIM, Clock, Instruction); 	
			-- ########### Instruction memory unit operation ends ########### --

			-- ########### Program counter unit operation starts ########### --
				Component4  : Program_Counter Port Map (Load_PC, Clock, PC_Out);
			-- ########### Program counter unit operation ends ########### --
			
			-- ########### Mux unit operation starts ########### --
				Component5  : Mux2to1 Port Map (Instruction_Address, PC_Out, Sel, Address);
			-- ########### Mux unit operation ends ########### --
			
			-- ########### Register A operation starts ########### --
				Component6  : Register_A Port Map (Data_Address, Load_A, Clock, Out_A);
			-- ########### Register A operation ends ########### --
			
			-- ########### Register B operation starts ########### --
				Component7  : Register_B Port Map (Data_Address, Load_B, Clock, Out_B);
			-- ########### Register B operation ends ########### --

			-- ########### Register C operation starts ########### --
				Component8  : Register_C Port Map (ALU_Out, Load_C, Clock, CPU_Out_I);
			-- ########### Register C operation ends ########### --
			
			-- ########### ALU operation starts ########### --
				Component9  : ALU Port Map (Out_A, Out_B, ALU_Opcode, ALU_Mode, Cout_I, ALU_Out);
			-- ########### ALU operation ends ########### --
			
			-- ########### Data memory operation starts ########### --
				Component10 : Data_Memory Port Map (CPU_Out_I, Cout_I, Clock, WeDM, ReDM, Data_Address, DM_Out);
			-- ########### Data memory operation starts ########### --

			-- CPU_Out_I internal signal is assigned to the design output CPU_Out
			CPU_Out <= CPU_Out_I;
			-- Cout_I internal signal is assigned to the design output Cout
			Cout <= Cout_I;

		end Structural;
		-- end of architecture
