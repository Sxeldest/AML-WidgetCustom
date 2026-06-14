; =========================================================
; Game Engine Function: sub_86C1C
; Address            : 0x86C1C - 0x86CE4
; =========================================================

86C1C:  PUSH            {R4-R7,LR}
86C1E:  ADD             R7, SP, #0xC
86C20:  PUSH.W          {R8,R9,R11}
86C24:  CMP             R2, #0
86C26:  BEQ             loc_86CB0
86C28:  MOV             R9, R0
86C2A:  LDRB            R0, [R0]
86C2C:  MOV             R8, R2
86C2E:  MOV             R5, R1
86C30:  LSLS            R6, R2, #3
86C32:  LSLS            R0, R0, #0x1D
86C34:  BEQ             loc_86CB6
86C36:  CMP.W           R8, #1
86C3A:  BLT             loc_86CB0
86C3C:  MOV             R0, R9
86C3E:  MOV             R1, R6
86C40:  BL              sub_86CE4
86C44:  LDR.W           R3, [R9]
86C48:  RSB.W           R0, R6, #8
86C4C:  AND.W           LR, R3, #7
86C50:  RSB.W           R12, LR, #8
86C54:  B               loc_86C74
86C56:  LDR.W           R1, [R9,#0xC]
86C5A:  ASRS            R3, R3, #3
86C5C:  STRB            R2, [R1,R3]
86C5E:  LDR.W           R3, [R9]
86C62:  CMP             R6, #0
86C64:  IT NE
86C66:  ADDNE           R3, #8
86C68:  ADDS            R5, #1
86C6A:  ADDS            R0, #8
86C6C:  SUBS            R6, #8
86C6E:  STR.W           R3, [R9]
86C72:  BLE             loc_86CB0
86C74:  LDRB            R2, [R5]
86C76:  CMP             R6, #0
86C78:  IT EQ
86C7A:  LSLEQ           R2, R0
86C7C:  CMP.W           LR, #0
86C80:  BEQ             loc_86C56
86C82:  LDR.W           R1, [R9,#0xC]
86C86:  ASRS            R3, R3, #3
86C88:  UXTB.W          R8, R2
86C8C:  CMP             R12, R6
86C8E:  LSR.W           R2, R8, LR
86C92:  LDRB            R4, [R1,R3]
86C94:  ORR.W           R2, R2, R4
86C98:  STRB            R2, [R1,R3]
86C9A:  BCS             loc_86C5E
86C9C:  LDR.W           R1, [R9]
86CA0:  LSL.W           R3, R8, R12
86CA4:  LDR.W           R2, [R9,#0xC]
86CA8:  ADD.W           R1, R2, R1,ASR#3
86CAC:  STRB            R3, [R1,#1]
86CAE:  B               loc_86C5E
86CB0:  POP.W           {R8,R9,R11}
86CB4:  POP             {R4-R7,PC}
86CB6:  MOV             R0, R9
86CB8:  MOV             R1, R6
86CBA:  BL              sub_86CE4
86CBE:  LDR.W           R0, [R9]
86CC2:  MOV             R2, R8; n
86CC4:  LDR.W           R1, [R9,#0xC]
86CC8:  ADDS            R0, #7
86CCA:  ADD.W           R0, R1, R0,ASR#3; dest
86CCE:  MOV             R1, R5; src
86CD0:  BLX             j_memcpy
86CD4:  LDR.W           R0, [R9]
86CD8:  ADD             R0, R6
86CDA:  STR.W           R0, [R9]
86CDE:  POP.W           {R8,R9,R11}
86CE2:  POP             {R4-R7,PC}
