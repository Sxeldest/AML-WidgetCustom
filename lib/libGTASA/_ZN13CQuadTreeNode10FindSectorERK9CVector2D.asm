; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode10FindSectorERK9CVector2D
; Address            : 0x40DFE0 - 0x40E042
; =========================================================

40DFE0:  LDR             R2, [R0,#0x24]
40DFE2:  CMP             R2, #0
40DFE4:  ITT EQ
40DFE6:  MOVEQ.W         R0, #0xFFFFFFFF
40DFEA:  BXEQ            LR
40DFEC:  VLDR            S0, [R0]
40DFF0:  VMOV.F32        S8, #0.5
40DFF4:  VLDR            S4, [R0,#8]
40DFF8:  VLDR            S2, [R0,#4]
40DFFC:  VADD.F32        S0, S0, S4
40E000:  VLDR            S6, [R0,#0xC]
40E004:  VADD.F32        S2, S6, S2
40E008:  VLDR            S6, [R1]
40E00C:  VMUL.F32        S4, S0, S8
40E010:  VMUL.F32        S0, S2, S8
40E014:  VLDR            S2, [R1,#4]
40E018:  VCMPE.F32       S6, S4
40E01C:  VMRS            APSR_nzcv, FPSCR
40E020:  BGE             loc_40E032
40E022:  VCMPE.F32       S2, S0
40E026:  MOVS            R0, #2
40E028:  VMRS            APSR_nzcv, FPSCR
40E02C:  IT GE
40E02E:  MOVGE           R0, #0
40E030:  BX              LR
40E032:  VCMPE.F32       S2, S0
40E036:  MOVS            R0, #3
40E038:  VMRS            APSR_nzcv, FPSCR
40E03C:  IT GE
40E03E:  MOVGE           R0, #1
40E040:  BX              LR
