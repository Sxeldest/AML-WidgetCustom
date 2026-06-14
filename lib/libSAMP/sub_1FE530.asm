; =========================================================
; Game Engine Function: sub_1FE530
; Address            : 0x1FE530 - 0x1FE548
; =========================================================

1FE530:  PUSH            {R4,R6,R7,LR}
1FE532:  ADD             R7, SP, #8
1FE534:  LDRB            R3, [R0]
1FE536:  LDRD.W          R1, R2, [R0,#4]
1FE53A:  ANDS.W          R4, R3, #1
1FE53E:  ITT EQ
1FE540:  LSREQ           R1, R3, #1
1FE542:  ADDEQ           R2, R0, #1
1FE544:  ADDS            R0, R2, R1
1FE546:  POP             {R4,R6,R7,PC}
