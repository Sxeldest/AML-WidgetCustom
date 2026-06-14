; =========================================================
; Game Engine Function: png_convert_to_rfc1123
; Address            : 0x1EE244 - 0x1EE26A
; =========================================================

1EE244:  PUSH            {R4,R5,R7,LR}
1EE246:  ADD             R7, SP, #8
1EE248:  MOV             R5, R0
1EE24A:  CBZ             R5, loc_1EE264
1EE24C:  ADD.W           R4, R5, #0x2CC
1EE250:  MOV             R0, R4
1EE252:  BLX             j_png_convert_to_rfc1123_buffer
1EE256:  CBZ             R0, loc_1EE25C
1EE258:  MOV             R0, R4
1EE25A:  POP             {R4,R5,R7,PC}
1EE25C:  ADR             R1, aIgnoringInvali; "Ignoring invalid time value"
1EE25E:  MOV             R0, R5
1EE260:  BLX             j_png_warning
1EE264:  MOVS            R4, #0
1EE266:  MOV             R0, R4
1EE268:  POP             {R4,R5,R7,PC}
