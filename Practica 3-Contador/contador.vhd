zlibrary ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- Simbolos aritmeticos
use ieee.std_logic_unsigned.all; -- Da solo valores absolutos

entity contador is
--Declaracion Secuencial

port(
		clk: in std_logic;
		q:inout std_logic_vector(3 downto 0));
		
end contador;

architecture conteo of contador is
begin
	
	cuenta:process (clk)  --Lista sensitva 
	begin
		if(clk 'event and clk = '1') then   -- Pulso de Reloj (' atributo )
		
			q<= "0000";
			q<= q + 1;
			
		end if;
	end process cuenta;
end conteo;
		