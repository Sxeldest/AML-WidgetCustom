; =========================================================
; Game Engine Function: png_read_rows
; Address            : 0x1F5DFC - 0x1F5E64
; =========================================================

1F5DFC:  PUSH            {R4-R7,LR}
1F5DFE:  ADD             R7, SP, #0xC
1F5E00:  PUSH.W          {R8}
1F5E04:  MOV             R8, R0
1F5E06:  MOV             R4, R3
1F5E08:  MOV             R6, R2
1F5E0A:  MOV             R5, R1
1F5E0C:  CMP.W           R8, #0
1F5E10:  BEQ             loc_1F5E5E
1F5E12:  CMP             R5, #0
1F5E14:  IT NE
1F5E16:  CMPNE           R6, #0
1F5E18:  BEQ             loc_1F5E30
1F5E1A:  CBZ             R4, loc_1F5E5E
1F5E1C:  LDR.W           R2, [R6],#4
1F5E20:  MOV             R0, R8
1F5E22:  LDR.W           R1, [R5],#4
1F5E26:  BLX             j_png_read_row
1F5E2A:  SUBS            R4, #1
1F5E2C:  BNE             loc_1F5E1C
1F5E2E:  B               loc_1F5E5E
1F5E30:  CBZ             R5, loc_1F5E46
1F5E32:  CBZ             R4, loc_1F5E5E
1F5E34:  LDR.W           R1, [R5],#4
1F5E38:  MOV             R0, R8
1F5E3A:  MOVS            R2, #0
1F5E3C:  BLX             j_png_read_row
1F5E40:  SUBS            R4, #1
1F5E42:  BNE             loc_1F5E34
1F5E44:  B               loc_1F5E5E
1F5E46:  CMP             R6, #0
1F5E48:  IT NE
1F5E4A:  CMPNE           R4, #0
1F5E4C:  BEQ             loc_1F5E5E
1F5E4E:  LDR.W           R2, [R6],#4
1F5E52:  MOV             R0, R8
1F5E54:  MOVS            R1, #0
1F5E56:  BLX             j_png_read_row
1F5E5A:  SUBS            R4, #1
1F5E5C:  BNE             loc_1F5E4E
1F5E5E:  POP.W           {R8}
1F5E62:  POP             {R4-R7,PC}
