; =========================================================
; Game Engine Function: sub_FD4FC
; Address            : 0xFD4FC - 0xFD512
; =========================================================

FD4FC:  PUSH            {R4,R6,R7,LR}
FD4FE:  ADD             R7, SP, #8
FD500:  MOV             R4, R0
FD502:  BL              sub_FD524
FD506:  LDR             R0, [R4]; void *
FD508:  CBZ             R0, loc_FD50E
FD50A:  BLX             j__ZdlPv; operator delete(void *)
FD50E:  MOV             R0, R4
FD510:  POP             {R4,R6,R7,PC}
