```vhdl
ENTITY counter IS
  GENERIC (N : INTEGER := 4);
  PORT (clk, rst : IN BIT; count : OUT INTEGER RANGE 0 TO 2**N - 1);
END ENTITY;

ARCHITECTURE behavioral OF counter IS
  SIGNAL internal_count : INTEGER RANGE 0 TO 2**N - 1 := 0;
BEGIN
  PROCESS (clk, rst)
  BEGIN
    IF rst = '1' THEN
      internal_count <= 0;
    ELSIF rising_edge(clk) THEN
      internal_count <= internal_count + 1;
    END IF;
  END PROCESS;
  count <= internal_count;
END ARCHITECTURE;
```