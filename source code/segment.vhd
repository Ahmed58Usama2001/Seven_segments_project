
library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_UNSIGNED.all;

entity segments_entity is
	 port(
		 A : in STD_LOGIC_VECTOR(3 downto 0);
		 O: out std_logic_vector (6 downto 0)
	     );
end segments_entity;

--}} End of automatically maintained section

architecture segments_arch of segments_entity is
begin
	process(A) 
	begin
	case A is 
		when "0000" =>
		O <= "0000001"; 
		when "0001" =>
		O <= "1001111"; 
		when "0010" =>
		O <= "0010010"; 
		when "0011" =>
		O <= "0000110"; 
		when "0100" =>
		O <= "1001100"; 	 
		when "0101" =>
		O <= "0100100"; 
		when "0110" =>
		O <= "0100000"; 
		when "0111" =>
		O <= "0001111"; 
		when "1000" =>
		O <= "0000000"; 
		when "1001" =>
		O <= "0000100"; 
		when others =>
		O <= "1111111"; 
	end case;  
	end process;

end segments_arch;
