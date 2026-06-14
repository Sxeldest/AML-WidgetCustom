; =========================================================
; Game Engine Function: sub_E5ECC
; Address            : 0xE5ECC - 0xE5EF6
; =========================================================

E5ECC:  PUSH            {R4,R5,R7,LR}
E5ECE:  ADD             R7, SP, #8
E5ED0:  LDR             R5, [R0]
E5ED2:  MOV             R4, R0
E5ED4:  CBZ             R5, loc_E5EF2
E5ED6:  LDR             R0, [R4,#4]
E5ED8:  MOV             R1, R5
E5EDA:  CMP             R0, R5
E5EDC:  BEQ             loc_E5EEA
E5EDE:  SUBS            R0, #0x10
E5EE0:  BL              sub_E3F7A
E5EE4:  CMP             R0, R5
E5EE6:  BNE             loc_E5EDE
E5EE8:  LDR             R1, [R4]
E5EEA:  MOV             R0, R1; void *
E5EEC:  STR             R5, [R4,#4]
E5EEE:  BLX             j__ZdlPv; operator delete(void *)
E5EF2:  MOV             R0, R4
E5EF4:  POP             {R4,R5,R7,PC}
