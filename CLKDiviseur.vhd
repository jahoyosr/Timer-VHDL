----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:18 10/18/2017 
-- Design Name: 
-- Module Name:    CLKDiviseur - Behavioral 
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

entity CLKDiviseur is
    Port ( CLK_IN : in  STD_LOGIC;
           CK : out  STD_LOGIC);
end CLKDiviseur;

architecture Behavioral of CLKDiviseur is
			signal CNT: integer := 0;
			signal CKETAT: STD_LOGIC :='0';	
begin
	process

		begin
				wait until CLK_IN'event and CLK_IN='1';
					if CNT=30000000 then
						CKETAT <= not CKETAT;
						CNT<=0;
					else
						CNT<=CNT+1;
	
				CK<=CKETAT;
				end if;
	end process;
end Behavioral;

