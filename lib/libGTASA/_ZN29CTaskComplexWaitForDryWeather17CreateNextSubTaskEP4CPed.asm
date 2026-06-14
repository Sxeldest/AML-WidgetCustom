; =========================================================
; Game Engine Function: _ZN29CTaskComplexWaitForDryWeather17CreateNextSubTaskEP4CPed
; Address            : 0x4EE45C - 0x4EE47E
; =========================================================

4EE45C:  LDR             R2, =(_ZN8CWeather4RainE_ptr - 0x4EE466)
4EE45E:  VLDR            S0, =0.2
4EE462:  ADD             R2, PC; _ZN8CWeather4RainE_ptr
4EE464:  LDR             R2, [R2]; CWeather::Rain ...
4EE466:  VLDR            S2, [R2]
4EE46A:  VCMPE.F32       S2, S0
4EE46E:  VMRS            APSR_nzcv, FPSCR
4EE472:  ITT LT
4EE474:  MOVLT           R0, #0
4EE476:  BXLT            LR
4EE478:  LDR             R2, [R0]
4EE47A:  LDR             R2, [R2,#0x2C]
4EE47C:  BX              R2
