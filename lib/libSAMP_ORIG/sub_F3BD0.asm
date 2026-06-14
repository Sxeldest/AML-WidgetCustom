; =========================================================
; Game Engine Function: sub_F3BD0
; Address            : 0xF3BD0 - 0xF3BEA
; =========================================================

F3BD0:  PUSH            {R4,R6,R7,LR}
F3BD2:  ADD             R7, SP, #8
F3BD4:  LDRB            R3, [R0]
F3BD6:  LDRD.W          R1, R2, [R0,#4]
F3BDA:  ANDS.W          R4, R3, #1
F3BDE:  ITT EQ
F3BE0:  LSREQ           R1, R3, #1
F3BE2:  ADDEQ           R2, R0, #1
F3BE4:  ADDS            R0, R2, R1
F3BE6:  SUBS            R0, #1
F3BE8:  POP             {R4,R6,R7,PC}
