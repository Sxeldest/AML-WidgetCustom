; =========================================================
; Game Engine Function: sub_120848
; Address            : 0x120848 - 0x12085E
; =========================================================

120848:  PUSH            {R4,R6,R7,LR}
12084A:  ADD             R7, SP, #8
12084C:  MOV             R4, R0
12084E:  LDR             R0, [R0,#4]
120850:  CBZ             R0, loc_12085A
120852:  BL              sub_120A40
120856:  BLX             j__ZdlPv; operator delete(void *)
12085A:  MOV             R0, R4
12085C:  POP             {R4,R6,R7,PC}
