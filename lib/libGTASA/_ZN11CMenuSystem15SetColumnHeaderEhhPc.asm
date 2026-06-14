; =========================================================
; Game Engine Function: _ZN11CMenuSystem15SetColumnHeaderEhhPc
; Address            : 0x43D60C - 0x43D632
; =========================================================

43D60C:  LDR             R3, =(MenuNumber_ptr - 0x43D618)
43D60E:  ADD.W           R1, R1, R1,LSL#2
43D612:  CMP             R2, #0
43D614:  ADD             R3, PC; MenuNumber_ptr
43D616:  LDR             R3, [R3]; MenuNumber
43D618:  LDR.W           R0, [R3,R0,LSL#2]
43D61C:  ADD.W           R0, R0, R1,LSL#1
43D620:  ADD.W           R0, R0, #0x3A4; char *
43D624:  ITT NE
43D626:  MOVNE           R1, R2; char *
43D628:  BNE.W           j_strcpy
43D62C:  MOVS            R1, #0
43D62E:  STRB            R1, [R0]
43D630:  BX              LR
