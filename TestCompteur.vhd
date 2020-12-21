--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:27:36 10/05/2017
-- Design Name:   
-- Module Name:   /home/hoyosrod/Compteur/TestCompteur.vhd
-- Project Name:  Compteur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: compteur8bits
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
 
ENTITY TestCompteur IS
END TestCompteur;
 
ARCHITECTURE behavior OF TestCompteur IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT compteur8bits
    PORT(
         CK : IN  std_logic;
         RST : IN  std_logic;
         SENS : IN  std_logic;
         LOAD : IN  std_logic;
         EN : IN  std_logic;
         Din : IN  std_logic_vector(7 downto 0);
         Dout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CK : std_logic := '0';
   signal RST : std_logic := '0';
   signal SENS : std_logic := '0';
   signal LOAD : std_logic := '0';
   signal EN : std_logic := '0';
   signal Din : std_logic_vector(7 downto 0) := 	X"0A";--(others => '0');

 	--Outputs
   signal Dout : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: compteur8bits PORT MAP (
          CK => CK,
          RST => RST,
          SENS => SENS,
          LOAD => LOAD,
          EN => EN,
          Din => Din,
          Dout => Dout
        );

   -- Clock process definitions
   CK_process :process
   begin
		CK <= '0';
		wait for CK_period/2;
		CK <= '1';
		wait for CK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CK_period*10;

      -- insert stimulus here 
		RST<='1','0' after 300 ns, '1' after 350 ns, '0' after 450 ns, '1' after 480 ns;
		EN<='1','0' after 20 ns, '1' after 450 ns;
		SENS<='1','0' after 200 ns;
		LOAD<='0','1' after 80 ns,'0' after 150 ns, '1' after 350 ns, '0' after 480 ns;

      wait;
   end process;

END;
