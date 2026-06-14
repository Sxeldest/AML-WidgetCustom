; =========================================================
; Game Engine Function: png_set_sRGB
; Address            : 0x202388 - 0x2023B0
; =========================================================

202388:  PUSH            {R4,R5,R7,LR}
20238A:  ADD             R7, SP, #8
20238C:  MOV             R5, R0
20238E:  CMP             R5, #0
202390:  MOV             R4, R1
202392:  IT NE
202394:  CMPNE           R4, #0
202396:  BNE             loc_20239A
202398:  POP             {R4,R5,R7,PC}
20239A:  ADD.W           R1, R4, #0x28 ; '('
20239E:  MOV             R0, R5
2023A0:  BLX             j_png_colorspace_set_sRGB
2023A4:  MOV             R0, R5
2023A6:  MOV             R1, R4
2023A8:  POP.W           {R4,R5,R7,LR}
2023AC:  B.W             j_j_png_colorspace_sync_info
