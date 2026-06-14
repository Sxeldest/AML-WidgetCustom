; =========================================================
; Game Engine Function: png_create_info_struct
; Address            : 0x1EDCA4 - 0x1EDCCC
; =========================================================

1EDCA4:  PUSH            {R4,R6,R7,LR}
1EDCA6:  ADD             R7, SP, #8
1EDCA8:  CBZ             R0, loc_1EDCC6
1EDCAA:  MOV.W           R1, #0x118; byte_count
1EDCAE:  BLX             j_png_malloc_base
1EDCB2:  MOV             R4, R0
1EDCB4:  CMP             R4, #0
1EDCB6:  ITTT NE
1EDCB8:  MOVNE           R0, R4
1EDCBA:  MOVNE.W         R1, #0x118
1EDCBE:  BLXNE           j___aeabi_memclr8_0
1EDCC2:  MOV             R0, R4
1EDCC4:  POP             {R4,R6,R7,PC}
1EDCC6:  MOVS            R4, #0
1EDCC8:  MOV             R0, R4
1EDCCA:  POP             {R4,R6,R7,PC}
