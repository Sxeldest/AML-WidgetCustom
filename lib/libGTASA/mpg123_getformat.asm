; =========================================================
; Game Engine Function: mpg123_getformat
; Address            : 0x230F60 - 0x230FC8
; =========================================================

230F60:  PUSH            {R4-R7,LR}
230F62:  ADD             R7, SP, #0xC
230F64:  PUSH.W          {R8}
230F68:  MOV             R4, R0
230F6A:  MOV             R8, R3
230F6C:  MOV             R6, R2
230F6E:  MOV             R5, R1
230F70:  CBZ             R4, loc_230FAC
230F72:  MOVW            R0, #0xB2C8
230F76:  LDR             R0, [R4,R0]
230F78:  CBZ             R0, loc_230FB6
230F7A:  CMP             R5, #0
230F7C:  ITTT NE
230F7E:  MOVWNE          R0, #0xB2BC
230F82:  LDRNE           R0, [R4,R0]
230F84:  STRNE           R0, [R5]
230F86:  CMP             R6, #0
230F88:  ITTT NE
230F8A:  MOVWNE          R0, #0xB2B8
230F8E:  LDRNE           R0, [R4,R0]
230F90:  STRNE           R0, [R6]
230F92:  CMP.W           R8, #0
230F96:  ITTT NE
230F98:  MOVWNE          R0, #0xB2B0
230F9C:  LDRNE           R0, [R4,R0]
230F9E:  STRNE.W         R0, [R8]
230FA2:  MOVS            R0, #0
230FA4:  STR             R0, [R4,#4]
230FA6:  POP.W           {R8}
230FAA:  POP             {R4-R7,PC}
230FAC:  MOV.W           R0, #0xFFFFFFFF
230FB0:  POP.W           {R8}
230FB4:  POP             {R4-R7,PC}
230FB6:  LDR             R0, [R4]
230FB8:  CMP             R0, #0
230FBA:  BEQ             loc_230F7A
230FBC:  MOV             R0, R4
230FBE:  BL              sub_2309D2
230FC2:  CMP             R0, #0
230FC4:  BGE             loc_230F7A
230FC6:  B               loc_230FA6
