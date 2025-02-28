library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;  -- Use numeric_std for arithmetic operations

entity tb_MantissaSubtractor is
    -- Testbench has no ports; it's only for simulation
end tb_MantissaSubtractor;

architecture Behavioral of tb_MantissaSubtractor is

    -- Signals for the MantissaSubtractor
    signal alignedMantA : std_logic_vector(23 downto 0) := (others => '0');
    signal alignedMantB : std_logic_vector(23 downto 0) := (others => '0');
    signal mantResult   : std_logic_vector(23 downto 0);
    signal Cout         : std_logic;
  

    -- Instantiate the MantissaSubtractor component
    component MantissaSubtractor
        Port (
            alignedMantA : in std_logic_vector(23 downto 0);
            alignedMantB : in std_logic_vector(23 downto 0);
            mantResult   : out std_logic_vector(23 downto 0);
            Cout         : out std_logic
           
        );
    end component;

begin

    -- Instantiate the MantissaSubtractor in the testbench
    UUT: MantissaSubtractor port map (
        alignedMantA => alignedMantA,
        alignedMantB => alignedMantB,
        mantResult   => mantResult,
        Cout         => Cout
        
    );

    -- Test process to apply different inputs and test the functionality
    stim_proc: process
    begin
        -- Test Case 1: Subtraction of two mantissas with a result not requiring overflow
        alignedMantA <= "010000000000000000000000"; -- 1.0 (normalized)
        alignedMantB <= "010000000000000000000001"; -- 1.0000001 (normalized)
       
        wait for 10 ns;

        -- Test Case 2: Subtraction of two mantissas with no sign change
        alignedMantA <= "010000000000000000000010"; -- 1.0000001 (normalized)
        alignedMantB <= "010000000000000000000001"; -- 1.0 (normalized)
       
        wait for 10 ns;

        -- Test Case 3: Add the mantissas (subtract = '0')
        
        alignedMantA <= "010000000000000000000010"; -- 1.0000001 (normalized)
        alignedMantB <= "010000000000000000000001"; -- 1.0 (normalized)
        wait for 10 ns;

        -- Test Case 4: Handle overflow
        alignedMantA <= "010000000000000000000000"; -- 1.0 (normalized)
        alignedMantB <= "010000000000000000000000"; -- 1.0 (normalized)
        
        wait for 10 ns;

        -- End of test
        wait;
    end process;

end Behavioral;
