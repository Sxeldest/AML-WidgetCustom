; =========================================================
; Game Engine Function: sub_150C8C
; Address            : 0x150C8C - 0x150CB4
; =========================================================

150C8C:  PUSH            {R7,LR}
150C8E:  MOV             R7, SP
150C90:  SUB             SP, SP, #0x10
150C92:  LDRB.W          R2, [R0,#0x48]
150C96:  CBZ             R2, loc_150CB0
150C98:  ADD.W           LR, R0, #0x4C ; 'L'
150C9C:  LDR             R0, [R0,#0x5C]
150C9E:  LDM.W           LR, {R2,R3,R12,LR}; int
150CA2:  STR             R0, [SP,#0x18+var_10]; float
150CA4:  MOV             R0, R1; int
150CA6:  MOVS            R1, #0; int
150CA8:  STRD.W          R12, LR, [SP,#0x18+var_18]; int
150CAC:  BL              sub_158E30
150CB0:  ADD             SP, SP, #0x10
150CB2:  POP             {R7,PC}
