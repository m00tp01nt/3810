library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_f3_interface is 
port(
    L, M, N : in std_logic;
    
    F3      : out std_logic
);
end my_f3_interface;

architecture my_f3_imp of my_f3_interface is 
begin

    F3 <= (((not L) and (not M) and N) or (L and M));
    
end my_f3_imp;
