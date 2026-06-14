; =========================================================
; Game Engine Function: sub_2151C8
; Address            : 0x2151C8 - 0x2151DE
; =========================================================

2151C8:  PUSH            {R4,R6,R7,LR}
2151CA:  ADD             R7, SP, #8
2151CC:  MOV             R4, R0
2151CE:  BL              sub_2151F0
2151D2:  LDR             R0, [R4]; void *
2151D4:  CBZ             R0, loc_2151DA
2151D6:  BLX             j__ZdlPv; operator delete(void *)
2151DA:  MOV             R0, R4
2151DC:  POP             {R4,R6,R7,PC}
