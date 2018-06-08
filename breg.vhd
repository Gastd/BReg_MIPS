library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.reg_p.all;

entity breg is
    --generic (WSIZE : natural := 32);
  port (
        clk, wren, rst: in std_logic;
        radd1, radd2, wadd: in std_logic_vector(4 downto 0);
        wdata: in std_logic_vector(31 downto 0);
        r1, r2: out std_logic_vector(31 downto 0)
  ) ;
end entity ; -- breg

architecture arch of breg is
    type registers is array (1 to 31) of std_logic_vector(31 downto 0);
    signal zero, out1: std_logic_vector(31 downto 0);
    signal out2: std_logic_vector(31 downto 0);
    signal regs: registers;
begin
    r1 <= out1;
    r2 <= out2;
    breg_proc : process( clk, wren, rst, radd1, radd2, out1, out2 )
    begin
        zero <= X"00000000";
        -- write registers
        if rising_edge(clk) then
            if wren = '1' then
                case( wadd ) is
                    when "00000" => -- 1
                        zero <= X"00000000";
                    when "00001" => -- 1
                        regs(1) <= (wdata);
                    when "00010" => -- 2
                        regs(2) <= (wdata);
                    when "00011" => -- 3
                        regs(3) <= (wdata);
                    when "00100" => -- 4
                        regs(4) <= (wdata);
                    when "00101" => -- 5
                        regs(5) <= (wdata);
                    when "00110" => -- 6
                        regs(6) <= (wdata);
                    when "00111" => -- 7
                        regs(7) <= (wdata);
                    when "01000" => -- 8
                        regs(8) <= (wdata);
                    when "01001" => -- 9
                        regs(9) <= (wdata);
                    when "01010" => -- 10
                        regs(10) <= (wdata);
                    when "01011" => -- 11
                        regs(11) <= (wdata);
                    when "01100" => -- 12
                        regs(12) <= (wdata);
                    when "01101" => -- 13
                        regs(13) <= (wdata);
                    when "01110" => -- 14
                        regs(14) <= (wdata);
                    when "01111" => -- 15
                        regs(15) <= (wdata);
                    when "10000" => -- 16
                        regs(16) <= (wdata);
                    when "10001" => -- 17
                        regs(17) <= (wdata);
                    when "10010" => -- 18
                        regs(18) <= (wdata);
                    when "10011" => -- 19
                        regs(19) <= (wdata);
                    when "10100" => -- 20
                        regs(20) <= (wdata);
                    when "10101" => -- 21
                        regs(21) <= (wdata);
                    when "10110" => -- 22
                        regs(22) <= (wdata);
                    when "10111" => -- 23
                        regs(23) <= (wdata);
                    when "11000" => -- 24
                        regs(24) <= (wdata);
                    when "11001" => -- 25
                        regs(25) <= (wdata);
                    when "11010" => -- 26
                        regs(26) <= (wdata);
                    when "11011" => -- 27
                        regs(27) <= (wdata);
                    when "11100" => -- 28
                        regs(28) <= (wdata);
                    when "11101" => -- 29
                        regs(29) <= (wdata);
                    when "11110" => -- 30
                        regs(30) <= (wdata);
                    when "11111" => -- 31
                        regs(31) <= (wdata);
                    when others =>
                        zero <= zero;
                end case ;
            end if;
            -- read registers
            if rst = '1' then
                regs(1)  <= X"00000000";
                regs(2)  <= X"00000000";
                regs(3)  <= X"00000000";
                regs(4)  <= X"00000000";
                regs(5)  <= X"00000000";
                regs(6)  <= X"00000000";
                regs(7)  <= X"00000000";
                regs(8)  <= X"00000000";
                regs(9)  <= X"00000000";
                regs(10) <= X"00000000";
                regs(11) <= X"00000000";
                regs(12) <= X"00000000";
                regs(13) <= X"00000000";
                regs(14) <= X"00000000";
                regs(15) <= X"00000000";
                regs(16) <= X"00000000";
                regs(17) <= X"00000000";
                regs(18) <= X"00000000";
                regs(19) <= X"00000000";
                regs(20) <= X"00000000";
                regs(21) <= X"00000000";
                regs(22) <= X"00000000";
                regs(23) <= X"00000000";
                regs(24) <= X"00000000";
                regs(25) <= X"00000000";
                regs(26) <= X"00000000";
                regs(27) <= X"00000000";
                regs(28) <= X"00000000";
                regs(29) <= X"00000000";
                regs(30) <= X"00000000";
                regs(31) <= X"00000000";
            end if ;
        end if;
        case( radd1 ) is
            when "00000" => -- 0
                out1 <= zero;
            when "00001" => -- 1
                out1 <= std_logic_vector(regs(1));
            when "00010" => -- 2
                out1 <= std_logic_vector(regs(2));
            when "00011" => -- 3
                out1 <= std_logic_vector(regs(3));
            when "00100" => -- 4
                out1 <= std_logic_vector(regs(4));
            when "00101" => -- 5
                out1 <= std_logic_vector(regs(5));
            when "00110" => -- 6
                out1 <= std_logic_vector(regs(6));
            when "00111" => -- 7
                out1 <= std_logic_vector(regs(7));
            when "01000" => -- 8
                out1 <= std_logic_vector(regs(8));
            when "01001" => -- 9
                out1 <= std_logic_vector(regs(9));
            when "01010" => -- 10
                out1 <= std_logic_vector(regs(10));
            when "01011" => -- 11
                out1 <= std_logic_vector(regs(11));
            when "01100" => -- 12
                out1 <= std_logic_vector(regs(12));
            when "01101" => -- 13
                out1 <= std_logic_vector(regs(13));
            when "01110" => -- 14
                out1 <= std_logic_vector(regs(14));
            when "01111" => -- 15
                out1 <= std_logic_vector(regs(15));
            when "10000" => -- 16
                out1 <= std_logic_vector(regs(16));
            when "10001" => -- 17
                out1 <= std_logic_vector(regs(17));
            when "10010" => -- 18
                out1 <= std_logic_vector(regs(18));
            when "10011" => -- 19
                out1 <= std_logic_vector(regs(19));
            when "10100" => -- 20
                out1 <= std_logic_vector(regs(20));
            when "10101" => -- 21
                out1 <= std_logic_vector(regs(21));
            when "10110" => -- 22
                out1 <= std_logic_vector(regs(22));
            when "10111" => -- 23
                out1 <= std_logic_vector(regs(23));
            when "11000" => -- 24
                out1 <= std_logic_vector(regs(24));
            when "11001" => -- 25
                out1 <= std_logic_vector(regs(25));
            when "11010" => -- 26
                out1 <= std_logic_vector(regs(26));
            when "11011" => -- 27
                out1 <= std_logic_vector(regs(27));
            when "11100" => -- 28
                out1 <= std_logic_vector(regs(28));
            when "11101" => -- 29
                out1 <= std_logic_vector(regs(29));
            when "11110" => -- 30
                out1 <= std_logic_vector(regs(30));
            when "11111" => -- 31
                out1 <= std_logic_vector(regs(31));
            when others =>
                out1 <= out1;
        end case ;
        case( radd2 ) is
            when "00000" => -- 0
                out2 <= zero;
            when "00001" => -- 1
                out2 <= std_logic_vector(regs(1));
            when "00010" => -- 2
                out2 <= std_logic_vector(regs(2));
            when "00011" => -- 3
                out2 <= std_logic_vector(regs(3));
            when "00100" => -- 4
                out2 <= std_logic_vector(regs(4));
            when "00101" => -- 5
                out2 <= std_logic_vector(regs(5));
            when "00110" => -- 6
                out2 <= std_logic_vector(regs(6));
            when "00111" => -- 7
                out2 <= std_logic_vector(regs(7));
            when "01000" => -- 8
                out2 <= std_logic_vector(regs(8));
            when "01001" => -- 9
                out2 <= std_logic_vector(regs(9));
            when "01010" => -- 10
                out2 <= std_logic_vector(regs(10));
            when "01011" => -- 11
                out2 <= std_logic_vector(regs(11));
            when "01100" => -- 12
                out2 <= std_logic_vector(regs(12));
            when "01101" => -- 13
                out2 <= std_logic_vector(regs(13));
            when "01110" => -- 14
                out2 <= std_logic_vector(regs(14));
            when "01111" => -- 15
                out2 <= std_logic_vector(regs(15));
            when "10000" => -- 16
                out2 <= std_logic_vector(regs(16));
            when "10001" => -- 17
                out2 <= std_logic_vector(regs(17));
            when "10010" => -- 18
                out2 <= std_logic_vector(regs(18));
            when "10011" => -- 19
                out2 <= std_logic_vector(regs(19));
            when "10100" => -- 20
                out2 <= std_logic_vector(regs(20));
            when "10101" => -- 21
                out2 <= std_logic_vector(regs(21));
            when "10110" => -- 22
                out2 <= std_logic_vector(regs(22));
            when "10111" => -- 23
                out2 <= std_logic_vector(regs(23));
            when "11000" => -- 24
                out2 <= std_logic_vector(regs(24));
            when "11001" => -- 25
                out2 <= std_logic_vector(regs(25));
            when "11010" => -- 26
                out2 <= std_logic_vector(regs(26));
            when "11011" => -- 27
                out2 <= std_logic_vector(regs(27));
            when "11100" => -- 28
                out2 <= std_logic_vector(regs(28));
            when "11101" => -- 29
                out2 <= std_logic_vector(regs(29));
            when "11110" => -- 30
                out2 <= std_logic_vector(regs(30));
            when "11111" => -- 31
                out2 <= std_logic_vector(regs(31));
            when others =>
                out2 <= out2;
        end case ;
    end process ; -- breg_proc
end architecture ; -- arch
