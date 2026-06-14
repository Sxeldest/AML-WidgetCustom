; =========================================================
; Game Engine Function: sub_150C40
; Address            : 0x150C40 - 0x150C66
; =========================================================

150C40:  PUSH            {R4-R7,LR}
150C42:  ADD             R7, SP, #0xC
150C44:  PUSH.W          {R11}
150C48:  LDR             R5, [R0,#8]
150C4A:  ADDS            R6, R0, #4
150C4C:  CMP             R5, R6
150C4E:  BEQ             loc_150C60
150C50:  MOV             R4, R1
150C52:  LDR             R0, [R5,#8]
150C54:  MOV             R1, R4
150C56:  BL              sub_151B38
150C5A:  LDR             R5, [R5,#4]
150C5C:  CMP             R5, R6
150C5E:  BNE             loc_150C52
150C60:  POP.W           {R11}
150C64:  POP             {R4-R7,PC}
