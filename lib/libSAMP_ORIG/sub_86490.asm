; =========================================================
; Game Engine Function: sub_86490
; Address            : 0x86490 - 0x86562
; =========================================================

86490:  PUSH            {R4-R7,LR}
86492:  ADD             R7, SP, #0xC
86494:  PUSH.W          {R11}
86498:  MOV             R2, R0
8649A:  LDR             R0, =(byte_1ABE60 - 0x864A0)
8649C:  ADD             R0, PC; byte_1ABE60
8649E:  LDRB            R0, [R0]
864A0:  CBZ             R0, loc_864EC
864A2:  LDR             R6, =(dword_1ABE70 - 0x864A8)
864A4:  ADD             R6, PC; dword_1ABE70
864A6:  LDRD.W          R1, R4, [R6]
864AA:  SUBS            R0, R4, R1
864AC:  BEQ             loc_864D6
864AE:  MOVW            R3, #0xAAAB
864B2:  ADDS            R1, #0x10
864B4:  MOVT            R3, #0x2AAA
864B8:  MOVS            R5, #0
864BA:  SMMUL.W         R0, R0, R3
864BE:  ASRS            R3, R0, #2
864C0:  ADD.W           R0, R3, R0,LSR#31
864C4:  CMP             R0, #1
864C6:  IT LS
864C8:  MOVLS           R0, #1
864CA:  LDR             R3, [R1]
864CC:  CBZ             R3, loc_86502
864CE:  ADDS            R5, #1
864D0:  ADDS            R1, #0x18
864D2:  CMP             R0, R5
864D4:  BNE             loc_864CA
864D6:  LDR             R0, [R6,#(dword_1ABE78 - 0x1ABE70)]
864D8:  CMP             R4, R0
864DA:  BCS             loc_864F2
864DC:  MOV             R0, R2
864DE:  LDR.W           R1, [R0,#0x10]!
864E2:  CBZ             R1, loc_8651E
864E4:  CMP             R2, R1
864E6:  BEQ             loc_86528
864E8:  STR             R1, [R4,#0x10]
864EA:  B               loc_86522
864EC:  MOV.W           R5, #0xFFFFFFFF
864F0:  B               loc_8654C
864F2:  LDR             R4, =(dword_1ABE70 - 0x864F8)
864F4:  ADD             R4, PC; dword_1ABE70
864F6:  MOV             R0, R4
864F8:  MOV             R1, R2
864FA:  BL              sub_7FB88
864FE:  LDR             R0, [R4,#(dword_1ABE74 - 0x1ABE70)]
86500:  B               loc_8653A
86502:  MOVS            R0, #0
86504:  MOV             R6, R1
86506:  STR.W           R0, [R6],#-0x10
8650A:  MOV             R3, R2
8650C:  LDR.W           R4, [R3,#0x10]!
86510:  CBZ             R4, loc_8651A
86512:  CMP             R2, R4
86514:  BEQ             loc_86554
86516:  STR             R4, [R1]
86518:  MOV             R1, R3
8651A:  STR             R0, [R1]
8651C:  B               loc_8654C
8651E:  ADD.W           R0, R4, #0x10
86522:  MOVS            R1, #0
86524:  STR             R1, [R0]
86526:  B               loc_86534
86528:  STR             R4, [R4,#0x10]
8652A:  LDR             R0, [R0]
8652C:  LDR             R1, [R0]
8652E:  LDR             R2, [R1,#0xC]
86530:  MOV             R1, R4
86532:  BLX             R2
86534:  ADD.W           R0, R4, #0x18
86538:  STR             R0, [R6,#(dword_1ABE74 - 0x1ABE70)]
8653A:  LDR             R1, [R6]
8653C:  SUBS            R0, R0, R1
8653E:  MOV             R1, #0xAAAAAAAB
86546:  ASRS            R0, R0, #3
86548:  MULS            R0, R1
8654A:  SUBS            R5, R0, #1
8654C:  MOV             R0, R5
8654E:  POP.W           {R11}
86552:  POP             {R4-R7,PC}
86554:  STR.W           R6, [R1],#-0x10
86558:  LDR             R0, [R3]
8655A:  LDR             R2, [R0]
8655C:  LDR             R2, [R2,#0xC]
8655E:  BLX             R2
86560:  B               loc_8654C
