library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_alu_division is
end tb_alu_division;

architecture behavior of tb_alu_division is

    -- Testbench signals
    signal select_a : std_logic_vector(1 downto 0) := "00";  -- Operand A address
    signal select_b : std_logic_vector(1 downto 0) := "01";  -- Operand B address
    signal reset    : std_logic := '0';                      -- Reset signal
    signal result   : std_logic_vector(31 downto 0);          -- Division result

    -- Component Instantiation
    component alu_division is
        Port (
            select_a : in  std_logic_vector(1 downto 0);
            select_b : in  std_logic_vector(1 downto 0);
            reset    : in  std_logic;
            result   : out std_logic_vector(31 downto 0)
        );
    end component;

begin

    -- Instantiate the ALU division
    uut: alu_division
        port map (
            select_a => select_a,
            select_b => select_b,
            reset    => reset,
            result   => result
        );

    -- Clock generation (for simulation purposes)
    -- No clock needed for this testbench since it's purely combinatorial for testing

    -- Stimulus process
    stimulus: process
    begin
        -- Apply reset
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait for 10 ns;

        -- Test 1: Operand A = 6, Operand B = 3 (Expected result: 6 / 3 = 2)
        select_a <= "11";  -- Address of Operand A (register 0)
        select_b <= "00";  -- Address of Operand B (register 1)
        wait for 20 ns;  -- Wait for operation to complete
       
        -- Test 2: Operand A = 5, Operand B = 2 (Expected result: 5 / 2 = 2.5, rounded)
        select_a <= "01";  -- Address of Operand A (register 0)
        select_b <= "01";  -- Address of Operand B (register 2)
        wait for 20 ns;  -- Wait for operation to complete
       
       
        -- Test 4: Operand A = 9, Operand B = 4 (Expected result: 9 / 4 = 2.25, rounded)
        select_a <= "11";  -- Address of Operand A (register 3)
        select_b <= "10";  -- Address of Operand B (register 0)
        wait for 20 ns;  -- Wait for operation to complete
       
    

        -- End simulation
        wait;
    end process;

end behavior;
