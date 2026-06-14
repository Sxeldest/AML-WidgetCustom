; =========================================================
; Game Engine Function: sub_11ABAC
; Address            : 0x11ABAC - 0x11ABCA
; =========================================================

11ABAC:  PUSH            {R7,LR}
11ABAE:  MOV             R7, SP
11ABB0:  BL              sub_11ABD0
11ABB4:  LDR             R0, =(unk_263570 - 0x11ABBA)
11ABB6:  ADD             R0, PC; unk_263570
11ABB8:  LDR             R0, [R0,#(dword_263580 - 0x263570)]
11ABBA:  CBZ             R0, loc_11ABC6
11ABBC:  LDR             R1, [R0]
11ABBE:  LDR             R1, [R1,#0x18]
11ABC0:  POP.W           {R7,LR}
11ABC4:  BX              R1
11ABC6:  BL              sub_DC92C
