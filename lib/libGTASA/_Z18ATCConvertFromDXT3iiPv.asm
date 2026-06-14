; =========================================================
; Game Engine Function: _Z18ATCConvertFromDXT3iiPv
; Address            : 0x1CB4DC - 0x1CB5F8
; =========================================================

1CB4DC:  PUSH            {R4-R7,LR}
1CB4DE:  ADD             R7, SP, #0xC
1CB4E0:  PUSH.W          {R8-R11}
1CB4E4:  ASRS            R3, R0, #0x1F
1CB4E6:  ADD.W           R3, R0, R3,LSR#30
1CB4EA:  ADDS            R0, #3
1CB4EC:  CMP             R0, #7
1CB4EE:  MOV.W           R0, R1,ASR#31
1CB4F2:  ADD.W           R0, R1, R0,LSR#30
1CB4F6:  MOV.W           R3, R3,ASR#2
1CB4FA:  ADD.W           R1, R1, #3
1CB4FE:  IT CC
1CB500:  MOVCC           R3, #1
1CB502:  ASRS            R0, R0, #2
1CB504:  CMP             R1, #7
1CB506:  IT CC
1CB508:  MOVCC           R0, #1
1CB50A:  MUL.W           R8, R0, R3
1CB50E:  CMP.W           R8, #1
1CB512:  BLT             loc_1CB5F2
1CB514:  ADD.W           R1, R2, #8
1CB518:  LDR             R2, =(unk_5E87E8 - 0x1CB526)
1CB51A:  MOVW            R12, #0x7FE0
1CB51E:  MOV.W           LR, #0xC
1CB522:  ADD             R2, PC; unk_5E87E8
1CB524:  LDRB            R5, [R1,#4]
1CB526:  SUBS.W          R8, R8, #1
1CB52A:  LDRB            R6, [R1,#5]
1CB52C:  AND.W           R0, R5, #0xC
1CB530:  LDRB.W          R10, [R1,#6]
1CB534:  LDRB            R4, [R1,#7]
1CB536:  LDR.W           R9, [R2,R0]
1CB53A:  LDRH            R0, [R1]
1CB53C:  AND.W           R3, R12, R0,LSR#1
1CB540:  AND.W           R0, R0, #0x1F
1CB544:  ORR.W           R0, R0, R3
1CB548:  AND.W           R3, LR, R5,LSR#2
1CB54C:  STRH            R0, [R1]
1CB54E:  AND.W           R0, R5, #3
1CB552:  LDR             R3, [R2,R3]
1CB554:  LDR.W           R0, [R2,R0,LSL#2]
1CB558:  ORR.W           R0, R0, R9,LSL#2
1CB55C:  ORR.W           R0, R0, R3,LSL#4
1CB560:  UBFX.W          R3, R5, #6, #2
1CB564:  AND.W           R5, LR, R4,LSR#2
1CB568:  LDR.W           R3, [R2,R3,LSL#2]
1CB56C:  LDR             R5, [R2,R5]
1CB56E:  ORR.W           R0, R0, R3,LSL#6
1CB572:  STRB            R0, [R1,#4]
1CB574:  AND.W           R0, R6, #0xC
1CB578:  AND.W           R3, R6, #3
1CB57C:  LDR             R0, [R2,R0]
1CB57E:  LDR.W           R3, [R2,R3,LSL#2]
1CB582:  ORR.W           R0, R3, R0,LSL#2
1CB586:  AND.W           R3, LR, R6,LSR#2
1CB58A:  LDR             R3, [R2,R3]
1CB58C:  ORR.W           R0, R0, R3,LSL#4
1CB590:  UBFX.W          R3, R6, #6, #2
1CB594:  AND.W           R6, R4, #0xC
1CB598:  LDR.W           R3, [R2,R3,LSL#2]
1CB59C:  LDR             R6, [R2,R6]
1CB59E:  ORR.W           R0, R0, R3,LSL#6
1CB5A2:  STRB            R0, [R1,#5]
1CB5A4:  AND.W           R0, R10, #0xC
1CB5A8:  AND.W           R3, R10, #3
1CB5AC:  LDR             R0, [R2,R0]
1CB5AE:  LDR.W           R3, [R2,R3,LSL#2]
1CB5B2:  ORR.W           R11, R3, R0,LSL#2
1CB5B6:  UBFX.W          R3, R4, #6, #2
1CB5BA:  AND.W           R0, LR, R10,LSR#2
1CB5BE:  AND.W           R4, R4, #3
1CB5C2:  LDR.W           R9, [R2,R3,LSL#2]
1CB5C6:  UBFX.W          R3, R10, #6, #2
1CB5CA:  LDR             R0, [R2,R0]
1CB5CC:  LDR.W           R3, [R2,R3,LSL#2]
1CB5D0:  LDR.W           R4, [R2,R4,LSL#2]
1CB5D4:  ORR.W           R0, R11, R0,LSL#4
1CB5D8:  ORR.W           R0, R0, R3,LSL#6
1CB5DC:  STRB            R0, [R1,#6]
1CB5DE:  ORR.W           R0, R4, R6,LSL#2
1CB5E2:  ORR.W           R0, R0, R5,LSL#4
1CB5E6:  ORR.W           R0, R0, R9,LSL#6
1CB5EA:  STRB            R0, [R1,#7]
1CB5EC:  ADD.W           R1, R1, #0x10
1CB5F0:  BNE             loc_1CB524
1CB5F2:  POP.W           {R8-R11}
1CB5F6:  POP             {R4-R7,PC}
