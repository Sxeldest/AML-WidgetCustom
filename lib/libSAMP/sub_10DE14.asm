; =========================================================
; Game Engine Function: sub_10DE14
; Address            : 0x10DE14 - 0x10DE50
; =========================================================

10DE14:  PUSH            {R4-R7,LR}
10DE16:  ADD             R7, SP, #0xC
10DE18:  PUSH.W          {R8}
10DE1C:  MOV             R8, R0
10DE1E:  MOVS            R0, #0
10DE20:  MOV             R6, R8
10DE22:  STR.W           R0, [R6,#4]!
10DE26:  STR.W           R0, [R8,#8]
10DE2A:  STR.W           R6, [R8]
10DE2E:  CBZ             R2, loc_10DE48
10DE30:  MOV             R5, R1
10DE32:  LSLS            R4, R2, #4
10DE34:  MOV             R0, R8
10DE36:  MOV             R1, R6
10DE38:  MOV             R2, R5
10DE3A:  MOV             R3, R5
10DE3C:  BL              sub_10E0BC
10DE40:  SUBS            R4, #0x10
10DE42:  ADD.W           R5, R5, #0x10
10DE46:  BNE             loc_10DE34
10DE48:  MOV             R0, R8
10DE4A:  POP.W           {R8}
10DE4E:  POP             {R4-R7,PC}
