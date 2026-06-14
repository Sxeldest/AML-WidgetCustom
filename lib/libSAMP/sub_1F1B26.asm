; =========================================================
; Game Engine Function: sub_1F1B26
; Address            : 0x1F1B26 - 0x1F1B40
; =========================================================

1F1B26:  PUSH            {R4,R5,R7,LR}
1F1B28:  ADD             R7, SP, #8
1F1B2A:  LDRB            R4, [R1]
1F1B2C:  LDRD.W          R2, R3, [R1,#4]
1F1B30:  ANDS.W          R5, R4, #1
1F1B34:  ITT EQ
1F1B36:  LSREQ           R2, R4, #1
1F1B38:  ADDEQ           R3, R1, #1
1F1B3A:  STRD.W          R3, R2, [R0]
1F1B3E:  POP             {R4,R5,R7,PC}
