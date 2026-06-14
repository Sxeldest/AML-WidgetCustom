; =========================================================
; Game Engine Function: sub_150E66
; Address            : 0x150E66 - 0x150EA8
; =========================================================

150E66:  PUSH            {R4-R7,LR}
150E68:  ADD             R7, SP, #0xC
150E6A:  PUSH.W          {R8}
150E6E:  LDR             R5, [R0]
150E70:  MOV             R8, R0
150E72:  CBZ             R5, loc_150EA0
150E74:  LDR.W           R6, [R8,#4]
150E78:  CMP             R6, R5
150E7A:  BEQ             loc_150E96
150E7C:  MOVS            R4, #0
150E7E:  LDR.W           R0, [R6,#-4]!
150E82:  STR             R4, [R6]
150E84:  CBZ             R0, loc_150E8C
150E86:  LDR             R1, [R0]
150E88:  LDR             R1, [R1,#4]
150E8A:  BLX             R1
150E8C:  CMP             R6, R5
150E8E:  BNE             loc_150E7E
150E90:  LDR.W           R0, [R8]
150E94:  B               loc_150E98
150E96:  MOV             R0, R5; void *
150E98:  STR.W           R5, [R8,#4]
150E9C:  BLX             j__ZdlPv; operator delete(void *)
150EA0:  MOV             R0, R8
150EA2:  POP.W           {R8}
150EA6:  POP             {R4-R7,PC}
