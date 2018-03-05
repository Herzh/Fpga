library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;		-- Simbolos aritmeticos
use ieee.std_logic_unsigned.all; -- Da solo valores absolutos

entity multiplexor is

port(
		clk:     in std_logic;
		rst: 		in std_logic;
		inc: 		in std_logic;
		car:		in std_logic;
	
		p: 	in std_logic_vector(2 downto 0);
		q:		inout std_logic_vector(2 downto 0));
		
end multiplexor;


architecture estados of multiplexor is
begin

	estado:process (rst, inc, car)  --Lista sensitva 
	begin
		if(clk 'event and clk = '1') then   -- Pulso de Reloj (' atributo )
			if (rst = '0') then
				q<= "000";
			
				else if(inc = '0' and car = '0') then --HOLD
				
						q<= q;
										
				elsif(inc = '0' and car = '1') then -- Conteo Ascendente
				
						q<= q + 1;
						
				elsif(inc = '1' and car = '0') then --Load
				
						q<= p;
						
				elsif(inc = '1' and car = '1') then -- Conteo Ascendente
				
						q<= q - 1;
				
				end if;
			end if;
		  end if;
	end process estado;

end estados;
