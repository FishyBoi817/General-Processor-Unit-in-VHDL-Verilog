library ieee;
use ieee.std_logic_1164.all;
entity Mealy0to8Upcounter is
	port
	(
		clk: in std_logic;
		data_in: in std_logic;
		reset: in std_logic;
		student_id: out std_logic_vector(3 downto 0);
		current_state: out std_logic_vector(3 downto 0)
	);
end entity;
architecture fsm of Mealy0to8Upcounter is 
	
	type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
	
	signal yfsm: state_type;
	
begin
	process (clk,reset)
	begin	
		if reset = '1' then
			yfsm <= s0;
		elsif (clk'EVENT AND clk = '1') then
		
			case yfsm is --how FSM moves (upcounter, cyling through states 0 to 8 )
			when s0 => 
				if (data_in = '1') then
				yfsm <= s1;
				elsif (data_in = '0') then
				yfsm <= s0;
				end if;
			
			when s1 => 
				if (data_in = '1') then
				yfsm <= s2;
				elsif (data_in = '0') then
				yfsm <= s1;
				end if;
			
			when s2 => 
				if (data_in = '1') then
				yfsm <= s3;
				
				elsif (data_in = '0')
				then
				yfsm <= s2;
				end if;
			
			when s3 => 
				if (data_in = '1') then
				yfsm <= s4;
				
				elsif (data_in = '0') then
				yfsm <= s3;
				end if;
			
			when s4 => 
				if (data_in = '1') then
				yfsm <= s5;
				elsif (data_in = '0') then
				yfsm <= s4;
				end if;
			
			when s5 => 
				if (data_in = '1') then
				yfsm <= s6;
				elsif (data_in = '0') then
				yfsm <= s5;
				end if;
			
			when s6 => 
				if (data_in = '1') then
				yfsm <= s7;
				elsif (data_in = '0') then
				yfsm <= s6;
				end if;
			
			when s7 => 
				if (data_in = '1') then
				yfsm <= s8;
				elsif (data_in = '0') then
				yfsm <= s7;
				end if;
			
			when s8 => 
				if (data_in = '1') then
				yfsm <= s0;
				elsif (data_in = '0') then
				yfsm <= s8;
				end if;
			
			
		end case;
		end if;
	end process;
	
	process (yfsm, data_in)
	begin 
		case yfsm is 
		
			when s0 => --at s0
				current_state <= "0000"; --default current state
				if (data_in = '1') then
				student_id <= "1000"; --8
				elsif (data_in = '0') then
				student_id <= "0101"; --5
				end if;
				
			when s1 => --at s1
				current_state <= "0001"; --default current state
				if (data_in = '1') then	
				student_id <= "0101"; --5
				elsif (data_in = '0') then
				student_id <= "0000"; --0
				end if;
				
			when s2 => --at s2
				current_state <= "0010"; --default current state
				if (data_in = '1') then
				student_id <= "0000"; --0
				elsif (data_in = '0') then
				student_id <= "0001"; --1
				end if;
				
			when s3 => --at s3
				current_state <= "0011"; --default current state
				if (data_in = '1') then
				student_id <= "0001"; --1
				elsif (data_in = '0') then
				student_id <= "0001"; --1
				end if;
				
			when s4 => --at s4
				current_state <= "0100"; --default current state
				if (data_in = '1') then
				student_id <= "0001"; --1
				elsif (data_in = '0') then
				student_id <= "0111"; --7
				end if;
				
			when s5 => --at s5
				current_state <= "0101"; --default current state
				if (data_in = '1') then
				student_id <= "0111"; --7
				elsif (data_in = '0') then
				student_id <= "0000"; --0
				end if;
				
			when s6 => --at s6
				current_state <= "0110"; --default current state
				if (data_in = '1') then
				student_id <= "0000"; --0
				elsif (data_in = '0') then
				student_id <= "0001"; --1
				end if;
				
			when s7 => --at s7
				current_state <= "0111"; --default current state
				if (data_in = '1')then
				student_id <= "0001"; --1
				elsif (data_in = '0') then
				student_id <= "0011"; --3
				end if;
				
			when s8 => --at s8
				current_state <= "1000"; --default current state
				if (data_in = '1') then
				student_id <= "0011"; --3
				elsif (data_in = '0') then
				student_id <= "1000"; --8
				end if;
		end case;
		
	end process;
	
end fsm;
