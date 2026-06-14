; =========================================================
; Game Engine Function: sub_2046C0
; Address            : 0x2046C0 - 0x2046D8
; =========================================================

2046C0:  PUSH            {R4,R6,R7,LR}
2046C2:  ADD             R7, SP, #8
2046C4:  LDRB            R3, [R0]
2046C6:  LDRD.W          R1, R2, [R0,#4]
2046CA:  ANDS.W          R4, R3, #1
2046CE:  ITT EQ
2046D0:  LSREQ           R1, R3, #1
2046D2:  ADDEQ           R2, R0, #1
2046D4:  ADDS            R0, R2, R1
2046D6:  POP             {R4,R6,R7,PC}
