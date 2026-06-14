; =========================================================
; Game Engine Function: png_get_sBIT
; Address            : 0x1F3DC8 - 0x1F3DEE
; =========================================================

1F3DC8:  MOV             R3, R0
1F3DCA:  MOVS            R0, #0
1F3DCC:  CMP             R3, #0
1F3DCE:  IT EQ
1F3DD0:  BXEQ            LR
1F3DD2:  CMP             R1, #0
1F3DD4:  ITT NE
1F3DD6:  MOVNE           R0, #0
1F3DD8:  CMPNE           R2, #0
1F3DDA:  BEQ             locret_1F3DEC
1F3DDC:  LDR             R3, [R1,#8]
1F3DDE:  ANDS.W          R3, R3, #2
1F3DE2:  ITTT NE
1F3DE4:  ADDNE.W         R0, R1, #0x94
1F3DE8:  STRNE           R0, [R2]
1F3DEA:  MOVNE           R0, #2
1F3DEC:  BX              LR
