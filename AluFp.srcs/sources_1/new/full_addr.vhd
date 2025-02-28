

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_addr is
   Port(    a: in std_logic;
            b:in std_logic; 
            carry_in : in std_logic; 
            sum: out std_logic; 
            carry_out: out std_logic        
   );
end full_addr;

architecture Behavioral of full_addr is

begin
sum<= a xor b xor carry_in;
carry_out <= (a and b) or (b and carry_in) or (carry_in and a);

end Behavioral;
