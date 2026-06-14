; =========================================================
; Game Engine Function: _ZN17CBugstarInterface7SendMsgEjPvj
; Address            : 0x3BE5C4 - 0x3BE668
; =========================================================

3BE5C4:  PUSH            {R4-R7,LR}
3BE5C6:  ADD             R7, SP, #0xC
3BE5C8:  PUSH.W          {R8,R9,R11}
3BE5CC:  SUB             SP, SP, #0x10
3BE5CE:  MOV             R4, R0
3BE5D0:  STR             R1, [SP,#0x28+var_24]
3BE5D2:  LDRD.W          R0, R1, [R4,#4]
3BE5D6:  MOV             R9, R2
3BE5D8:  MOV             R6, R3
3BE5DA:  LDR             R2, [R0]
3BE5DC:  LDR             R3, [R2,#8]
3BE5DE:  ADD.W           R2, R4, #0x9A
3BE5E2:  BLX             R3
3BE5E4:  MOV             R1, R0
3BE5E6:  CMP             R1, #0
3BE5E8:  STR             R1, [R4,#0xC]
3BE5EA:  BEQ             loc_3BE65E
3BE5EC:  MOVS            R0, #4
3BE5EE:  MOVS            R3, #4
3BE5F0:  STR             R0, [SP,#0x28+var_1C]
3BE5F2:  LDR             R0, [R4,#4]
3BE5F4:  LDR             R2, [R0]
3BE5F6:  LDR             R5, [R2,#0x10]
3BE5F8:  ADD             R2, SP, #0x28+var_1C
3BE5FA:  BLX             R5
3BE5FC:  LDR             R0, [R4,#4]
3BE5FE:  LDR             R1, [R4,#0xC]
3BE600:  LDR             R3, [SP,#0x28+var_1C]
3BE602:  LDR             R2, [R0]
3BE604:  LDR             R5, [R2,#0x10]
3BE606:  ADD             R2, SP, #0x28+var_24
3BE608:  BLX             R5
3BE60A:  MOV.W           R8, #0
3BE60E:  MOVS            R3, #4
3BE610:  STR.W           R8, [SP,#0x28+var_20]
3BE614:  LDR             R0, [R4,#4]
3BE616:  LDR             R1, [R4,#0xC]
3BE618:  LDR             R2, [R0]
3BE61A:  LDR             R5, [R2,#0x10]
3BE61C:  ADD             R2, SP, #0x28+var_20
3BE61E:  BLX             R5
3BE620:  STR             R6, [SP,#0x28+var_1C]
3BE622:  MOVS            R3, #4
3BE624:  LDR             R0, [R4,#4]
3BE626:  LDR             R1, [R4,#0xC]
3BE628:  LDR             R2, [R0]
3BE62A:  LDR             R6, [R2,#0x10]
3BE62C:  ADD             R2, SP, #0x28+var_1C
3BE62E:  BLX             R6
3BE630:  LDR             R0, [R4,#4]
3BE632:  LDR             R1, [R4,#0xC]
3BE634:  LDR             R3, [SP,#0x28+var_1C]
3BE636:  LDR             R2, [R0]
3BE638:  LDR             R6, [R2,#0x10]
3BE63A:  MOV             R2, R9
3BE63C:  BLX             R6
3BE63E:  STR.W           R8, [SP,#0x28+var_20]
3BE642:  MOVS            R3, #4
3BE644:  LDR             R0, [R4,#4]
3BE646:  LDR             R1, [R4,#0xC]
3BE648:  LDR             R2, [R0]
3BE64A:  LDR             R6, [R2,#0x10]
3BE64C:  ADD             R2, SP, #0x28+var_20
3BE64E:  BLX             R6
3BE650:  LDR             R0, [R4,#4]
3BE652:  LDR             R1, [R4,#0xC]
3BE654:  LDR             R2, [R0]
3BE656:  LDR             R2, [R2,#0xC]
3BE658:  BLX             R2
3BE65A:  STR.W           R8, [R4,#0xC]
3BE65E:  MOVS            R0, #0
3BE660:  ADD             SP, SP, #0x10
3BE662:  POP.W           {R8,R9,R11}
3BE666:  POP             {R4-R7,PC}
