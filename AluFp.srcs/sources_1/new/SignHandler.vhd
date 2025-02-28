library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignHandler is
    Port (
        signA : in std_logic; -- Sign of Operand A
        signB : in std_logic; -- Sign of Operand B
        signR : out std_logic -- Resulting Sign
    );
end SignHandler;

architecture Behavioral of SignHandler is
begin
    process(signA, signB)
    begin
        if signA = signB then
            signR <= '0'; -- Same sign results in a positive result
        else
            signR <= '1'; -- Different signs result in a negative result
        end if;
    end process;
end Behavioral;
