library ieee;
use ieee.std_logic_1164.all;

entity LimiterXYtoBRAM is

  port (
        x_i             : in  std_logic_vector(10 downto 0);
        y_i             : in  std_logic_vector(10 downto 0);
        iter_i          : in  std_logic_vector(6 downto 0);
        x_o             : out std_logic_vector(8 downto 0);
        y_o             : out std_logic_vector(8 downto 0);
        iter_o          : out std_logic_vector(7 downto 0)
       );

end entity LimiterXYtoBRAM;

architecture Behavioral_limiter of LimiterXYtoBRAM is

begin

  x_o <= x_i(8 downto 0);
  y_o <= y_i(8 downto 0);

  iter_o <= 0 & iter_i when y_i > "0011111111" and y_i > "0011111111" else
            (others => '0');

end architecture Behavioral_limiter;