; =========================================================
; Game Engine Function: _ZN9CIplStore22EnableDynamicStreamingEib
; Address            : 0x2811B8 - 0x2811D2
; =========================================================

2811B8:  LDR             R2, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x2811C4)
2811BA:  MOVS            R3, #0x34 ; '4'
2811BC:  EOR.W           R1, R1, #1
2811C0:  ADD             R2, PC; _ZN9CIplStore8ms_pPoolE_ptr
2811C2:  LDR             R2, [R2]; CIplStore::ms_pPool ...
2811C4:  LDR             R2, [R2]; CIplStore::ms_pPool
2811C6:  LDR             R2, [R2]
2811C8:  MLA.W           R0, R0, R3, R2
2811CC:  STRB.W          R1, [R0,#0x2F]
2811D0:  BX              LR
