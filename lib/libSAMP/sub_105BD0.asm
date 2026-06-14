; =========================================================
; Game Engine Function: sub_105BD0
; Address            : 0x105BD0 - 0x105CD6
; =========================================================

105BD0:  PUSH            {R4-R7,LR}
105BD2:  ADD             R7, SP, #0xC
105BD4:  PUSH.W          {R8-R11}
105BD8:  SUB             SP, SP, #4
105BDA:  MOV             R5, R0
105BDC:  LDR             R0, =(off_23494C - 0x105BE8)
105BDE:  MOV             R10, R1
105BE0:  MOVW            R1, #0x4299
105BE4:  ADD             R0, PC; off_23494C
105BE6:  MOVT            R1, #0x5E ; '^'
105BEA:  MOV             R9, R3
105BEC:  MOV             R8, R2
105BEE:  LDR.W           R11, [R0]; dword_23DF24
105BF2:  LDR.W           R0, [R11]
105BF6:  ADDS            R4, R0, R1
105BF8:  MOV             R0, R5
105BFA:  BL              sub_104648
105BFE:  MOVS            R1, #1
105C00:  BLX             R4
105C02:  MOV             R4, R0
105C04:  LDR             R0, [R0,#0x24]
105C06:  STR.W           R0, [R9]
105C0A:  MOVS            R6, #0x18
105C0C:  LDR             R0, [R4,#0x28]
105C0E:  CMP.W           R10, #0
105C12:  STR.W           R0, [R9,#4]
105C16:  LDR             R0, [R5,#0x5C]
105C18:  LDR             R1, [R4,#0x2C]
105C1A:  STR.W           R1, [R9,#8]
105C1E:  IT NE
105C20:  MOVNE           R6, #0x22 ; '"'
105C22:  CBZ             R0, loc_105C56
105C24:  LDR             R2, [R5,#4]
105C26:  MOVW            R10, #0x7D24
105C2A:  LDR.W           R1, [R11]
105C2E:  MOVT            R10, #0x66 ; 'f'
105C32:  LDR             R2, [R2]
105C34:  ADD.W           R3, R1, R10
105C38:  CMP             R2, R3
105C3A:  BNE             loc_105C70
105C3C:  VLDR            S0, [R8,#8]
105C40:  VLDR            S2, [R4,#0x2C]
105C44:  VADD.F32        S0, S2, S0
105C48:  VLDR            S2, =0.15
105C4C:  VADD.F32        S0, S0, S2
105C50:  VSTR            S0, [R8,#8]
105C54:  B               loc_105CA0
105C56:  VLDR            S0, [R8,#8]
105C5A:  VLDR            S2, [R4,#0x2C]
105C5E:  VADD.F32        S0, S2, S0
105C62:  VLDR            S2, =0.15
105C66:  VADD.F32        S0, S0, S2
105C6A:  VSTR            S0, [R8,#8]
105C6E:  B               loc_105CB0
105C70:  MOVW            R2, #0x4A9D
105C74:  MOVS            R3, #0
105C76:  MOVT            R2, #0x4A ; 'J'
105C7A:  ADD.W           R12, R1, R2
105C7E:  MOV             R1, R8
105C80:  MOV             R2, R6
105C82:  BLX             R12
105C84:  VLDR            S0, [R8,#8]
105C88:  VLDR            S2, [R4,#0x2C]
105C8C:  LDR             R0, [R5,#0x5C]
105C8E:  VADD.F32        S0, S2, S0
105C92:  VLDR            S2, =0.15
105C96:  VADD.F32        S0, S0, S2
105C9A:  VSTR            S0, [R8,#8]
105C9E:  CBZ             R0, loc_105CB0
105CA0:  LDR             R2, [R5,#4]
105CA2:  LDR.W           R1, [R11]
105CA6:  LDR             R2, [R2]
105CA8:  ADD.W           R3, R1, R10
105CAC:  CMP             R2, R3
105CAE:  BNE             loc_105CB8
105CB0:  ADD             SP, SP, #4
105CB2:  POP.W           {R8-R11}
105CB6:  POP             {R4-R7,PC}
105CB8:  MOVW            R2, #0x2439
105CBC:  MOVS            R3, #0
105CBE:  MOVT            R2, #0x4A ; 'J'
105CC2:  ADD.W           R12, R1, R2
105CC6:  MOV             R1, R9
105CC8:  MOV             R2, R6
105CCA:  ADD             SP, SP, #4
105CCC:  POP.W           {R8-R11}
105CD0:  POP.W           {R4-R7,LR}
105CD4:  BX              R12
