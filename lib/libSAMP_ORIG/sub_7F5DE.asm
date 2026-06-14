; =========================================================
; Game Engine Function: sub_7F5DE
; Address            : 0x7F5DE - 0x7F660
; =========================================================

7F5DE:  PUSH            {R4-R7,LR}
7F5E0:  ADD             R7, SP, #0xC
7F5E2:  PUSH.W          {R8}
7F5E6:  LDR.W           R1, [R0,#0x100]
7F5EA:  MOV             R4, R0
7F5EC:  LDR.W           R2, [R0,#0x80]
7F5F0:  DMB.W           ISH
7F5F4:  LDR             R0, [R0,#4]; void *
7F5F6:  CMP             R2, R1
7F5F8:  IT NE
7F5FA:  CMPNE           R0, #0
7F5FC:  BNE             loc_7F60A
7F5FE:  BLX             j__ZdaPv; operator delete[](void *)
7F602:  MOV             R0, R4
7F604:  POP.W           {R8}
7F608:  POP             {R4-R7,PC}
7F60A:  MOV.W           R8, #0
7F60E:  B               loc_7F638
7F610:  LDR             R0, [R4]
7F612:  ADDS            R1, R6, #1
7F614:  SUBS            R0, R1, R0
7F616:  IT NE
7F618:  MOVNE           R0, R1
7F61A:  DMB.W           ISH
7F61E:  STR.W           R0, [R4,#0x100]
7F622:  LDR.W           R1, [R4,#0x100]
7F626:  LDR.W           R2, [R4,#0x80]
7F62A:  DMB.W           ISH
7F62E:  LDR             R0, [R4,#4]
7F630:  CMP             R2, R1
7F632:  IT NE
7F634:  CMPNE           R0, #0
7F636:  BEQ             loc_7F5FE
7F638:  LDR.W           R6, [R4,#0x100]
7F63C:  ADD.W           R0, R0, R6,LSL#2
7F640:  LDR.W           R5, [R0,#0x80]
7F644:  STR.W           R8, [R0,#0x80]
7F648:  CMP             R5, #0
7F64A:  BEQ             loc_7F610
7F64C:  LDR             R0, [R5]; void *
7F64E:  CMP             R0, #0
7F650:  ITT NE
7F652:  STRNE           R0, [R5,#4]
7F654:  BLXNE           j__ZdlPv; operator delete(void *)
7F658:  MOV             R0, R5; void *
7F65A:  BLX             j__ZdlPv; operator delete(void *)
7F65E:  B               loc_7F610
