; =========================================================
; Game Engine Function: _ZN11CMenuSystem17SetActiveMenuItemEha
; Address            : 0x43DBC8 - 0x43DBD8
; =========================================================

43DBC8:  LDR             R2, =(MenuNumber_ptr - 0x43DBCE)
43DBCA:  ADD             R2, PC; MenuNumber_ptr
43DBCC:  LDR             R2, [R2]; MenuNumber
43DBCE:  LDR.W           R0, [R2,R0,LSL#2]
43DBD2:  STRB.W          R1, [R0,#0x415]
43DBD6:  BX              LR
