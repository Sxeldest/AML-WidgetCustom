; =========================================================
; Game Engine Function: _Z15OS_SystemDevicev
; Address            : 0x26BB64 - 0x26BB6E
; =========================================================

26BB64:  LDR             R0, =(definedDevice_ptr - 0x26BB6A)
26BB66:  ADD             R0, PC; definedDevice_ptr
26BB68:  LDR             R0, [R0]; definedDevice
26BB6A:  LDR             R0, [R0]
26BB6C:  BX              LR
