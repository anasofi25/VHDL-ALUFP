library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ExponentAligner is
    Port (
        expA : in std_logic_vector(7 downto 0);   -- Exponent A
        expB : in std_logic_vector(7 downto 0);   -- Exponent B
        mantA : in std_logic_vector(23 downto 0);  -- Mantissa A
        mantB : in std_logic_vector(23 downto 0);  -- Mantissa B
        alignedMantA : out std_logic_vector(23 downto 0); -- Aligned Mantissa A
        alignedMantB : out std_logic_vector(23 downto 0); -- Aligned Mantissa B
        expR : out std_logic_vector(7 downto 0)   -- Resulting Exponent
    );
end ExponentAligner;

architecture Behavioral of ExponentAligner is
begin
    process(expA, expB, mantA, mantB)
        variable expDiff : integer; -- Use variable for immediate updates
        variable temp_mantissa_a : STD_LOGIC_VECTOR(23 downto 0);
        variable temp_mantissa_b : STD_LOGIC_VECTOR(23 downto 0);
    begin
        -- Calculate the exponent difference as signed values and convert to integer
        expDiff := to_integer(unsigned(expA) - unsigned(expB));

        -- Perform alignment based on the exponent difference
        temp_mantissa_a := mantA;
        temp_mantissa_b := mantB;

        if unsigned(expA) > unsigned(expB) then
            alignedMantA <= mantA; -- no shift needed
            temp_mantissa_b := std_logic_vector(shift_right(unsigned(mantB), expDiff)); -- align mantB with mantA
            alignedMantB <= temp_mantissa_b;
            expR <= expA; -- result exp = larger exponent
        elsif unsigned(expA) < unsigned(expB) then
            alignedMantB <= mantB; -- no shift needed
            temp_mantissa_a := std_logic_vector(shift_right(unsigned(mantA), expDiff)); -- align mantA with mantB
            alignedMantA <= temp_mantissa_a;
            expR <= expB; -- result exp = larger exponent
        else -- expA = expB
            alignedMantA <= mantA;
            alignedMantB <= mantB;
            expR <= expA; -- either exponent
        end if;
    end process;
end Behavioral;
