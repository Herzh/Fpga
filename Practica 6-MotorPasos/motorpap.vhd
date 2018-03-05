library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- Simbolos aritmeticos
use ieee.std_logic_unsigned.all; -- Da solo valores absolutos

entity motorpap is

port(
		clk:     in std_logic;
		rst: 		in std_logic;
		updown:	in std_logic;
		
		a: 	inout std_logic_vector(1 downto 0);
		d:		out std_logic_vector(6 downto 0);
		l:		inout std_logic_vector(3 downto 0));
		
end motorpap;


architecture pasos of motorpap is
begin

	cuenta:process (rst, a)  --Lista sensitva 
	begin
		if(clk 'event and clk = '1') then   -- Pulso de Reloj (' atributo )
			if (rst = '0') then
				l<= "0000";
				d<= "1111111";
			
				else if(updown = '0') then
						
						a <= a + 1;
				
				else if(updown = '1') then
				
						a <= a - 1;
						
						end if;
						end if;
		  end if;
		end if;
	end process cuenta;

	
--	cuenta:process (rst, a)  --Lista sensitva 
--	begin
--		if(clk 'event and clk = '1') then   -- Pulso de Reloj (' atributo )
--			if (rst = '0') then
--				l<= "0000";
--				d<= "1111111";
--			
--				else if(a = "00") then
--							l<="1000";
--							d<="1001111";
--				else if(a = "01") then
--							l<="0100";
--							d<="0010010";
--				else if(a = "10") then
--							l<="0010";
--							d<="0000110";
--				else if(a = "11") then
--							l<="0001";
--							d <="1001100"; 
--						end if;
--						end if;
--						end if;
--						end if;
--		  end if;
--		end if;
--	end process cuenta;
	
	numero:process (a) begin 	
		case a is
		
			--when "" => d <="0000001"; -- 0
			when "00" => d <="1001111"; -- 1
			when "01" => d <="0010010"; -- 2
			when "10" => d <="0000110"; -- 3
			when "11" => d <="1001100"; -- 4
--			when "0101" => f <="0100100"; -- 5
--			when "0110" => f <="0100000"; -- 6
--			when "0111" => f <="0001111"; -- 7
--			when "1000" => f <="0000000"; -- 8
--			when "1001" => f <="0000100"; -- 9
			when others => d <="1111111"; -- n/a
		
		end case;
	end process numero;
end pasos;
