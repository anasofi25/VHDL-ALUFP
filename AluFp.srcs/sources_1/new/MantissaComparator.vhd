library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MantissaComparator is
    Port (
        mantA : in std_logic_vector(23 downto 0);
        mantB : in std_logic_vector(23 downto 0);
        bigger_mant: out std_logic_vector(23 downto 0);
        smaller_mant: out std_logic_vector(23 downto 0);
        A_greater_B : out std_logic  -- 1 if mantA > mantB, 0 if mantA < mantB, 0 if equal
    );
end MantissaComparator;

architecture Behavioral of MantissaComparator is
begin
    process(mantA, mantB)
        variable temp_A: std_logic_vector(23 downto 0);
        variable temp_B: std_logic_vector(23 downto 0);
    begin
        -- Compare mantA and mantB
        if mantA > mantB then
            A_greater_B <= '1';   -- mantA is greater
            temp_A := mantA;
            temp_B := mantB;
        elsif mantA < mantB then
            A_greater_B <= '0';   -- mantB is greater
            temp_A := mantB;
            temp_B := mantA;
        else
            A_greater_B <= '0';   -- mantA and mantB are equal
            temp_A := mantA;      -- Both are equal, so either one can be assigned
            temp_B := mantB;
        end if;

        -- Assign the bigger and smaller mantissas to the output ports
        bigger_mant <= temp_A;
        smaller_mant <= temp_B;
    end process;
end Behavioral;
