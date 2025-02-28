library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Normalizer is
    Port (
        mantDiff : in std_logic_vector(23 downto 0); -- 24 bits for result with extra bit
        expR     : in std_logic_vector(7 downto 0);  -- 8-bit exponent
        normMant : out std_logic_vector(22 downto 0); -- Normalized mantissa (23-bit)
        normExp  : out std_logic_vector(7 downto 0)   -- Normalized exponent
    );
end Normalizer;

architecture Behavioral of Normalizer is
signal normMant_1 : std_logic_vector(23 downto 0);
begin
    process(mantDiff, expR)
    begin
        if mantDiff(23) = '0' then  
            normMant_1 <= mantDiff(22 downto 0) & '0';  
            normExp <= std_logic_vector(unsigned(expR) - 1); -- Decrement exponent
        else
            normMant_1 <= mantDiff(23 downto 0);  -- If leading bit is 1, take bits 23 down to 0 (24 bits)
            normExp <= expR;  -- Exponent stays the same
        end if;
        
    end process;
    normMant<=normMant_1(22 downto 0);
end Behavioral;
