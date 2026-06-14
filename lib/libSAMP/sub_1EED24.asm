; =========================================================
; Game Engine Function: sub_1EED24
; Address            : 0x1EED24 - 0x1EED48
; =========================================================

1EED24:  PUSH            {R4,R6,R7,LR}
1EED26:  ADD             R7, SP, #8
1EED28:  LDRB            R3, [R0]
1EED2A:  LDR             R2, [R0,#4]
1EED2C:  LSLS            R4, R3, #0x1F
1EED2E:  IT EQ
1EED30:  LSREQ           R2, R3, #1
1EED32:  CMP             R2, R1
1EED34:  BCS             loc_1EED40
1EED36:  SUBS            R1, R1, R2
1EED38:  POP.W           {R4,R6,R7,LR}
1EED3C:  B.W             sub_1EED48
1EED40:  POP.W           {R4,R6,R7,LR}
1EED44:  B.W             sub_1EEDB2
