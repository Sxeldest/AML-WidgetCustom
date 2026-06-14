; =========================================================
; Game Engine Function: sub_109C28
; Address            : 0x109C28 - 0x109CB8
; =========================================================

109C28:  PUSH            {R4-R7,LR}
109C2A:  ADD             R7, SP, #0xC
109C2C:  PUSH.W          {R8}
109C30:  MOV             R5, R0
109C32:  LDR             R0, [R0,#0xC]
109C34:  CBZ             R0, loc_109C82
109C36:  MOV             R8, R3
109C38:  MOV             R6, R2
109C3A:  MOV             R4, R1
109C3C:  BL              sub_10837C
109C40:  CMP             R0, #1
109C42:  BEQ             loc_109C50
109C44:  LDR             R0, [R5,#0xC]
109C46:  CBZ             R0, loc_109C82
109C48:  BL              sub_10837C
109C4C:  CMP             R0, #5
109C4E:  BNE             loc_109C82
109C50:  LDR             R0, [R5,#0xC]
109C52:  ORRS.W          R1, R6, R4
109C56:  IT EQ
109C58:  CMPEQ.W         R8, #0
109C5C:  BEQ             loc_109C88
109C5E:  LDR             R1, =(off_23494C - 0x109C72)
109C60:  MOVW            R2, #0xD817
109C64:  STR.W           R4, [R0,#0x5C8]
109C68:  MOVT            R2, #0x55 ; 'U'
109C6C:  LDR             R0, [R5,#0xC]
109C6E:  ADD             R1, PC; off_23494C
109C70:  LDR             R1, [R1]; dword_23DF24
109C72:  STR.W           R6, [R0,#0x5BD]
109C76:  LDR             R0, [R5,#0xC]
109C78:  LDR             R1, [R1]
109C7A:  STR.W           R8, [R0,#0x5C4]
109C7E:  LDR             R0, [R5,#0xC]
109C80:  B               loc_109CAC
109C82:  POP.W           {R8}
109C86:  POP             {R4-R7,PC}
109C88:  LDR.W           R1, [R0,#0x5C8]
109C8C:  CBNZ            R1, loc_109C9C
109C8E:  LDR.W           R1, [R0,#0x5BD]
109C92:  CBNZ            R1, loc_109C9C
109C94:  LDR.W           R1, [R0,#0x5C4]
109C98:  CMP             R1, #0
109C9A:  BEQ             loc_109C5E
109C9C:  LDR             R1, =(off_23494C - 0x109CAA)
109C9E:  MOV             R2, #0x55D551
109CA6:  ADD             R1, PC; off_23494C
109CA8:  LDR             R1, [R1]; dword_23DF24
109CAA:  LDR             R1, [R1]
109CAC:  ADD             R1, R2
109CAE:  POP.W           {R8}
109CB2:  POP.W           {R4-R7,LR}
109CB6:  BX              R1
