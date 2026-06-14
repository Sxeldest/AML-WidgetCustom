; =========================================================
; Game Engine Function: sub_108DC8
; Address            : 0x108DC8 - 0x108DF2
; =========================================================

108DC8:  MOVW            R1, #0x4E20
108DCC:  CMP             R0, R1
108DCE:  BHI             loc_108DEE
108DD0:  LDR             R1, =(off_23494C - 0x108DDE)
108DD2:  MOV             R2, #0x6796D4
108DDA:  ADD             R1, PC; off_23494C
108DDC:  LDR             R1, [R1]; dword_23DF24
108DDE:  LDR             R1, [R1]
108DE0:  LDR             R1, [R1,R2]
108DE2:  LDR.W           R0, [R1,R0,LSL#2]
108DE6:  CBZ             R0, loc_108DEE
108DE8:  LDR             R1, [R0]
108DEA:  LDR             R1, [R1,#0x2C]
108DEC:  BX              R1
108DEE:  MOVS            R0, #0
108DF0:  BX              LR
