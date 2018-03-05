library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador is
port(
 A : in std_logic;
 B : in std_logic;
 Cin  : in std_logic;
 Cout  : out std_logic;
 S  : out std_logic
);
end sumador;

architecture suma of sumador is

begin

Cout <= (B and Cin) or (A and Cin) or (A and B);
S <= A xor (B xor Cin);
end suma;