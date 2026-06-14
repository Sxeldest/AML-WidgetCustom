; =========================================================
; Game Engine Function: sub_FCAA4
; Address            : 0xFCAA4 - 0xFCAB8
; =========================================================

FCAA4:  PUSH            {R4,R6,R7,LR}
FCAA6:  ADD             R7, SP, #8
FCAA8:  MOV             R4, R0
FCAAA:  LDR             R0, [R0]; void *
FCAAC:  CBZ             R0, loc_FCAB4
FCAAE:  STR             R0, [R4,#4]
FCAB0:  BLX             j__ZdlPv; operator delete(void *)
FCAB4:  MOV             R0, R4
FCAB6:  POP             {R4,R6,R7,PC}
