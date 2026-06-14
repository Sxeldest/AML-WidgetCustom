; =========================================================
; Game Engine Function: sub_220928
; Address            : 0x220928 - 0x22093E
; =========================================================

220928:  PUSH            {R7,LR}
22092A:  MOV             R7, SP
22092C:  MOV             R3, R2
22092E:  MOV             R2, R1
220930:  MOV             R1, R0; s
220932:  LDR             R0, =(strtoull_ptr - 0x220938)
220934:  ADD             R0, PC; strtoull_ptr
220936:  LDR             R0, [R0]; __imp_strtoull ; int
220938:  BL              sub_220944
22093C:  POP             {R7,PC}
