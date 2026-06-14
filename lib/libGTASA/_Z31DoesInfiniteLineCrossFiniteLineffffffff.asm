; =========================================================
; Game Engine Function: _Z31DoesInfiniteLineCrossFiniteLineffffffff
; Address            : 0x5AE014 - 0x5AE070
; =========================================================

5AE014:  VMOV            S10, R0
5AE018:  VLDR            S0, [SP,#arg_4]
5AE01C:  VMOV            S4, R3
5AE020:  VLDR            S8, [SP,#arg_0]
5AE024:  VMOV            S6, R2
5AE028:  MOVS            R0, #0
5AE02A:  VMOV            S2, R1
5AE02E:  VSUB.F32        S4, S4, S0
5AE032:  VSUB.F32        S0, S2, S0
5AE036:  VSUB.F32        S2, S10, S8
5AE03A:  VLDR            S10, [SP,#arg_C]
5AE03E:  VSUB.F32        S6, S6, S8
5AE042:  VLDR            S8, [SP,#arg_8]
5AE046:  VMUL.F32        S4, S4, S8
5AE04A:  VMUL.F32        S0, S0, S8
5AE04E:  VMUL.F32        S2, S2, S10
5AE052:  VMUL.F32        S6, S6, S10
5AE056:  VSUB.F32        S0, S2, S0
5AE05A:  VSUB.F32        S4, S6, S4
5AE05E:  VMUL.F32        S0, S0, S4
5AE062:  VCMPE.F32       S0, #0.0
5AE066:  VMRS            APSR_nzcv, FPSCR
5AE06A:  IT LT
5AE06C:  MOVLT           R0, #1
5AE06E:  BX              LR
