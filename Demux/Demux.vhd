library ieee;
use ieee.std_logic_1164.all;


entity Demux is
	port
	(
		-- Entrada
		E : in  bit_vector (3 downto 0);
      C : in bit_vector (1 downto 0);
		
		-- Saída
		ledE  :  buffer bit_vector (6 downto 0);
		ledS1 :  buffer bit_vector (6 downto 0);
		ledS2 :  buffer bit_vector (6 downto 0);
		ledS3 :  buffer bit_vector (6 downto 0);
		ledS4 :  buffer bit_vector (6 downto 0);
		S1    :  buffer bit_vector (3 downto 0);
		S2    :  buffer bit_vector (3 downto 0);
		S3    :  buffer bit_vector (3 downto 0);
		S4    :  buffer bit_vector (3 downto 0)
		
	);
end entity Demux;


architecture v_demux of Demux is
begin
process (E(0),E(1),E(2),E(3),C(0),C(1)) is
begin
  if (C(0) ='0' and C(1) = '0') then
      S1(0) <= E(0);
		S1(1) <= E(1);
		S1(2) <= E(2);	
		S1(3) <= E(3);
	
	elsif(C(0) ='1' and C(1) = '0') then
		S2(0) <= E(0);
		S2(1) <= E(1);
		S2(2) <= E(2);	
		S2(3) <= E(3);
		
	elsif(C(0) ='0' and C(1) = '1') then
		S3(0) <= E(0);
		S3(1) <= E(1);
		S3(2) <= E(2);	
		S3(3) <= E(3);
		
	else
		S4(0) <= E(0);
		S4(1) <= E(1);
		S4(2) <= E(2);	
		S4(3) <= E(3);
  end if;
  
end process;
WITH E SELECT
    ledE <= "0000001" when "0000", -- '0'
			  "1001111" when "0001", -- '1'
			  "0010010" when "0010", -- '2'
			  "0000110" when "0011", -- '3'
			  "1001100" when "0100", -- '4'
			  "0100100" when "0101", -- '5'
			  "0100000" when "0110", -- '6'
			  "0001111" when "0111", -- '7'
			  "0000000" when "1000", -- '8'
			  "0000100" when "1001", -- '9'
			  "0001000" when "1010", -- 'A'
			  "1100000" when "1011", -- 'B'
			  "0110001" when "1100", -- 'C'
			  "1000010" when "1101", -- 'D'
			  "0110000" when "1110", -- 'E'
			  "0111000" when "1111", -- 'F'
			  "1111111" when others;
						

WITH S1 SELECT
    ledS1 <= "0000001" when "0000", -- '0'
			  "1001111" when "0001", -- '1'
			  "0010010" when "0010", -- '2'
			  "0000110" when "0011", -- '3'
			  "1001100" when "0100", -- '4'
			  "0100100" when "0101", -- '5'
			  "0100000" when "0110", -- '6'
			  "0001111" when "0111", -- '7'
			  "0000000" when "1000", -- '8'
			  "0000100" when "1001", -- '9'
			  "0001000" when "1010", -- 'A'
			  "1100000" when "1011", -- 'B'
			  "0110001" when "1100", -- 'C'
			  "1000010" when "1101", -- 'D'
			  "0110000" when "1110", -- 'E'
			  "0111000" when "1111", -- 'F'
			  "1111111" when others;
						
WITH S2 SELECT
    ledS2 <= "0000001" when "0000", -- '0'
        "1001111" when "0001", -- '1'
        "0010010" when "0010", -- '2'
        "0000110" when "0011", -- '3'
        "1001100" when "0100", -- '4'
        "0100100" when "0101", -- '5'
        "0100000" when "0110", -- '6'
        "0001111" when "0111", -- '7'
        "0000000" when "1000", -- '8'
        "0000100" when "1001", -- '9'
        "0001000" when "1010", -- 'A'
        "1100000" when "1011", -- 'B'
        "0110001" when "1100", -- 'C'
        "1000010" when "1101", -- 'D'
        "0110000" when "1110", -- 'E'
        "0111000" when "1111", -- 'F'
        "1111111" when others;
WITH S3 SELECT
    ledS3 <= "0000001" when "0000", -- '0'
        "1001111" when "0001", -- '1'
        "0010010" when "0010", -- '2'
        "0000110" when "0011", -- '3'
        "1001100" when "0100", -- '4'
        "0100100" when "0101", -- '5'
        "0100000" when "0110", -- '6'
        "0001111" when "0111", -- '7'
        "0000000" when "1000", -- '8'
        "0000100" when "1001", -- '9'
        "0001000" when "1010", -- 'A'
        "1100000" when "1011", -- 'B'
        "0110001" when "1100", -- 'C'
        "1000010" when "1101", -- 'D'
        "0110000" when "1110", -- 'E'
        "0111000" when "1111", -- 'F'
        "1111111" when others;
WITH S4 SELECT
    ledS4 <= "0000001" when "0000", -- '0'
        "1001111" when "0001", -- '1'
        "0010010" when "0010", -- '2'
        "0000110" when "0011", -- '3'
        "1001100" when "0100", -- '4'
        "0100100" when "0101", -- '5'
        "0100000" when "0110", -- '6'
        "0001111" when "0111", -- '7'
        "0000000" when "1000", -- '8'
        "0000100" when "1001", -- '9'
        "0001000" when "1010", -- 'A'
        "1100000" when "1011", -- 'B'
        "0110001" when "1100", -- 'C'
        "1000010" when "1101", -- 'D'
        "0110000" when "1110", -- 'E'
        "0111000" when "1111", -- 'F'
        "1111111" when others;	


			 	 			 
end v_demux;