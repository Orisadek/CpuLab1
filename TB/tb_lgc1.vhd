-- test bench for logic unit
library IEEE;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;


entity tb_lgc is
	constant n : integer := 8;
end tb_lgc;

architecture lgc of tb_lgc is
	--SIGNAL cout : STD_LOGIC;
	SIGNAL ALUFN:  STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL x,y,res : STD_LOGIC_VECTOR (n-1 DOWNTO 0);
begin
	L0 : Logic generic map (n) port map(ALUFN,x,y,res);
    
	--------- start of stimulus section ------------------	
	
        tb_lgc_x : process
        begin
		  x <= (others => '0');
		  wait for 50 ns;
		  x <= (others => '1');
		  wait for 50 ns;
		end process tb_lgc_x;
		
		 tb_lgc_y : process
		 begin
		  y <= (others => '1');
			wait for 100 ns;
			y <= (others => '0');
			wait for 100 ns;
        end process tb_lgc_y;
		  
		  tb_lgc_A : process
		 begin
		 ALUFN<="000";
		 wait for 200 ns;
		  ALUFN<="001";
		   wait for 200 ns;
		  ALUFN<="010";
		   wait for 200 ns;
		  ALUFN<="011";
		   wait for 200 ns;
		  ALUFN<="100";
		   wait for 200 ns;
		  ALUFN<="101";
		   wait for 200 ns;
		  ALUFN<="111";
		  wait for 200 ns;
		   ALUFN<="110";
		  wait for 200 ns;
        end process tb_lgc_A;
		
  
end architecture lgc;

