library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity view_entity is 
	port(reset : in std_logic;
	clk : in std_logic;
	output : out std_logic_vector(20 downto 0)
	);
end view_entity;
architecture view_arch of view_entity is	
signal temp : std_logic_vector (11 downto 0);	
component  segments_entity is
	 port(
		 A : in STD_LOGIC_VECTOR(3 downto 0);
		 O: out std_logic_vector (6 downto 0)
	     );
end component ;
component  counter_entity is
	 port(
		 clk : in STD_LOGIC;
		 clear : in STD_LOGIC;
		 Q : out STD_LOGIC_VECTOR(11 downto 0)
	     );
end component ;
begin 		  
c1: counter_entity port map(clk => clk, clear => reset, Q => temp); 
l1: segments_entity port map (A => temp(3 downto 0), O => output(6 downto 0));	
l2: segments_entity port map (A => temp(7 downto 4), O => output(13 downto 7));
l3: segments_entity port map (A => temp(11 downto 8), O => output(20 downto 14));
	
end view_arch;