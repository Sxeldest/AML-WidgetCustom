; =========================================================
; Game Engine Function: sub_F559C
; Address            : 0xF559C - 0xF55B2
; =========================================================

F559C:  PUSH            {R4,R6,R7,LR}
F559E:  ADD             R7, SP, #8
F55A0:  MOV             R4, R0
F55A2:  LDR             R0, [R0,#4]
F55A4:  CBZ             R0, loc_F55AE
F55A6:  BL              sub_F582C
F55AA:  BLX             j__ZdlPv; operator delete(void *)
F55AE:  MOV             R0, R4
F55B0:  POP             {R4,R6,R7,PC}
