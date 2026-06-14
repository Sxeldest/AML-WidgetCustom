; =========================================================
; Game Engine Function: sub_143A0C
; Address            : 0x143A0C - 0x143A2E
; =========================================================

143A0C:  PUSH            {R7,LR}
143A0E:  MOV             R7, SP
143A10:  SUB             SP, SP, #8
143A12:  MOV             R0, R1; int
143A14:  SUBS            R1, R7, #1; int
143A16:  MOVS            R2, #8
143A18:  MOVS            R3, #1
143A1A:  BL              sub_17D786
143A1E:  BL              sub_111AD4
143A22:  LDRB.W          R1, [R7,#-1]
143A26:  BL              sub_111B24
143A2A:  ADD             SP, SP, #8
143A2C:  POP             {R7,PC}
