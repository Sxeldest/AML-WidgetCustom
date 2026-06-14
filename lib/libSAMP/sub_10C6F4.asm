; =========================================================
; Game Engine Function: sub_10C6F4
; Address            : 0x10C6F4 - 0x10C718
; =========================================================

10C6F4:  PUSH            {R4,R6,R7,LR}
10C6F6:  ADD             R7, SP, #8
10C6F8:  SUB             SP, SP, #0x10
10C6FA:  MOV             R2, R1
10C6FC:  MOV             R1, R0
10C6FE:  ADD             R0, SP, #0x18+var_14
10C700:  LDR             R4, [R2]
10C702:  BL              sub_10C718
10C706:  LDR             R0, [SP,#0x18+var_14]; void *
10C708:  MOVS            R1, #0
10C70A:  STR             R1, [SP,#0x18+var_14]
10C70C:  CBZ             R0, loc_10C712
10C70E:  BLX             j__ZdlPv; operator delete(void *)
10C712:  MOV             R0, R4
10C714:  ADD             SP, SP, #0x10
10C716:  POP             {R4,R6,R7,PC}
