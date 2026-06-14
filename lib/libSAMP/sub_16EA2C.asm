; =========================================================
; Game Engine Function: sub_16EA2C
; Address            : 0x16EA2C - 0x16EA80
; =========================================================

16EA2C:  PUSH            {R4,R6,R7,LR}
16EA2E:  ADD             R7, SP, #8
16EA30:  MOVS            R4, #0
16EA32:  CMP             R0, #0
16EA34:  BMI             loc_16EA58
16EA36:  LDR             R2, =(dword_381B58 - 0x16EA3C)
16EA38:  ADD             R2, PC; dword_381B58
16EA3A:  LDR             R2, [R2]
16EA3C:  ADD.W           R3, R2, R0,LSL#2
16EA40:  ADD.W           R3, R3, #0x458
16EA44:  VLDR            S0, [R3]
16EA48:  VCMP.F32        S0, #0.0
16EA4C:  VMRS            APSR_nzcv, FPSCR
16EA50:  ITE EQ
16EA52:  MOVEQ           R4, #1
16EA54:  CMPNE           R1, #0
16EA56:  BNE             loc_16EA5C
16EA58:  MOV             R0, R4
16EA5A:  POP             {R4,R6,R7,PC}
16EA5C:  VLDR            S2, [R2,#0x88]
16EA60:  MOVS            R4, #0
16EA62:  VCMP.F32        S0, S2
16EA66:  VMRS            APSR_nzcv, FPSCR
16EA6A:  BLE             loc_16EA58
16EA6C:  VMOV            R1, S2
16EA70:  LDR.W           R2, [R2,#0x8C]
16EA74:  BL              sub_16E9B0
16EA78:  CMP             R0, #0
16EA7A:  IT GT
16EA7C:  MOVGT           R4, #1
16EA7E:  B               loc_16EA58
