; =========================================================
; Game Engine Function: png_do_invert
; Address            : 0x203392 - 0x203430
; =========================================================

203392:  PUSH            {R7,LR}
203394:  MOV             R7, SP
203396:  LDRB            R2, [R0,#8]
203398:  CMP             R2, #4
20339A:  BEQ             loc_2033D0
20339C:  CMP             R2, #0
20339E:  BNE             locret_20342E
2033A0:  LDR             R0, [R0,#4]
2033A2:  CMP             R0, #0
2033A4:  BEQ             locret_20342E
2033A6:  CMP             R0, #0x10
2033A8:  BCC             loc_2033EE
2033AA:  BIC.W           R12, R0, #0xF
2033AE:  CMP.W           R12, #0
2033B2:  BEQ             loc_2033EE
2033B4:  ADD.W           R2, R1, R12
2033B8:  MOV             R3, R12
2033BA:  VLD1.8          {D16-D17}, [R1]
2033BE:  SUBS            R3, #0x10
2033C0:  VMVN            Q8, Q8
2033C4:  VST1.8          {D16-D17}, [R1]!
2033C8:  BNE             loc_2033BA
2033CA:  CMP             R0, R12
2033CC:  BNE             loc_2033F4
2033CE:  B               locret_20342E
2033D0:  LDRB            R2, [R0,#9]
2033D2:  CMP             R2, #0x10
2033D4:  BEQ             loc_203408
2033D6:  CMP             R2, #8
2033D8:  BNE             locret_20342E
2033DA:  LDR             R0, [R0,#4]
2033DC:  CBZ             R0, locret_20342E
2033DE:  MOVS            R2, #0
2033E0:  LDRB            R3, [R1,R2]
2033E2:  MVNS            R3, R3
2033E4:  STRB            R3, [R1,R2]
2033E6:  ADDS            R2, #2
2033E8:  CMP             R2, R0
2033EA:  BCC             loc_2033E0
2033EC:  B               locret_20342E
2033EE:  MOV.W           R12, #0
2033F2:  MOV             R2, R1
2033F4:  SUB.W           R0, R0, R12
2033F8:  LDRB            R1, [R2]
2033FA:  SUBS            R0, #1
2033FC:  MVN.W           R1, R1
203400:  STRB.W          R1, [R2],#1
203404:  BNE             loc_2033F8
203406:  B               locret_20342E
203408:  LDR.W           R12, [R0,#4]
20340C:  CMP.W           R12, #0
203410:  IT EQ
203412:  POPEQ           {R7,PC}
203414:  MOVS            R2, #0
203416:  LDRB            R3, [R1,R2]
203418:  ADDS            R0, R1, R2
20341A:  LDRB.W          LR, [R0,#1]
20341E:  MVNS            R3, R3
203420:  STRB            R3, [R1,R2]
203422:  ADDS            R2, #4
203424:  MVN.W           R3, LR
203428:  CMP             R2, R12
20342A:  STRB            R3, [R0,#1]
20342C:  BCC             loc_203416
20342E:  POP             {R7,PC}
