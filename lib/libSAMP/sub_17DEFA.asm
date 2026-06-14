; =========================================================
; Game Engine Function: sub_17DEFA
; Address            : 0x17DEFA - 0x17DF5A
; =========================================================

17DEFA:  PUSH            {R4-R7,LR}
17DEFC:  ADD             R7, SP, #0xC
17DEFE:  PUSH.W          {R8,R9,R11}
17DF02:  SUB             SP, SP, #0x118
17DF04:  CBZ             R2, loc_17DF52
17DF06:  MOV             R9, R0
17DF08:  ADDS            R0, R2, #7
17DF0A:  ADD             R4, SP, #0x130+var_12C
17DF0C:  MOV             R8, R3
17DF0E:  MOV             R5, R2
17DF10:  LSRS            R2, R0, #3; size
17DF12:  MOV             R0, R4; int
17DF14:  MOVS            R3, #0
17DF16:  BL              sub_17D4F2
17DF1A:  LDR.W           R6, [R9]
17DF1E:  MOV             R0, R4
17DF20:  BL              sub_17D884
17DF24:  CMP             R0, #0
17DF26:  MOV.W           R0, #8
17DF2A:  IT NE
17DF2C:  MOVNE           R0, #0xC
17DF2E:  LDR             R6, [R6,R0]
17DF30:  LDR             R0, [R6,#8]
17DF32:  CBNZ            R0, loc_17DF48
17DF34:  LDR             R0, [R6,#0xC]
17DF36:  CBNZ            R0, loc_17DF48
17DF38:  MOV             R0, R8
17DF3A:  MOV             R1, R6
17DF3C:  MOVS            R2, #8
17DF3E:  MOVS            R3, #1
17DF40:  BL              sub_17D628
17DF44:  LDR.W           R6, [R9]
17DF48:  SUBS            R5, #1
17DF4A:  BNE             loc_17DF1E
17DF4C:  ADD             R0, SP, #0x130+var_12C
17DF4E:  BL              sub_17D542
17DF52:  ADD             SP, SP, #0x118
17DF54:  POP.W           {R8,R9,R11}
17DF58:  POP             {R4-R7,PC}
