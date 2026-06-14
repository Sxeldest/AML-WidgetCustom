; =========================================================
; Game Engine Function: sub_F4D2E
; Address            : 0xF4D2E - 0xF4D48
; =========================================================

F4D2E:  PUSH            {R4,R6,R7,LR}
F4D30:  ADD             R7, SP, #8
F4D32:  MOV             R4, R0
F4D34:  LDR             R0, [R0]
F4D36:  CBZ             R0, loc_F4D44
F4D38:  MOV             R0, R4
F4D3A:  BL              sub_F4D48
F4D3E:  LDR             R0, [R4]; void *
F4D40:  BLX             j__ZdlPv; operator delete(void *)
F4D44:  MOV             R0, R4
F4D46:  POP             {R4,R6,R7,PC}
