; =========================================================
; Game Engine Function: sub_174BE2
; Address            : 0x174BE2 - 0x174C68
; =========================================================

174BE2:  PUSH            {R4-R7,LR}
174BE4:  ADD             R7, SP, #0xC
174BE6:  PUSH.W          {R8-R10}
174BEA:  SUB             SP, SP, #8
174BEC:  LDR             R5, [R7,#arg_8]
174BEE:  CMP.W           R5, #0x1000000
174BF2:  BCC             loc_174C60
174BF4:  MOV             R4, R0
174BF6:  LDR             R0, [R0,#0x4C]
174BF8:  LDRD.W          R8, R10, [R7,#arg_0]
174BFC:  MOV             R9, R3
174BFE:  MOV             R6, R2
174C00:  CBZ             R0, loc_174C10
174C02:  LDR             R2, [R4,#0x54]
174C04:  ADD.W           R0, R2, R0,LSL#2
174C08:  LDR.W           R0, [R0,#-4]
174C0C:  CMP             R0, R1
174C0E:  BEQ             loc_174C46
174C10:  MOV             R0, R4
174C12:  BL              sub_172D4E
174C16:  MOV             R0, R4
174C18:  MOVS            R1, #6
174C1A:  MOVS            R2, #4
174C1C:  BL              sub_172DC0
174C20:  MOV             R0, R4
174C22:  MOV             R1, R6
174C24:  MOV             R2, R9
174C26:  MOV             R3, R8
174C28:  STRD.W          R10, R5, [SP,#0x20+var_20]
174C2C:  BL              sub_172F38
174C30:  LDR             R0, [R4,#0x4C]
174C32:  SUBS            R0, #1
174C34:  STR             R0, [R4,#0x4C]
174C36:  MOV             R0, R4
174C38:  ADD             SP, SP, #8
174C3A:  POP.W           {R8-R10}
174C3E:  POP.W           {R4-R7,LR}
174C42:  B.W             sub_172B7A
174C46:  MOV             R0, R4
174C48:  MOVS            R1, #6
174C4A:  MOVS            R2, #4
174C4C:  BL              sub_172DC0
174C50:  MOV             R0, R4
174C52:  MOV             R1, R6
174C54:  MOV             R2, R9
174C56:  MOV             R3, R8
174C58:  STRD.W          R10, R5, [SP,#0x20+var_20]
174C5C:  BL              sub_172F38
174C60:  ADD             SP, SP, #8
174C62:  POP.W           {R8-R10}
174C66:  POP             {R4-R7,PC}
