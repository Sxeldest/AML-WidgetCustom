; =========================================================
; Game Engine Function: _ZN6CPlane21AreWeInNoBigPlaneZoneEv
; Address            : 0x579180 - 0x5791FC
; =========================================================

579180:  LDR             R0, =(TheCamera_ptr - 0x57918A)
579182:  VLDR            S4, =1237.0
579186:  ADD             R0, PC; TheCamera_ptr
579188:  VLDR            S6, =-1522.0
57918C:  LDR             R0, [R0]; TheCamera
57918E:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
579190:  ADD.W           R2, R1, #0x30 ; '0'
579194:  CMP             R1, #0
579196:  IT EQ
579198:  ADDEQ           R2, R0, #4
57919A:  VLDR            S0, [R2]
57919E:  VLDR            S2, [R2,#4]
5791A2:  VADD.F32        S6, S0, S6
5791A6:  VADD.F32        S4, S2, S4
5791AA:  VMUL.F32        S6, S6, S6
5791AE:  VMUL.F32        S4, S4, S4
5791B2:  VADD.F32        S4, S6, S4
5791B6:  VSQRT.F32       S6, S4
5791BA:  VLDR            S4, =800.0
5791BE:  VCMPE.F32       S6, S4
5791C2:  VMRS            APSR_nzcv, FPSCR
5791C6:  ITT LT
5791C8:  MOVLT           R0, #1
5791CA:  BXLT            LR
5791CC:  VLDR            S6, =-659.0
5791D0:  MOVS            R0, #0
5791D2:  VLDR            S8, =1836.0
5791D6:  VADD.F32        S2, S2, S6
5791DA:  VADD.F32        S0, S0, S8
5791DE:  VMUL.F32        S2, S2, S2
5791E2:  VMUL.F32        S0, S0, S0
5791E6:  VADD.F32        S0, S0, S2
5791EA:  VSQRT.F32       S0, S0
5791EE:  VCMPE.F32       S0, S4
5791F2:  VMRS            APSR_nzcv, FPSCR
5791F6:  IT LT
5791F8:  MOVLT           R0, #1
5791FA:  BX              LR
