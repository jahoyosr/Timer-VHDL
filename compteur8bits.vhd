----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:58:26 10/05/2017 
-- Design Name: 
-- Module Name:    compteur8bits - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compteur8bits is
    Port ( CK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           SENS : in  STD_LOGIC;
           LOAD : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (7 downto 0);
           Dout : out  STD_LOGIC_VECTOR (7 downto 0));
end compteur8bits;

architecture Behavioral of compteur8bits is
			
begin
	
	process 
	variable Dp: STD_LOGIC_VECTOR(7 downto 0);
		begin
	wait until CK'event and CK	='1';
		   if RST='1' then 
				if LOAD='1' 
					then Dp:=Din;						  
				else 
					if EN='0' 
						then  
							if SENS='1'  
									then Dp:=Dp+1;
							 else 
									Dp:=Dp-1;
							 end if; 					
					else 						
					end if;				
							      
				 end if;
			else
				 Dp:=X"00";
    	  end if;

		Dout<=Dp;
	end process;

end Behavioral;
