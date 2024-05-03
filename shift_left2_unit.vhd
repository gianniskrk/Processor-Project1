----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:28:23 05/01/2024 
-- Design Name: 
-- Module Name:    shift_left2_unit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_left2_unit is

PORT(

a 		   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
shift_en : IN  STD_LOGIC                    ;
shift_out: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)


);

end shift_left2_unit;

architecture Behavioral of shift_left2_unit is

signal output_signal: STD_LOGIC_VECTOR(31 DOWNTO 0);

begin

process(a,shift_en)

begin

case shift_en is

when '0' =>

output_signal <= a;

when '1' =>

output_signal(31 DOWNTO 0)	<= a(29 DOWNTO 0) &"00";

when others =>
--nothing

end case;


end process;

shift_out <= output_signal;

end Behavioral;

