; =========================================================
; Game Engine Function: sub_23BD18
; Address            : 0x23BD18 - 0x23BD5A
; =========================================================

23BD18:  PUSH            {R4-R7,LR}
23BD1A:  ADD             R7, SP, #0xC
23BD1C:  PUSH.W          {R11}
23BD20:  MOV             R4, R0
23BD22:  MOVW            R0, #0xB2E0
23BD26:  LDR             R0, [R4,R0]
23BD28:  MOV             R5, R1
23BD2A:  LDR             R1, [R0,#0x24]
23BD2C:  MOV             R0, R4
23BD2E:  BLX             R1
23BD30:  SUBS            R6, R0, R5
23BD32:  CMP             R6, #0
23BD34:  BLT             loc_23BD50
23BD36:  NEGS            R1, R5
23BD38:  MOV             R0, R4
23BD3A:  BL              sub_23BBD8
23BD3E:  MOV             R1, R0
23BD40:  MOVS            R0, #0
23BD42:  CMP             R1, R6
23BD44:  IT NE
23BD46:  MOVNE.W         R0, #0xFFFFFFFF
23BD4A:  POP.W           {R11}
23BD4E:  POP             {R4-R7,PC}
23BD50:  MOV.W           R0, #0xFFFFFFFF
23BD54:  POP.W           {R11}
23BD58:  POP             {R4-R7,PC}
