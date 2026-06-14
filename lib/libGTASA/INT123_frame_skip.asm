; =========================================================
; Game Engine Function: INT123_frame_skip
; Address            : 0x2267A6 - 0x2267F4
; =========================================================

2267A6:  PUSH            {R4,R6,R7,LR}
2267A8:  ADD             R7, SP, #8
2267AA:  MOV             R4, R0
2267AC:  MOVW            R0, #0x92D8
2267B0:  LDR             R0, [R4,R0]
2267B2:  CMP             R0, #3
2267B4:  IT NE
2267B6:  POPNE           {R4,R6,R7,PC}
2267B8:  MOVW            R0, #0x9380
2267BC:  MOVW            R1, #0x937C
2267C0:  MOVW            R2, #0xB288
2267C4:  MOVW            R3, #0xB28C
2267C8:  LDR             R0, [R4,R0]
2267CA:  LDR             R2, [R4,R2]
2267CC:  LDR             R1, [R4,R1]
2267CE:  LDR             R3, [R4,R3]
2267D0:  ADD             R0, R2
2267D2:  ADD             R1, R3
2267D4:  SUB.W           R0, R0, #0x200; void *
2267D8:  MOVW            R2, #0x9334
2267DC:  SUB.W           R1, R1, #0x200; void *
2267E0:  STR             R0, [R4,R2]
2267E2:  MOV.W           R2, #0x200; size_t
2267E6:  BLX             memcpy_1
2267EA:  MOVW            R0, #0x9330
2267EE:  MOVS            R1, #0
2267F0:  STR             R1, [R4,R0]
2267F2:  POP             {R4,R6,R7,PC}
