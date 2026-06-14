; =========================================================
; Game Engine Function: sub_DCCD0
; Address            : 0xDCCD0 - 0xDCCDE
; =========================================================

DCCD0:  LDR             R1, [R0,#8]
DCCD2:  CMP.W           R1, #0x100
DCCD6:  IT EQ
DCCD8:  BEQ.W           sub_DCCDE
DCCDC:  BX              LR
