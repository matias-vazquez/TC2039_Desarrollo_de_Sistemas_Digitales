library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tb_source02 is
-- Port ( );
end tb_source02;
-- Conexión del testbench al diseño deseado. En este caso “source02”
architecture Behavioral of tb_source02 is
component source02 is
 Port ( P1 : in STD_LOGIC;
 P2 : in STD_LOGIC;
 P3 : in STD_LOGIC;
 A : out STD_LOGIC;
 B : out STD_LOGIC;
 C : out STD_LOGIC;
 D : out STD_LOGIC);
end component;
-- Creación de señales de estimulación y monitoreo
signal P1_s : STD_LOGIC;
signal P2_s : STD_LOGIC;
signal P3_s : STD_LOGIC;
signal A_s : STD_LOGIC;
signal B_s : STD_LOGIC;
signal C_s : STD_LOGIC;
signal D_s : STD_LOGIC;
begin
-- Mapeo de entradas y salidas a señales del testbench
DUT: source02 port map(
 P1 => P1_s,
 P2 => P2_s,
 P3 => P3_s,
 A => A_s,
 B => B_s,
 C => C_s,
 D => D_s);

-- Estimulación de entradas mediante señales de testbench
process
begin
 P1_s <= '0';
 P2_s <= '0';
 P3_s <= '0';

 wait for 10 ns;

 P1_s <= '0';
 P2_s <= '0';
 P3_s <= '1';
 wait for 10 ns;

 P1_s <= '0';
 P2_s <= '1';
 P3_s <= '0';
 wait for 10 ns;

 P1_s <= '0';
 P2_s <= '1';
 P3_s <= '1';

 wait for 10 ns;

 P1_s <= '1';
 P2_s <= '0';
 P3_s <= '0';

 wait for 10 ns;

 P1_s <= '1';
 P2_s <= '0';
 P3_s <= '1';

 wait for 10 ns;

 P1_s <= '1';
 P2_s <= '1';
 P3_s <= '0';

 wait for 10 ns;

 P1_s <= '1';
 P2_s <= '1';
 P3_s <= '1';

 wait;
 end process;
 end Behavioral;
