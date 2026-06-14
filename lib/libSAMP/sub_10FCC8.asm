; =========================================================
; Game Engine Function: sub_10FCC8
; Address            : 0x10FCC8 - 0x10FCDA
; =========================================================

10FCC8:  PUSH            {R4,R6,R7,LR}
10FCCA:  ADD             R7, SP, #8
10FCCC:  MOV             R4, R0
10FCCE:  LDR             R0, [R0,#4]; void *
10FCD0:  CBZ             R0, loc_10FCD6
10FCD2:  BLX             j__ZdlPv; operator delete(void *)
10FCD6:  MOV             R0, R4
10FCD8:  POP             {R4,R6,R7,PC}
