; =========================================================
; Game Engine Function: sub_A6270
; Address            : 0xA6270 - 0xA62B4
; =========================================================

A6270:  PUSH            {R4,R6,R7,LR}
A6272:  ADD             R7, SP, #8
A6274:  MOV             R2, R0
A6276:  LDR             R0, =(off_114D5C - 0xA6282)
A6278:  MOV             R12, R1
A627A:  MOVW            R1, #0x19AC
A627E:  ADD             R0, PC; off_114D5C
A6280:  MOVS            R3, #1
A6282:  LDR             R0, [R0]; dword_1ACF68
A6284:  LDR             R0, [R0]
A6286:  LDR             R1, [R0,R1]
A6288:  LDRB.W          R4, [R1,#0x7F]
A628C:  STRB.W          R3, [R1,#0x7C]
A6290:  CMP             R4, #0
A6292:  IT NE
A6294:  POPNE           {R4,R6,R7,PC}
A6296:  ADD.W           R4, R0, #0x2F40
A629A:  MOVW            R1, #0xC01
A629E:  MOV             R3, R12
A62A0:  MOV             R0, R4
A62A2:  BL              sub_88724
A62A6:  ADDS            R1, R4, R0
A62A8:  MOV             R0, R4; s
A62AA:  MOVS            R2, #1
A62AC:  POP.W           {R4,R6,R7,LR}
A62B0:  B.W             sub_A5E84
