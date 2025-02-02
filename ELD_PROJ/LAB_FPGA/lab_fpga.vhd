-- declaração da entidade.  descrição dos nomes do circuito, entradas e saidas
entity lab_fpga is
  port (
    bcd_A, bcd_B, bcd_C, bcd_D  : in bit;   -- bits da entrada BCD
    led_A, led_B, led_C, led_D  : out bit;   -- bits da entrada BCD
    ssd_a, ssd_b, ssd_c, ssd_d, ssd_e, ssd_f, ssd_g  : out bit);   -- bits da saida SSD para o mostrador
end entity;
-- descrição do circuito a ser implementado no FPGA
architecture ifsc_v1 of lab_fpga is

begin
  -- Conectar as entradas aos leds
  led_a <= bcd_A;
  led_b <= bcd_B;
  led_c <= bcd_C;
  led_d <= bcd_D;
  -- Descrever as funcoes logicas minimizadas de cada saida SSD
  -- a =  A'B'C'D + B C'D' (função obtida para o display de catodo comum)
    ssd_a <= ((not bcd_A) and (not bcd_B) and (not bcd_C)  and bcd_D) or (bcd_B and (not bcd_C) and (not bcd_D));
    ssd_b <= (bcd_B and (not bcd_C) and bcd_D) or (bcd_B and bcd_C and (not bcd_D));
    ssd_c <= ((not bcd_B) and bcd_C and (not bcd_D));
    ssd_d <= (bcd_B and (not bcd_C) and (not bcd_D)) or (bcd_B and bcd_C and bcd_D) or ((not bcd_B) and (not bcd_C) and bcd_D);
    ssd_e <= (bcd_D) or (bcd_B and (not bcd_C));
    ssd_f <= (bcd_C and bcd_D) or ((not bcd_B) and bcd_C) or ((not bcd_A) and (not bcd_B) and bcd_D);
    ssd_g <= (bcd_B and bcd_C and bcd_D) or ((not bcd_A) and (not bcd_B) and (not bcd_C));
end architecture;