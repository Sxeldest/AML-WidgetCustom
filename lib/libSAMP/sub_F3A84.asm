; =========================================================
; Game Engine Function: sub_F3A84
; Address            : 0xF3A84 - 0xF3AA2
; =========================================================

F3A84:  PUSH            {R4,R5,R7,LR}
F3A86:  ADD             R7, SP, #8
F3A88:  LDR             R5, [R0,#4]
F3A8A:  MOV             R4, R0
F3A8C:  CBZ             R5, loc_F3A9E
F3A8E:  LDR             R0, [R5]; void *
F3A90:  CBZ             R0, loc_F3A98
F3A92:  STR             R0, [R5,#4]
F3A94:  BLX             j__ZdlPv; operator delete(void *)
F3A98:  MOV             R0, R5; void *
F3A9A:  BLX             j__ZdlPv; operator delete(void *)
F3A9E:  MOV             R0, R4
F3AA0:  POP             {R4,R5,R7,PC}
