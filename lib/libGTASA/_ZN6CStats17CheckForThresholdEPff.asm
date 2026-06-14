; =========================================================
; Game Engine Function: _ZN6CStats17CheckForThresholdEPff
; Address            : 0x419EEC - 0x419F24
; =========================================================

419EEC:  VLDR            S0, =40.0
419EF0:  VLDR            S2, [R0]
419EF4:  VADD.F32        S4, S2, S0
419EF8:  VMOV            S0, R1
419EFC:  VCMPE.F32       S4, S0
419F00:  VMRS            APSR_nzcv, FPSCR
419F04:  BLT             loc_419F1C
419F06:  VLDR            S4, =-40.0
419F0A:  VADD.F32        S2, S2, S4
419F0E:  VCMPE.F32       S2, S0
419F12:  VMRS            APSR_nzcv, FPSCR
419F16:  ITT LE
419F18:  MOVLE           R0, #0
419F1A:  BXLE            LR
419F1C:  VSTR            S0, [R0]
419F20:  MOVS            R0, #1
419F22:  BX              LR
