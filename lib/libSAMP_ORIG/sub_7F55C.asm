; =========================================================
; Game Engine Function: sub_7F55C
; Address            : 0x7F55C - 0x7F5DE
; =========================================================

7F55C:  PUSH            {R4-R7,LR}
7F55E:  ADD             R7, SP, #0xC
7F560:  PUSH.W          {R8}
7F564:  LDR.W           R1, [R0,#0x100]
7F568:  MOV             R4, R0
7F56A:  LDR.W           R2, [R0,#0x80]
7F56E:  DMB.W           ISH
7F572:  LDR             R0, [R0,#4]; void *
7F574:  CMP             R2, R1
7F576:  IT NE
7F578:  CMPNE           R0, #0
7F57A:  BNE             loc_7F588
7F57C:  BLX             j__ZdaPv; operator delete[](void *)
7F580:  MOV             R0, R4
7F582:  POP.W           {R8}
7F586:  POP             {R4-R7,PC}
7F588:  MOV.W           R8, #0
7F58C:  B               loc_7F5B6
7F58E:  LDR             R0, [R4]
7F590:  ADDS            R1, R6, #1
7F592:  SUBS            R0, R1, R0
7F594:  IT NE
7F596:  MOVNE           R0, R1
7F598:  DMB.W           ISH
7F59C:  STR.W           R0, [R4,#0x100]
7F5A0:  LDR.W           R1, [R4,#0x100]
7F5A4:  LDR.W           R2, [R4,#0x80]
7F5A8:  DMB.W           ISH
7F5AC:  LDR             R0, [R4,#4]
7F5AE:  CMP             R2, R1
7F5B0:  IT NE
7F5B2:  CMPNE           R0, #0
7F5B4:  BEQ             loc_7F57C
7F5B6:  LDR.W           R6, [R4,#0x100]
7F5BA:  ADD.W           R0, R0, R6,LSL#2
7F5BE:  LDR.W           R5, [R0,#0x80]
7F5C2:  STR.W           R8, [R0,#0x80]
7F5C6:  CMP             R5, #0
7F5C8:  BEQ             loc_7F58E
7F5CA:  LDR             R0, [R5]; void *
7F5CC:  CMP             R0, #0
7F5CE:  ITT NE
7F5D0:  STRNE           R0, [R5,#4]
7F5D2:  BLXNE           j__ZdlPv; operator delete(void *)
7F5D6:  MOV             R0, R5; void *
7F5D8:  BLX             j__ZdlPv; operator delete(void *)
7F5DC:  B               loc_7F58E
