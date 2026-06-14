; =========================================================
; Game Engine Function: _ZN10MenuScreen6UpdateEf
; Address            : 0x297796 - 0x2977D0
; =========================================================

297796:  VMOV.F32        S0, #1.0
29779A:  VLDR            S2, [R0,#8]
29779E:  VCMPE.F32       S2, S0
2977A2:  VMRS            APSR_nzcv, FPSCR
2977A6:  IT GE
2977A8:  BXGE            LR
2977AA:  VMOV.F32        S6, #5.0
2977AE:  VMOV            S4, R1
2977B2:  VMUL.F32        S4, S4, S6
2977B6:  VADD.F32        S2, S4, S2
2977BA:  VCMPE.F32       S2, S0
2977BE:  VSTR            S2, [R0,#8]
2977C2:  VMRS            APSR_nzcv, FPSCR
2977C6:  ITT GT
2977C8:  MOVGT.W         R1, #0x3F800000
2977CC:  STRGT           R1, [R0,#8]
2977CE:  BX              LR
