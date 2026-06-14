; =========================================================
; Game Engine Function: sub_16EB10
; Address            : 0x16EB10 - 0x16EB54
; =========================================================

16EB10:  LDR             R2, =(dword_381B58 - 0x16EB16)
16EB12:  ADD             R2, PC; dword_381B58
16EB14:  LDR             R2, [R2]
16EB16:  ADDS            R3, R2, R0
16EB18:  LDRB.W          R3, [R3,#0xE8]
16EB1C:  CBZ             R3, loc_16EB50
16EB1E:  VMOV            S0, R1
16EB22:  ADD.W           R0, R2, R0,LSL#2
16EB26:  ADDW            R0, R0, #0x444
16EB2A:  VCMP.F32        S0, #0.0
16EB2E:  VMRS            APSR_nzcv, FPSCR
16EB32:  IT MI
16EB34:  VLDRMI          S0, [R2,#0x30]
16EB38:  VMUL.F32        S0, S0, S0
16EB3C:  VLDR            S2, [R0]
16EB40:  MOVS            R0, #0
16EB42:  VCMP.F32        S2, S0
16EB46:  VMRS            APSR_nzcv, FPSCR
16EB4A:  IT GE
16EB4C:  MOVGE           R0, #1
16EB4E:  BX              LR
16EB50:  MOVS            R0, #0
16EB52:  BX              LR
