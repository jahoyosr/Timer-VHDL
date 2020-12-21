--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:44:29 10/18/2017
-- Design Name:   
-- Module Name:   /home/hoyosrod/Compteur/TestTOP.vhd
-- Project Name:  Compteur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOP
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
 
ENTITY TestTOP IS
END TestTOP;
 
ARCHITECTURE behavior OF TestTOP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOP
    PORT(
         CKE : IN  std_logic;
         RSTT : IN  std_logic;
         SENST : IN  std_logic;
         LOADT : IN  std_logic;
         ENT : IN  std_logic;
         DinT : IN  std_logic_vector(7 downto 0);
         DoutT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CKE : std_logic := '0';
   signal RSTT : std_logic := '0';
   signal SENST : std_logic := '0';
   signal LOADT : std_logic := '0';
   signal ENT : std_logic := '0';
   signal DinT : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DoutT : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CKE_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOP PORT MAP (
          CKE => CKE,
          RSTT => RSTT,
          SENST => SENST,
          LOADT => LOADT,
          ENT => ENT,
          DinT => DinT,
          DoutT => DoutT
        );

   -- Clock process definitions
   CKE_process :process
   begin
		CKE <= '0';
		wait for CKE_period/2;
		CKE <= '1';
		wait for CKE_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CKE_period*10;

      -- insert stimulus here 
		RSTT<='1' after 200 ns;--,'0' after 300 ns, '1' after 350 ns, '0' after 450 ns, '1' after 480 ns;
		ENT<='0' after 200 ns;--, '1' after 450 ns;
		SENST<='1' after 200 ns;
		LOADT<='0' after 200 ns;--,'1' after 80 ns,'0' after 150 ns, '1' after 350 ns, '0' after 480 ns;
      wait;
   end process;

END;
