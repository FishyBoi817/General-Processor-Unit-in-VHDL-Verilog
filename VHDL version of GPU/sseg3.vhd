LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg3 IS
    PORT (negative : IN STD_LOGIC;
            bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            leds, negativeSign: OUT STD_LOGIC_VECTOR(0 TO 6));
END sseg3;

ARCHITECTURE Behavior OF sseg3 IS
BEGIN
    PROCESS (bcd)
    BEGIN
        if negative = '1' then
            negativeSign <= "1111110";
        else 
            negativeSign<= "1111111";

        END if;

        CASE bcd IS -- abcdefg
            WHEN "0000" => leds <= "1110110";  -- n
            WHEN "0001" => leds <= "0110011";  -- y
            WHEN OTHERS => leds <= "-------";
        END CASE;
    END PROCESS;
END Behavior;