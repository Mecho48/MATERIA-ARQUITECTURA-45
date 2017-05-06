--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:59:21 05/05/2017
-- Design Name:   
-- Module Name:   D:/procesador4/Add_Tb.vhd
-- Project Name:  procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Add
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY Add_Tb IS
END Add_Tb;
 
ARCHITECTURE behavior OF Add_Tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Add
    PORT(
         Registre1_add : IN  std_logic_vector(31 downto 0);
         Registre2_add : IN  std_logic_vector(31 downto 0);
         Registreout_add : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Registre1_add : std_logic_vector(31 downto 0) := (others => '0');
   signal Registre2_add : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Registreout_add : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Add PORT MAP (
          Registre1_add => Registre1_add,
          Registre2_add => Registre2_add,
          Registreout_add => Registreout_add
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Registre1_add <= "00000000000000000000000000010001";
		Registre2_add <= "00000000000000000000000001010001";
		wait for 100 ns;
		Registre1_add <= "00000000000000000000000000010000";
		Registre2_add <= "00000000000000000000000001000001";
      -- insert stimulus here 

      wait;
   end process;

END;