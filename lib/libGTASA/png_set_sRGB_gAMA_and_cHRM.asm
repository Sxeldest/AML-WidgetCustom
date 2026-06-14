; =========================================================
; Game Engine Function: png_set_sRGB_gAMA_and_cHRM
; Address            : 0x2023B0 - 0x2023E8
; =========================================================

2023B0:  PUSH            {R4,R5,R7,LR}
2023B2:  ADD             R7, SP, #8
2023B4:  MOV             R5, R0
2023B6:  CMP             R5, #0
2023B8:  MOV             R4, R1
2023BA:  IT NE
2023BC:  CMPNE           R4, #0
2023BE:  BEQ             locret_2023E6
2023C0:  ADD.W           R1, R4, #0x28 ; '('
2023C4:  MOV             R0, R5
2023C6:  BLX             j_png_colorspace_set_sRGB
2023CA:  CMP             R0, #0
2023CC:  MOV             R1, R4
2023CE:  ITTT NE
2023D0:  LDRHNE.W        R0, [R4,#0x72]
2023D4:  ORRNE.W         R0, R0, #0x18
2023D8:  STRHNE.W        R0, [R4,#0x72]
2023DC:  MOV             R0, R5
2023DE:  POP.W           {R4,R5,R7,LR}
2023E2:  B.W             j_j_png_colorspace_sync_info
2023E6:  POP             {R4,R5,R7,PC}
