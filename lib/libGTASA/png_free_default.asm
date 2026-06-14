; =========================================================
; Game Engine Function: png_free_default
; Address            : 0x1F420C - 0x1F421A
; =========================================================

1F420C:  CMP             R0, #0
1F420E:  ITTT NE
1F4210:  CMPNE           R1, #0
1F4212:  MOVNE           R0, R1; p
1F4214:  BNE.W           j_free
1F4218:  BX              LR
