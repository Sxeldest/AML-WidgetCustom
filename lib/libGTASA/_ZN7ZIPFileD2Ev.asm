; =========================================================
; Game Engine Function: _ZN7ZIPFileD2Ev
; Address            : 0x26F60C - 0x26F66E
; =========================================================

26F60C:  PUSH            {R4-R7,LR}
26F60E:  ADD             R7, SP, #0xC
26F610:  PUSH.W          {R8}
26F614:  MOV             R4, R0
26F616:  LDR             R0, =(_ZTV7ZIPFile_ptr - 0x26F61C)
26F618:  ADD             R0, PC; _ZTV7ZIPFile_ptr
26F61A:  LDR             R1, [R0]; `vtable for'ZIPFile ...
26F61C:  LDR.W           R0, [R4,#0x114]; p
26F620:  ADDS            R1, #8
26F622:  STR             R1, [R4]
26F624:  CBZ             R0, loc_26F636
26F626:  BLX             free
26F62A:  MOVS            R0, #0
26F62C:  ADD.W           R8, R4, #8
26F630:  STR.W           R0, [R4,#0x114]
26F634:  B               loc_26F654
26F636:  MOV             R8, R4
26F638:  LDR.W           R0, [R8,#8]!
26F63C:  CBZ             R0, loc_26F654
26F63E:  MOVS            R6, #0
26F640:  MOVS            R5, #8
26F642:  LDR             R0, [R4,#0xC]
26F644:  LDR             R0, [R0,R5]; p
26F646:  BLX             free
26F64A:  LDR             R0, [R4,#8]
26F64C:  ADDS            R6, #1
26F64E:  ADDS            R5, #0xC
26F650:  CMP             R6, R0
26F652:  BCC             loc_26F642
26F654:  MOVS            R5, #0
26F656:  STR.W           R5, [R8]
26F65A:  LDR             R0, [R4,#0xC]; p
26F65C:  CBZ             R0, loc_26F664
26F65E:  BLX             free
26F662:  STR             R5, [R4,#0xC]
26F664:  STR             R5, [R4,#4]
26F666:  MOV             R0, R4
26F668:  POP.W           {R8}
26F66C:  POP             {R4-R7,PC}
