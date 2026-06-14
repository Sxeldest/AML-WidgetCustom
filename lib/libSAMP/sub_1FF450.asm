; =========================================================
; Game Engine Function: sub_1FF450
; Address            : 0x1FF450 - 0x1FF470
; =========================================================

1FF450:  PUSH            {R4,R6,R7,LR}
1FF452:  ADD             R7, SP, #8
1FF454:  MOV             R1, R0
1FF456:  LDRB            R3, [R0]
1FF458:  LDR.W           R2, [R1,#4]!
1FF45C:  ANDS.W          R4, R3, #1
1FF460:  IT EQ
1FF462:  LSREQ           R2, R3, #1
1FF464:  LDR             R0, [R0,#8]
1FF466:  IT EQ
1FF468:  MOVEQ           R0, R1
1FF46A:  ADD.W           R0, R0, R2,LSL#2
1FF46E:  POP             {R4,R6,R7,PC}
