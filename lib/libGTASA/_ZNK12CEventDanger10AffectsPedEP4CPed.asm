; =========================================================
; Game Engine Function: _ZNK12CEventDanger10AffectsPedEP4CPed
; Address            : 0x377EF8 - 0x377F66
; =========================================================

377EF8:  LDR             R2, [R0,#0x10]
377EFA:  CMP             R2, #0
377EFC:  ITT NE
377EFE:  LDRNE.W         R3, [R1,#0x590]
377F02:  CMPNE           R2, R3
377F04:  BEQ             loc_377F62
377F06:  PUSH            {R7,LR}
377F08:  MOV             R7, SP
377F0A:  LDR.W           LR, [R2,#0x14]
377F0E:  LDR.W           R12, [R1,#0x14]
377F12:  ADD.W           R3, LR, #0x30 ; '0'
377F16:  CMP.W           LR, #0
377F1A:  IT EQ
377F1C:  ADDEQ           R3, R2, #4
377F1E:  ADD.W           R2, R12, #0x30 ; '0'
377F22:  CMP.W           R12, #0
377F26:  VLDR            D16, [R3]
377F2A:  IT EQ
377F2C:  ADDEQ           R2, R1, #4
377F2E:  VLDR            S2, [R0,#0x14]
377F32:  VLDR            D17, [R2]
377F36:  VSUB.F32        D16, D17, D16
377F3A:  VLDR            S4, =0.0
377F3E:  VMUL.F32        S2, S2, S2
377F42:  VMUL.F32        D0, D16, D16
377F46:  VADD.F32        S0, S0, S1
377F4A:  VADD.F32        S0, S0, S4
377F4E:  VCMPE.F32       S0, S2
377F52:  VMRS            APSR_nzcv, FPSCR
377F56:  POP.W           {R7,LR}
377F5A:  ITT LE
377F5C:  MOVLE           R0, R1; this
377F5E:  BLE.W           sub_196874
377F62:  MOVS            R0, #0
377F64:  BX              LR
