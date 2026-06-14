; =========================================================
; Game Engine Function: sub_FD280
; Address            : 0xFD280 - 0xFD294
; =========================================================

FD280:  PUSH            {R4,R6,R7,LR}
FD282:  ADD             R7, SP, #8
FD284:  MOV             R4, R0
FD286:  LDR             R0, [R0]; void *
FD288:  CBZ             R0, loc_FD290
FD28A:  STR             R0, [R4,#4]
FD28C:  BLX             j__ZdlPv; operator delete(void *)
FD290:  MOV             R0, R4
FD292:  POP             {R4,R6,R7,PC}
