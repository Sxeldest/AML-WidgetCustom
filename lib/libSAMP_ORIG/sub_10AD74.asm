; =========================================================
; Game Engine Function: sub_10AD74
; Address            : 0x10AD74 - 0x10AD8C
; =========================================================

10AD74:  PUSH            {R11,LR}
10AD78:  MOV             R11, SP
10AD7C:  LDR             R1, [R0]
10AD80:  LDR             R1, [R1,#0x20]
10AD84:  BLX             R1
10AD88:  POP             {R11,PC}
