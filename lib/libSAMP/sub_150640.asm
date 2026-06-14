; =========================================================
; Game Engine Function: sub_150640
; Address            : 0x150640 - 0x15066E
; =========================================================

150640:  PUSH            {R4,R5,R7,LR}
150642:  ADD             R7, SP, #8
150644:  MOV             R4, R1
150646:  LDR             R1, [R1]
150648:  LDR             R5, [R4,#4]
15064A:  LDR             R3, [R0,#8]
15064C:  STR             R5, [R1,#4]
15064E:  LDR             R2, [R4,#4]
150650:  STR             R1, [R2]
150652:  SUBS            R1, R3, #1
150654:  STR             R1, [R0,#8]
150656:  MOVS            R1, #0
150658:  LDR             R0, [R4,#8]
15065A:  STR             R1, [R4,#8]
15065C:  CBZ             R0, loc_150664
15065E:  LDR             R1, [R0]
150660:  LDR             R1, [R1,#4]
150662:  BLX             R1
150664:  MOV             R0, R4; void *
150666:  BLX             j__ZdlPv; operator delete(void *)
15066A:  MOV             R0, R5
15066C:  POP             {R4,R5,R7,PC}
