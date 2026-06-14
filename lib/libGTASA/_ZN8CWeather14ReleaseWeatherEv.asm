; =========================================================
; Game Engine Function: _ZN8CWeather14ReleaseWeatherEv
; Address            : 0x5CE0CC - 0x5CE0DA
; =========================================================

5CE0CC:  LDR             R0, =(_ZN8CWeather17ForcedWeatherTypeE_ptr - 0x5CE0D6)
5CE0CE:  MOVW            R1, #0xFFFF
5CE0D2:  ADD             R0, PC; _ZN8CWeather17ForcedWeatherTypeE_ptr
5CE0D4:  LDR             R0, [R0]; CWeather::ForcedWeatherType ...
5CE0D6:  STRH            R1, [R0]; CWeather::ForcedWeatherType
5CE0D8:  BX              LR
