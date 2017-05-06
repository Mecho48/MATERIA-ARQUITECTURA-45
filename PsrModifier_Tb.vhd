--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:04:21 05/05/2017
-- Design Name:   
-- Module Name:   D:/procesador4/PsrModifier_Tb.vhd
-- Project Name:  procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSR_Modifier
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
 
ENTITY PsrModifier_Tb IS
END PsrModifier_Tb;
 
ARCHITECTURE behavior OF PsrModifier_Tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSR_Modifier
    PORT(
         ALUOP : IN  std_logic_vector(5 downto 0);
         ALU_Result : IN  std_logic_vector(31 downto 0);
         Crs1 : IN  std_logic_vector(31 downto 0);
         MuxOut : IN  std_logic_vector(31 downto 0);
         nzvc : OUT  std_logic_vector(3 downto 0);
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ALUOP : std_logic_vector(5 downto 0) := (others => '0');
   signal ALU_Result : std_logic_vector(31 downto 0) := (others => '0');
   signal Crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal MuxOut : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal nzvc : std_logic_vector(3 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR_Modifier PORT MAP (
          ALUOP => ALUOP,
          ALU_Result => ALU_Result,
          Crs1 => Crs1,
          MuxOut => MuxOut,
          nzvc => nzvc,
          reset => reset
        );

   -- Stimulus process
   stim_proc: process
   begin		
			  reset <= '1';
			  ALUOP <= "000010";
           ALU_Result <= "00000000000000000000000000000111";
           Crs1 <= "00000000000000000000000000010111";
           MuxOut <= "00000000000000000000000000000110";
           wait for 100 ns;
			  
			  reset <= '0';
			  ALUOP <= "000010";
           ALU_Result <= "00000000000000000000000000000111";
           Crs1 <= "00000000000000000000000000010111";
           MuxOut <= "00000000000000000000000000000110";
           wait for 100 ns;
			  
			  ALUOP <= "000000";
           ALU_Result <= "00000000000000000000000000000111";
           Crs1 <= "00000000000000000000000000010111";
           MuxOut <= "00000000000000000000000000000110";
           wait for 100 ns;
			  
			  ALUOP <= "000011";
           ALU_Result <= "00000000000000000000000000000111";
           Crs1 <= "00000000000000000000000000010111";
           MuxOut <= "00000000000000000000000000000110";
           wait for 100 ns;
			  wait;
   end process;

END;
