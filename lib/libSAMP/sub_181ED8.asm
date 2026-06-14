; =========================================================
; Game Engine Function: sub_181ED8
; Address            : 0x181ED8 - 0x181F20
; =========================================================

181ED8:  PUSH            {R4-R7,LR}
181EDA:  ADD             R7, SP, #0xC
181EDC:  PUSH.W          {R11}
181EE0:  MOV             R4, R0
181EE2:  LDRH            R0, [R0,#8]
181EE4:  STR.W           R1, [R4,#0x9A0]
181EE8:  CBZ             R0, loc_181F1A
181EEA:  LDR.W           R0, [R4,#0x340]
181EEE:  ADDS            R0, #0x18
181EF0:  BL              sub_189D64
181EF4:  LDRH            R0, [R4,#8]
181EF6:  CMP             R0, #2
181EF8:  BCC             loc_181F1A
181EFA:  MOVS            R5, #1
181EFC:  MOVW            R6, #0x858
181F00:  LDR.W           R0, [R4,#0x340]
181F04:  LDR.W           R1, [R4,#0x9A0]
181F08:  ADD             R0, R6
181F0A:  BL              sub_189D64
181F0E:  LDRH            R0, [R4,#8]
181F10:  ADDS            R5, #1
181F12:  ADD.W           R6, R6, #0x840
181F16:  CMP             R5, R0
181F18:  BCC             loc_181F00
181F1A:  POP.W           {R11}
181F1E:  POP             {R4-R7,PC}
