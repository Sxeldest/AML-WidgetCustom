; =========================================================
; Game Engine Function: sub_220828
; Address            : 0x220828 - 0x22083E
; =========================================================

220828:  PUSH            {R7,LR}
22082A:  MOV             R7, SP
22082C:  MOV             R3, R2
22082E:  MOV             R2, R1
220830:  MOV             R1, R0; s
220832:  LDR             R0, =(strtoll_ptr - 0x220838)
220834:  ADD             R0, PC; strtoll_ptr
220836:  LDR             R0, [R0]; __imp_strtoll ; int
220838:  BL              sub_220844
22083C:  POP             {R7,PC}
