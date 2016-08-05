----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:22:03 07/13/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALU is
    Port ( Out_A_ALU : in  STD_LOGIC_VECTOR (15 downto 0);
           Out_B_ALU : in  STD_LOGIC_VECTOR (15 downto 0);
           Alu_Opcode_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           Alu_Mode_ALU : in  STD_LOGIC;
           Cout_ALU : out  STD_LOGIC;
           ALU_Out_ALU : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU;

architecture Behavioral of ALU is


Component Controller is
    Port ( Mode_C : in  STD_LOGIC;
           OpCode_C : in  STD_LOGIC_VECTOR (2 downto 0);
           Select_C : out  STD_LOGIC_VECTOR (1 downto 0);
           Sel1_C : out  STD_LOGIC;
           Sel2_C : out  STD_LOGIC;
           Sel_Cout_C : out  STD_LOGIC;
           Direction_C : out  STD_LOGIC;
           Type_C : out  STD_LOGIC;
           Op_Code_C : out  STD_LOGIC_VECTOR (2 downto 0));
end Component;

Component Arithmetic_Unit is
	Port (  A_AU : in  STD_LOGIC_VECTOR (15 downto 0); --Input
           B_AU : in  STD_LOGIC_VECTOR (15 downto 0); --Input
           Op_sel_AU : in  STD_LOGIC_VECTOR (1 downto 0); --Operation selection
           ArithOut_AU : out  STD_LOGIC_VECTOR (15 downto 0); --Result
           Cout_AU : out  STD_LOGIC);
end Component;

Component Shifter_Unit is
    Port ( A_SU : in  STD_LOGIC_VECTOR (15 downto 0);
           B_SU : in  STD_LOGIC_VECTOR (15 downto 0);
           Direction_SU : in  STD_LOGIC;
           Op_Type_SU : in  STD_LOGIC;
           ShiftOut_SU : out  STD_LOGIC_VECTOR (15 downto 0));
end Component;

Component Logic_Unit is
    Port ( A_LU : in  STD_LOGIC_VECTOR (15 downto 0);
           B_LU : in  STD_LOGIC_VECTOR (15 downto 0);
           Opcode_LU : in  STD_LOGIC_VECTOR (2 downto 0);
           LogicalOut_LU : out  STD_LOGIC_VECTOR (15 downto 0));
end Component;

Component Mux_2to1 is
    Port ( a_M : in  STD_LOGIC_VECTOR (15 downto 0);
           b_M : in  STD_LOGIC_VECTOR (15 downto 0);
           s_M : in  STD_LOGIC;
           y_M : out  STD_LOGIC_VECTOR (15 downto 0));
end Component;

Component And_2 is
    Port ( X_In_And : in  STD_LOGIC;
           Y_In_And : in  STD_LOGIC;
           Z_Out_And : out  STD_LOGIC);
end Component;

Signal Direction, SU_Type, Sel1, Sel2, Sel_Cout, AU_Cout : STD_LOGIC;
Signal Op_Code : STD_LOGIC_VECTOR (2 downto 0);
Signal AU_Select : STD_LOGIC_VECTOR (1 downto 0);
Signal AU_Out, SU_Out, LU_Out, M1_Out : STD_LOGIC_VECTOR (15 downto 0);

begin

Control    : Controller Port Map (Alu_Mode_ALU, Alu_Opcode_ALU, AU_Select, Sel1, Sel2, Sel_Cout, Direction, SU_Type, Op_Code);

Arithmetic : Arithmetic_Unit Port Map (Out_A_ALU, Out_B_ALU, AU_Select, AU_Out, AU_Cout);

Shifter	  : Shifter_Unit Port Map (Out_A_ALU, Out_B_ALU, Direction, SU_Type, SU_Out);

Logic      : Logic_Unit Port Map (Out_A_ALU, Out_B_ALU, Op_Code, LU_Out);

Mux_1      : Mux_2to1 Port Map (SU_Out, AU_Out, Sel1, M1_Out);

Mux_2      : Mux_2to1 Port Map (LU_Out, M1_Out, Sel2, ALU_Out_ALU);

And_1      : And_2 Port Map (Sel_Cout, AU_Cout, Cout_ALU);

end Behavioral;

