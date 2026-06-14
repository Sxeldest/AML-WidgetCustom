; =========================================================
; Game Engine Function: _ZN18CCustomCarPlateMgr23GetMapRegionPlateDesignEv
; Address            : 0x5A5280 - 0x5A52A4
; =========================================================

5A5280:  LDR             R0, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5A5286)
5A5282:  ADD             R0, PC; _ZN8CWeather13WeatherRegionE_ptr
5A5284:  LDR             R0, [R0]; CWeather::WeatherRegion ...
5A5286:  LDRSH.W         R0, [R0]; CWeather::WeatherRegion
5A528A:  SUBS            R0, #1
5A528C:  CMP             R0, #3
5A528E:  ITT HI
5A5290:  MOVHI           R0, #0
5A5292:  BXHI            LR
5A5294:  MOVS            R1, #2
5A5296:  LSLS            R0, R0, #3
5A5298:  MOVT            R1, #0x101
5A529C:  LSR.W           R0, R1, R0
5A52A0:  UXTB            R0, R0
5A52A2:  BX              LR
