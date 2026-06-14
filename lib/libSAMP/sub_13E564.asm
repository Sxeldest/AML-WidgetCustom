; =========================================================
; Game Engine Function: sub_13E564
; Address            : 0x13E564 - 0x13E590
; =========================================================

13E564:  PUSH            {R4,R5,R7,LR}
13E566:  ADD             R7, SP, #8
13E568:  MOV             R4, R0
13E56A:  LDRD.W          R5, R0, [R0,#4]
13E56E:  CMP             R0, R5
13E570:  BEQ             loc_13E584
13E572:  SUB.W           R1, R0, #0x3C ; '<'
13E576:  SUBS            R0, #4
13E578:  STR             R1, [R4,#8]
13E57A:  MOVS            R1, #0
13E57C:  BL              sub_13E4F0
13E580:  LDR             R0, [R4,#8]
13E582:  B               loc_13E56E
13E584:  LDR             R0, [R4]; void *
13E586:  CBZ             R0, loc_13E58C
13E588:  BLX             j__ZdlPv; operator delete(void *)
13E58C:  MOV             R0, R4
13E58E:  POP             {R4,R5,R7,PC}
