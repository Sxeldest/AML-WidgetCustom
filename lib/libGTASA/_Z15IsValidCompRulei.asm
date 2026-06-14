; =========================================================
; Game Engine Function: _Z15IsValidCompRulei
; Address            : 0x3885C0 - 0x3885F4
; =========================================================

3885C0:  CMP             R0, #2
3885C2:  ITT NE
3885C4:  MOVNE           R0, #1
3885C6:  BXNE            LR
3885C8:  LDR             R0, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x3885CE)
3885CA:  ADD             R0, PC; _ZN8CWeather14OldWeatherTypeE_ptr
3885CC:  LDR             R0, [R0]; CWeather::OldWeatherType ...
3885CE:  LDRH            R1, [R0]; CWeather::OldWeatherType
3885D0:  MOVS            R0, #1
3885D2:  CMP             R1, #8
3885D4:  IT NE
3885D6:  CMPNE           R1, #0x10
3885D8:  BNE             loc_3885DC
3885DA:  BX              LR
3885DC:  LDR             R0, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x3885E2)
3885DE:  ADD             R0, PC; _ZN8CWeather14NewWeatherTypeE_ptr
3885E0:  LDR             R0, [R0]; CWeather::NewWeatherType ...
3885E2:  LDRH            R1, [R0]; CWeather::NewWeatherType
3885E4:  MOVS            R0, #1
3885E6:  CMP             R1, #8
3885E8:  IT EQ
3885EA:  BXEQ            LR
3885EC:  CMP             R1, #0x10
3885EE:  IT NE
3885F0:  MOVNE           R0, #0
3885F2:  BX              LR
