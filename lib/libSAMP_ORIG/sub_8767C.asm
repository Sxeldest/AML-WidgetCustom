; =========================================================
; Game Engine Function: sub_8767C
; Address            : 0x8767C - 0x876F4
; =========================================================

8767C:  PUSH            {R4-R7,LR}
8767E:  ADD             R7, SP, #0xC
87680:  PUSH.W          {R11}
87684:  LDR             R6, [R0]
87686:  MOV             R4, R0
87688:  MOV             R5, R1
8768A:  MOVS            R0, #0xC; unsigned int
8768C:  CMP             R6, #1
8768E:  BEQ             loc_876AC
87690:  CBNZ            R6, loc_876CC
87692:  BLX             j__Znwj; operator new(uint)
87696:  STR             R0, [R4,#4]
87698:  MOVS            R2, #1
8769A:  LDR             R1, [R5]
8769C:  STR             R2, [R4]
8769E:  STR             R0, [R4,#8]
876A0:  STRD.W          R1, R0, [R0]
876A4:  STR             R0, [R0,#8]
876A6:  POP.W           {R11}
876AA:  POP             {R4-R7,PC}
876AC:  BLX             j__Znwj; operator new(uint)
876B0:  LDR             R1, [R4,#4]
876B2:  MOVS            R3, #2
876B4:  STR             R0, [R4,#8]
876B6:  STRD.W          R0, R0, [R1,#4]
876BA:  LDR             R2, [R5]
876BC:  STRD.W          R3, R0, [R4]
876C0:  STRD.W          R2, R1, [R0]
876C4:  STR             R1, [R0,#8]
876C6:  POP.W           {R11}
876CA:  POP             {R4-R7,PC}
876CC:  BLX             j__Znwj; operator new(uint)
876D0:  LDRD.W          R1, R2, [R4,#4]
876D4:  LDR             R3, [R2,#4]
876D6:  LDR             R5, [R5]
876D8:  CMP             R2, R1
876DA:  STR             R3, [R0,#4]
876DC:  STR             R0, [R3,#8]
876DE:  STR             R5, [R0]
876E0:  STR             R0, [R2,#4]
876E2:  STR             R2, [R0,#8]
876E4:  IT EQ
876E6:  STRDEQ.W        R0, R0, [R4,#4]
876EA:  ADDS            R0, R6, #1
876EC:  STR             R0, [R4]
876EE:  POP.W           {R11}
876F2:  POP             {R4-R7,PC}
