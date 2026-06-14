; =========================================================
; Game Engine Function: _Z24LIB_PointerDoubleClickedii
; Address            : 0x2701E4 - 0x27020C
; =========================================================

2701E4:  CMP             R0, #1
2701E6:  IT LE
2701E8:  CMPLE           R1, #2
2701EA:  BGT             loc_270208
2701EC:  LDR             R2, =(pointers_ptr - 0x2701F6)
2701EE:  RSB.W           R0, R0, R0,LSL#3
2701F2:  ADD             R2, PC; pointers_ptr
2701F4:  LDR             R2, [R2]; pointers
2701F6:  ADD.W           R0, R2, R0,LSL#4
2701FA:  ADD             R0, R1
2701FC:  LDRB.W          R0, [R0,#0x34]
270200:  CMP             R0, #0
270202:  ITT NE
270204:  MOVNE           R0, #1
270206:  BXNE            LR
270208:  MOVS            R0, #0
27020A:  BX              LR
