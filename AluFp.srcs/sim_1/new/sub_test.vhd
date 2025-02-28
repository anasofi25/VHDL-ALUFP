
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sub_test is
--  Port ( );
end sub_test;

architecture Behavioral of sub_test is
 component alu_subtract is
         Port (
        select_a : in  std_logic_vector(1 downto 0); -- Select Operand A address (2-bit)
        select_b : in  std_logic_vector(1 downto 0); -- Select Operand B address (2-bit)
        reset    : in  std_logic;             -- Reset signal
        result   : out std_logic_vector(31 downto 0) -- Subtraction Result
    );
    end component;

    -- Signal declarations for testbench
    signal select_a_tb, select_b_tb : std_logic_vector(1 downto 0):="00";
    signal reset_tb: std_logic;
    signal result_tb : std_logic_vector(31 downto 0);
    
begin

uut: alu_subtract port map (
        select_a => select_a_tb,
        select_b => select_b_tb,
        reset     => reset_tb,
        result    => result_tb
    );

process
    begin
        -- Reset the DUT
        reset_tb <= '1';
        wait for 10 ns;
        reset_tb <= '0';
        wait for 10 ns;

        -- Test case 1: Simple subtraction
        select_a_tb <= "01";
        select_b_tb <= "00";
        wait for 10 ns;
        -- ... (Check result_tb)

        -- Test case 2: Subtraction with different exponents
        select_a_tb <= "00";
        select_b_tb <= "01";
        wait for 10 ns;

        -- Test case 3
        select_a_tb <= "01";
        select_b_tb <= "10";
        wait for 10 ns;
        
         select_a_tb <= "10";
        select_b_tb <= "01";
        wait for 10 ns;
        
        select_a_tb <= "00";
        select_b_tb <= "01";
        wait for 10 ns;
        
        select_a_tb <= "11";
        select_b_tb <= "10";
        wait for 10 ns;

        -- End simulation
        wait;
    end process;
    
end Behavioral;
