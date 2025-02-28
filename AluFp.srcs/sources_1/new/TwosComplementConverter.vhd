library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TwoComplementConverter is
    Port (a: in  std_logic_vector(23 downto 0);
          b: out std_logic_vector(23 downto 0);
          operation: in std_logic
    );
end TwoComplementConverter;

architecture Behavioral of TwoComplementConverter is
begin
    process(a, operation)
        variable temp_inverted : unsigned(23 downto 0);
        variable temp_result   : unsigned(23 downto 0);
    begin
        if operation='0' then 
        -- Step 1: Invert `a` and store it as unsigned
        temp_inverted := not unsigned(a);
        
        -- Step 2: Add 1 to complete the two's complement calculation
        temp_result := temp_inverted + 1;
        
        else
        temp_result := unsigned(a);
        end if;
        b <= std_logic_vector(temp_result);
    end process;    
end Behavioral;
