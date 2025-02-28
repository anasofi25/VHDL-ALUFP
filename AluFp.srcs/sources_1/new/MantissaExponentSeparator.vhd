library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity MantissaExponentSeparator is
    Port (
        fp_value  : in  std_logic_vector(31 downto 0);  
        sign      : out std_logic;                       
        exponent  : out std_logic_vector(7 downto 0);    
        mantissa  : out std_logic_vector(23 downto 0)    
    );
end MantissaExponentSeparator;

architecture Behavioral of MantissaExponentSeparator is
begin
    process(fp_value)
    begin
        -- sign bit
        sign <= fp_value(31);
        -- exponent bits
        exponent <= fp_value(30 downto 23);
        -- mantissa with implicit leading 1 for normalized numbers
       
        mantissa <= "1" & fp_value(22 downto 0); 
      
    end process;
end Behavioral;
