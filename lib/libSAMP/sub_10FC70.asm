; =========================================================
; Game Engine Function: sub_10FC70
; Address            : 0x10FC70 - 0x10FC9E
; =========================================================

10FC70:  PUSH            {R4,R5,R7,LR}
10FC72:  ADD             R7, SP, #8
10FC74:  MOV             R5, R0
10FC76:  LDR             R0, [R0,#8]
10FC78:  CMP             R0, R1
10FC7A:  BEQ             locret_10FC9C
10FC7C:  MOV             R4, R1
10FC7E:  SUB.W           R1, R0, #0x14
10FC82:  STR             R1, [R5,#8]
10FC84:  LDRB.W          R2, [R0,#-0x14]
10FC88:  LSLS            R2, R2, #0x1F
10FC8A:  BEQ             loc_10FC96
10FC8C:  LDR.W           R0, [R0,#-0xC]; void *
10FC90:  BLX             j__ZdlPv; operator delete(void *)
10FC94:  LDR             R1, [R5,#8]
10FC96:  CMP             R1, R4
10FC98:  MOV             R0, R1
10FC9A:  BNE             loc_10FC7E
10FC9C:  POP             {R4,R5,R7,PC}
