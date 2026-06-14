; =========================================================
; Game Engine Function: sub_F2CAE
; Address            : 0xF2CAE - 0xF2CD8
; =========================================================

F2CAE:  PUSH            {R4,R5,R7,LR}
F2CB0:  ADD             R7, SP, #8
F2CB2:  LDR             R5, [R0]
F2CB4:  MOV             R4, R0
F2CB6:  CBZ             R5, loc_F2CD4
F2CB8:  LDR             R0, [R4,#4]
F2CBA:  CMP             R0, R5
F2CBC:  BEQ             loc_F2CCC
F2CBE:  SUBS            R0, #8
F2CC0:  BL              sub_F2C78
F2CC4:  CMP             R0, R5
F2CC6:  BNE             loc_F2CBE
F2CC8:  LDR             R0, [R4]
F2CCA:  B               loc_F2CCE
F2CCC:  MOV             R0, R5; void *
F2CCE:  STR             R5, [R4,#4]
F2CD0:  BLX             j__ZdlPv; operator delete(void *)
F2CD4:  MOV             R0, R4
F2CD6:  POP             {R4,R5,R7,PC}
