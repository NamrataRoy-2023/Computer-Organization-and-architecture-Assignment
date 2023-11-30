Library IEEE;
use IEEE.std_logic_1164.all;
entity full_sub is
    port(A: in std_logic;
        B: in std_logic;
        Bin: in std_logic;
        Diff: out std_logic;
        Bout: out std_logic);
end full_sub;
architecture fullsubLogic of full_sub is
    begin
        Diff <= ((A xor B) xor Bin);
        Bout <= ((not A and B) or ((not(A xor B)) and Bin));
end fullsubLogic;


