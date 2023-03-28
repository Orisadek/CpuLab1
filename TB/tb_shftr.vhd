-- test bench for shifter unit
library IEEE;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;


entity tb_shftr is
	constant n : integer := 8;
	constant k : integer := 3;
end tb_shftr;
 
architecture shftr_tb of tb_shftr is
	 signal x,y:  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	 signal dir: STD_LOGIC_VECTOR (k-1 DOWNTO 0);
     signal cout:  STD_LOGIC; -- add cout
     signal res:  STD_LOGIC_VECTOR(n-1 downto 0);
begin
	shftr : Shifter generic map (n,k) port map(dir,x,y,cout,res);
    
	--------- start of stimulus section ------------------	
	   tb_shft_x : process
	 begin
		x <= (others => '0');
		  wait for 50 ns;
		  x <= "00000001";
		  wait for 50 ns;
		  x <= "00000010";
		  wait for 50 ns;
		   x <= "00000011";
		  wait for 50 ns;
		   x <= "00000100";
		  wait for 50 ns;
		   x <= "00000101";
		  wait for 50 ns;
		   x <= "00000110";
		  wait for 50 ns;
		   x <= "00000111";
		  wait for 50 ns;
	end process tb_shft_x;
	
		tb_shft_y : process
		 begin
		  y <= (others => '1');
			wait for 100 ns;
			y <= "11100000";
			wait for 100 ns;
			y <= "11111000";
			wait for 100 ns;
			y <= "11111001";
			wait for 100 ns;
			 y <= (others => '0');
			wait for 100 ns;
        end process tb_shft_y;
		  			
	tb_shft_A : process
		 begin
		 dir<=(others => '0');
		 wait for 200 ns;
		  dir<="001";
		 wait for 200 ns;
		 dir<="011";
		 wait for 200 ns;
    end process tb_shft_A;
		
       
		
end architecture shftr_tb;

