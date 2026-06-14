; =========================================================
; Game Engine Function: sub_1789B4
; Address            : 0x1789B4 - 0x178B10
; =========================================================

1789B4:  PUSH            {R4-R7,LR}
1789B6:  ADD             R7, SP, #0xC
1789B8:  PUSH.W          {R8-R11}
1789BC:  SUB             SP, SP, #4
1789BE:  VPUSH           {D8-D13}
1789C2:  SUB             SP, SP, #8
1789C4:  CMP             R2, R3
1789C6:  BCS.W           loc_178B00
1789CA:  VLDR            S0, [R7,#arg_0]
1789CE:  VMOV            S2, R1
1789D2:  VLDR            S18, =0.0
1789D6:  ADD.W           R9, R0, #0xC
1789DA:  VDIV.F32        S16, S0, S2
1789DE:  ADD.W           R8, SP, #0x58+var_54
1789E2:  MOV             R5, R0
1789E4:  MOVS            R0, #0
1789E6:  MOV             R4, R3
1789E8:  MOV.W           R11, #1
1789EC:  MOV             R10, R2
1789EE:  STR             R0, [SP,#0x58+var_58]
1789F0:  VMOV.F32        S26, S18
1789F4:  VLDR            S20, =-0.0
1789F8:  VMOV.F32        S22, S18
1789FC:  VMOV.F32        S24, S18
178A00:  LDRSB.W         R0, [R2]
178A04:  MOV             R6, R2
178A06:  CMP             R0, #0
178A08:  UXTB            R1, R0
178A0A:  STR             R1, [SP,#0x58+var_54]
178A0C:  BMI             loc_178A12
178A0E:  ADDS            R2, R6, #1
178A10:  B               loc_178A20
178A12:  MOV             R0, R8
178A14:  MOV             R1, R6
178A16:  MOV             R2, R4
178A18:  BL              sub_165308
178A1C:  LDR             R1, [SP,#0x58+var_54]
178A1E:  ADDS            R2, R6, R0
178A20:  CMP             R1, #0
178A22:  BEQ             loc_178AFE
178A24:  CMP             R1, #0x1F
178A26:  BHI             loc_178A30
178A28:  CMP             R1, #0xA
178A2A:  BEQ             loc_178A9A
178A2C:  CMP             R1, #0xD
178A2E:  BEQ             loc_178AAA
178A30:  LDR             R0, [R5]
178A32:  LDR             R3, [R5,#8]
178A34:  CMP             R1, R0
178A36:  MOV             R0, R9
178A38:  IT LT
178A3A:  ADDLT.W         R0, R3, R1,LSL#2
178A3E:  VLDR            S0, [R0]
178A42:  CMP             R1, #9
178A44:  IT NE
178A46:  CMPNE.W         R1, #0x3000
178A4A:  BNE             loc_178A88
178A4C:  VMOV.F32        S2, S20
178A50:  ANDS.W          R0, R11, #1
178A54:  ITT NE
178A56:  VMOVNE.F32      S2, S26
178A5A:  VMOVNE.F32      S26, S18
178A5E:  VADD.F32        S24, S24, S2
178A62:  VADD.F32        S26, S26, S0
178A66:  IT NE
178A68:  MOVNE           R10, R6
178A6A:  MOV.W           R11, #0
178A6E:  VADD.F32        S0, S24, S22
178A72:  CMP.W           R11, #0
178A76:  IT NE
178A78:  MOVNE.W         R11, #1
178A7C:  VCMP.F32        S0, S16
178A80:  VMRS            APSR_nzcv, FPSCR
178A84:  BLT             loc_178AAA
178A86:  B               loc_178AEA
178A88:  CMP             R1, #0x20 ; ' '
178A8A:  BEQ             loc_178A4C
178A8C:  VADD.F32        S22, S22, S0
178A90:  MOVS.W          R0, R11,LSL#31
178A94:  BEQ             loc_178AB0
178A96:  MOV             R10, R2
178A98:  B               loc_178AC4
178A9A:  VMOV.F32        S24, S18
178A9E:  MOV.W           R11, #1
178AA2:  VMOV.F32        S22, S18
178AA6:  VMOV.F32        S26, S18
178AAA:  CMP             R2, R4
178AAC:  BCC             loc_178A00
178AAE:  B               loc_178B00
178AB0:  VADD.F32        S0, S26, S22
178AB4:  STR.W           R10, [SP,#0x58+var_58]
178AB8:  VMOV.F32        S22, S18
178ABC:  VMOV.F32        S26, S18
178AC0:  VADD.F32        S24, S24, S0
178AC4:  SUB.W           R0, R1, #0x21 ; '!'
178AC8:  MOVW            R3, #0xD7FC
178ACC:  CMP             R0, #0x1E
178ACE:  BIC.W           R0, R0, #0x80000000
178AD2:  MOVT            R3, #0x3BFF
178AD6:  MOV.W           R1, #0
178ADA:  LSR.W           R0, R3, R0
178ADE:  IT HI
178AE0:  MOVHI           R1, #1
178AE2:  ORRS            R0, R1
178AE4:  AND.W           R11, R0, #1
178AE8:  B               loc_178A6E
178AEA:  LDR             R0, [SP,#0x58+var_58]
178AEC:  VCMP.F32        S22, S16
178AF0:  CMP             R0, #0
178AF2:  IT NE
178AF4:  MOVNE           R10, R0
178AF6:  VMRS            APSR_nzcv, FPSCR
178AFA:  IT MI
178AFC:  MOVMI           R6, R10
178AFE:  MOV             R2, R6
178B00:  MOV             R0, R2
178B02:  ADD             SP, SP, #8
178B04:  VPOP            {D8-D13}
178B08:  ADD             SP, SP, #4
178B0A:  POP.W           {R8-R11}
178B0E:  POP             {R4-R7,PC}
