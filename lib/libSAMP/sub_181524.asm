; =========================================================
; Game Engine Function: sub_181524
; Address            : 0x181524 - 0x181592
; =========================================================

181524:  PUSH            {R4-R7,LR}
181526:  ADD             R7, SP, #0xC
181528:  PUSH.W          {R8,R9,R11}
18152C:  MOV             R4, R0
18152E:  LDRD.W          R5, R0, [R0,#4]
181532:  MOV             R8, R1
181534:  CMP             R5, R0
181536:  BNE             loc_181582
181538:  MOVW            R1, #0xFFFE
18153C:  LSLS            R0, R5, #1
18153E:  MOVT            R1, #0x3FFF
181542:  CMP             R5, #0
181544:  IT EQ
181546:  MOVEQ           R0, #0x10
181548:  ANDS            R1, R0
18154A:  STR             R0, [R4,#8]
18154C:  SUBS            R1, R0, R1
18154E:  MOV.W           R0, R0,LSL#2
181552:  IT NE
181554:  MOVNE           R1, #1
181556:  CMP             R1, #0
181558:  IT NE
18155A:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18155E:  BLX             j__Znaj; operator new[](uint)
181562:  LDR.W           R9, [R4]
181566:  LSLS            R2, R5, #2; n
181568:  MOV             R6, R0
18156A:  MOV             R1, R9; src
18156C:  BLX             j_memcpy
181570:  CMP.W           R9, #0
181574:  BEQ             loc_18157E
181576:  MOV             R0, R9; void *
181578:  BLX             j__ZdaPv; operator delete[](void *)
18157C:  LDR             R5, [R4,#4]
18157E:  STR             R6, [R4]
181580:  B               loc_181584
181582:  LDR             R6, [R4]
181584:  ADDS            R0, R5, #1
181586:  STR.W           R8, [R6,R5,LSL#2]
18158A:  STR             R0, [R4,#4]
18158C:  POP.W           {R8,R9,R11}
181590:  POP             {R4-R7,PC}
