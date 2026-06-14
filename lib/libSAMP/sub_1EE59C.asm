; =========================================================
; Game Engine Function: sub_1EE59C
; Address            : 0x1EE59C - 0x1EE5BA
; =========================================================

1EE59C:  PUSH            {R4,R5,R7,LR}
1EE59E:  ADD             R7, SP, #8
1EE5A0:  LDRB            R4, [R1]
1EE5A2:  LDRD.W          R2, R3, [R1,#4]
1EE5A6:  ANDS.W          R5, R4, #1
1EE5AA:  ITT EQ
1EE5AC:  ADDEQ           R3, R1, #1
1EE5AE:  LSREQ           R2, R4, #1
1EE5B0:  MOV             R1, R3
1EE5B2:  POP.W           {R4,R5,R7,LR}
1EE5B6:  B.W             sub_2245F8
