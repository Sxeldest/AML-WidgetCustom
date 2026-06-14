; =========================================================
; Game Engine Function: png_set_gAMA
; Address            : 0x201B1C - 0x201B56
; =========================================================

201B1C:  PUSH            {R4,R5,R7,LR}
201B1E:  ADD             R7, SP, #8
201B20:  SUB             SP, SP, #8
201B22:  MOV             R5, R0
201B24:  ADR             R0, aPngSetGama_0; "png_set_gAMA"
201B26:  STR             R0, [SP,#0x10+var_10]
201B28:  MOV             R0, R5
201B2A:  MOV             R4, R1
201B2C:  BLX             j_png_fixed
201B30:  CMP             R5, #0
201B32:  MOV             R2, R0
201B34:  IT NE
201B36:  CMPNE           R4, #0
201B38:  BNE             loc_201B3E
201B3A:  ADD             SP, SP, #8
201B3C:  POP             {R4,R5,R7,PC}
201B3E:  ADD.W           R1, R4, #0x28 ; '('
201B42:  MOV             R0, R5
201B44:  BLX             j_png_colorspace_set_gamma
201B48:  MOV             R0, R5
201B4A:  MOV             R1, R4
201B4C:  ADD             SP, SP, #8
201B4E:  POP.W           {R4,R5,R7,LR}
201B52:  B.W             j_j_png_colorspace_sync_info
