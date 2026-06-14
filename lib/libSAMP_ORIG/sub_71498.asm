; =========================================================
; Game Engine Function: sub_71498
; Address            : 0x71498 - 0x7153A
; =========================================================

71498:  PUSH            {R4-R7,LR}
7149A:  ADD             R7, SP, #0xC
7149C:  PUSH.W          {R8-R11}
714A0:  SUB             SP, SP, #4
714A2:  MOV             R5, R0
714A4:  MOVS            R0, #4
714A6:  MOV             R4, R2
714A8:  STRH            R0, [R5,#0xE]
714AA:  CBZ             R2, loc_714D8
714AC:  MOV             R8, R1
714AE:  MOVS.W          R9, R4,LSL#4
714B2:  BEQ             loc_71522
714B4:  LDR.W           R11, [R3,#8]
714B8:  MOV             R10, R3
714BA:  LDR.W           R6, [R11]
714BE:  LDRD.W          R1, R0, [R6]
714C2:  ADD.W           R2, R0, R9
714C6:  CMP             R2, R1
714C8:  BHI             loc_714DE
714CA:  ADDS            R2, R6, #4
714CC:  ADD.W           R1, R0, R9
714D0:  ADD             R0, R6
714D2:  ADDS            R0, #0x10
714D4:  STR             R1, [R2]
714D6:  B               loc_71524
714D8:  MOVS            R0, #0
714DA:  STR             R0, [R5,#8]
714DC:  B               loc_7152E
714DE:  LDRD.W          R1, R0, [R10]
714E2:  CMP             R1, R9
714E4:  IT LS
714E6:  MOVLS           R1, R9
714E8:  STR             R1, [SP,#0x20+var_20]
714EA:  CBNZ            R0, loc_714FA
714EC:  MOVS            R0, #1; unsigned int
714EE:  BLX             j__Znwj; operator new(uint)
714F2:  STR.W           R0, [R10,#4]
714F6:  STR.W           R0, [R11,#4]
714FA:  LDR.W           R10, [SP,#0x20+var_20]
714FE:  ADDS.W          R0, R10, #0x10; size
71502:  BEQ             loc_71522
71504:  BLX             malloc
71508:  MOV             R1, R0
7150A:  MOVS            R0, #0
7150C:  CBZ             R1, loc_71524
7150E:  MOV             R2, R1
71510:  STR             R6, [R1,#8]
71512:  STR.W           R0, [R2,#4]!
71516:  MOV             R6, R1
71518:  STR.W           R10, [R1]
7151C:  STR.W           R1, [R11]
71520:  B               loc_714CC
71522:  MOVS            R0, #0; dest
71524:  MOV             R1, R8; src
71526:  MOV             R2, R9; n
71528:  STR             R0, [R5,#8]
7152A:  BLX             j_memcpy
7152E:  STRD.W          R4, R4, [R5]
71532:  ADD             SP, SP, #4
71534:  POP.W           {R8-R11}
71538:  POP             {R4-R7,PC}
