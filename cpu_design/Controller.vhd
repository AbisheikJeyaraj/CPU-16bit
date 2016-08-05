----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:11:00 07/13/2016 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
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

entity Controller is
    Port ( Mode_C : in  STD_LOGIC;
           OpCode_C : in  STD_LOGIC_VECTOR (2 downto 0);
           Select_C : out  STD_LOGIC_VECTOR (1 downto 0);
           Sel1_C : out  STD_LOGIC;
           Sel2_C : out  STD_LOGIC;
           Sel_Cout_C : out  STD_LOGIC;
           Direction_C : out  STD_LOGIC;
           Type_C : out  STD_LOGIC;
           Op_Code_C : out  STD_LOGIC_VECTOR (2 downto 0));
end Controller;

architecture Behavioral of Controller is

--Signal OP_M : STD_LOGIC_VECTOR (3 downto 0);

begin

--OP_M<= Mode_C & OpCode_C;
	Process(Mode_C,OpCode_C)
	Begin
		If Mode_C = '0' Then
			Op_Code_C <= OpCode_C;
			Sel2_C <= '0';
			Sel_Cout_C <= '0';
		elsif Mode_C = '1' Then
			If OpCode_C(2) = '0' Then
				Select_C <= OpCode_C(1 downto 0);
				Sel1_C <= '1';
				Sel2_C <= '1';
				Sel_Cout_C <= '1';
			elsif OpCode_C(2) = '1'	Then
				Type_C <= OpCode_C(1);
				Direction_C <= OpCode_C(0);
				Sel1_C <= '0';
				Sel2_C <= '1';
				Sel_Cout_C <= '0';
			End If;
		End If;
	End Process;

end Behavioral;



