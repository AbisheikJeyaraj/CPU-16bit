----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:12:24 07/13/2016 
-- Design Name: 
-- Module Name:    Arithmetic_Unit - Behavioral 
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



entity Arithmetic_Unit is
	Port (  A_AU : in  STD_LOGIC_VECTOR (15 downto 0); --Input
           B_AU : in  STD_LOGIC_VECTOR (15 downto 0); --Input
           Op_sel_AU : in  STD_LOGIC_VECTOR (1 downto 0); --Operation selection
           ArithOut_AU : out  STD_LOGIC_VECTOR (15 downto 0); --Result
           Cout_AU : out  STD_LOGIC);
end Arithmetic_Unit;

architecture Behavioral of Arithmetic_Unit is

Signal Adder, Subtractor, Multiplier, Incrementer : STD_LOGIC_VECTOR (16 downto 0);

begin

	Adder <= conv_std_logic_vector ( (conv_integer(A_AU) + conv_integer(B_AU)), 17);

	Subtractor <= conv_std_logic_vector ( (conv_integer(A_AU) - conv_integer(B_AU)), 17);

	Multiplier <= conv_std_logic_vector ( (conv_integer(A_AU(7 downto 0)) * conv_integer(B_AU(7 downto 0))), 17);

	Incrementer <= conv_std_logic_vector ( (conv_integer(A_AU) + 1), 17);

		With Op_sel_AU Select
			ArithOut_AU <= Multiplier(15 downto 0)  when "00",
							Adder(15 downto 0)       when "01",
							Subtractor(15 downto 0)  when "10",
							Incrementer(15 downto 0) when others;
						
		With Op_sel_AU Select
			Cout_AU <= Multiplier(16)  when "00",
					  Adder(16)       when "01",
					  Subtractor(16)  when "10",
					  Incrementer(16) when others;


end Behavioral;

