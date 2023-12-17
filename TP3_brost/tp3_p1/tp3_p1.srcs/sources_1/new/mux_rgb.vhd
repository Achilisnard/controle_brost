----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2020 19:44:46
-- Design Name: 
-- Module Name: mux_rgb - Behavioral
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

entity mux_rgb is
    Port ( gray_in : in STD_LOGIC_VECTOR (7 downto 0);
          
           mux_sel : in std_logic;
           gray_out : out STD_LOGIC_VECTOR (3 downto 0)
         
          );
end mux_rgb;

architecture Behavioral of mux_rgb is

begin
gray_out <= X"0" when mux_sel = '0' else gray_in(7 downto 4);

end Behavioral;

