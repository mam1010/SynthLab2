----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2019 03:13:04 PM
-- Design Name: 
-- Module Name: LReset - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LReset is
    Port ( CLK : in STD_LOGIC;
           R : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC);
end LReset;

architecture Behavioral of LReset is

begin
    process (CLK)
begin
   if CLK'event and CLK='1' then
      if R='0' then
         Q <= '0';
      else
         Q <= D;
      end if;
   end if;
end process;


end Behavioral;
