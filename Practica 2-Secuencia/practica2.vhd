library ieee;

use ieee.std_logic_1164.all;

entity practica2 is
--Declaracion Concurrente

port(
		d,c,b,a: in std_logic;
		f0,f1,f2,f3,f4,f5,f6,f7:inout std_logic);
		
end practica2;

architecture logica of practica2 is
begin

	f0 <= '1' when ( d='0' and c='0' and b='0' and a='0') else
			'0';
			
	f1 <= '1' when ( (d='0' and c='0' and b='0' and a='0') or
						  (d='0' and c='0' and b='0' and a='1')  or
						  (d='1' and c='1' and b='1' and a='1') ) else
			'0';
	
	f2 <= '1' when ( (d='0' and c='0' and b='0' and a='0') or
						  (d='0' and c='0' and b='0' and a='1') or
						  (d='0' and c='0' and b='1' and a='0') or
						  (d='1' and c='1' and b='1' and a='0') or
						  (d='1' and c='1' and b='1' and a='1') ) else
			'0';
			
	f3 <= '1' when ( (d='0' and c='0' and b='0' and a='0') or
						  (d='0' and c='0' and b='0' and a='1') or
						  (d='0' and c='0' and b='1' and a='0') or
						  (d='0' and c='0' and b='1' and a='1') or
						  (d='1' and c='1' and b='0' and a='1') or
						  (d='1' and c='1' and b='1' and a='0') or
						  (d='1' and c='1' and b='1' and a='1') ) else
			'0';
			
	f4 <= '0' when ( (d='0' and c='1' and b='0' and a='1') or
						  (d='0' and c='1' and b='1' and a='0') or
						  (d='0' and c='1' and b='1' and a='1') or
						  (d='1' and c='0' and b='0' and a='0') or
						  (d='1' and c='0' and b='0' and a='1') or
						  (d='1' and c='0' and b='1' and a='0') or
						  (d='1' and c='0' and b='1' and a='1') ) else
			'1';
	f5 <= '0' when ( (d='0' and c='1' and b='1' and a='0') or
						  (d='0' and c='1' and b='1' and a='1') or
						  (d='1' and c='0' and b='0' and a='0') or
						  (d='1' and c='0' and b='0' and a='1') or
						  (d='1' and c='0' and b='1' and a='0') ) else
			'1';
			
	f6 <= '0' when ( (d='0' and c='1' and b='1' and a='1') or
						  (d='1' and c='0' and b='0' and a='0') or
						  (d='1' and c='0' and b='0' and a='1') ) else
			'1';
			
	f7 <= '0' when (d='1' and c='0' and b='0' and a='0') else
			'1';
	
end logica;