; =========================================================
; Game Engine Function: sub_FEF58
; Address            : 0xFEF58 - 0xFEF82
; =========================================================

FEF58:  PUSH            {R7,LR}
FEF5A:  MOV             R7, SP
FEF5C:  LDR             R1, =(off_25B138 - 0xFEF62)
FEF5E:  ADD             R1, PC; off_25B138
FEF60:  LDR             R1, [R1]
FEF62:  BLX             R1
FEF64:  CBZ             R0, loc_FEF68
FEF66:  POP             {R7,PC}
FEF68:  LDR             R0, =(off_23494C - 0xFEF76)
FEF6A:  MOV             R1, #0x3F8CA5
FEF72:  ADD             R0, PC; off_23494C
FEF74:  LDR             R0, [R0]; dword_23DF24
FEF76:  LDR             R0, [R0]
FEF78:  ADD             R1, R0
FEF7A:  MOVS            R0, #1
FEF7C:  POP.W           {R7,LR}
FEF80:  BX              R1
