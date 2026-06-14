; =========================================================
; Game Engine Function: png_zalloc
; Address            : 0x1ED9C8 - 0x1EDA08
; =========================================================

1ED9C8:  PUSH            {R4-R7,LR}
1ED9CA:  ADD             R7, SP, #0xC
1ED9CC:  PUSH.W          {R11}
1ED9D0:  MOV             R4, R0
1ED9D2:  MOV             R5, R2
1ED9D4:  MOV             R6, R1
1ED9D6:  CBZ             R4, loc_1EDA00
1ED9D8:  MOV.W           R0, #0xFFFFFFFF
1ED9DC:  MOV             R1, R5
1ED9DE:  BLX             __aeabi_uidiv
1ED9E2:  CMP             R0, R6
1ED9E4:  BLS             loc_1ED9F8
1ED9E6:  MUL.W           R1, R5, R6; byte_count
1ED9EA:  MOV             R0, R4; int
1ED9EC:  POP.W           {R11}
1ED9F0:  POP.W           {R4-R7,LR}
1ED9F4:  B.W             j_j_png_malloc_warn
1ED9F8:  ADR             R1, aPotentialOverf; "Potential overflow in png_zalloc()"
1ED9FA:  MOV             R0, R4
1ED9FC:  BLX             j_png_warning
1EDA00:  MOVS            R0, #0
1EDA02:  POP.W           {R11}
1EDA06:  POP             {R4-R7,PC}
