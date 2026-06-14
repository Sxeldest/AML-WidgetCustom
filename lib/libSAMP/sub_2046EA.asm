; =========================================================
; Game Engine Function: sub_2046EA
; Address            : 0x2046EA - 0x20470A
; =========================================================

2046EA:  PUSH            {R4,R6,R7,LR}
2046EC:  ADD             R7, SP, #8
2046EE:  MOV             R1, R0
2046F0:  LDRB            R3, [R0]
2046F2:  LDR.W           R2, [R1,#4]!
2046F6:  ANDS.W          R4, R3, #1
2046FA:  IT EQ
2046FC:  LSREQ           R2, R3, #1
2046FE:  LDR             R0, [R0,#8]
204700:  IT EQ
204702:  MOVEQ           R0, R1
204704:  ADD.W           R0, R0, R2,LSL#2
204708:  POP             {R4,R6,R7,PC}
