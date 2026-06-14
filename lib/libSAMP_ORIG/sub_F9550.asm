; =========================================================
; Game Engine Function: sub_F9550
; Address            : 0xF9550 - 0xF956A
; =========================================================

F9550:  PUSH            {R4,R5,R7,LR}
F9552:  ADD             R7, SP, #8
F9554:  LDRB            R4, [R1]
F9556:  LDRD.W          R2, R3, [R1,#4]
F955A:  ANDS.W          R5, R4, #1
F955E:  ITT EQ
F9560:  LSREQ           R2, R4, #1
F9562:  ADDEQ           R3, R1, #1
F9564:  STRD.W          R3, R2, [R0]
F9568:  POP             {R4,R5,R7,PC}
