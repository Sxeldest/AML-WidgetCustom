; =========================================================
; Game Engine Function: _Z18IsPointInsideRadarRK9CVector2D
; Address            : 0x4431D4 - 0x44321C
; =========================================================

4431D4:  VMOV.F32        S0, #-1.0
4431D8:  VLDR            S4, [R0]
4431DC:  VCMPE.F32       S4, S0
4431E0:  VMRS            APSR_nzcv, FPSCR
4431E4:  BLT             loc_443218
4431E6:  VMOV.F32        S2, #1.0
4431EA:  VCMPE.F32       S4, S2
4431EE:  VMRS            APSR_nzcv, FPSCR
4431F2:  BGT             loc_443218
4431F4:  VLDR            S4, [R0,#4]
4431F8:  MOVS            R1, #0
4431FA:  MOVS            R0, #0
4431FC:  VCMPE.F32       S4, S0
443200:  VMRS            APSR_nzcv, FPSCR
443204:  VCMPE.F32       S4, S2
443208:  IT GE
44320A:  MOVGE           R1, #1
44320C:  VMRS            APSR_nzcv, FPSCR
443210:  IT LE
443212:  MOVLE           R0, #1
443214:  ANDS            R0, R1
443216:  BX              LR
443218:  MOVS            R0, #0
44321A:  BX              LR
