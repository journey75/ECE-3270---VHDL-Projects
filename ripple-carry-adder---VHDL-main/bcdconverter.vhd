LIBRARY ieee;
USE ieee.std_logic_1164.all;
entity bcdconverter is
port( V: IN std_logic_vector(4 downto 0);
--clk: IN std_logic;
M: OUT std_logic_vector(4 downto 0));
end bcdconverter;
--Begin the architecture, why is it called mixed?
architecture mixed of bcdconverter is
begin
		
	with V select
		M <= "00000" when "00000",
			"00001" when "00001",
			"00010" when "00010",
			"00011" when "00011",
			"00100" when "00100",
			"00101" when "00101",
			"00110" when "00110",
			"00111" when "00111",
			"01000" when "01000",
			"01001" when "01001",
			"10000" when "01010",
			"10001" when "01011",
			"10010" when "01100",
			"10011" when "01101",
			"10100" when "01110",
			"10101" when "01111",
			"10110" when "10000",
			"10111" when "10001",
			"11000" when "10010",
			"11001" when "10011",
			"11111" when others;
	
end mixed;