library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ExpHandler is
    Port (
        expA : in std_logic_vector(7 downto 0);   -- Exponent A (Dividend)
        expB : in std_logic_vector(7 downto 0);   -- Exponent B (Divisor)
        expR : out std_logic_vector(7 downto 0)  -- Resulting Exponent
    );
end ExpHandler;

architecture Behavioral of ExpHandler is
    constant BIAS : integer := 127; -- Single-precision exponent bias
    shared variable expResult : integer;
begin
    process(expA, expB)
    begin
        -- Exponent subtraction and bias adjustment
        expResult := to_integer(unsigned(expA)) - to_integer(unsigned(expB)) + BIAS;

        expR <= std_logic_vector(to_unsigned(expResult, 8));
    end process;
end Behavioral;
