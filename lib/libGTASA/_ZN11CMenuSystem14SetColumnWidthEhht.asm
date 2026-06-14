; =========================================================
; Game Engine Function: _ZN11CMenuSystem14SetColumnWidthEhht
; Address            : 0x43DB78 - 0x43DB94
; =========================================================

43DB78:  LDR             R3, =(MenuNumber_ptr - 0x43DB82)
43DB7A:  VMOV            S0, R2
43DB7E:  ADD             R3, PC; MenuNumber_ptr
43DB80:  VCVT.F32.U32    S0, S0
43DB84:  LDR             R2, [R3]; MenuNumber
43DB86:  LDR.W           R0, [R2,R0,LSL#2]
43DB8A:  ADD.W           R0, R0, R1,LSL#2
43DB8E:  VSTR            S0, [R0,#0x3FC]
43DB92:  BX              LR
