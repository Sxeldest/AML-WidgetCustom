; =========================================================
; Game Engine Function: _ZN14CTrafficLights35FindTrafficLightTypeFromOrientationEf
; Address            : 0x36384C - 0x363896
; =========================================================

36384C:  VLDR            S2, =60.0
363850:  VMOV            S0, R0
363854:  VCMPE.F32       S0, S2
363858:  VMRS            APSR_nzcv, FPSCR
36385C:  BLE             loc_363870
36385E:  VLDR            S2, =150.0
363862:  VCMPE.F32       S0, S2
363866:  VMRS            APSR_nzcv, FPSCR
36386A:  ITT LT
36386C:  MOVLT           R0, #1
36386E:  BXLT            LR
363870:  VLDR            S2, =330.0
363874:  MOVS            R0, #2
363876:  VLDR            S4, =240.0
36387A:  MOVS            R1, #2
36387C:  VCMPE.F32       S0, S2
363880:  VMRS            APSR_nzcv, FPSCR
363884:  VCMPE.F32       S0, S4
363888:  IT LT
36388A:  MOVLT           R0, #1
36388C:  VMRS            APSR_nzcv, FPSCR
363890:  IT LE
363892:  MOVLE           R0, R1
363894:  BX              LR
