library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ExponentComparator is
    Port (
        signA : in std_logic;                -- Sign bit of operand A
        expA  : in std_logic_vector(7 downto 0);  -- Exponent of operand A
        mantA : in std_logic_vector(23 downto 0); -- Mantissa of operand A (assuming 24-bit precision)

        signB : in std_logic;                -- Sign bit of operand B
        expB  : in std_logic_vector(7 downto 0);  -- Exponent of operand B
        mantB : in std_logic_vector(23 downto 0); -- Mantissa of operand B (assuming 24-bit precision)

        signR : out std_logic;               -- Sign of result
        operation : out std_logic;           -- Operation: 1 for addition, 0 for subtraction
        expA_fin   : out std_logic_vector(7 downto 0);  -- Exponent of result
        mantA_fin  : out std_logic_vector(23 downto 0);  -- Mantissa of result
        expB_fin   : out std_logic_vector(7 downto 0);  -- Exponent of result
        mantB_fin  : out std_logic_vector(23 downto 0)  -- Mantissa of result
    );
end ExponentComparator;

architecture Behavioral of ExponentComparator is
begin
    process(signA, expA, mantA, signB, expB, mantB)
        variable temp_signR : std_logic;
        variable temp_operation : std_logic;
        variable temp_expA : std_logic_vector(7 downto 0);
        variable temp_expB : std_logic_vector(7 downto 0);
        variable temp_mantA : std_logic_vector(23 downto 0);
        variable temp_mantB : std_logic_vector(23 downto 0);
    begin
        -- Default operation is subtraction
        temp_operation := '0';
        
        -- Check conditions for subtraction and addition based on the signs
        if (signA = '0' and signB = '0') then -- Both positive, check A > B or A < B
            if expA > expB or (expA = expB and mantA > mantB) then
                -- A > B, do subtraction: A=A, B=B, signR=0
                signR <= '0';
                temp_operation := '0'; -- Subtraction
                temp_expA := expA;
                temp_expB := expB;
                temp_mantA := mantA;
                temp_mantB := mantB;
            else
                -- A < B, do subtraction: A=B, B=A, signR=1
                signR <= '1';
                temp_operation := '0'; -- Subtraction
                temp_expA := expB;     -- Swap exponents
                temp_expB := expA;
                temp_mantA := mantB;   -- Swap mantissas
                temp_mantB := mantA;
            end if;
        elsif (signA = '1' and signB = '1') then -- Both negative, check A > B or A < B
            if expA > expB or (expA = expB and mantA > mantB) then
                -- A > B, do subtraction: A=B, B=A, signR=1
                signR <= '1';
                temp_operation := '0'; -- Subtraction
                temp_expA := expA;     -- Swap exponents
                temp_expB := expB;
                temp_mantA := mantA;   -- Swap mantissas
                temp_mantB := mantB;
            else
                -- A < B, do subtraction: A=B, B=A, signR=0
                signR <= '0';
                temp_operation := '0'; -- Subtraction
                temp_expA := expB;
                temp_expB := expA;
                temp_mantA := mantB;
                temp_mantB := mantA;
            end if;
        end if;

        -- Assign the result operation output
        operation <= temp_operation;
        
        -- Output the resulting exponent and mantissa based on the operation
        expA_fin <= temp_expA;  -- After processing, the result exponent is assigned
        mantA_fin <= temp_mantA; -- After processing, the result mantissa is assigned
        expB_fin <= temp_expB;  -- After processing, the result exponent is assigned
        mantB_fin <= temp_mantB; 
    end process;
end Behavioral;
