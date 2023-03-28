library IEEE;
use ieee.std_logic_1164.all;

package aux_package is
--------------------------------------------------------
component top is
	GENERIC (n : INTEGER := 8;
		     k : integer := 3;   -- k=log2(n)
		     m : integer := 4	); -- m=2^(k-1)
	PORT 
	(  
		Y_i,X_i: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		ALUFN_i : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		ALUout_o: OUT STD_LOGIC_VECTOR(n-1 downto 0);
		Nflag_o,Cflag_o,Zflag_o: OUT STD_LOGIC); -- Zflag,Cflag,Nflag
end component;
---------------------------------------------------------  
component FA is
	PORT (
		xi, yi, cin: IN std_logic;
		s, cout: OUT std_logic);
end component; 	
---------------------------------------------------------	
component Logic is
	GENERIC (n : INTEGER := 8); 
	PORT (
		ALUFN: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		x,y: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
        res: OUT STD_LOGIC_VECTOR(n-1 downto 0));
end component; 	
---------------------------------------------------------	
component Shifter is
	GENERIC (n : INTEGER := 8;
			 k : integer := 3); 
	PORT (
		dir: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		x,y: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
        cout: OUT STD_LOGIC;
        res: OUT STD_LOGIC_VECTOR(n-1 downto 0));
end component; 	
---------------------------------------------------------	
component AdderSub is
	GENERIC (n : INTEGER := 8); 
	PORT (
		ALUFN: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		x,y: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
        cout: OUT STD_LOGIC;
        res: OUT STD_LOGIC_VECTOR(n-1 downto 0));
end component; 	
---------------------------------------------------------	
	
	
end aux_package;

