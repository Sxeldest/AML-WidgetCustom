; =========================================================
; Game Engine Function: _ZN11CMenuSystem20SetHeaderOrientationEhhh
; Address            : 0x43DBB0 - 0x43DBC2
; =========================================================

43DBB0:  LDR             R3, =(MenuNumber_ptr - 0x43DBB6)
43DBB2:  ADD             R3, PC; MenuNumber_ptr
43DBB4:  LDR             R3, [R3]; MenuNumber
43DBB6:  LDR.W           R0, [R3,R0,LSL#2]
43DBBA:  ADD             R0, R1
43DBBC:  STRB.W          R2, [R0,#0x3F2]
43DBC0:  BX              LR
