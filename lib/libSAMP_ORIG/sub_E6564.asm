; =========================================================
; Game Engine Function: sub_E6564
; Address            : 0xE6564 - 0xE657C
; =========================================================

E6564:  PUSH            {R4,R6,R7,LR}
E6566:  ADD             R7, SP, #8
E6568:  LDRB            R3, [R0]
E656A:  LDRD.W          R1, R2, [R0,#4]
E656E:  ANDS.W          R4, R3, #1
E6572:  ITT EQ
E6574:  LSREQ           R1, R3, #1
E6576:  ADDEQ           R2, R0, #1
E6578:  ADDS            R0, R2, R1
E657A:  POP             {R4,R6,R7,PC}
