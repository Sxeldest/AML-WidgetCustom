; =========================================================
; Game Engine Function: _Z12RwFrameDirtyPK7RwFrame
; Address            : 0x1D81B4 - 0x1D81C0
; =========================================================

1D81B4:  LDR.W           R0, [R0,#0xA0]
1D81B8:  LDRB            R0, [R0,#3]
1D81BA:  AND.W           R0, R0, #3
1D81BE:  BX              LR
