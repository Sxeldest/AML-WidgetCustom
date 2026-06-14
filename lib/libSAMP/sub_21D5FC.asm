; =========================================================
; Game Engine Function: sub_21D5FC
; Address            : 0x21D5FC - 0x21D65C
; =========================================================

21D5FC:  PUSH            {R4-R7,LR}
21D5FE:  ADD             R7, SP, #0xC
21D600:  PUSH.W          {R8}
21D604:  MOV             R5, R0
21D606:  LDR             R0, [R0,#0xC]
21D608:  MOV             R4, R1
21D60A:  LDR             R1, [R0]
21D60C:  LDR             R2, [R1,#0x10]
21D60E:  MOV             R1, R4
21D610:  BLX             R2
21D612:  LDR             R0, [R5,#0xC]
21D614:  MOV             R1, R4
21D616:  BL              sub_217AF6
21D61A:  LDR             R6, =(aQjk+6 - 0x21D620); "(" ...
21D61C:  ADD             R6, PC; "("
21D61E:  ADD.W           R8, R6, #1
21D622:  CBNZ            R0, loc_21D636
21D624:  LDR             R0, [R5,#0xC]
21D626:  MOV             R1, R4
21D628:  BL              sub_217B0A
21D62C:  CBNZ            R0, loc_21D636
21D62E:  LDR             R6, =(asc_84C32 - 0x21D634); " " ...
21D630:  ADD             R6, PC; " "
21D632:  ADD.W           R8, R6, #1
21D636:  MOV             R0, R4
21D638:  MOV             R1, R6
21D63A:  MOV             R2, R8
21D63C:  BL              sub_216F98
21D640:  LDR             R0, [R5,#8]
21D642:  MOV             R1, R4
21D644:  BL              sub_2154CC
21D648:  LDR             R1, =(asc_86DE9 - 0x21D650); "::*" ...
21D64A:  MOV             R0, R4
21D64C:  ADD             R1, PC; "::*"
21D64E:  ADDS            R2, R1, #3
21D650:  POP.W           {R8}
21D654:  POP.W           {R4-R7,LR}
21D658:  B.W             sub_216F98
