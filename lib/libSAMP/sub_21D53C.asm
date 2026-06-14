; =========================================================
; Game Engine Function: sub_21D53C
; Address            : 0x21D53C - 0x21D572
; =========================================================

21D53C:  PUSH            {R4,R5,R7,LR}
21D53E:  ADD             R7, SP, #8
21D540:  MOV             R5, R0
21D542:  LDR             R0, [R0,#8]
21D544:  MOV             R4, R1
21D546:  BL              sub_2154CC
21D54A:  LDR             R1, =(aVector_0 - 0x21D552); " vector[" ...
21D54C:  MOV             R0, R4
21D54E:  ADD             R1, PC; " vector["
21D550:  ADD.W           R2, R1, #8
21D554:  BL              sub_216F98
21D558:  LDR             R0, [R5,#0xC]
21D55A:  CBZ             R0, loc_21D562
21D55C:  MOV             R1, R4
21D55E:  BL              sub_2154CC
21D562:  LDR             R1, =(unk_8919A - 0x21D56A)
21D564:  MOV             R0, R4
21D566:  ADD             R1, PC; unk_8919A
21D568:  ADDS            R2, R1, #1
21D56A:  POP.W           {R4,R5,R7,LR}
21D56E:  B.W             sub_216F98
