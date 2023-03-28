-- test bench for adder sub unit
library IEEE;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;


entity tb_add_sub is
	constant n : integer := 8;
end tb_add_sub;
 
architecture add_tb of tb_add_sub is
	SIGNAL cout : STD_LOGIC;
	SIGNAL ALUFN:  STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL x,y,res : STD_LOGIC_VECTOR (n-1 DOWNTO 0);
begin
	Adder_G : AdderSub generic map (n) port map(ALUFN,x,y,cout,res);
    
	--------- start of stimulus section ------------------	
	
    tb_add_x : process -- loop on vector x (add 1 each loop) and hold each 50ns
        begin
		  x <= (others => '0');
		  wait for 50 ns;
		  for i in 0 to 100 loop
			x <= x+1;
			wait for 50 ns;
		  end loop;
		end process tb_add_x;
		
	tb_add_y : process -- loop on vector y (reduce by 2 each loop) and hold each 100ns
		 begin
		 y <= (others => '1');
		  wait for 100 ns;
		  for i in 0 to 50 loop
			y <= y-2;
			wait for 100 ns;
		  end loop;
    end process tb_add_y;
		  
	tb_add_A : process -- loop on the options of ALUFN and hold each 200ns, add one illegal option to test
		begin
			ALUFN<="000";
				wait for 200 ns;
			ALUFN<="001";
				wait for 200 ns;
			ALUFN<="010";
				wait for 200 ns;
			ALUFN<="011";
				wait for 200 ns;
    end process tb_add_A;
		
end architecture add_tb;

