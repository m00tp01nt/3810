library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Multiplier is 

    generic (
        in_a_width : integer := 32;
        in_b_width : integer := 32;
        out_result_width : integer := 32
    );

    port(
        iCLK : in std_logic;
        in_a : in std_logic_vector(0 to (in_a_width - 1));
        in_b : in std_logic_vector(0 to (in_b_width - 1));

        out_result : out std_logic_vector(0 to (out_result_width - 1))
    );
end Multiplier;

architecture behavior of Multiplier is

    process(iCLK, in_a, in_b)
    begin
        if (rising_edge(iCLK)) then
            out_result <= std_logic_vector(resize(signed(in_a) * signed(in_b), 32));
        end if;
    end process;

begin

end behavior;