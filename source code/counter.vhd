
library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;

entity counter_entity is
	 port(
		 clk : in STD_LOGIC;
		 clear : in STD_LOGIC;
		 Q : out STD_LOGIC_VECTOR(11 downto 0)
	     );
end counter_entity;

--}} End of automatically maintained section

architecture counter_arch of counter_entity is 
signal temp1 : std_logic_vector (3 downto 0):= "0001";
signal temp2 : std_logic_vector (3 downto 0):= "0000";
signal temp3 : std_logic_vector (3 downto 0):= "0000";
signal enable1, enable2 : std_logic;
begin

	-- enter your statements here -- 
	c1: process(clk, clear)
	begin
		if(clear = '1') then
			temp1<="0000";	 
		elsif (rising_edge(clk)) then	
				if(temp1 = "1001") then
					temp1 <= "0000"; 
				else 
					temp1 <= temp1 +1;
				end if;
		end if;
	end process c1;
 enable1 <= '1' when temp1 = "1001" else '0';	
	c2: process(clk, clear)
	begin
		if(clear = '1') then
			temp2<="0000";	 
		elsif (rising_edge(clk)) then	
			if (enable1 ='1') then	
				if(temp2 = "1001") then
					temp2 <= "0000"; 
				else 
					temp2 <= temp2 +1;
				end if;
			end if;
		end if;
	end process c2;
enable2 <= '1' when temp2 = "1001" else '0';
	c3: process(clk, clear)
	begin
		if(clear = '1') then
			temp3<="0000";	 
		elsif (rising_edge(clk)) then	
			if (enable1 ='1' and enable2 ='1') then
				if(temp3 = "0001") then
					temp3 <= "0000"; 
				else 
					temp3 <= temp3 +1;
				end if;
			elsif (enable1 = '0' or enable2 = '0')then
				temp3 <= "0000";
			end if;
		end if;
	end process c3;
Q <= temp3 & temp2 & temp1;
	

end counter_arch;
