; =========================================================
; Game Engine Function: sub_14F47C
; Address            : 0x14F47C - 0x14F4BE
; =========================================================

14F47C:  PUSH            {R4-R7,LR}
14F47E:  ADD             R7, SP, #0xC
14F480:  PUSH.W          {R11}
14F484:  ADD.W           R6, R0, #0x2400
14F488:  CBZ             R1, loc_14F494
14F48A:  REV             R0, R2
14F48C:  STR             R0, [R6,#0xC]
14F48E:  POP.W           {R11}
14F492:  POP             {R4-R7,PC}
14F494:  MOVS            R5, #0
14F496:  MOVW            R1, #0xFFFF
14F49A:  MOV             R4, R0
14F49C:  STR             R5, [R6,#0xC]
14F49E:  BL              sub_14F4C0
14F4A2:  LDRD.W          R0, R1, [R6]
14F4A6:  CMP             R0, R1
14F4A8:  BEQ             loc_14F48E
14F4AA:  LDRH            R2, [R0]
14F4AC:  LDR.W           R2, [R4,R2,LSL#2]
14F4B0:  CBZ             R2, loc_14F4BA
14F4B2:  STR.W           R5, [R2,#0x9DC]
14F4B6:  STRB.W          R5, [R2,#0x9D8]
14F4BA:  ADDS            R0, #2
14F4BC:  B               loc_14F4A6
