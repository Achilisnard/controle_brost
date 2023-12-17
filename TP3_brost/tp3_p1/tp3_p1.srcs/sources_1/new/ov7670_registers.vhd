----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Mike Field <hamster@sanp.net.nz> 
-- 
-- Description: Register settings for the OV7670 Caamera (partially from OV7670.c
--              in the Linux Kernel
------------------------------------------------------------------------------------
-- Updated by Nazim Aliev <alnaz@mail.ru>
-- 
-- Description: RGB mode replaced by YUV, Y-channel only 
--
-- Project: OV7670 Camera data processing with Zedboard FPGA
--
-- Web: http://www.nazim.ru/2512
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ov7670_registers is
	Port ( clk      : in  std_logic;
				 resend   : in  std_logic;
				 advance  : in  std_logic;
				 command  : out  std_logic_vector(15 downto 0);
				 finished : out  std_logic);
end ov7670_registers;

architecture Behavioral of ov7670_registers is
	signal sreg   : std_logic_vector(15 downto 0);
	signal address : std_logic_vector(7 downto 0) := (others => '0');
	signal rgb : std_logic_vector(15 downto 0);
begin
	command <= sreg;
	with sreg select finished  <=
	'1' when x"FFFF",
	'0' when others;

	process(clk)
	begin
		if rising_edge(clk) then
			if resend = '1' then 
				address <= (others => '0');
			elsif advance = '1' then
				address <= std_logic_vector(unsigned(address)+1);
			end if;

			case address is
--				when x"00" => sreg <= x"1280"; -- COM7   Reset
--				when x"01" => sreg <= x"1280"; -- COM7   Reset
--				when x"02" => sreg <= x"1200"; -- COM7   Size & RGB output
--				--when x"02" => sreg <= x"1200"; -- COM7   Size & RGB output
--				when x"03" => sreg <= x"1100"; -- CLKRC  Prescaler - Fin/(1+1)
--				when x"04" => sreg <= x"0C00"; -- COM3   Lots of stuff, enable scaling, all others off
--				when x"05" => sreg <= x"3E00"; -- COM14  PCLK scaling off

--				when x"06" => sreg <= x"8C00"; -- RGB444 Set RGB format
--				when x"07" => sreg <= x"0400"; -- COM1   no CCIR601
--				when x"08" => sreg <= x"4010"; -- COM15  Full 0-255 output, RGB 565
--				 when x"09" => sreg <= x"3a04"; -- TSLB   Set UV ordering,  do not auto-reset window
--				--when x"09" => sreg <= x"3a14"; -- TSLB   Set UV ordering,  do not auto-reset window
--				when x"0A" => sreg <= x"1438"; -- COM9  - AGC Celling
--				when x"11" => sreg <= x"589e"; -- MTXS  - Matrix sign and auto contrast
--				--when x"12" => sreg <= x"3dc0"; -- COM13 - Turn on GAMMA and UV Auto adjust
--				when x"12" => sreg <= x"3d88"; -- COM13 - Turn on GAMMA and UV Auto adjust
--				when x"13" => sreg <= x"1100"; -- CLKRC  Prescaler - Fin/(1+1)

--				when x"14" => sreg <= x"1711"; -- HSTART HREF start (high 8 bits)
--				when x"15" => sreg <= x"1861"; -- HSTOP  HREF stop (high 8 bits)
--				when x"16" => sreg <= x"32A4"; -- HREF   Edge offset and low 3 bits of HSTART and HSTOP

--				when x"17" => sreg <= x"1903"; -- VSTART VSYNC start (high 8 bits)
--				when x"18" => sreg <= x"1A7b"; -- VSTOP  VSYNC stop (high 8 bits) 
--				when x"19" => sreg <= x"030a"; -- VREF   VSYNC low two bits
				
				
				
				
				
				
				
								when x"00" => sreg <= x"1280"; -- COM7   Reset
				when x"01" => sreg <= x"1280"; -- COM7   Reset
				when x"02" => sreg <= x"1200"; -- COM7   Size & RGB output
				--when x"02" => sreg <= x"1202"; -- COM7   Size & RGB output
				when x"03" => sreg <= x"1100"; -- CLKRC  Prescaler - Fin/(1+1)
				when x"04" => sreg <= x"0C00"; -- COM3   Lots of stuff, enable scaling, all others off
				when x"05" => sreg <= x"3E00"; -- COM14  PCLK scaling off

				when x"06" => sreg <= x"8C00"; -- RGB444 Set RGB format
				when x"07" => sreg <= x"0400"; -- COM1   no CCIR601
				--when x"08" => sreg <= x"4010"; -- COM15  Full 0-255 output, RGB 565
				 when x"09" => sreg <= x"3a0d"; -- TSLB   Set UV ordering,  do not auto-reset window
				--when x"09" => sreg <= x"3a14"; -- TSLB   Set UV ordering,  do not auto-reset window
				when x"0A" => sreg <= x"1438"; -- COM9  - AGC Celling
				when x"11" => sreg <= x"589e"; -- MTXS  - Matrix sign and auto contrast
				--when x"12" => sreg <= x"3dc0"; -- COM13 - Turn on GAMMA and UV Auto adjust
				when x"12" => sreg <= x"3d88"; -- COM13 - Turn on GAMMA and UV Auto adjust
				when x"13" => sreg <= x"1100"; -- CLKRC  Prescaler - Fin/(1+1)

				when x"14" => sreg <= x"1711"; -- HSTART HREF start (high 8 bits)
				when x"15" => sreg <= x"1861"; -- HSTOP  HREF stop (high 8 bits)
				when x"16" => sreg <= x"32A4"; -- HREF   Edge offset and low 3 bits of HSTART and HSTOP

				when x"17" => sreg <= x"1903"; -- VSTART VSYNC start (high 8 bits)
				when x"18" => sreg <= x"1A7b"; -- VSTOP  VSYNC stop (high 8 bits) 
				when x"19" => sreg <= x"030a"; -- VREF   VSYNC low two bits
	--			when x"1A" => sreg <= x"70C0"; -- VREF   VSYNC low two bits
	--			when x"1B" => sreg <= x"71C0"; -- VREF   VSYNC low two bits
				
	
				when others => sreg <= x"ffff";
				
				
				
			end case;
		end if;
	end process;
end Behavioral;

