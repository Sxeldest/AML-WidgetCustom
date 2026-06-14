; =========================================================
; Game Engine Function: sub_EC808
; Address            : 0xEC808 - 0xEC820
; =========================================================

EC808:  PUSH            {R4,R6,R7,LR}
EC80A:  ADD             R7, SP, #8
EC80C:  LDRB            R3, [R0]
EC80E:  LDRD.W          R1, R2, [R0,#4]
EC812:  ANDS.W          R4, R3, #1
EC816:  ITT EQ
EC818:  LSREQ           R1, R3, #1
EC81A:  ADDEQ           R2, R0, #1
EC81C:  ADDS            R0, R2, R1
EC81E:  POP             {R4,R6,R7,PC}
