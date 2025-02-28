library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Division is
    Port (
        input1    : in  STD_LOGIC_VECTOR(23 downto 0);  -- Dividend
        input2    : in  STD_LOGIC_VECTOR(23 downto 0);  -- Divisor
        result    : out STD_LOGIC_VECTOR(23 downto 0);  -- Quotient (integer part)
        remainder : out STD_LOGIC_VECTOR(23 downto 0);  -- Remainder
        fractional_part : out STD_LOGIC_VECTOR(23 downto 0) -- Fractional part of quotient
    );
end Division;

architecture Behavioral of Division is
begin
    process(input1, input2)
        variable A : STD_LOGIC_VECTOR(24 downto 0) := (others => '0'); -- Accumulator (remainder)
        variable Q : STD_LOGIC_VECTOR(47 downto 0) := (others => '0'); -- Quotient (48 bits: 24 integer + 24 fractional)
        variable M : STD_LOGIC_VECTOR(24 downto 0) := (others => '0'); -- Divisor
        variable COUNT : integer := 0;
    begin
        -- Initial check for division by zero
        if input2 = x"800000" then
            result <= (others => 'X'); -- Division by zero error
            remainder <= (others => 'X'); -- Undefined remainder
            fractional_part <= (others => 'X');
        
        else 
               -- Initialize Q and M (extend to 25 bits to accommodate shifts)
        Q(46 downto 23) := input1; -- Place the dividend in the upper 24 bits of Q
        M := "0" & input2;

        -- Clear accumulator
        A := (others => '0');
        COUNT := 0;

        -- Main loop for fixed-point restoring division (48 iterations)
        while COUNT < 48 loop
            -- Step 1: Shift A and Q left by one position
            A := A(23 downto 0) & Q(47);
            Q := Q(46 downto 0) & '0';

            -- Step 2: Subtract M (divisor) from A
            A := A - M;

            -- Step 3: Check if A is negative (i.e., if the sign bit is 1)
            if A(24) = '1' then  -- If the result of A - M is negative
                Q(0) := '0';     -- Set the quotient bit to 0
                A := A + M;      -- Restore A by adding M back
            else
                Q(0) := '1';     -- Set the quotient bit to 1
            end if;

            -- Increment the loop counter
            COUNT := COUNT + 1;
        end loop;

        -- Step 4: Output the 24-bit integer quotient and 24-bit fractional part
        result <= Q(47 downto 24);          -- Integer part of the quotient
        fractional_part <= Q(23 downto 0);  -- Fractional part of the quotient

        -- Step 5: The remainder is in A, so output the 24-bit remainder
        remainder <= A(23 downto 0);        -- Final value of A as the remainder
        end if;
    end process;
end Behavioral;
