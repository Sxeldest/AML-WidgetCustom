; =========================================================
; Game Engine Function: png_malloc_warn
; Address            : 0x1F41D8 - 0x1F4208
; =========================================================

1F41D8:  PUSH            {R4,R6,R7,LR}
1F41DA:  ADD             R7, SP, #8
1F41DC:  MOV             R4, R0
1F41DE:  CBZ             R4, loc_1F4204
1F41E0:  CBZ             R1, loc_1F41FA
1F41E2:  LDR.W           R2, [R4,#0x318]
1F41E6:  CBZ             R2, loc_1F41EE
1F41E8:  MOV             R0, R4
1F41EA:  BLX             R2
1F41EC:  B               loc_1F41F4
1F41EE:  MOV             R0, R1; byte_count
1F41F0:  BLX             malloc
1F41F4:  CMP             R0, #0
1F41F6:  IT NE
1F41F8:  POPNE           {R4,R6,R7,PC}
1F41FA:  LDR             R1, =(aOutOfMemory_0 - 0x1F4202); "Out of memory"
1F41FC:  MOV             R0, R4
1F41FE:  ADD             R1, PC; "Out of memory"
1F4200:  BLX             j_png_warning
1F4204:  MOVS            R0, #0
1F4206:  POP             {R4,R6,R7,PC}
