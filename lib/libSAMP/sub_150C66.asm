; =========================================================
; Game Engine Function: sub_150C66
; Address            : 0x150C66 - 0x150C8C
; =========================================================

150C66:  PUSH            {R4-R7,LR}
150C68:  ADD             R7, SP, #0xC
150C6A:  PUSH.W          {R11}
150C6E:  LDR             R5, [R0,#8]
150C70:  ADDS            R6, R0, #4
150C72:  CMP             R5, R6
150C74:  BEQ             loc_150C86
150C76:  MOV             R4, R1
150C78:  LDR             R0, [R5,#8]
150C7A:  MOV             R1, R4
150C7C:  BL              sub_151C60
150C80:  LDR             R5, [R5,#4]
150C82:  CMP             R5, R6
150C84:  BNE             loc_150C78
150C86:  POP.W           {R11}
150C8A:  POP             {R4-R7,PC}
