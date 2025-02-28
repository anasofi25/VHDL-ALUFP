library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 

entity MantissaSubtractor is
    Port (
        alignedMantA : in std_logic_vector(23 downto 0);
        alignedMantB : in std_logic_vector(23 downto 0);
        mantResult   : out std_logic_vector(23 downto 0);
        operation: in std_logic;
        Cout         : out std_logic
    );
end MantissaSubtractor;

architecture Behavioral of MantissaSubtractor is
    signal B_complement : std_logic_vector(23 downto 0);
    signal carry_in : std_logic := '0'; 

    component TwoComplementConverter
        Port (
            a  : in  std_logic_vector(23 downto 0);
            b  : out std_logic_vector(23 downto 0);
            operation : in std_logic
        );
    end component;

    component RippleCarryAdder is
        Port (
            A    : in  std_logic_vector(23 downto 0);
            B    : in  std_logic_vector(23 downto 0);
            Cin  : in  std_logic;
            Sum  : out std_logic_vector(23 downto 0);
            Cout : out std_logic
        );
    end component;

begin

    --convert alignedMantB to two's complement form for subtraction
    TC_Convert: TwoComplementConverter port map (
        a => alignedMantB,
        b => B_complement,
        operation => operation
    );

    --perform the addition
    Adder_Unit: RippleCarryAdder port map (
        A => alignedMantA,       
        B => B_complement,       
        Cin => carry_in,        
        Sum => mantResult,
        Cout => Cout
    );

end Behavioral;
