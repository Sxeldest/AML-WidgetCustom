; =========================================================
; Game Engine Function: sub_1086A8
; Address            : 0x1086A8 - 0x1086CC
; =========================================================

1086A8:  PUSH            {R7,LR}
1086AA:  MOV             R7, SP
1086AC:  LDR             R2, =(off_23494C - 0x1086B2)
1086AE:  ADD             R2, PC; off_23494C
1086B0:  LDR             R2, [R2]; dword_23DF24
1086B2:  LDR             R2, [R2]
1086B4:  CBZ             R2, locret_1086CA
1086B6:  MOV             R3, #0x674F44
1086BE:  ADDS            R2, R2, R3
1086C0:  ITT NE
1086C2:  LDRNE           R2, [R2]
1086C4:  CMPNE           R2, #0
1086C6:  BEQ             locret_1086CA
1086C8:  BLX             R2
1086CA:  POP             {R7,PC}
