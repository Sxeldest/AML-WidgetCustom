; =========================================================
; Game Engine Function: sub_181F20
; Address            : 0x181F20 - 0x181F68
; =========================================================

181F20:  PUSH            {R4-R7,LR}
181F22:  ADD             R7, SP, #0xC
181F24:  PUSH.W          {R11}
181F28:  MOV             R4, R0
181F2A:  LDRH            R0, [R0,#8]
181F2C:  STR.W           R1, [R4,#0x9A4]
181F30:  CBZ             R0, loc_181F62
181F32:  LDR.W           R0, [R4,#0x340]
181F36:  ADDS            R0, #0x18
181F38:  BL              sub_189D68
181F3C:  LDRH            R0, [R4,#8]
181F3E:  CMP             R0, #2
181F40:  BCC             loc_181F62
181F42:  MOVS            R5, #1
181F44:  MOVW            R6, #0x858
181F48:  LDR.W           R0, [R4,#0x340]
181F4C:  LDR.W           R1, [R4,#0x9A4]
181F50:  ADD             R0, R6
181F52:  BL              sub_189D68
181F56:  LDRH            R0, [R4,#8]
181F58:  ADDS            R5, #1
181F5A:  ADD.W           R6, R6, #0x840
181F5E:  CMP             R5, R0
181F60:  BCC             loc_181F48
181F62:  POP.W           {R11}
181F66:  POP             {R4-R7,PC}
