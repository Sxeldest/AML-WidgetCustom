; =========================================================
; Game Engine Function: sub_F4CE8
; Address            : 0xF4CE8 - 0xF4D00
; =========================================================

F4CE8:  PUSH            {R4,R6,R7,LR}
F4CEA:  ADD             R7, SP, #8
F4CEC:  LDR             R1, [R0,#4]
F4CEE:  MOV             R4, R0
F4CF0:  BL              sub_F4D00
F4CF4:  LDR             R0, [R4]; void *
F4CF6:  CBZ             R0, loc_F4CFC
F4CF8:  BLX             j__ZdlPv; operator delete(void *)
F4CFC:  MOV             R0, R4
F4CFE:  POP             {R4,R6,R7,PC}
