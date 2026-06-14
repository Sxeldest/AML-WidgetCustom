; =========================================================
; Game Engine Function: sub_F2A92
; Address            : 0xF2A92 - 0xF2ABC
; =========================================================

F2A92:  PUSH            {R4,R5,R7,LR}
F2A94:  ADD             R7, SP, #8
F2A96:  LDR             R5, [R0]
F2A98:  MOV             R4, R0
F2A9A:  CBZ             R5, loc_F2AB8
F2A9C:  LDR             R0, [R4,#4]
F2A9E:  CMP             R0, R5
F2AA0:  BEQ             loc_F2AB0
F2AA2:  SUBS            R0, #8
F2AA4:  BL              sub_F2A5C
F2AA8:  CMP             R0, R5
F2AAA:  BNE             loc_F2AA2
F2AAC:  LDR             R0, [R4]
F2AAE:  B               loc_F2AB2
F2AB0:  MOV             R0, R5; void *
F2AB2:  STR             R5, [R4,#4]
F2AB4:  BLX             j__ZdlPv; operator delete(void *)
F2AB8:  MOV             R0, R4
F2ABA:  POP             {R4,R5,R7,PC}
