; =========================================================
; Game Engine Function: sub_20BAC0
; Address            : 0x20BAC0 - 0x20BADA
; =========================================================

20BAC0:  PUSH            {R4,R6,R7,LR}
20BAC2:  ADD             R7, SP, #8
20BAC4:  LDRB            R3, [R0]
20BAC6:  LDRD.W          R1, R2, [R0,#4]
20BACA:  ANDS.W          R4, R3, #1
20BACE:  ITT EQ
20BAD0:  LSREQ           R1, R3, #1
20BAD2:  ADDEQ           R2, R0, #1
20BAD4:  ADDS            R0, R2, R1
20BAD6:  SUBS            R0, #1
20BAD8:  POP             {R4,R6,R7,PC}
