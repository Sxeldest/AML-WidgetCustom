; =========================================================
; Game Engine Function: sub_F8EC0
; Address            : 0xF8EC0 - 0xF8EEA
; =========================================================

F8EC0:  LDR             R0, [R0,#4]
F8EC2:  CBZ             R0, locret_F8EE8
F8EC4:  LDR             R2, =(off_23494C - 0xF8ECC)
F8EC6:  LDR             R3, [R0]
F8EC8:  ADD             R2, PC; off_23494C
F8ECA:  LDR             R2, [R2]; dword_23DF24
F8ECC:  LDR.W           R12, [R2]
F8ED0:  MOV             R2, #0x667D24
F8ED8:  ADD             R2, R12
F8EDA:  CMP             R3, R2
F8EDC:  ITTTT NE
F8EDE:  LDRNE           R2, [R0,#0x1C]
F8EE0:  BICNE.W         R2, R2, #1
F8EE4:  ADDNE           R1, R2
F8EE6:  STRNE           R1, [R0,#0x1C]
F8EE8:  BX              LR
