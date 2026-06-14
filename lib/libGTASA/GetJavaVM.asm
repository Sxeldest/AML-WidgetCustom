; =========================================================
; Game Engine Function: GetJavaVM
; Address            : 0x2707F0 - 0x2707FA
; =========================================================

2707F0:  LDR             R0, =(globalVM_ptr - 0x2707F6)
2707F2:  ADD             R0, PC; globalVM_ptr
2707F4:  LDR             R0, [R0]; globalVM
2707F6:  LDR             R0, [R0]
2707F8:  BX              LR
