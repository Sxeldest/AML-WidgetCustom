; =========================================================
; Game Engine Function: sub_17F9E8
; Address            : 0x17F9E8 - 0x17FA18
; =========================================================

17F9E8:  PUSH            {R4,R5,R7,LR}
17F9EA:  ADD             R7, SP, #8
17F9EC:  LDR             R5, [R0,#4]
17F9EE:  MOV             R4, R0
17F9F0:  LDR.W           R0, [R5,#0x120]; void *
17F9F4:  STR             R0, [R4,#8]
17F9F6:  CMP             R0, R5
17F9F8:  BEQ             loc_17FA0E
17F9FA:  LDR.W           R5, [R0,#0x120]
17F9FE:  BLX             j__ZdlPv; operator delete(void *)
17FA02:  LDR             R0, [R4,#4]
17FA04:  STR             R5, [R4,#8]
17FA06:  CMP             R5, R0
17FA08:  MOV             R0, R5
17FA0A:  BNE             loc_17F9FA
17FA0C:  CBZ             R5, loc_17FA14
17FA0E:  MOV             R0, R5; void *
17FA10:  BLX             j__ZdlPv; operator delete(void *)
17FA14:  MOV             R0, R4
17FA16:  POP             {R4,R5,R7,PC}
