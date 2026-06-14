; =========================================================
; Game Engine Function: _ZN9CBoundBox13IsPointWithinERK7CVector
; Address            : 0x3614A8 - 0x361510
; =========================================================

3614A8:  VLDR            S0, [R1]
3614AC:  VLDR            S2, [R0]
3614B0:  VCMPE.F32       S0, S2
3614B4:  VMRS            APSR_nzcv, FPSCR
3614B8:  BLT             loc_36150C
3614BA:  VLDR            S2, [R1,#4]
3614BE:  VLDR            S4, [R0,#4]
3614C2:  VCMPE.F32       S2, S4
3614C6:  VMRS            APSR_nzcv, FPSCR
3614CA:  BLT             loc_36150C
3614CC:  VLDR            S4, [R1,#8]
3614D0:  VLDR            S6, [R0,#8]
3614D4:  VCMPE.F32       S4, S6
3614D8:  VMRS            APSR_nzcv, FPSCR
3614DC:  BLT             loc_36150C
3614DE:  VLDR            S6, [R0,#0xC]
3614E2:  VCMPE.F32       S0, S6
3614E6:  VMRS            APSR_nzcv, FPSCR
3614EA:  BGT             loc_36150C
3614EC:  VLDR            S0, [R0,#0x10]
3614F0:  VCMPE.F32       S2, S0
3614F4:  VMRS            APSR_nzcv, FPSCR
3614F8:  BGT             loc_36150C
3614FA:  VLDR            S0, [R0,#0x14]
3614FE:  VCMPE.F32       S4, S0
361502:  VMRS            APSR_nzcv, FPSCR
361506:  ITT LE
361508:  MOVLE           R0, #1
36150A:  BXLE            LR
36150C:  MOVS            R0, #0
36150E:  BX              LR
