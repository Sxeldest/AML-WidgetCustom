; =========================================================
; Game Engine Function: sub_E7570
; Address            : 0xE7570 - 0xE7590
; =========================================================

E7570:  PUSH            {R4,R6,R7,LR}
E7572:  ADD             R7, SP, #8
E7574:  MOV             R1, R0
E7576:  LDRB            R3, [R0]
E7578:  LDR.W           R2, [R1,#4]!
E757C:  ANDS.W          R4, R3, #1
E7580:  IT EQ
E7582:  LSREQ           R2, R3, #1
E7584:  LDR             R0, [R0,#8]
E7586:  IT EQ
E7588:  MOVEQ           R0, R1
E758A:  ADD.W           R0, R0, R2,LSL#2
E758E:  POP             {R4,R6,R7,PC}
