----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:58 05/05/2017 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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


entity MUX is
    Port ( Crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           inmediato : in  STD_LOGIC_VECTOR (31 downto 0);
           Aux_i : in  STD_LOGIC;
           RegistreoutALU : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture ArqMUX of MUX is

begin
			process(Crs2,inmediato,Aux_i)
				begin
					if(Aux_i = '1')then
						RegistreoutALU <= inmediato;
					else
						if(Aux_i = '0')then
							RegistreoutALU <= Crs2;
						end if;
					end if;
				end process;

end ArqMUX;
