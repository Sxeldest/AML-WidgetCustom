; =========================================================
; Game Engine Function: _Z24LIB_ClearInputNextUpdatev
; Address            : 0x2702F4 - 0x270300
; =========================================================

2702F4:  LDR             R0, =(clearInputNextUpdate_ptr - 0x2702FC)
2702F6:  MOVS            R1, #1
2702F8:  ADD             R0, PC; clearInputNextUpdate_ptr
2702FA:  LDR             R0, [R0]; clearInputNextUpdate
2702FC:  STRB            R1, [R0]
2702FE:  BX              LR
