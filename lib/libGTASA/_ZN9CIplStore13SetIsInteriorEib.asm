; =========================================================
; Game Engine Function: _ZN9CIplStore13SetIsInteriorEib
; Address            : 0x280874 - 0x28088A
; =========================================================

280874:  LDR             R2, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28087C)
280876:  MOVS            R3, #0x34 ; '4'
280878:  ADD             R2, PC; _ZN9CIplStore8ms_pPoolE_ptr
28087A:  LDR             R2, [R2]; CIplStore::ms_pPool ...
28087C:  LDR             R2, [R2]; CIplStore::ms_pPool
28087E:  LDR             R2, [R2]
280880:  MLA.W           R0, R0, R3, R2
280884:  STRB.W          R1, [R0,#0x2C]
280888:  BX              LR
