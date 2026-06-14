; =========================================================
; Game Engine Function: sub_1595DC
; Address            : 0x1595DC - 0x1595F2
; =========================================================

1595DC:  PUSH            {R4,R6,R7,LR}
1595DE:  ADD             R7, SP, #8
1595E0:  MOV             R4, R0
1595E2:  BL              sub_1595F2
1595E6:  LDR             R0, [R4]; void *
1595E8:  CBZ             R0, loc_1595EE
1595EA:  BLX             j__ZdlPv; operator delete(void *)
1595EE:  MOV             R0, R4
1595F0:  POP             {R4,R6,R7,PC}
