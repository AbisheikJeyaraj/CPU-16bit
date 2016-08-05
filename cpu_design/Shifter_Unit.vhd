----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:49 07/13/2016 
-- Design Name: 
-- Module Name:    Shifter_Unit - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Shifter_Unit is
    Port ( A_SU : in  STD_LOGIC_VECTOR (15 downto 0);
           B_SU : in  STD_LOGIC_VECTOR (15 downto 0);
           Direction_SU : in  STD_LOGIC;
           Op_Type_SU : in  STD_LOGIC;
           ShiftOut_SU : out  STD_LOGIC_VECTOR (15 downto 0));
end Shifter_Unit;

architecture Behavioral of Shifter_Unit is

begin

	Process (A_SU,B_SU, Direction_SU, Op_Type_SU)
	Begin
	
		If Op_Type_SU = '0' Then
			 If Direction_SU = '0' then
				ShiftOut_SU <= to_stdlogicvector(to_bitvector(A_SU) sll conv_integer(B_SU));
			 Elsif Direction_SU = '1' then
				ShiftOut_SU <= to_stdlogicvector(to_bitvector(A_SU) srl conv_integer(B_SU) );  
			 End If;
		Elsif Op_Type_SU = '1' Then
			 If Direction_SU = '0' then
				ShiftOut_SU <= to_stdlogicvector(to_bitvector(A_SU) rol conv_integer(B_SU));
			 Elsif Direction_SU = '1' then
				ShiftOut_SU <= to_stdlogicvector(to_bitvector(A_SU) ror conv_integer(B_SU));
			 End If;
		End If;
		
	End Process;

end Behavioral;


