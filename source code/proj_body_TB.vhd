library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

	-- Add your library and packages declaration here ...

entity view_entity_tb is
end view_entity_tb;

architecture TB_ARCHITECTURE of view_entity_tb is
	-- Component declaration of the tested unit
	component view_entity
	port(
		reset : in STD_LOGIC;
		clk : in STD_LOGIC;
		output : out STD_LOGIC_VECTOR(20 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal reset : STD_LOGIC;
	signal clk : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : STD_LOGIC_VECTOR(20 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : view_entity
		port map (
			reset => reset,
			clk => clk,
			output => output
		);

	-- Add your stimulus here ...  
	process 
	begin
		reset <= '1';
		clk <= '-';
		wait for 10ns;
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;	  
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;	  
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;	  
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;	  
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;	  
		reset <= '0';
		clk <= '0';
		wait for 10ns;
		reset <= '0';
		clk <= '1';
		wait for 10ns;
	end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_view_entity of view_entity_tb is
	for TB_ARCHITECTURE
		for UUT : view_entity
			use entity work.view_entity(view_arch);
		end for;
	end for;
end TESTBENCH_FOR_view_entity;

