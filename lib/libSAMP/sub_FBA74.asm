; =========================================================
; Game Engine Function: sub_FBA74
; Address            : 0xFBA74 - 0xFBA90
; =========================================================

FBA74:  PUSH            {R7,LR}
FBA76:  MOV             R7, SP
FBA78:  LDR             R0, =(off_247400 - 0xFBA7E)
FBA7A:  ADD             R0, PC; off_247400
FBA7C:  LDR             R0, [R0]
FBA7E:  BLX             R0
FBA80:  LDR             R0, =(dword_2473B0 - 0xFBA86)
FBA82:  ADD             R0, PC; dword_2473B0
FBA84:  BL              sub_FBA98
FBA88:  POP.W           {R7,LR}
FBA8C:  B.W             sub_F0B60
