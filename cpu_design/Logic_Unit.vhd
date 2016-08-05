----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:06 07/13/2016 
-- Design Name: 
-- Module Name:    Logic_Unit - Behavioral 
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

entity Logic_Unit is
    Port ( A_LU : in  STD_LOGIC_VECTOR (15 downto 0);
           B_LU : in  STD_LOGIC_VECTOR (15 downto 0);
           Opcode_LU : in  STD_LOGIC_VECTOR (2 downto 0);
           LogicalOut_LU : out  STD_LOGIC_VECTOR (15 downto 0));
end Logic_Unit;

architecture Behavioral of Logic_Unit is

begin

	With Opcode_LU Select
		LogicalOut_LU <= (A_LU nor B_LU) When "000",
							  (A_LU nand B_LU) When "001",
						     (A_LU or B_LU) When "010",
						     (A_LU and B_LU) When "011",
						     (A_LU xor B_LU) When "100",
						     (A_LU xnor B_LU) When "101",
						     (not A_LU) When "110",
						     (not B_LU) When Others;


end Behavioral;

