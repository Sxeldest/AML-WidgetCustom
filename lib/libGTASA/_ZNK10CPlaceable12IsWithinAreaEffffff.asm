; =========================================================
; Game Engine Function: _ZNK10CPlaceable12IsWithinAreaEffffff
; Address            : 0x408A1A - 0x408AD0
; =========================================================

408A1A:  VLDR            S2, [SP,#arg_8]
408A1E:  VMOV            S4, R3
408A22:  VLDR            S10, [SP,#arg_4]
408A26:  VMOV            S8, R1
408A2A:  VLDR            S12, [SP,#arg_0]
408A2E:  VMOV            S6, R2
408A32:  LDR             R1, [R0,#0x14]
408A34:  VMAX.F32        D0, D2, D1
408A38:  VMIN.F32        D1, D2, D1
408A3C:  VMAX.F32        D2, D3, D5
408A40:  ADD.W           R2, R1, #0x30 ; '0'
408A44:  VMIN.F32        D3, D3, D5
408A48:  CMP             R1, #0
408A4A:  VMAX.F32        D5, D4, D6
408A4E:  IT EQ
408A50:  ADDEQ           R2, R0, #4
408A52:  VMIN.F32        D4, D4, D6
408A56:  VLDR            S12, [R2]
408A5A:  MOVS            R1, #0
408A5C:  VLDR            S14, [R2,#4]
408A60:  VLDR            S13, [R2,#8]
408A64:  MOVS            R2, #0
408A66:  MOVS            R0, #0
408A68:  VCMPE.F32       S12, S10
408A6C:  VMRS            APSR_nzcv, FPSCR
408A70:  VCMPE.F32       S12, S8
408A74:  IT LE
408A76:  MOVLE           R1, #1
408A78:  VMRS            APSR_nzcv, FPSCR
408A7C:  VCMPE.F32       S14, S6
408A80:  IT GE
408A82:  MOVGE           R2, #1
408A84:  VMRS            APSR_nzcv, FPSCR
408A88:  AND.W           R1, R1, R2
408A8C:  MOV.W           R2, #0
408A90:  VCMPE.F32       S14, S4
408A94:  IT GE
408A96:  MOVGE           R2, #1
408A98:  VMRS            APSR_nzcv, FPSCR
408A9C:  AND.W           R1, R1, R2
408AA0:  MOV.W           R2, #0
408AA4:  VCMPE.F32       S13, S2
408AA8:  IT LE
408AAA:  MOVLE           R2, #1
408AAC:  VMRS            APSR_nzcv, FPSCR
408AB0:  AND.W           R1, R1, R2
408AB4:  MOV.W           R2, #0
408AB8:  VCMPE.F32       S13, S0
408ABC:  IT GE
408ABE:  MOVGE           R2, #1
408AC0:  VMRS            APSR_nzcv, FPSCR
408AC4:  AND.W           R1, R1, R2
408AC8:  IT LE
408ACA:  MOVLE           R0, #1
408ACC:  ANDS            R0, R1
408ACE:  BX              LR
