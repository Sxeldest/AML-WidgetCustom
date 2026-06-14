; =========================================================
; Game Engine Function: sub_FD294
; Address            : 0xFD294 - 0xFD2A8
; =========================================================

FD294:  PUSH            {R4,R6,R7,LR}
FD296:  ADD             R7, SP, #8
FD298:  MOV             R4, R0
FD29A:  LDR             R0, [R0]; void *
FD29C:  CBZ             R0, loc_FD2A4
FD29E:  STR             R0, [R4,#4]
FD2A0:  BLX             j__ZdlPv; operator delete(void *)
FD2A4:  MOV             R0, R4
FD2A6:  POP             {R4,R6,R7,PC}
