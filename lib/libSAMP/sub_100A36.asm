; =========================================================
; Game Engine Function: sub_100A36
; Address            : 0x100A36 - 0x100A66
; =========================================================

100A36:  PUSH            {R4,R5,R7,LR}
100A38:  ADD             R7, SP, #8
100A3A:  MOV             R4, R0
100A3C:  LDR             R0, [R0,#8]
100A3E:  CBZ             R0, locret_100A64
100A40:  LDRD.W          R1, R0, [R4]; void *
100A44:  CMP             R0, R4
100A46:  LDR             R2, [R0]
100A48:  LDR             R3, [R1,#4]
100A4A:  STR             R3, [R2,#4]
100A4C:  MOV.W           R3, #0
100A50:  LDR             R1, [R1,#4]
100A52:  STR             R3, [R4,#8]
100A54:  STR             R2, [R1]
100A56:  BEQ             locret_100A64
100A58:  LDR             R5, [R0,#4]
100A5A:  BLX             j__ZdlPv; operator delete(void *)
100A5E:  CMP             R5, R4
100A60:  MOV             R0, R5
100A62:  BNE             loc_100A58
100A64:  POP             {R4,R5,R7,PC}
