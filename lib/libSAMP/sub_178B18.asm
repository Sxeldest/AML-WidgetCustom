; =========================================================
; Game Engine Function: sub_178B18
; Address            : 0x178B18 - 0x178CC0
; =========================================================

178B18:  PUSH            {R4-R7,LR}
178B1A:  ADD             R7, SP, #0xC
178B1C:  PUSH.W          {R8-R11}
178B20:  SUB             SP, SP, #4
178B22:  VPUSH           {D8-D15}
178B26:  SUB             SP, SP, #8; float
178B28:  LDRD.W          R5, R4, [R7,#arg_4]
178B2C:  MOV             R9, R3
178B2E:  MOV             R6, R2
178B30:  MOV             R11, R1
178B32:  MOV             R8, R0
178B34:  CBNZ            R4, loc_178B3E
178B36:  MOV             R0, R5; s
178B38:  BLX             strlen
178B3C:  ADDS            R4, R5, R0
178B3E:  LDR             R1, [R7,#arg_C]
178B40:  VMOV            S16, R6
178B44:  VLDR            S0, [R11,#0x10]
178B48:  MOVS            R0, #0
178B4A:  CMP             R4, R5
178B4C:  STRD.W          R0, R0, [R8]
178B50:  BLS.W           loc_178C7A
178B54:  VDIV.F32        S24, S16, S0
178B58:  ADD.W           R10, R11, #0xC
178B5C:  MOVS            R6, #0
178B5E:  VMOV            S22, R9
178B62:  VLDR            S26, =0.0
178B66:  VMOV            R9, S24
178B6A:  VLDR            S20, [R7,#arg_0]
178B6E:  VMOV.F32        S18, S26
178B72:  VMOV.F32        S28, S26
178B76:  VMOV.F32        S30, S26
178B7A:  VCMP.F32        S20, #0.0
178B7E:  VMRS            APSR_nzcv, FPSCR
178B82:  BLE             loc_178BA6
178B84:  CBNZ            R6, loc_178BA2
178B86:  VSUB.F32        S0, S20, S30
178B8A:  MOV             R0, R11; int
178B8C:  MOV             R1, R9; int
178B8E:  MOV             R2, R5; int
178B90:  MOV             R3, R4; int
178B92:  VSTR            S0, [SP,#0x68+var_68]
178B96:  BL              sub_1789B4
178B9A:  MOV             R6, R0
178B9C:  CMP             R0, R5
178B9E:  IT EQ
178BA0:  ADDEQ           R6, #1
178BA2:  CMP             R5, R6
178BA4:  BCS             loc_178C2C
178BA6:  LDRSB.W         R0, [R5]
178BAA:  CMP             R0, #0
178BAC:  UXTB            R1, R0
178BAE:  STR             R1, [SP,#0x68+var_64]
178BB0:  BMI             loc_178BB6
178BB2:  ADDS            R0, R5, #1
178BB4:  B               loc_178BCA
178BB6:  ADD             R0, SP, #0x68+var_64
178BB8:  MOV             R1, R5
178BBA:  MOV             R2, R4
178BBC:  BL              sub_165308
178BC0:  LDR             R1, [SP,#0x68+var_64]
178BC2:  ADD             R0, R5
178BC4:  CMP             R1, #0
178BC6:  MOV             R2, R0
178BC8:  BEQ             loc_178C80
178BCA:  CMP             R1, #0x1F
178BCC:  BHI             loc_178BFA
178BCE:  CMP             R1, #0xD
178BD0:  BEQ             loc_178C28
178BD2:  CMP             R1, #0xA
178BD4:  BNE             loc_178BFA
178BD6:  VADD.F32        S18, S18, S16
178BDA:  VCMP.F32        S28, S30
178BDE:  VMRS            APSR_nzcv, FPSCR
178BE2:  IT GE
178BE4:  VMOVGE.F32      S30, S28
178BE8:  VSTR            S30, [R8]
178BEC:  VMOV.F32        S28, S30
178BF0:  VMOV.F32        S30, S26
178BF4:  VSTR            S18, [R8,#4]
178BF8:  B               loc_178C28
178BFA:  VMOV.F32        S0, S30
178BFE:  LDR.W           R2, [R11]
178C02:  LDR.W           R3, [R11,#8]
178C06:  CMP             R1, R2
178C08:  MOV             R2, R10
178C0A:  IT LT
178C0C:  ADDLT.W         R2, R3, R1,LSL#2
178C10:  VLDR            S2, [R2]
178C14:  MOV             R2, R5
178C16:  VMLA.F32        S0, S24, S2
178C1A:  VCMP.F32        S0, S22
178C1E:  VMRS            APSR_nzcv, FPSCR
178C22:  BGE             loc_178C80
178C24:  VMOV.F32        S30, S0
178C28:  MOV             R5, R0
178C2A:  B               loc_178C72
178C2C:  VADD.F32        S18, S18, S16
178C30:  VCMP.F32        S28, S30
178C34:  VMRS            APSR_nzcv, FPSCR
178C38:  ITT MI
178C3A:  VSTRMI          S30, [R8]
178C3E:  VMOVMI.F32      S28, S30
178C42:  CMP             R5, R4
178C44:  VSTR            S18, [R8,#4]
178C48:  BCS             loc_178C6C
178C4A:  SUBS            R0, R4, R5
178C4C:  MOV             R1, R5
178C4E:  LDRB.W          R2, [R1],#1
178C52:  CMP             R2, #0x20 ; ' '
178C54:  IT NE
178C56:  CMPNE           R2, #9
178C58:  BNE             loc_178C66
178C5A:  SUBS            R0, #1
178C5C:  MOV             R5, R1
178C5E:  BNE             loc_178C4E
178C60:  MOVS            R6, #0
178C62:  MOV             R5, R4
178C64:  B               loc_178C6E
178C66:  CMP             R2, #0xA
178C68:  IT EQ
178C6A:  ADDEQ           R5, #1
178C6C:  MOVS            R6, #0
178C6E:  VMOV.F32        S30, S26
178C72:  CMP             R5, R4
178C74:  BCC.W           loc_178B7A
178C78:  B               loc_178C82
178C7A:  VLDR            S18, =0.0
178C7E:  B               loc_178CA6
178C80:  MOV             R5, R2
178C82:  VCMP.F32        S28, S30
178C86:  LDR             R1, [R7,#arg_C]
178C88:  VMRS            APSR_nzcv, FPSCR
178C8C:  VCMP.F32        S30, #0.0
178C90:  IT MI
178C92:  VSTRMI          S30, [R8]
178C96:  VMRS            APSR_nzcv, FPSCR
178C9A:  BGT             loc_178CA6
178C9C:  VCMP.F32        S18, #0.0
178CA0:  VMRS            APSR_nzcv, FPSCR
178CA4:  BNE             loc_178CAE
178CA6:  VADD.F32        S0, S18, S16
178CAA:  VSTR            S0, [R8,#4]
178CAE:  CBZ             R1, loc_178CB2
178CB0:  STR             R5, [R1]
178CB2:  ADD             SP, SP, #8
178CB4:  VPOP            {D8-D15}
178CB8:  ADD             SP, SP, #4
178CBA:  POP.W           {R8-R11}
178CBE:  POP             {R4-R7,PC}
