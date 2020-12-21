--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:18:59 10/18/2017
-- Design Name:   
-- Module Name:   /home/hoyosrod/Compteur/TestCLK.vhd
-- Project Name:  Compteur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CLKDiviseur
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
 
ENTITY TestCLK IS
END TestCLK;
 
ARCHITECTURE behavior OF TestCLK IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CLKDiviseur
    PORT(
         CLK_IN : IN  std_logic;
         CK : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_IN : std_logic := '0';

 	--Outputs
   signal CK : std_logic;

   -- Clock period definitions
   constant CLK_IN_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CLKDiviseur PORT MAP (
          CLK_IN => CLK_IN,
          CK => CK
        );

   -- Clock process definitions
   CLK_IN_process :process
   begin
		CLK_IN <= '0';
		wait for CLK_IN_period/2;
		CLK_IN <= '1';
		wait for CLK_IN_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_IN_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
