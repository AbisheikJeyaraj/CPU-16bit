----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:50 07/13/2016 
-- Design Name: 
-- Module Name:    Mux_2to1 - Behavioral 
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


entity Mux_2to1 is
    Port ( a_M : in  STD_LOGIC_VECTOR (15 downto 0);
           b_M : in  STD_LOGIC_VECTOR (15 downto 0);
           s_M : in  STD_LOGIC;
           y_M : out  STD_LOGIC_VECTOR (15 downto 0));
end Mux_2to1;

architecture Behavioral of Mux_2to1 is

begin
process (a_M,b_M,s_M)
begin
	If s_M = '0' then 
		y_M <= a_M ;
	else
		y_M <= b_M ; 
	end if;
end process;

end Behavioral;

