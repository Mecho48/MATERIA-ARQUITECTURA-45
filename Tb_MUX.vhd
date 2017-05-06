--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:01:42 05/05/2017
-- Design Name:   
-- Module Name:   D:/procesador4/Tb_MUX.vhd
-- Project Name:  procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tb_MUX IS
END Tb_MUX;
 
ARCHITECTURE behavior OF Tb_MUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         Crs2 : IN  std_logic_vector(31 downto 0);
         inmediato : IN  std_logic_vector(31 downto 0);
         Aux_i : IN  std_logic;
         RegistreoutALU : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal inmediato : std_logic_vector(31 downto 0) := (others => '0');
   signal Aux_i : std_logic := '0';

 	--Outputs
   signal RegistreoutALU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          Crs2 => Crs2,
          inmediato => inmediato,
          Aux_i => Aux_i,
          RegistreoutALU => RegistreoutALU
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Aux_i <= '1';
		Crs2 <= "00000000000000000000000000010001";
		inmediato <= "00000000000000000000000001010001";
		
		wait for 100 ns;	
		Aux_i <= '0';
		Crs2 <= "00000000000000000000000000010001";
		inmediato <= "00000000000000000000000001010001";
		
			
			
		
      

      -- insert stimulus here 

      wait;
   end process;

END;