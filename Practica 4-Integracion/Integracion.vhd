library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- Simbolos aritmeticos
use ieee.std_logic_unsigned.all; -- Da solo valores absolutos

entity integracion is

port(
		clk: in std_logic;
		rst: in std_logic;

		f:out std_logic_vector(7 downto 0);
		q:inout std_logic_vector(3 downto 0));
		
end integracion;

architecture logica of integracion is
begin
	
	cuenta:process (clk, rst)  --Lista sensitva 
	begin
		if(clk 'event and clk = '1') then   -- Pulso de Reloj (' atributo )
			if (rst = '0') then
				q<= "0000";
			else
				q<= q + 1;
			end if;
			
		end if;
	end process cuenta;
	
	luz:process (q) begin 
		
		case q is
		
			when "0001" => f <="01111111";
			when "0010" => f <="00111111";
			when "0011" => f <="00011111";
			when "0100" => f <="00001111";
			when "0101" => f <="00000111";
			when "0110" => f <="00000011";
			when "0111" => f <="00000001";
			when "1000" => f <="00000000";
			when "1001" => f <="00000001";
			when "1010" => f <="00000011";
			when "1011" => f <="00000111";
			when "1100" => f <="00001111";
			when "1101" => f <="00011111";
			when "1110" => f <="00111111";
			when "1111" => f <="01111111";
			when others => f <="11111111";
		
		end case;
		
	end process luz;

end logica;