library ieee;
use ieee.std_logic_1164.all;


entity GenParidad is port
	(a:in std_logic_vector(0 to 7);
		b:in std_logic_vector(0 to 7);
		result:out std_logic);
end GenParidad;

architecture par of GenParidad is
	signal paridad:std_logic_vector (0 to 7);
begin
paridad(0) <= a(0) xor b(0);
ciclo: for i in 1 to 7 generate
	paridad(i) <= paridad(i-1) xor a(i) xor b(i);
end generate;
result <= paridad(7);
end par;
