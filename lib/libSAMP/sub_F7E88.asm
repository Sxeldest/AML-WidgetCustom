; =========================================================
; Game Engine Function: sub_F7E88
; Address            : 0xF7E88 - 0xF7EB0
; =========================================================

F7E88:  PUSH            {R7,LR}
F7E8A:  MOV             R7, SP
F7E8C:  LDR             R2, [R0,#0xC]
F7E8E:  CBZ             R2, locret_F7EAE
F7E90:  VMOV            S0, R1
F7E94:  STR.W           R1, [R2,#0x544]
F7E98:  VCMP.F32        S0, #0.0
F7E9C:  VMRS            APSR_nzcv, FPSCR
F7EA0:  BHI             locret_F7EAE
F7EA2:  LDR             R2, =(unk_92D82 - 0xF7EAA)
F7EA4:  LDR             R1, [R0,#8]
F7EA6:  ADD             R2, PC; unk_92D82
F7EA8:  MOV             R0, R2
F7EAA:  BL              sub_107188
F7EAE:  POP             {R7,PC}
