; =========================================================
; Game Engine Function: sub_EC832
; Address            : 0xEC832 - 0xEC852
; =========================================================

EC832:  PUSH            {R4,R6,R7,LR}
EC834:  ADD             R7, SP, #8
EC836:  MOV             R1, R0
EC838:  LDRB            R3, [R0]
EC83A:  LDR.W           R2, [R1,#4]!
EC83E:  ANDS.W          R4, R3, #1
EC842:  IT EQ
EC844:  LSREQ           R2, R3, #1
EC846:  LDR             R0, [R0,#8]
EC848:  IT EQ
EC84A:  MOVEQ           R0, R1
EC84C:  ADD.W           R0, R0, R2,LSL#2
EC850:  POP             {R4,R6,R7,PC}
