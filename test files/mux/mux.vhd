library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux IS
PORT(SEL:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
A,B,C,D,E,F,G,H:IN STD_LOGIC;
MUXP_OUT:OUT STD_LOGIC);
END mux;

ARCHITECTURE BEHAVIORAL OF mux is
BEGIN
PROCESS(SEL,A,B,C,D,E,F,G,H)
BEGIN
CASE SEL IS
WHEN "000"=>MUXP_OUT<=A;
WHEN "001"=>MUXP_OUT<=B;
WHEN "010"=>MUXP_OUT<=C;
WHEN "011"=>MUXP_OUT<=D;
WHEN "100"=>MUXP_OUT<=E;
WHEN "101"=>MUXP_OUT<=F;
WHEN "110"=>MUXP_OUT<=G;
WHEN "111"=>MUXP_OUT<=H;
WHEN OTHERS=>NULL;
END CASE;
END PROCESS;

END BEHAVIORAL;