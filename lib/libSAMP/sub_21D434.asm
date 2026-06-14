; =========================================================
; Game Engine Function: sub_21D434
; Address            : 0x21D434 - 0x21D486
; =========================================================

21D434:  PUSH            {R4,R5,R7,LR}
21D436:  ADD             R7, SP, #8
21D438:  MOV             R5, R0
21D43A:  LDR             R0, [R0,#0xC]
21D43C:  MOV             R4, R1
21D43E:  LDR             R1, [R0]
21D440:  LDR             R2, [R1,#0x10]
21D442:  MOV             R1, R4
21D444:  BLX             R2
21D446:  LDR             R0, [R5,#8]
21D448:  LSLS            R1, R0, #0x1F
21D44A:  BEQ             loc_21D45A
21D44C:  LDR             R1, =(aConst - 0x21D454); " const" ...
21D44E:  MOV             R0, R4
21D450:  ADD             R1, PC; " const"
21D452:  ADDS            R2, R1, #6
21D454:  BL              sub_216F98
21D458:  LDR             R0, [R5,#8]
21D45A:  LSLS            R1, R0, #0x1E
21D45C:  BPL             loc_21D46E
21D45E:  LDR             R1, =(aVolatile - 0x21D466); " volatile" ...
21D460:  MOV             R0, R4
21D462:  ADD             R1, PC; " volatile"
21D464:  ADD.W           R2, R1, #9
21D468:  BL              sub_216F98
21D46C:  LDR             R0, [R5,#8]
21D46E:  LSLS            R0, R0, #0x1D
21D470:  IT PL
21D472:  POPPL           {R4,R5,R7,PC}
21D474:  LDR             R1, =(aRestrict - 0x21D47C); " restrict" ...
21D476:  MOV             R0, R4
21D478:  ADD             R1, PC; " restrict"
21D47A:  ADD.W           R2, R1, #9
21D47E:  POP.W           {R4,R5,R7,LR}
21D482:  B.W             sub_216F98
