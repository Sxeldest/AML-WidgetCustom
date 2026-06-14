; =========================================================
; Game Engine Function: sub_73FC0
; Address            : 0x73FC0 - 0x73FD0
; =========================================================

73FC0:  PUSH            {R7,LR}
73FC2:  MOV             R7, SP
73FC4:  BL              sub_6C880
73FC8:  LDR             R1, =(dword_1A44D8 - 0x73FCE)
73FCA:  ADD             R1, PC; dword_1A44D8
73FCC:  STR             R0, [R1]
73FCE:  POP             {R7,PC}
