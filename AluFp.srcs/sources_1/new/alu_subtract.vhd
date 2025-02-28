library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu_subtract is
   Port (
        select_a : in  std_logic_vector(1 downto 0); -- Select Operand A address (2-bit)
        select_b : in  std_logic_vector(1 downto 0); -- Select Operand B address (2-bit)
        reset    : in  std_logic;             -- Reset signal
        result   : out std_logic_vector(31 downto 0) -- Subtraction Result
    );
end alu_subtract;

architecture Structural of alu_subtract is

    -- Internal signals
    signal signA, signB, signR, operation : std_logic := '0';
    signal expA, expB, expR, expA_fin, expB_fin    : std_logic_vector(7 downto 0) := (others => '0');
    signal mantA, mantB, mantA_fin, mantB_fin        : std_logic_vector(23 downto 0) := (others => '0');
    signal alignedMantA, alignedMantB : std_logic_vector(23 downto 0) := (others => '0');
    signal A_greater_B         : std_logic := '0';
    signal mantDiff, bigger_mant, smaller_mant            : std_logic_vector(23 downto 0) := (others => '0'); -- Extra bit for overflow
    signal normMant            : std_logic_vector(22 downto 0) := (others => '0');
    signal normExp             : std_logic_vector(7 downto 0) := (others => '0');
    signal roundedMant         : std_logic_vector(22 downto 0) := (others =>'0'); 
    signal roundedExp          : std_logic_vector(7 downto 0) := (others => '0'); 
    signal final_output : std_logic_vector(31 downto 0); -- Signal to hold the final result

    signal data_out_a, data_out_b : std_logic_vector(31 downto 0);

    -- Component Declarations
    component ExponentAligner is
        Port (
            expA : in std_logic_vector(7 downto 0);
            expB : in std_logic_vector(7 downto 0);
            mantA : in std_logic_vector(23 downto 0);
            mantB : in std_logic_vector(23 downto 0);
            alignedMantA : out std_logic_vector(23 downto 0);
            alignedMantB : out std_logic_vector(23 downto 0);
            expR : out std_logic_vector(7 downto 0)
        );
    end component;

  

    component MantissaSubtractor is
        Port (
            alignedMantA : in std_logic_vector(23 downto 0);
            alignedMantB : in std_logic_vector(23 downto 0);
            operation: in std_logic;
            mantResult : out std_logic_vector(23 downto 0);
            Cout : out std_logic
        );
    end component;
    
    component ExponentComparator is
    Port (
        signA : in std_logic;                -- Sign bit of operand A
        expA  : in std_logic_vector(7 downto 0);  -- Exponent of operand A
        mantA : in std_logic_vector(23 downto 0); -- Mantissa of operand A (assuming 24-bit precision)

        signB : in std_logic;                -- Sign bit of operand B
        expB  : in std_logic_vector(7 downto 0);  -- Exponent of operand B
        mantB : in std_logic_vector(23 downto 0); -- Mantissa of operand B (assuming 24-bit precision)

        signR : out std_logic;               -- Sign of result
        operation : out std_logic;            -- Operation: 1 for addition, 0 for subtraction
        expA_fin   : out std_logic_vector(7 downto 0);  -- Exponent of result
        mantA_fin  : out std_logic_vector(23 downto 0);  -- Mantissa of result
        expB_fin   : out std_logic_vector(7 downto 0);  -- Exponent of result
        mantB_fin  : out std_logic_vector(23 downto 0)
    
    );
end component;

    component Normalizer is
        Port (
            mantDiff : in std_logic_vector(23 downto 0);
            expR : in std_logic_vector(7 downto 0);
            normMant : out std_logic_vector(22 downto 0);
            normExp : out std_logic_vector(7 downto 0)
        );
    end component;

    
    component RegisterFile is
    Port (
        reset      : in  std_logic;                  -- Reset signal
        addr_a     : in  std_logic_vector(1 downto 0);  -- 2-bit address for Operand A (4 registers)
        data_out_a : out std_logic_vector(31 downto 0) -- 32-bit data output for Operand A
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
    
begin

    RegFileA: RegisterFile port map (
        reset    => reset,
        addr_a   => select_a,             
        data_out_a => data_out_a         
    );
    
    RegFileB: RegisterFile port map(
        reset    => reset,
        addr_a   => select_b,              
        data_out_a => data_out_b
    );

    -- Separate mantissa and exponent from operand A and operand B
    MantA_Separator: MantissaExponentSeparator port map (
        fp_value  => data_out_a,          
        sign      => signA,                
        exponent  => expA,                 
        mantissa  => mantA                 
    );

    MantB_Separator: MantissaExponentSeparator port map (
        fp_value  => data_out_b,           
        sign      => signB,                
        exponent  => expB,                 
        mantissa  => mantB                 
    );
    
    Comparator_Sign: ExponentComparator port map(
        signA => signA,
        expA => expA,
        mantA =>mantA,
        
        signB => signB,
        expB => expB,
        mantB => mantB,
        
        signR => signR,
        operation => operation,
        
        expA_fin => expA_fin,
        mantA_fin => mantA_fin,
        
        expB_fin => expB_fin,
        mantB_fin => mantB_fin
    );
    
    -- align exponents after comparison
    ExponentAlign: ExponentAligner port map (
        expA => expA_fin,
        expB => expB_fin,
        mantA => mantA_fin,
        mantB => mantB_fin,
        alignedMantA => alignedMantA,
        alignedMantB => alignedMantB,
        expR => expR
    );
   
    -- handle subtraction logic
    MantSub: MantissaSubtractor port map (
        alignedMantA => alignedMantA,
        alignedMantB => alignedMantB,
        operation => operation,
        mantResult => mantDiff, -- store result in mantDiff for normalization
        Cout => open
    );
    
    -- normalization
    NormalizerStage: Normalizer port map (
        mantDiff => mantDiff,
        expR => expR,
        normMant => normMant,
        normExp => normExp
    );
    
    result(31) <= signR; -- Sign bit, example assuming sign is handled earlier
    result(30 downto 23) <= normExp; -- 8-bit exponent
    result(22 downto 0) <= normMant(22 downto 0); -- 23 bits of mantissa

end Structural; 
