; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbathe11CanSunbatheEv
; Address            : 0x4ED8E4 - 0x4ED916
; =========================================================

4ED8E4:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4ED8EA)
4ED8E6:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4ED8E8:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
4ED8EA:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
4ED8EC:  SUBS            R0, #0xA
4ED8EE:  UXTB            R0, R0
4ED8F0:  CMP             R0, #7
4ED8F2:  BHI             loc_4ED912
4ED8F4:  LDR             R0, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x4ED8FA)
4ED8F6:  ADD             R0, PC; _ZN8CWeather14NewWeatherTypeE_ptr
4ED8F8:  LDR             R0, [R0]; CWeather::NewWeatherType ...
4ED8FA:  LDRH            R0, [R0]; CWeather::NewWeatherType
4ED8FC:  CMP             R0, #0x12
4ED8FE:  BHI             loc_4ED912
4ED900:  MOV             R1, #0x66C6F
4ED908:  LSR.W           R0, R1, R0
4ED90C:  AND.W           R0, R0, #1
4ED910:  BX              LR
4ED912:  MOVS            R0, #0
4ED914:  BX              LR
