library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- Simbolos aritmeticos
use ieee.std_logic_unsigned.all; -- Da solo valores absolutos

entity ContadorUpDown is

port(
		clk: in std_logic;
		rst: in std_logic;
		UpDown: in std_logic;

		f:inout std_logic_vector(6 downto 0);
		q:inout std_logic_vector(3 downto 0));
		
end ContadorUpDown;

architecture conteo of ContadorUpDown is
begin
	
	cuenta:process (clk, rst)  --Lista sensitva 
	begin
		if(clk 'event and clk = '1') then   -- Pulso de Reloj (' atributo )
			
			if (rst = '0') then
				q<= "0000";
			
				else if(UpDown = '1') then -- Contador ascendente
							
							if(f = "1111111") then -- Lo numero despues de 9
								q<="0000";
							else		
								q<= q + 1;
							end if;
						
						
						else if(UpDown = '0') then --Contador Descendente
									
									q<= q-1;
									
									if(f="0000001") then -- Despues del 0
										q<="1010"; --Empieza en 10  
									end if;							
								end if;
				end if;
			end if;
		end if;
	end process cuenta;
	
	numero:process (q) begin 
		
		case q is
		
			when "0000" => f <="0000001"; -- 0
			
			when "0001" => f <="1001111"; -- 1
			
			when "0010" => f <="0010010"; -- 2
			
			when "0011" => f <="0000110"; -- 3
			
			when "0100" => f <="1001100"; -- 4
			
			when "0101" => f <="0100100"; -- 5
			
			when "0110" => f <="0100000"; -- 6
			
			when "0111" => f <="0001111"; -- 7
			
			when "1000" => f <="0000000"; -- 8
			
			when "1001" => f <="0000100"; -- 9
			
			when others => f <="1111111"; -- n/a
		
		end case;
		
	end process numero;

end conteo;