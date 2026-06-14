; =========================================================
; Game Engine Function: sub_F32C8
; Address            : 0xF32C8 - 0xF32DE
; =========================================================

F32C8:  PUSH            {R4,R6,R7,LR}
F32CA:  ADD             R7, SP, #8
F32CC:  MOV             R4, R0
F32CE:  LDR             R0, [R0,#4]
F32D0:  CBZ             R0, loc_F32DA
F32D2:  BL              sub_F3810
F32D6:  BLX             j__ZdlPv; operator delete(void *)
F32DA:  MOV             R0, R4
F32DC:  POP             {R4,R6,R7,PC}
