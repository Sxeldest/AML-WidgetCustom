; =========================================================
; Game Engine Function: _ZN11CMenuSystem20SetColumnOrientationEhhh
; Address            : 0x43DB98 - 0x43DBAA
; =========================================================

43DB98:  LDR             R3, =(MenuNumber_ptr - 0x43DB9E)
43DB9A:  ADD             R3, PC; MenuNumber_ptr
43DB9C:  LDR             R3, [R3]; MenuNumber
43DB9E:  LDR.W           R0, [R3,R0,LSL#2]
43DBA2:  ADD             R0, R1
43DBA4:  STRB.W          R2, [R0,#0x3EE]
43DBA8:  BX              LR
