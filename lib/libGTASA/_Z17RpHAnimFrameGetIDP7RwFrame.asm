; =========================================================
; Game Engine Function: _Z17RpHAnimFrameGetIDP7RwFrame
; Address            : 0x1C2C80 - 0x1C2C8C
; =========================================================

1C2C80:  LDR             R1, =(RpHAnimAtomicGlobals_ptr - 0x1C2C86)
1C2C82:  ADD             R1, PC; RpHAnimAtomicGlobals_ptr
1C2C84:  LDR             R1, [R1]; RpHAnimAtomicGlobals
1C2C86:  LDR             R1, [R1]
1C2C88:  LDR             R0, [R0,R1]
1C2C8A:  BX              LR
