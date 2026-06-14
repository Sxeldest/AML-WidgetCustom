; =========================================================
; Game Engine Function: ReleaseALBuffers
; Address            : 0x1D66F4 - 0x1D6750
; =========================================================

1D66F4:  PUSH            {R4-R7,R11,LR}
1D66F8:  ADD             R11, SP, #0x10
1D66FC:  MOV             R4, R0
1D6700:  LDR             R0, [R4,#0x40]
1D6704:  CMP             R0, #1
1D6708:  POPLT           {R4-R7,R11,PC}
1D670C:  MOV             R6, #0
1D6710:  MOV             R7, #0
1D6714:  LDR             R0, [R4,#0x3C]
1D6718:  ADD             R0, R0, R7,LSL#3
1D671C:  LDR             R5, [R0,#4]
1D6720:  STR             R6, [R0,#4]
1D6724:  LDR             R0, [R5]; ptr
1D6728:  BL              free
1D672C:  LDR             R0, [R5,#0x44]
1D6730:  BL              j_FreeThunkEntry
1D6734:  MOV             R0, R5; ptr
1D6738:  BL              free
1D673C:  LDR             R0, [R4,#0x40]
1D6740:  ADD             R7, R7, #1
1D6744:  CMP             R7, R0
1D6748:  BLT             loc_1D6714
1D674C:  POP             {R4-R7,R11,PC}
