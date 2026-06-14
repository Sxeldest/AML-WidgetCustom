; =========================================================
; Game Engine Function: _ZN8CWeather12ForceWeatherEs
; Address            : 0x5CDF28 - 0x5CDF32
; =========================================================

5CDF28:  LDR             R1, =(_ZN8CWeather17ForcedWeatherTypeE_ptr - 0x5CDF2E)
5CDF2A:  ADD             R1, PC; _ZN8CWeather17ForcedWeatherTypeE_ptr
5CDF2C:  LDR             R1, [R1]; CWeather::ForcedWeatherType ...
5CDF2E:  STRH            R0, [R1]; CWeather::ForcedWeatherType
5CDF30:  BX              LR
