library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg is
  port (
    d: in std_logic_vector(31 downto 0);
    clk, wren, rst: in std_logic; -- clock
    q: out std_logic_vector(31 downto 0)
  ) ;
end entity; -- reg

architecture behavioral of reg is
begin
    reg_proc : process( clk, rst, wren )
    begin
        if rst = '1' then
            q <= X"00000000";
        elsif rising_edge(clk) then
            if wren = '1' then
                q <= d;
            end if;
        end if;
    end process ; -- reg_proc

end architecture; -- behavioral

package reg_p is
    type word is array (31 downto 0) of bit;
    type registers is array (1 to 31) of word;
end package ; -- reg_p 
