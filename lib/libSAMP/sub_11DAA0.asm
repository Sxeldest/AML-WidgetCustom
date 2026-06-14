; =========================================================
; Game Engine Function: sub_11DAA0
; Address            : 0x11DAA0 - 0x11DAB6
; =========================================================

11DAA0:  PUSH            {R4,R6,R7,LR}
11DAA2:  ADD             R7, SP, #8
11DAA4:  MOV             R4, R0
11DAA6:  LDR             R0, [R0,#4]
11DAA8:  CBZ             R0, loc_11DAB2
11DAAA:  BL              sub_11DC38
11DAAE:  BLX             j__ZdlPv; operator delete(void *)
11DAB2:  MOV             R0, R4
11DAB4:  POP             {R4,R6,R7,PC}
