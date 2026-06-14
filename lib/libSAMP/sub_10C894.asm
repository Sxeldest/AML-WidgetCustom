; =========================================================
; Game Engine Function: sub_10C894
; Address            : 0x10C894 - 0x10C8A6
; =========================================================

10C894:  PUSH            {R4,R6,R7,LR}
10C896:  ADD             R7, SP, #8
10C898:  MOV             R4, R0
10C89A:  LDR             R0, [R0,#4]; void *
10C89C:  CBZ             R0, loc_10C8A2
10C89E:  BLX             j__ZdlPv; operator delete(void *)
10C8A2:  MOV             R0, R4
10C8A4:  POP             {R4,R6,R7,PC}
