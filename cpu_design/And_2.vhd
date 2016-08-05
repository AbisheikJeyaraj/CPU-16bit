----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:43 07/13/2016 
-- Design Name: 
-- Module Name:    And_2 - Behavioral 
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


entity And_2 is
    Port ( X_In_And : in  STD_LOGIC;
           Y_In_And : in  STD_LOGIC;
           Z_Out_And : out  STD_LOGIC);
end And_2;

architecture Behavioral of And_2 is

begin

Z_Out_And <= X_In_And and Y_In_And;

end Behavioral;

