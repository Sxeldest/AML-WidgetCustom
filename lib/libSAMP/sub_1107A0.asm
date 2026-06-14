; =========================================================
; Game Engine Function: sub_1107A0
; Address            : 0x1107A0 - 0x1107DC
; =========================================================

1107A0:  PUSH            {R4-R7,LR}
1107A2:  ADD             R7, SP, #0xC
1107A4:  PUSH.W          {R11}
1107A8:  MOV             R4, R2
1107AA:  MOV             R5, R1
1107AC:  MOV             R6, R0
1107AE:  BL              sub_1107DC
1107B2:  MOV             R0, R6
1107B4:  MOV             R1, R5
1107B6:  BL              sub_110808
1107BA:  MOV             R1, R0
1107BC:  MOV             R0, R5
1107BE:  BL              sub_110840
1107C2:  STRH            R4, [R0,#0x20]
1107C4:  MOV             R0, R6
1107C6:  MOV             R1, R5
1107C8:  BL              sub_1107DC
1107CC:  MOV             R0, R6
1107CE:  MOV             R1, R5
1107D0:  POP.W           {R11}
1107D4:  POP.W           {R4-R7,LR}
1107D8:  B.W             sub_110874
