; =========================================================
; Game Engine Function: sub_F6104
; Address            : 0xF6104 - 0xF6132
; =========================================================

F6104:  PUSH            {R7,LR}
F6106:  MOV             R7, SP
F6108:  MOV             R1, R0
F610A:  LDR             R0, =(off_23494C - 0xF6110)
F610C:  ADD             R0, PC; off_23494C
F610E:  LDR             R0, [R0]; dword_23DF24
F6110:  LDR             R2, [R0]
F6112:  MOVS            R0, #0
F6114:  CBZ             R2, locret_F612C
F6116:  MOV             R3, #0x670424
F611E:  ADDS            R2, R2, R3
F6120:  IT EQ
F6122:  POPEQ           {R7,PC}
F6124:  LDR             R2, [R2]
F6126:  CBZ             R2, loc_F612E
F6128:  MOV             R0, R1
F612A:  BLX             R2
F612C:  POP             {R7,PC}
F612E:  MOVS            R0, #0
F6130:  POP             {R7,PC}
