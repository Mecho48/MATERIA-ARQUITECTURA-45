--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:57:42 05/05/2017
-- Design Name:   
-- Module Name:   D:/procesador4/Tb_ALU.vhd
-- Project Name:  procesador4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 

 
ENTITY Tb_ALU IS
END Tb_ALU;
 
ARCHITECTURE behavior OF Tb_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Registro1_ALU : IN  std_logic_vector(31 downto 0);
         Registro2_ALU : IN  std_logic_vector(31 downto 0);
         AluOp : IN  std_logic_vector(5 downto 0);
         Carry : IN  std_logic;
         AluResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Registro1_ALU : std_logic_vector(31 downto 0) := (others => '0');
   signal Registro2_ALU : std_logic_vector(31 downto 0) := (others => '0');
   signal AluOp : std_logic_vector(5 downto 0) := (others => '0');
   signal Carry : std_logic := '0';

 	--Outputs
   signal AluResult : std_logic_vector(31 downto 0);
   
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Registro1_ALU => Registro1_ALU,
          Registro2_ALU => Registro2_ALU,
          AluOp => AluOp,
          Carry => Carry,
          AluResult => AluResult
        );

  

END;