library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RoundingUnit is
    Port (
        normMant   : in  STD_LOGIC_VECTOR(23 downto 0); -- 24-bit normalized mantissa (input)
        normExp    : in  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit normalized exponent (input)
        roundedMant : out STD_LOGIC_VECTOR(22 downto 0); -- 23-bit rounded mantissa (output)
        roundedExp  : out STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit exponent (output)
    );
end RoundingUnit;

architecture Behavioral of RoundingUnit is
    signal extendedMant : STD_LOGIC_VECTOR(24 downto 0);  -- 25-bit extended mantissa
    signal round_bit    : STD_LOGIC;  -- 24th bit of the mantissa to check for rounding
    signal round_up     : STD_LOGIC;  -- Flag to indicate if rounding is needed
begin
    -- Combine the normalized mantissa with the extra bit
    extendedMant <= '0' & normMant; -- Zero-extend the mantissa to 25 bits

    -- The rounding unit considers the 24th bit (extendedMant(24))
    round_bit <= extendedMant(24);  -- 24th bit used for rounding check

    -- Determine whether to round up
    process(extendedMant)
    begin
        -- If the 24th bit is 1 and the rest of the discarded bits are non-zero, round up
        if round_bit = '1' then
            round_up <= '1';  -- Round up
        else
            round_up <= '0';  -- No rounding needed
        end if;
    end process;

    -- Perform rounding and output the rounded mantissa
    process(extendedMant, round_up)
    begin
        if round_up = '1' then
            -- Round up: Add 1 to the least significant bit (bit 22 of normMant)
            roundedMant <= std_logic_vector(unsigned(normMant) + 1);
        else
            -- No rounding: Just output the first 23 bits
            roundedMant <= normMant(22 downto 0);
        end if;
        
        -- The exponent remains the same in the rounding unit
        roundedExp <= normExp;
    end process;
end Behavioral;
