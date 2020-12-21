----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:29:07 10/18/2017 
-- Design Name: 
-- Module Name:    TOP - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP is
    Port ( CKE : in  STD_LOGIC;
           RSTT : in  STD_LOGIC;
           SENST : in  STD_LOGIC;
           LOADT : in  STD_LOGIC;
           ENT : in  STD_LOGIC;
           DinT : in  STD_LOGIC_VECTOR (7 downto 0);
           DoutT : out  STD_LOGIC_VECTOR (7 downto 0));

end TOP;

architecture struct of TOP is
	component CLKDiviseur
		port(	CLK_IN: in STD_LOGIC;
				CK:	  out STD_LOGIC
		);
	end component;
	
	component compteur8bits
		port(
			  CK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           SENS : in  STD_LOGIC;
           LOAD : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (7 downto 0);
           Dout : out  STD_LOGIC_VECTOR (7 downto 0)
			);
	end component;
signal CK_out: STD_LOGIC;
	
begin
	U1: CLKDiviseur port map(CKE,CK_out);
	U2: compteur8bits port map(CK_out,RSTT,SENST,LOADT,ENT,DinT,DoutT);

end struct;

