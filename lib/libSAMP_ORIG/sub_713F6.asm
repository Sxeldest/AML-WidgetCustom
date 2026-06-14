; =========================================================
; Game Engine Function: sub_713F6
; Address            : 0x713F6 - 0x71498
; =========================================================

713F6:  PUSH            {R4-R7,LR}
713F8:  ADD             R7, SP, #0xC
713FA:  PUSH.W          {R8-R11}
713FE:  SUB             SP, SP, #4
71400:  MOV             R5, R0
71402:  MOVS            R0, #3
71404:  MOV             R4, R2
71406:  STRH            R0, [R5,#0xE]
71408:  CBZ             R2, loc_7143A
7140A:  MOV             R8, R1
7140C:  MOVS.W          R9, R4,LSL#5
71410:  BEQ             loc_71480
71412:  LDR.W           R11, [R3,#8]
71416:  MOV             R6, R3
71418:  LDR.W           R10, [R11]
7141C:  MOV             R2, R10
7141E:  LDR.W           R1, [R10]
71422:  LDR.W           R0, [R2,#4]!
71426:  ADD.W           R3, R0, R9
7142A:  CMP             R3, R1
7142C:  BHI             loc_71440
7142E:  ADD.W           R1, R0, R9
71432:  ADD             R0, R10
71434:  ADDS            R0, #0x10
71436:  STR             R1, [R2]
71438:  B               loc_71482
7143A:  MOVS            R0, #0
7143C:  STR             R0, [R5,#8]
7143E:  B               loc_7148C
71440:  LDRD.W          R1, R0, [R6]
71444:  CMP             R1, R9
71446:  IT LS
71448:  MOVLS           R1, R9
7144A:  STR             R1, [SP,#0x20+var_20]
7144C:  CBNZ            R0, loc_7145A
7144E:  MOVS            R0, #1; unsigned int
71450:  BLX             j__Znwj; operator new(uint)
71454:  STR             R0, [R6,#4]
71456:  STR.W           R0, [R11,#4]
7145A:  LDR             R6, [SP,#0x20+var_20]
7145C:  ADDS.W          R0, R6, #0x10; size
71460:  BEQ             loc_71480
71462:  BLX             malloc
71466:  MOV             R1, R0
71468:  MOVS            R0, #0
7146A:  CBZ             R1, loc_71482
7146C:  MOV             R2, R1
7146E:  STR.W           R10, [R1,#8]
71472:  STR.W           R0, [R2,#4]!
71476:  MOV             R10, R1
71478:  STR             R6, [R1]
7147A:  STR.W           R1, [R11]
7147E:  B               loc_7142E
71480:  MOVS            R0, #0; dest
71482:  MOV             R1, R8; src
71484:  MOV             R2, R9; n
71486:  STR             R0, [R5,#8]
71488:  BLX             j_memcpy
7148C:  STRD.W          R4, R4, [R5]
71490:  ADD             SP, SP, #4
71492:  POP.W           {R8-R11}
71496:  POP             {R4-R7,PC}
