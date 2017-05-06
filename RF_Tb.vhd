--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:07:09 05/05/2017
-- Design Name:   
-- Module Name:   D:/procesador4/RF_Tb.vhd
-- Project Name:  procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register_file
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
 
 
ENTITY RF_Tb IS
END RF_Tb;
 
ARCHITECTURE Arq_RF OF RF_Tb IS 
 
     
    COMPONENT RF
    PORT(
         Reset : IN  std_logic;
         Rs1_RF : IN  std_logic_vector(5 downto 0);
         Rs2_RF : IN  std_logic_vector(5 downto 0);
         Rd_RF : IN  std_logic_vector(5 downto 0);
         WriteEnable : IN  std_logic;
         Datatowrite : IN  std_logic_vector(31 downto 0);
         Crs1 : OUT  std_logic_vector(31 downto 0);
         Crs2 : OUT  std_logic_vector(31 downto 0);
         Crd : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Rs1_RF : std_logic_vector(5 downto 0) := (others => '0');
   signal Rs2_RF : std_logic_vector(5 downto 0) := (others => '0');
   signal Rd_RF : std_logic_vector(5 downto 0) := (others => '0');
   signal WriteEnable : std_logic := '0';
   signal Datatowrite : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Crs1 : std_logic_vector(31 downto 0);
   signal Crs2 : std_logic_vector(31 downto 0);
   signal Crd : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          Reset => Reset,
          Rs1_RF => Rs1_RF,
          Rs2_RF => Rs2_RF,
          Rd_RF => Rd_RF,
          WriteEnable => WriteEnable,
          Datatowrite => Datatowrite,
          Crs1 => Crs1,
          Crs2 => Crs2,
          Crd => Crd
        );

  

 

END;
