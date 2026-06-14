; =========================================================
; Game Engine Function: sub_17F990
; Address            : 0x17F990 - 0x17F9BC
; =========================================================

17F990:  PUSH            {R4,R5,R7,LR}
17F992:  ADD             R7, SP, #8
17F994:  LDR             R5, [R0,#4]
17F996:  MOV             R4, R0
17F998:  LDR             R0, [R5,#8]; void *
17F99A:  STR             R0, [R4,#8]
17F99C:  CMP             R0, R5
17F99E:  BEQ             loc_17F9B2
17F9A0:  LDR             R5, [R0,#8]
17F9A2:  BLX             j__ZdlPv; operator delete(void *)
17F9A6:  LDR             R0, [R4,#4]
17F9A8:  STR             R5, [R4,#8]
17F9AA:  CMP             R5, R0
17F9AC:  MOV             R0, R5
17F9AE:  BNE             loc_17F9A0
17F9B0:  CBZ             R5, loc_17F9B8
17F9B2:  MOV             R0, R5; void *
17F9B4:  BLX             j__ZdlPv; operator delete(void *)
17F9B8:  MOV             R0, R4
17F9BA:  POP             {R4,R5,R7,PC}
