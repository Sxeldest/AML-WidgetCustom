; =========================================================
; Game Engine Function: sub_20C1B4
; Address            : 0x20C1B4 - 0x20C1D6
; =========================================================

20C1B4:  PUSH            {R4,R6,R7,LR}
20C1B6:  ADD             R7, SP, #8
20C1B8:  MOV             R1, R0
20C1BA:  LDRB            R3, [R0]
20C1BC:  LDR.W           R2, [R1,#4]!
20C1C0:  ANDS.W          R4, R3, #1
20C1C4:  IT EQ
20C1C6:  LSREQ           R2, R3, #1
20C1C8:  LDR             R0, [R0,#8]
20C1CA:  IT EQ
20C1CC:  MOVEQ           R0, R1
20C1CE:  ADD.W           R0, R0, R2,LSL#2
20C1D2:  SUBS            R0, #4
20C1D4:  POP             {R4,R6,R7,PC}
