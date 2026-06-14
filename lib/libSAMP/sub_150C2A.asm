; =========================================================
; Game Engine Function: sub_150C2A
; Address            : 0x150C2A - 0x150C40
; =========================================================

150C2A:  PUSH            {R7,LR}
150C2C:  MOV             R7, SP
150C2E:  SUB             SP, SP, #8
150C30:  STRH.W          R1, [R7,#-2]
150C34:  ADDS            R0, #0x10
150C36:  SUBS            R1, R7, #2
150C38:  BL              sub_1515B4
150C3C:  ADD             SP, SP, #8
150C3E:  POP             {R7,PC}
