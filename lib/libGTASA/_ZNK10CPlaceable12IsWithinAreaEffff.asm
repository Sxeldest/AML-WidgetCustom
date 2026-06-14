; =========================================================
; Game Engine Function: _ZNK10CPlaceable12IsWithinAreaEffff
; Address            : 0x4089A0 - 0x408A1A
; =========================================================

4089A0:  VLDR            S2, [SP,#arg_0]
4089A4:  VMOV            S6, R2
4089A8:  VMOV            S8, R1
4089AC:  LDR             R1, [R0,#0x14]
4089AE:  VMOV            S4, R3
4089B2:  VMAX.F32        D0, D3, D1
4089B6:  ADD.W           R2, R1, #0x30 ; '0'
4089BA:  VMIN.F32        D1, D3, D1
4089BE:  CMP             R1, #0
4089C0:  VMAX.F32        D3, D4, D2
4089C4:  IT EQ
4089C6:  ADDEQ           R2, R0, #4
4089C8:  VMIN.F32        D2, D4, D2
4089CC:  VLDR            S8, [R2]
4089D0:  MOVS            R1, #0
4089D2:  VLDR            S10, [R2,#4]
4089D6:  MOVS            R2, #0
4089D8:  MOVS            R0, #0
4089DA:  VCMPE.F32       S8, S6
4089DE:  VMRS            APSR_nzcv, FPSCR
4089E2:  VCMPE.F32       S8, S4
4089E6:  IT LE
4089E8:  MOVLE           R1, #1
4089EA:  VMRS            APSR_nzcv, FPSCR
4089EE:  VCMPE.F32       S10, S2
4089F2:  IT GE
4089F4:  MOVGE           R2, #1
4089F6:  VMRS            APSR_nzcv, FPSCR
4089FA:  AND.W           R1, R1, R2
4089FE:  MOV.W           R2, #0
408A02:  VCMPE.F32       S10, S0
408A06:  IT GE
408A08:  MOVGE           R2, #1
408A0A:  VMRS            APSR_nzcv, FPSCR
408A0E:  AND.W           R1, R1, R2
408A12:  IT LE
408A14:  MOVLE           R0, #1
408A16:  ANDS            R0, R1
408A18:  BX              LR
