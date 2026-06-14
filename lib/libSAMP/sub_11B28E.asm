; =========================================================
; Game Engine Function: sub_11B28E
; Address            : 0x11B28E - 0x11B2B4
; =========================================================

11B28E:  PUSH            {R4-R7,LR}
11B290:  ADD             R7, SP, #0xC
11B292:  PUSH.W          {R11}
11B296:  LDR             R5, [R0,#4]
11B298:  LDR             R6, [R2]
11B29A:  LDR             R4, [R1]
11B29C:  MOV             R0, R5
11B29E:  MOV             R1, R6
11B2A0:  BL              sub_11A698
11B2A4:  LDR             R2, [R5,#0x18]
11B2A6:  MOV             R0, R4
11B2A8:  MOV             R1, R6
11B2AA:  POP.W           {R11}
11B2AE:  POP.W           {R4-R7,LR}
11B2B2:  BX              R2
