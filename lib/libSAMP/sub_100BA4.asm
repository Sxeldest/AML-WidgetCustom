; =========================================================
; Game Engine Function: sub_100BA4
; Address            : 0x100BA4 - 0x100BCE
; =========================================================

100BA4:  PUSH            {R4,R5,R7,LR}
100BA6:  ADD             R7, SP, #8
100BA8:  LDR             R5, [R0]
100BAA:  MOV             R4, R0
100BAC:  CBZ             R5, loc_100BCA
100BAE:  LDR             R0, [R4,#4]
100BB0:  CMP             R0, R5
100BB2:  BEQ             loc_100BC2
100BB4:  SUBS            R0, #8
100BB6:  BL              sub_100B6E
100BBA:  CMP             R0, R5
100BBC:  BNE             loc_100BB4
100BBE:  LDR             R0, [R4]
100BC0:  B               loc_100BC4
100BC2:  MOV             R0, R5; void *
100BC4:  STR             R5, [R4,#4]
100BC6:  BLX             j__ZdlPv; operator delete(void *)
100BCA:  MOV             R0, R4
100BCC:  POP             {R4,R5,R7,PC}
