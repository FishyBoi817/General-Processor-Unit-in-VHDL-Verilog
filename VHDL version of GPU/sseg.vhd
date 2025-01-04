LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
    PORT (
			 negative : IN STD_LOGIC;
          bcd1 , bcd2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
          leds1, leds2, negativeSign: OUT STD_LOGIC_VECTOR(0 TO 6)
             );
END sseg;

ARCHITECTURE Behavior OF sseg IS
BEGIN
    PROCESS (negative)
    BEGIN
        IF negative = '1' THEN
          negativeSign <=  "0000001"; 

          ELSE
          negativeSign <= "0000000";

          END IF;
	END PROCESS;
	 
	PROCESS (bcd1)
		BEGIN
            CASE bcd1 IS -- abcdefg
            WHEN "0000" => leds1 <=  "1111110"; 
            WHEN "0001" => leds1 <=  "0110000";
            WHEN "0010" => leds1 <=  "1101101";
            WHEN "0011" => leds1 <=  "1111001";
            WHEN "0100" => leds1 <=  "0110011";
            WHEN "0101" => leds1 <=  "1011011";
            WHEN "0110" => leds1 <=  "1011111";
            WHEN "0111" => leds1 <=  "1110000";
            WHEN "1000" => leds1 <=  "1111111";
            WHEN "1001" => leds1 <=  "1110011";
            WHEN "1010" => leds1 <=  "1110110";
            WHEN "1011" => leds1 <=  "0011111";
            WHEN "1100" => leds1 <=  "0001101";
            WHEN "1101" => leds1 <=  "0111101";
            WHEN "1110" => leds1 <=  "1001111";
            WHEN "1111" => leds1 <=  "1000111";
            WHEN OTHERS => leds1 <=  "1001111";
        END CASE;
    END PROCESS;
	 
	 PROCESS (bcd2)
		BEGIN
            CASE bcd2 IS -- abcdefg
            WHEN "0000" => leds2 <=  "1111110"; 
            WHEN "0001" => leds2 <=  "0110000";
            WHEN "0010" => leds2 <=  "1101101";
            WHEN "0011" => leds2 <=  "1111001";
            WHEN "0100" => leds2 <=  "0110011";
            WHEN "0101" => leds2 <=  "1011011";
            WHEN "0110" => leds2 <=  "1011111";
            WHEN "0111" => leds2 <=  "1110000";
            WHEN "1000" => leds2 <=  "1111111";
            WHEN "1001" => leds2 <=  "1110011";
            WHEN "1010" => leds2 <=  "1110110";
            WHEN "1011" => leds2 <=  "0011111";
            WHEN "1100" => leds2 <=  "0001101";
            WHEN "1101" => leds2 <=  "0111101";
            WHEN "1110" => leds2 <=  "1001111";
            WHEN "1111" => leds2 <=  "1000111";
            WHEN OTHERS => leds2 <=  "1001111";
        END CASE;
    END PROCESS;
	 
END Behavior;