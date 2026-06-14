; =========================================================
; Game Engine Function: sub_FD250
; Address            : 0xFD250 - 0xFD278
; =========================================================

FD250:  PUSH            {R7,LR}
FD252:  MOV             R7, SP
FD254:  LDR             R0, =(off_247504 - 0xFD25A)
FD256:  ADD             R0, PC; off_247504
FD258:  LDR             R0, [R0]
FD25A:  BLX             R0
FD25C:  LDR             R0, =(off_23496C - 0xFD262)
FD25E:  ADD             R0, PC; off_23496C
FD260:  LDR             R0, [R0]; dword_23DEF4
FD262:  LDR             R0, [R0]
FD264:  CBZ             R0, locret_FD276
FD266:  LDR.W           R0, [R0,#0x3B0]
FD26A:  LDR             R0, [R0]
FD26C:  CBZ             R0, locret_FD276
FD26E:  POP.W           {R7,LR}
FD272:  B.W             sub_149074
FD276:  POP             {R7,PC}
