; =========================================================
; Game Engine Function: ec_enc_bits
; Address            : 0x195422 - 0x1954A6
; =========================================================

195422:  PUSH            {R4-R7,LR}
195424:  ADD             R7, SP, #0xC
195426:  PUSH.W          {R8}
19542A:  LDRD.W          R8, R12, [R0,#0xC]
19542E:  ADD.W           R6, R12, R2
195432:  CMP             R6, #0x21 ; '!'
195434:  BCC             loc_19548A
195436:  MVN.W           R6, R12
19543A:  CMN.W           R6, #0x10
19543E:  IT LE
195440:  MOVLE           R6, #0xFFFFFFF0
195444:  ADD.W           R4, R12, #8
195448:  ADD             R6, R12
19544A:  ADDS            R6, #8
19544C:  BIC.W           LR, R6, #7
195450:  LDRD.W          R5, R6, [R0,#4]
195454:  LDR             R3, [R0,#0x18]
195456:  ADD             R3, R6
195458:  CMP             R3, R5
19545A:  BCS             loc_19546C
19545C:  ADDS            R3, R6, #1
19545E:  STR             R3, [R0,#8]
195460:  LDR             R6, [R0]
195462:  SUBS            R3, R5, R3
195464:  MOVS            R5, #0
195466:  STRB.W          R8, [R6,R3]
19546A:  B               loc_195470
19546C:  MOV.W           R5, #0xFFFFFFFF
195470:  LDR             R3, [R0,#0x2C]
195472:  SUBS            R4, #8
195474:  MOV.W           R8, R8,LSR#8
195478:  CMP             R4, #0xF
19547A:  ORR.W           R3, R3, R5
19547E:  STR             R3, [R0,#0x2C]
195480:  BGT             loc_195450
195482:  SUB.W           R3, R12, #8
195486:  SUB.W           R12, R3, LR
19548A:  ADD.W           R3, R12, R2
19548E:  STR             R3, [R0,#0x10]
195490:  LSL.W           R1, R1, R12
195494:  LDR             R3, [R0,#0x14]
195496:  ORR.W           R1, R1, R8
19549A:  STR             R1, [R0,#0xC]
19549C:  ADDS            R1, R3, R2
19549E:  STR             R1, [R0,#0x14]
1954A0:  POP.W           {R8}
1954A4:  POP             {R4-R7,PC}
