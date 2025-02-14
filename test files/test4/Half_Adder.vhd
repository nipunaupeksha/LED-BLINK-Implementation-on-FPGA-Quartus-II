library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is
port(A:in std_logic;
B:in std_logic;
SUM:out std_logic;
CARRY:out std_logic);
end Half_Adder

architecture Structure_HA of Half_Adder is
component XOR1
port(P,Q:in BIT;R:out BIT);
end component;

component AND1
port(X,Y:in BIT;Z:out BIT);
end component;

begin
X1:XOR1 port map(A,B,SUM);
A1:AND2 port map(A,B,CARRY);
end Structure_HA;