; =========================================================
; Game Engine Function: sub_7F514
; Address            : 0x7F514 - 0x7F55C
; =========================================================

7F514:  PUSH            {R4-R7,LR}
7F516:  ADD             R7, SP, #0xC
7F518:  PUSH.W          {R11}
7F51C:  LDR             R5, [R0]
7F51E:  MOV             R4, R0
7F520:  CBZ             R5, loc_7F554
7F522:  LDR             R6, [R4,#4]
7F524:  MOV             R0, R5
7F526:  CMP             R6, R5
7F528:  BNE             loc_7F53A
7F52A:  B               loc_7F54E
7F52C:  MOVS            R1, #4
7F52E:  LDR             R2, [R0]
7F530:  LDR.W           R1, [R2,R1,LSL#2]
7F534:  BLX             R1
7F536:  CMP             R6, R5
7F538:  BEQ             loc_7F54C
7F53A:  LDR.W           R0, [R6,#-8]
7F53E:  SUBS            R6, #0x18
7F540:  CMP             R6, R0
7F542:  BEQ             loc_7F52C
7F544:  CMP             R0, #0
7F546:  BEQ             loc_7F536
7F548:  MOVS            R1, #5
7F54A:  B               loc_7F52E
7F54C:  LDR             R0, [R4]; void *
7F54E:  STR             R5, [R4,#4]
7F550:  BLX             j__ZdlPv; operator delete(void *)
7F554:  MOV             R0, R4
7F556:  POP.W           {R11}
7F55A:  POP             {R4-R7,PC}
