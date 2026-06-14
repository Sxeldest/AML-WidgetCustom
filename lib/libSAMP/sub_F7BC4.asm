; =========================================================
; Game Engine Function: sub_F7BC4
; Address            : 0xF7BC4 - 0xF7BDA
; =========================================================

F7BC4:  PUSH            {R4,R6,R7,LR}
F7BC6:  ADD             R7, SP, #8
F7BC8:  MOV             R4, R0
F7BCA:  BL              sub_F7BDA
F7BCE:  LDR             R0, [R4]; void *
F7BD0:  CBZ             R0, loc_F7BD6
F7BD2:  BLX             j__ZdlPv; operator delete(void *)
F7BD6:  MOV             R0, R4
F7BD8:  POP             {R4,R6,R7,PC}
