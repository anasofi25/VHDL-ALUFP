library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_division is
   Port (
        select_a : in  std_logic_vector(1 downto 0); -- Select Operand A address (2-bit)
        select_b : in  std_logic_vector(1 downto 0); -- Select Operand B address (2-bit)
        reset    : in  std_logic;                     -- Reset signal
        result   : out std_logic_vector(31 downto 0)  -- Division Result
    );
end alu_division;

architecture Behavioral of alu_division is

    -- Component Declarations
    component ExpHandler is
    Port (
        expA : in std_logic_vector(7 downto 0);   -- Exponent A (Dividend)
        expB : in std_logic_vector(7 downto 0);   -- Exponent B (Divisor)
        expR : out std_logic_vector(7 downto 0)  -- Resulting Exponent
    );
end component;

    component RegisterFile is
        Port (
            reset      : in  std_logic;                   
            addr_a     : in  std_logic_vector(1 downto 0);  -- 2-bit address for Operand A (4 registers)
            data_out_a : out std_logic_vector(31 downto 0)  -- 32-bit data output for Operand A
        );
    end component;

    component MantissaExponentSeparator is
        Port (
            fp_value  : in  std_logic_vector(31 downto 0);  -- 32-bit floating point value
            sign      : out std_logic;                       -- 1-bit sign
            exponent  : out std_logic_vector(7 downto 0);    -- 8-bit exponent
            mantissa  : out std_logic_vector(23 downto 0)    -- 23-bit mantissa (with implicit leading 1)
        );
    end component;

    -- Division component with required ports
    component Division is
    Port (
        input1    : in  STD_LOGIC_VECTOR(23 downto 0);  -- Dividend
        input2    : in  STD_LOGIC_VECTOR(23 downto 0);  -- Divisor
        result    : out STD_LOGIC_VECTOR(23 downto 0);  -- Quotient (integer part)
        remainder : out STD_LOGIC_VECTOR(23 downto 0);  -- Remainder
        fractional_part : out STD_LOGIC_VECTOR(23 downto 0) -- Fractional part of quotient
    );
end component;

    component Normalizer is
        Port (
            mantDiff : in std_logic_vector(23 downto 0); -- 24 bits mantissa
            expR     : in std_logic_vector(7 downto 0);  -- 8-bit exponent
            normMant : out std_logic_vector(22 downto 0); -- Normalized mantissa (23-bit)
            normExp  : out std_logic_vector(7 downto 0)   -- Normalized exponent
        );
    end component;

    -- New SignHandler component
    component SignHandler is
        Port (
            signA : in std_logic; -- Sign of Operand A
            signB : in std_logic; -- Sign of Operand B
            signR : out std_logic -- Resulting sign
        );
    end component;

    -- Internal signals
    signal signA, signB, signR : std_logic := '0';
    signal expA, expB, expR : std_logic_vector(7 downto 0) := (others => '0');
    signal mantA, mantB : std_logic_vector(23 downto 0) := (others => '0');
    signal division_result, remainder, fr  : std_logic_vector(23 downto 0);  -- Change to std_logic_vector
    signal division_done : std_logic;
    signal normalizedMant : std_logic_vector(22 downto 0);
    signal normalizedExp : std_logic_vector(7 downto 0);
    signal data_out_a, data_out_b : std_logic_vector(31 downto 0);
    signal A_reg, Q_reg : std_logic_vector(23 downto 0);  -- Registers for division
    signal start_div : std_logic := '0';  -- Start signal for division
    signal done_div : std_logic;  -- Division done signal

begin

    -- Register File for Operand A
    RegFileA: RegisterFile port map(
        reset    => reset,
        addr_a   => select_a,             
        data_out_a => data_out_a         
    );

    -- Register File for Operand B
    RegFileB: RegisterFile port map(
        reset    => reset,
        addr_a   => select_b,             
        data_out_a => data_out_b
    );

    -- Separate Mantissa and Exponent for Operand A
    MantA_Separator: MantissaExponentSeparator port map(
        fp_value  => data_out_a,          
        sign      => signA,                
        exponent  => expA,                 
        mantissa  => mantA                  
    );

    -- Separate Mantissa and Exponent for Operand B
    MantB_Separator: MantissaExponentSeparator port map(
        fp_value  => data_out_b,          
        sign      => signB,                
        exponent  => expB,                 
        mantissa  => mantB                  
    );

    -- Align Exponents and Mantissas
    Exponent_Diff: ExpHandler port map(
        expA        => expA,
        expB        => expB,
        expR        => expR
    );

    -- Division Component Instantiation
    Division_Inst: Division port map(
        input1 => mantA ,
        input2 => mantB,
        result =>division_result,
        remainder => remainder,
        fractional_part => fr
    );

    -- Normalize Mantissa and Adjust Exponent
    Normalizer_Inst: Normalizer port map(
        mantDiff => fr, -- Division result as mantissa (still std_logic_vector)
        expR => expR, -- Aligned exponent
        normMant => normalizedMant,
        normExp => normalizedExp
    );

    -- SignHandler Component Instantiation
    SignHandler_Inst: SignHandler port map(
        signA => signA,
        signB => signB,
        signR => signR
    );

    -- Control Logic for Division Start and Final Result
    result <= signR & normalizedExp & normalizedMant;

end Behavioral;
