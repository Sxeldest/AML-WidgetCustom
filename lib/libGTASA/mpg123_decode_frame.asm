; =========================================================
; Game Engine Function: mpg123_decode_frame
; Address            : 0x230C40 - 0x230CF8
; =========================================================

230C40:  PUSH            {R4-R7,LR}
230C42:  ADD             R7, SP, #0xC
230C44:  PUSH.W          {R8-R11}
230C48:  SUB             SP, SP, #4
230C4A:  MOV             R4, R3
230C4C:  CMP             R4, #0
230C4E:  MOV             R6, R0
230C50:  MOV             R8, R2
230C52:  ITT NE
230C54:  MOVNE           R0, #0
230C56:  STRNE           R0, [R4]
230C58:  MOV             R11, R1
230C5A:  CBZ             R6, loc_230C70
230C5C:  MOVW            R0, #0xB2C4
230C60:  MOVW            R1, #0xB2AC
230C64:  LDR             R0, [R6,R0]
230C66:  LDR             R1, [R6,R1]
230C68:  CMP             R1, R0
230C6A:  BCS             loc_230C76
230C6C:  MOVS            R0, #0xE
230C6E:  B               loc_230CF0
230C70:  MOV.W           R0, #0xFFFFFFFF
230C74:  B               loc_230CF0
230C76:  MOVW            R0, #0xB2A0
230C7A:  ADD.W           R10, R6, R0
230C7E:  MOVW            R0, #0xB2A8
230C82:  MOVS            R1, #0
230C84:  STR             R1, [R6,R0]
230C86:  MOVW            R1, #0xB2C8
230C8A:  ADDS            R5, R6, R1
230C8C:  ADD.W           R9, R6, R0
230C90:  LDR             R0, [R5]
230C92:  CBNZ            R0, loc_230CA2
230C94:  MOV             R0, R6
230C96:  BL              sub_2309D2
230C9A:  CMP.W           R0, #0xFFFFFFFF
230C9E:  BGT             loc_230C90
230CA0:  B               loc_230CF0
230CA2:  LDR             R0, [R6,#4]
230CA4:  CBZ             R0, loc_230CB0
230CA6:  MOVS            R0, #0
230CA8:  STR             R0, [R6,#4]
230CAA:  MOV             R0, #0xFFFFFFF5
230CAE:  B               loc_230CF0
230CB0:  CMP.W           R11, #0
230CB4:  ITTT NE
230CB6:  MOVWNE          R0, #0x9314
230CBA:  LDRNE           R0, [R6,R0]
230CBC:  STRNE.W         R0, [R11]
230CC0:  MOV             R0, R6
230CC2:  BL              sub_230748
230CC6:  MOVW            R0, #0xB2CC
230CCA:  MOVS            R1, #0
230CCC:  STR             R1, [R6,R0]
230CCE:  CMP.W           R8, #0
230CD2:  STR             R1, [R5]
230CD4:  MOVW            R1, #0xB2A4
230CD8:  LDR.W           R0, [R10]
230CDC:  STR             R0, [R6,R1]
230CDE:  IT NE
230CE0:  STRNE.W         R0, [R8]
230CE4:  CMP             R4, #0
230CE6:  ITT NE
230CE8:  LDRNE.W         R0, [R9]
230CEC:  STRNE           R0, [R4]
230CEE:  MOVS            R0, #0
230CF0:  ADD             SP, SP, #4
230CF2:  POP.W           {R8-R11}
230CF6:  POP             {R4-R7,PC}
