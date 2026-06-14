; =========================================================
; Game Engine Function: sub_209468
; Address            : 0x209468 - 0x209534
; =========================================================

209468:  PUSH            {R4-R7,LR}
20946A:  ADD             R7, SP, #0xC
20946C:  PUSH.W          {R8-R11}
209470:  STR             R0, [R2]
209472:  LDRB            R0, [R7,#arg_C]
209474:  LDR             R4, [R7,#arg_4]
209476:  LDR.W           R12, [R7,#arg_0]
20947A:  LSLS            R0, R0, #0x1E
20947C:  STR             R3, [R4]
20947E:  BPL             loc_20949E
209480:  SUB.W           R0, R12, R3
209484:  CMP             R0, #2
209486:  BGE             loc_20948C
209488:  MOVS            R0, #1
20948A:  B               loc_20952E
20948C:  ADDS            R0, R3, #1
20948E:  STR             R0, [R4]
209490:  MOVS            R0, #0xFF
209492:  STRB            R0, [R3]
209494:  LDR             R0, [R4]
209496:  ADDS            R3, R0, #1
209498:  STR             R3, [R4]
20949A:  MOVS            R3, #0xFE
20949C:  STRB            R3, [R0]
20949E:  LDR.W           R10, [R7,#arg_8]
2094A2:  MOVW            R8, #0x7FF
2094A6:  LDR             R0, [R2]
2094A8:  MOV.W           R11, #0
2094AC:  MOV.W           R9, #0x37 ; '7'
2094B0:  CMP             R0, R1
2094B2:  BCS             loc_20952C
2094B4:  LDR             R3, [R0]
2094B6:  MOVS            R0, #2
2094B8:  BIC.W           R5, R3, R8
2094BC:  CMP.W           R5, #0xD800
2094C0:  BEQ             loc_20952E
2094C2:  CMP             R3, R10
2094C4:  BHI             loc_20952E
2094C6:  LDR             R0, [R4]
2094C8:  CMP.W           R11, R3,LSR#16
2094CC:  SUB.W           R5, R12, R0
2094D0:  BNE             loc_2094E2
2094D2:  CMP             R5, #2
2094D4:  BLT             loc_209488
2094D6:  ADDS            R5, R0, #1
2094D8:  STR             R5, [R4]
2094DA:  STRB            R3, [R0]
2094DC:  LSRS            R3, R3, #8
2094DE:  LDR             R0, [R4]
2094E0:  B               loc_20951E
2094E2:  CMP             R5, #4
2094E4:  BLT             loc_209488
2094E6:  ADDS            R5, R0, #1
2094E8:  STR             R5, [R4]
2094EA:  MOV.W           R5, #0x7C0
2094EE:  UBFX.W          LR, R3, #0xA, #6
2094F2:  AND.W           R5, R5, R3,LSR#10
2094F6:  ADD.W           R5, R5, #0x3FC0
2094FA:  ADD.W           R6, R5, LR
2094FE:  STRB            R6, [R0]
209500:  LDR             R0, [R4]
209502:  ADDS            R6, R0, #1
209504:  STR             R6, [R4]
209506:  MOVS            R6, #0xD8
209508:  ORR.W           R5, R6, R5,LSR#8
20950C:  STRB            R5, [R0]
20950E:  LDR             R0, [R4]
209510:  ADDS            R5, R0, #1
209512:  STR             R5, [R4]
209514:  STRB            R3, [R0]
209516:  LSRS            R3, R3, #8
209518:  LDR             R0, [R4]
20951A:  BFI.W           R3, R9, #2, #0x1E
20951E:  ADDS            R5, R0, #1
209520:  STR             R5, [R4]
209522:  STRB            R3, [R0]
209524:  LDR             R0, [R2]
209526:  ADDS            R0, #4
209528:  STR             R0, [R2]
20952A:  B               loc_2094B0
20952C:  MOVS            R0, #0
20952E:  POP.W           {R8-R11}
209532:  POP             {R4-R7,PC}
