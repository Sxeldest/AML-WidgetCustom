; =========================================================
; Game Engine Function: sub_1347AC
; Address            : 0x1347AC - 0x1347E0
; =========================================================

1347AC:  PUSH            {R4,R6,R7,LR}
1347AE:  ADD             R7, SP, #8
1347B0:  LDR             R4, [R0,#4]
1347B2:  LDRB.W          R0, [R4,#0x50]
1347B6:  CBZ             R0, loc_1347C2
1347B8:  LDR             R0, [R4]
1347BA:  MOVS            R1, #0
1347BC:  LDR             R2, [R0,#0x24]
1347BE:  MOV             R0, R4
1347C0:  BLX             R2
1347C2:  LDR             R0, =(off_23496C - 0x1347CE)
1347C4:  MOVS            R1, #0
1347C6:  STRB.W          R1, [R4,#0x50]
1347CA:  ADD             R0, PC; off_23496C
1347CC:  LDR             R0, [R0]; dword_23DEF4
1347CE:  LDR             R0, [R0]
1347D0:  CBZ             R0, locret_1347DE
1347D2:  LDR             R1, =(aAnims - 0x1347D8); "/anims" ...
1347D4:  ADD             R1, PC; "/anims"
1347D6:  POP.W           {R4,R6,R7,LR}
1347DA:  B.W             sub_144460
1347DE:  POP             {R4,R6,R7,PC}
