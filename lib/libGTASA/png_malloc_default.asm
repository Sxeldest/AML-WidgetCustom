; =========================================================
; Game Engine Function: png_malloc_default
; Address            : 0x1F41A4 - 0x1F41C6
; =========================================================

1F41A4:  PUSH            {R4,R6,R7,LR}
1F41A6:  ADD             R7, SP, #8
1F41A8:  MOV             R4, R0
1F41AA:  CBZ             R4, loc_1F41C2
1F41AC:  CBZ             R1, loc_1F41BA
1F41AE:  MOV             R0, R1; byte_count
1F41B0:  BLX             malloc
1F41B4:  CMP             R0, #0
1F41B6:  IT NE
1F41B8:  POPNE           {R4,R6,R7,PC}
1F41BA:  ADR             R1, aOutOfMemory; "Out of Memory"
1F41BC:  MOV             R0, R4
1F41BE:  BLX             j_png_error
1F41C2:  MOVS            R0, #0
1F41C4:  POP             {R4,R6,R7,PC}
