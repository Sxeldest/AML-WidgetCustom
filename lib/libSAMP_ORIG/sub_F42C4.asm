; =========================================================
; Game Engine Function: sub_F42C4
; Address            : 0xF42C4 - 0xF42E6
; =========================================================

F42C4:  PUSH            {R4,R6,R7,LR}
F42C6:  ADD             R7, SP, #8
F42C8:  MOV             R1, R0
F42CA:  LDRB            R3, [R0]
F42CC:  LDR.W           R2, [R1,#4]!
F42D0:  ANDS.W          R4, R3, #1
F42D4:  IT EQ
F42D6:  LSREQ           R2, R3, #1
F42D8:  LDR             R0, [R0,#8]
F42DA:  IT EQ
F42DC:  MOVEQ           R0, R1
F42DE:  ADD.W           R0, R0, R2,LSL#2
F42E2:  SUBS            R0, #4
F42E4:  POP             {R4,R6,R7,PC}
