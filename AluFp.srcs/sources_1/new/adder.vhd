library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RippleCarryAdder is
    Port (
        A    : in  std_logic_vector(23 downto 0);  -- 23-bit input A
        B    : in  std_logic_vector(23 downto 0);  -- 23-bit input B
        Cin  : in  std_logic;                        -- Carry-in for addition
        Sum  : out std_logic_vector(23 downto 0);   -- 23-bit result of addition
        Cout : out std_logic                         -- Carry-out for overflow detection
    );
end RippleCarryAdder;

architecture Behavioral of RippleCarryAdder is
    component full_addr is
   Port(    a: in std_logic;
            b:in std_logic; 
            carry_in : in std_logic; 
            sum: out std_logic; 
            carry_out: out std_logic        
   );
end component;

    signal carry: std_logic_vector(22 downto 0):=(others =>'0');
    
begin
 FA1: full_addr port map(A(0), B(0), Cin, Sum(0), carry(0));
FA2: full_addr port map(A(1), B(1), carry(0), Sum(1), carry(1));
FA3: full_addr port map(A(2), B(2), carry(1), Sum(2), carry(2));
FA4: full_addr port map(A(3), B(3), carry(2), Sum(3), carry(3));
FA5: full_addr port map(A(4), B(4), carry(3), Sum(4), carry(4));
FA6: full_addr port map(A(5), B(5), carry(4), Sum(5), carry(5));
FA7: full_addr port map(A(6), B(6), carry(5), Sum(6), carry(6));
FA8: full_addr port map(A(7), B(7), carry(6), Sum(7), carry(7));
FA9: full_addr port map(A(8), B(8), carry(7), Sum(8), carry(8));
FA10: full_addr port map(A(9), B(9), carry(8), Sum(9), carry(9));
FA11: full_addr port map(A(10), B(10), carry(9), Sum(10), carry(10));
FA12: full_addr port map(A(11), B(11), carry(10), Sum(11), carry(11));
FA13: full_addr port map(A(12), B(12), carry(11), Sum(12), carry(12));
FA14: full_addr port map(A(13), B(13), carry(12), Sum(13), carry(13));
FA15: full_addr port map(A(14), B(14), carry(13), Sum(14), carry(14));
FA16: full_addr port map(A(15), B(15), carry(14), Sum(15), carry(15));
FA17: full_addr port map(A(16), B(16), carry(15), Sum(16), carry(16));
FA18: full_addr port map(A(17), B(17), carry(16), Sum(17), carry(17));
FA19: full_addr port map(A(18), B(18), carry(17), Sum(18), carry(18));
FA20: full_addr port map(A(19), B(19), carry(18), Sum(19), carry(19));
FA21: full_addr port map(A(20), B(20), carry(19), Sum(20), carry(20));
FA22: full_addr port map(A(21), B(21), carry(20), Sum(21), carry(21));
FA23: full_addr port map(A(22), B(22), carry(21), Sum(22), carry(22));
FA24: full_addr port map(A(23), B(23), carry(22), Sum(23), Cout); -- Final carry-out

  
  
  
    
end Behavioral; 
