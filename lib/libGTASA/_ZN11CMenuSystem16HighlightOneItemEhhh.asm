; =========================================================
; Game Engine Function: _ZN11CMenuSystem16HighlightOneItemEhhh
; Address            : 0x43D5E8 - 0x43D608
; =========================================================

43D5E8:  LDR             R3, =(MenuNumber_ptr - 0x43D5EE)
43D5EA:  ADD             R3, PC; MenuNumber_ptr
43D5EC:  LDR.W           R12, [R3]; MenuNumber
43D5F0:  LDR.W           R3, [R12,R0,LSL#2]
43D5F4:  ADD             R3, R1
43D5F6:  STRB.W          R2, [R3,#0x3E2]
43D5FA:  LDR.W           R0, [R12,R0,LSL#2]
43D5FE:  ADD             R0, R1
43D600:  MOVS            R1, #1
43D602:  STRB.W          R1, [R0,#0x3D6]
43D606:  BX              LR
