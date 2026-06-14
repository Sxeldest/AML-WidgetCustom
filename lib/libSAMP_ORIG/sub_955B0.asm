; =========================================================
; Game Engine Function: sub_955B0
; Address            : 0x955B0 - 0x955F6
; =========================================================

955B0:  LDR             R2, =(dword_1ACF68 - 0x955B6)
955B2:  ADD             R2, PC; dword_1ACF68
955B4:  LDR             R2, [R2]
955B6:  ADDS            R3, R2, R0
955B8:  LDRB.W          R3, [R3,#0xE8]
955BC:  CMP             R3, #0
955BE:  ITT EQ
955C0:  MOVEQ           R0, #0
955C2:  BXEQ            LR
955C4:  VMOV            S0, R1
955C8:  ADD.W           R0, R2, R0,LSL#2
955CC:  ADDW            R0, R0, #0x444
955D0:  VCMP.F32        S0, #0.0
955D4:  VMRS            APSR_nzcv, FPSCR
955D8:  IT MI
955DA:  VLDRMI          S0, [R2,#0x30]
955DE:  VMUL.F32        S0, S0, S0
955E2:  VLDR            S2, [R0]
955E6:  MOVS            R0, #0
955E8:  VCMP.F32        S2, S0
955EC:  VMRS            APSR_nzcv, FPSCR
955F0:  IT GE
955F2:  MOVGE           R0, #1
955F4:  BX              LR
