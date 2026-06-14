; =========================================================
; Game Engine Function: _ZN11CMenuSystem12SetDPadInputEhh
; Address            : 0x43D638 - 0x43D648
; =========================================================

43D638:  LDR             R2, =(MenuNumber_ptr - 0x43D63E)
43D63A:  ADD             R2, PC; MenuNumber_ptr
43D63C:  LDR             R2, [R2]; MenuNumber
43D63E:  LDR.W           R0, [R2,R0,LSL#2]
43D642:  STRB.W          R1, [R0,#0x3F9]
43D646:  BX              LR
