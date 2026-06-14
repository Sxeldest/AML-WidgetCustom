; =========================================================
; Game Engine Function: sub_1709D0
; Address            : 0x1709D0 - 0x170ACE
; =========================================================

1709D0:  PUSH            {R4-R7,LR}
1709D2:  ADD             R7, SP, #0xC
1709D4:  PUSH.W          {R11}
1709D8:  LDR             R2, =(dword_381B58 - 0x1709EA)
1709DA:  MOVW            R12, #0x157C
1709DE:  VMOV            S8, R1
1709E2:  VLDR            S6, =0.0
1709E6:  ADD             R2, PC; dword_381B58
1709E8:  LDR             R3, [R2]
1709EA:  MOVW            R2, #0x19AC
1709EE:  ADD.W           R1, R3, R12
1709F2:  LDR             R2, [R3,R2]
1709F4:  LDR.W           R2, [R2,#0x1C0]
1709F8:  VLDR            S0, [R2,#0x14]
1709FC:  VLDR            S2, [R2,#0x18]
170A00:  LDR             R4, [R2,#4]
170A02:  VSUB.F32        S4, S2, S0
170A06:  LDR             R3, [R2,#0x44]
170A08:  AND.W           R12, R4, #8
170A0C:  AND.W           LR, R4, #4
170A10:  CMP.W           R0, #0xFFFFFFFF
170A14:  IT LE
170A16:  LDRLE           R0, [R2,#0xC]
170A18:  CMP.W           LR, #0
170A1C:  BNE             loc_170A60
170A1E:  LDR             R4, [R2,#0x10]
170A20:  SUBS            R4, #1
170A22:  CMP             R0, R4
170A24:  BGE             loc_170A60
170A26:  MOV             R4, R0
170A28:  CMP.W           R0, #0xFFFFFFFF
170A2C:  IT LE
170A2E:  LDRLE           R4, [R2,#0xC]
170A30:  LDRB            R5, [R2,#9]
170A32:  RSB.W           R4, R4, R4,LSL#3
170A36:  CMP             R5, #0
170A38:  ADD.W           R4, R3, R4,LSL#2
170A3C:  ADD.W           R6, R4, #0x20 ; ' '
170A40:  MOV             R5, R4
170A42:  IT NE
170A44:  ADDNE           R5, #4
170A46:  VLDR            S10, [R5]
170A4A:  IT EQ
170A4C:  ADDEQ.W         R6, R4, #0x1C
170A50:  VLDR            S12, [R6]
170A54:  MOVS            R4, #1
170A56:  VSUB.F32        S10, S12, S10
170A5A:  VMUL.F32        S10, S10, S4
170A5E:  B               loc_170A66
170A60:  MOVS            R4, #0
170A62:  VMOV.F32        S10, S6
170A66:  CMP.W           R12, #0
170A6A:  BNE             loc_170A94
170A6C:  LDR             R5, [R2,#0x10]
170A6E:  VLDR            S1, [R1]
170A72:  SUBS            R5, R5, R0
170A74:  VMOV            S12, R5
170A78:  VCVT.F32.S32    S14, S12
170A7C:  VMOV.F32        S12, S2
170A80:  VMLS.F32        S12, S1, S14
170A84:  VCMP.F32        S12, S8
170A88:  VMRS            APSR_nzcv, FPSCR
170A8C:  IT GT
170A8E:  VMOVGT.F32      S12, S8
170A92:  B               loc_170A98
170A94:  VMOV.F32        S12, S8
170A98:  VSUB.F32        S8, S12, S0
170A9C:  RSB.W           R5, R0, R0,LSL#3
170AA0:  ADD.W           R5, R3, R5,LSL#2
170AA4:  VDIV.F32        S8, S8, S4
170AA8:  VSTR            S8, [R5]
170AAC:  CBZ             R4, loc_170AC8
170AAE:  VLDR            S8, [R1]
170AB2:  ADDS            R0, #1
170AB4:  VCMP.F32        S8, S10
170AB8:  VMRS            APSR_nzcv, FPSCR
170ABC:  IT GE
170ABE:  VMOVGE.F32      S10, S8
170AC2:  VADD.F32        S8, S12, S10
170AC6:  B               loc_170A10
170AC8:  POP.W           {R11}
170ACC:  POP             {R4-R7,PC}
