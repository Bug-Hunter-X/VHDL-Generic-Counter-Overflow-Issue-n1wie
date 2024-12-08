```vhdl
ENTITY counter_fixed IS
  GENERIC (N : INTEGER := 4);
  PORT (clk, rst : IN BIT; count : OUT INTEGER RANGE 0 TO 2**N - 1);
END ENTITY;

ARCHITECTURE behavioral OF counter_fixed IS
  SIGNAL internal_count : UNSIGNED(N-1 DOWNTO 0) := (OTHERS => '0');
BEGIN
  PROCESS (clk, rst)
  BEGIN
    IF rst = '1' THEN
      internal_count <= (OTHERS => '0');
    ELSIF rising_edge(clk) THEN
      internal_count <= internal_count + 1;
    END IF;
  END PROCESS;
  count <= TO_INTEGER(internal_count);
END ARCHITECTURE;
```