; =========================================================
; Game Engine Function: sub_143BDC
; Address            : 0x143BDC - 0x143C98
; =========================================================

143BDC:  PUSH            {R4-R7,LR}
143BDE:  ADD             R7, SP, #0xC
143BE0:  PUSH.W          {R11}
143BE4:  SUB             SP, SP, #8
143BE6:  MOV             R4, R1
143BE8:  SUB.W           R1, R7, #-var_11; int
143BEC:  MOV             R0, R4; int
143BEE:  MOVS            R2, #8
143BF0:  MOVS            R3, #1
143BF2:  BL              sub_17D786
143BF6:  LDR             R1, [R4]
143BF8:  LDR             R0, [R4,#8]
143BFA:  CMP             R0, R1
143BFC:  BGE             loc_143C14
143BFE:  LDR             R1, [R4,#0xC]
143C00:  ASRS            R2, R0, #3
143C02:  LDRB            R1, [R1,R2]
143C04:  ADDS            R2, R0, #1
143C06:  AND.W           R0, R0, #7
143C0A:  STR             R2, [R4,#8]
143C0C:  LSL.W           R0, R1, R0
143C10:  UXTB            R0, R0
143C12:  LSRS            R6, R0, #7
143C14:  LDR             R0, =(off_2349A8 - 0x143C1A)
143C16:  ADD             R0, PC; off_2349A8
143C18:  LDR             R0, [R0]; dword_381BF4
143C1A:  LDR             R0, [R0]
143C1C:  LDRB.W          R1, [R0,#0x85]
143C20:  CBNZ            R1, loc_143C28
143C22:  LDRB.W          R1, [R0,#0x84]
143C26:  CBZ             R1, loc_143C40
143C28:  LDRB.W          R1, [R7,#var_11]
143C2C:  UXTB            R2, R6
143C2E:  CMP             R2, #0
143C30:  IT NE
143C32:  MOVNE           R2, #1
143C34:  BL              sub_17C45C
143C38:  ADD             SP, SP, #8
143C3A:  POP.W           {R11}
143C3E:  POP             {R4-R7,PC}
143C40:  LDR             R0, =(off_234A24 - 0x143C46)
143C42:  ADD             R0, PC; off_234A24
143C44:  LDR             R0, [R0]; dword_23DEEC
143C46:  LDR             R0, [R0]
143C48:  CMP             R0, #0
143C4A:  BEQ             loc_143C38
143C4C:  LDR             R0, [R0,#0x58]
143C4E:  CMP             R0, #0
143C50:  BEQ             loc_143C38
143C52:  LDR.W           R4, [R0,#0x84]
143C56:  CMP             R4, #0
143C58:  BEQ             loc_143C38
143C5A:  LDRB.W          R0, [R7,#var_11]
143C5E:  ADDS            R1, R0, #1
143C60:  MOV             R0, R4
143C62:  BL              sub_133038
143C66:  CMP             R0, #0
143C68:  BEQ             loc_143C38
143C6A:  UXTB            R1, R6
143C6C:  MOV             R5, R0
143C6E:  LDRB.W          R0, [R0,#0x50]
143C72:  CMP             R1, #0
143C74:  MOV             R6, R1
143C76:  IT NE
143C78:  MOVNE           R6, #1
143C7A:  CMP             R0, R6
143C7C:  BEQ             loc_143C8C
143C7E:  LDR             R0, [R5]
143C80:  CMP             R1, #0
143C82:  LDR             R2, [R0,#0x24]
143C84:  MOV             R0, R5
143C86:  IT NE
143C88:  MOVNE           R1, #1
143C8A:  BLX             R2
143C8C:  MOV             R0, R4
143C8E:  STRB.W          R6, [R5,#0x50]
143C92:  BL              sub_1330A8
143C96:  B               loc_143C38
