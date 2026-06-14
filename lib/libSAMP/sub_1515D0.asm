; =========================================================
; Game Engine Function: sub_1515D0
; Address            : 0x1515D0 - 0x15160A
; =========================================================

1515D0:  PUSH            {R4,R5,R7,LR}
1515D2:  ADD             R7, SP, #8
1515D4:  SUB             SP, SP, #0x10
1515D6:  MOV             R2, R1
1515D8:  MOV             R1, R0
1515DA:  ADD             R0, SP, #0x18+var_14
1515DC:  LDR             R4, [R2]
1515DE:  BL              sub_15160A
1515E2:  LDR             R5, [SP,#0x18+var_14]
1515E4:  MOVS            R0, #0
1515E6:  STR             R0, [SP,#0x18+var_14]
1515E8:  CBZ             R5, loc_151604
1515EA:  LDRB.W          R0, [SP,#0x18+var_C]
1515EE:  CBZ             R0, loc_1515FE
1515F0:  LDR             R0, [R5,#0xC]
1515F2:  MOVS            R1, #0
1515F4:  STR             R1, [R5,#0xC]
1515F6:  CBZ             R0, loc_1515FE
1515F8:  LDR             R1, [R0]
1515FA:  LDR             R1, [R1,#4]
1515FC:  BLX             R1
1515FE:  MOV             R0, R5; void *
151600:  BLX             j__ZdlPv; operator delete(void *)
151604:  MOV             R0, R4
151606:  ADD             SP, SP, #0x10
151608:  POP             {R4,R5,R7,PC}
