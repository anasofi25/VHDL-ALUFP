library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity RegisterFile is
    Port (
        reset      : in  std_logic;                  -- Reset signal
        addr_a     : in  std_logic_vector(1 downto 0);  -- 2-bit address for Operand A (4 registers)
        data_out_a : out std_logic_vector(31 downto 0) -- 32-bit data output for Operand A
    );
end RegisterFile;

architecture Behavioral of RegisterFile is
    -- Declare the register file for Operand A with 4 registers (32 bits each)
    type reg_file_a is array (0 to 3) of std_logic_vector(31 downto 0);
   
    -- Initialize registers with fixed values for testing purposes
    signal registers_a : reg_file_a := (
        0 => x"43c6b1aa",  -- Register 0 for Operand A 397,388
        1 => x"3f63e6a5",  -- Register 1 for Operand A 0,06814
        2 => x"c644d62d",  -- Register 2 for Operand A -12597.5443
        3 => x"c21bb61f"   -- Register 3 for Operand A -38.927853 
    );

begin
    -- Read data from the selected address for Operand A
    data_out_a <= registers_a(to_integer(unsigned(addr_a)));

end Behavioral;
