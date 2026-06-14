; =========================================================
; Game Engine Function: sub_86B14
; Address            : 0x86B14 - 0x86B46
; =========================================================

86B14:  PUSH            {R4,R5,R7,LR}
86B16:  ADD             R7, SP, #8
86B18:  MOV             R4, R0
86B1A:  LDR             R0, [R0,#8]
86B1C:  CBZ             R0, loc_86B42
86B1E:  LDRD.W          R1, R0, [R4]; void *
86B22:  CMP             R0, R4
86B24:  LDR             R2, [R0]
86B26:  LDR             R3, [R1,#4]
86B28:  STR             R3, [R2,#4]
86B2A:  MOV.W           R3, #0
86B2E:  LDR             R1, [R1,#4]
86B30:  STR             R3, [R4,#8]
86B32:  STR             R2, [R1]
86B34:  BEQ             loc_86B42
86B36:  LDR             R5, [R0,#4]
86B38:  BLX             j__ZdlPv; operator delete(void *)
86B3C:  CMP             R5, R4
86B3E:  MOV             R0, R5
86B40:  BNE             loc_86B36
86B42:  MOV             R0, R4
86B44:  POP             {R4,R5,R7,PC}
