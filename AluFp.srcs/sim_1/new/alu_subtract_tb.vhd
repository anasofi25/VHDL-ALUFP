library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_alu_subtract is
-- No ports in the testbench
end tb_alu_subtract;

architecture behavior of tb_alu_subtract is

    -- Component Declaration for the ALU
    component alu_subtract
        Port (
            a : in std_logic_vector(31 downto 0);
            b : in std_logic_vector(31 downto 0);
            result : out std_logic_vector(31 downto 0)
        );
    end component;

    -- Signals to connect to the ALU
    signal a, b, result : std_logic_vector(31 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: alu_subtract
        Port map (
            a => a,
            b => b,
            result => result
        );

    -- Stimulus process to apply test vectors
    stim_proc: process
    begin
        -- Test Case 1: 4.0 - 2.0
       
       
        -- Test Case 2: 5.5 - 1.5
        a <= "01000000101100000000000000000000"; -- 5.5 in IEEE 754 format
        b <= "00111111110000000000000000000000"; -- 1.5 in IEEE 754 format
        wait for 20 ns;
      
        -- Test Case 4: 10.0 - 4.0
        a <= "01000001001000000000000000000000"; -- 10.0 in IEEE 754 format
        b <= "01000000100000000000000000000000"; -- 4.0 in IEEE 754 format
        wait for 20 ns;
        

        -- Test Case 5: 1.0 - 1.0
        a <= "00111111100000000000000000000000"; -- 1.0 in IEEE 754 format
        b <= "00111111100000000000000000000000"; -- 1.0 in IEEE 754 format
        wait for 20 ns;
        
         a <= "01000000111110000000000000000000"; -- 7.75 in IEEE 754 format
        b <= "01000000010100000000000000000000"; -- 3.25 in IEEE 754 format
        wait for 20 ns;
        
 a <= "01000000100000000000000000000000"; -- 4.0 in IEEE 754 format
        b <= "01000000000000000000000000000000"; -- 2.0 in IEEE 754 format
        wait for 20 ns;
        -- Wait to observe the results before ending simulation
        wait;

    end process;

end behavior;
