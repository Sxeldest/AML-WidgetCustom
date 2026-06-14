; =========================================================
; Game Engine Function: sub_151518
; Address            : 0x151518 - 0x151556
; =========================================================

151518:  PUSH            {R4-R7,LR}
15151A:  ADD             R7, SP, #0xC
15151C:  PUSH.W          {R11}
151520:  LDRD.W          R5, R1, [R0,#4]
151524:  MOV             R4, R0
151526:  CMP             R1, R5
151528:  BEQ             loc_151546
15152A:  MOVS            R6, #0
15152C:  SUBS            R0, R1, #4
15152E:  STR             R0, [R4,#8]
151530:  LDR.W           R0, [R1,#-4]
151534:  STR.W           R6, [R1,#-4]
151538:  CBZ             R0, loc_151540
15153A:  LDR             R1, [R0]
15153C:  LDR             R1, [R1,#4]
15153E:  BLX             R1
151540:  LDR             R1, [R4,#8]
151542:  CMP             R1, R5
151544:  BNE             loc_15152C
151546:  LDR             R0, [R4]; void *
151548:  CBZ             R0, loc_15154E
15154A:  BLX             j__ZdlPv; operator delete(void *)
15154E:  MOV             R0, R4
151550:  POP.W           {R11}
151554:  POP             {R4-R7,PC}
