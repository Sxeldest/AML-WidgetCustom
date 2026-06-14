; =========================================================
; Game Engine Function: _ZN10Interior_c10IsPtInsideEP5RwV3dfff
; Address            : 0x44676C - 0x446872
; =========================================================

44676C:  VLDR            S0, [R1]
446770:  VLDR            S6, [R0,#0x48]
446774:  VLDR            S2, [R1,#4]
446778:  VLDR            S8, [R0,#0x4C]
44677C:  VSUB.F32        S0, S0, S6
446780:  VLDR            S4, [R1,#8]
446784:  VSUB.F32        S2, S2, S8
446788:  VLDR            S8, [R0,#0x18]
44678C:  VLDR            S10, [R0,#0x50]
446790:  VLDR            S12, [R0,#0x1C]
446794:  LDR.W           R12, [R0,#0x14]
446798:  VSUB.F32        S6, S4, S10
44679C:  VLDR            S14, [R0,#0x20]
4467A0:  VMOV.F32        S4, #0.5
4467A4:  VMUL.F32        S8, S0, S8
4467A8:  LDRB.W          R1, [R12,#2]
4467AC:  VMUL.F32        S10, S2, S12
4467B0:  VMOV            S12, R1
4467B4:  VMUL.F32        S14, S6, S14
4467B8:  VCVT.F32.U32    S12, S12
4467BC:  VADD.F32        S8, S8, S10
4467C0:  VMUL.F32        S10, S12, S4
4467C4:  VMOV            S12, R2
4467C8:  VADD.F32        S8, S8, S14
4467CC:  VADD.F32        S10, S10, S12
4467D0:  VABS.F32        S8, S8
4467D4:  VCMPE.F32       S8, S10
4467D8:  VMRS            APSR_nzcv, FPSCR
4467DC:  BGT             loc_44686E
4467DE:  VLDR            S10, [R0,#0x28]
4467E2:  VMOV            S8, R3
4467E6:  VLDR            S12, [R0,#0x2C]
4467EA:  VMUL.F32        S10, S0, S10
4467EE:  LDRB.W          R1, [R12,#3]
4467F2:  VMUL.F32        S12, S2, S12
4467F6:  VLDR            S14, [R0,#0x30]
4467FA:  VMOV            S1, R1
4467FE:  VMUL.F32        S14, S6, S14
446802:  VCVT.F32.U32    S1, S1
446806:  VADD.F32        S10, S10, S12
44680A:  VMUL.F32        S12, S1, S4
44680E:  VADD.F32        S10, S10, S14
446812:  VADD.F32        S8, S12, S8
446816:  VABS.F32        S10, S10
44681A:  VCMPE.F32       S10, S8
44681E:  VMRS            APSR_nzcv, FPSCR
446822:  BGT             loc_44686E
446824:  VLDR            S8, [R0,#0x38]
446828:  VLDR            S10, [R0,#0x3C]
44682C:  VMUL.F32        S0, S0, S8
446830:  VLDR            S12, [R0,#0x40]
446834:  VMUL.F32        S2, S2, S10
446838:  LDRB.W          R0, [R12,#4]
44683C:  VMUL.F32        S6, S6, S12
446840:  VADD.F32        S0, S0, S2
446844:  VLDR            S2, [SP,#arg_0]
446848:  VADD.F32        S0, S0, S6
44684C:  VMOV            S6, R0
446850:  VCVT.F32.U32    S6, S6
446854:  VABS.F32        S0, S0
446858:  VMUL.F32        S4, S6, S4
44685C:  VADD.F32        S2, S4, S2
446860:  VCMPE.F32       S0, S2
446864:  VMRS            APSR_nzcv, FPSCR
446868:  ITT LE
44686A:  MOVLE           R0, #1
44686C:  BXLE            LR
44686E:  MOVS            R0, #0
446870:  BX              LR
