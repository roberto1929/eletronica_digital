entity mux4x1 is
	port
	(
		X: in  bit_vector (3 downto 0);
      Sel : in bit_vector (1 downto 0);
		Y : out bit
	);
end entity;

architecture v_logica_pura of mux4x1 is

begin
 Y <= (X(0) and (not Sel(1)) and (not Sel(0))) or
      (x(1) and (not Sel(1)) and sel(0)) or 
		(x(2) and sel(1) and (not Sel(0))) or
		(x(3) and sel(1) and sel(0));
end architecture;

-- when else
architecture v_WHEN_ELSE of mux4x1 is
begin
 Y <= X(0) when Sel = "00" else
      X(1) when Sel = "01" else
      X(2) when Sel = "10" else
      X(3);
end architecture;

-- with select
architecture v_WITH_SELECT of mux4x1 is

begin
 with Sel select
 Y <= X(0) when "00",   
      X(1) when "01",
      X(2) when "10",
      X(3) when others;  
                       
end architecture;

-- Design Unit que associa a architecture com a entity
CONFIGURATION cfg_ifsc OF mux4x1 IS
--FOR v_logica_pura END FOR; 
--FOR v_WHEN_ELSE END FOR;
FOR v_WITH_SELECT END FOR;
END CONFIGURATION;
