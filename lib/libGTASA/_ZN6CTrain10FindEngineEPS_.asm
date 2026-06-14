; =========================================================
; Game Engine Function: _ZN6CTrain10FindEngineEPS_
; Address            : 0x57FEE8 - 0x57FEF6
; =========================================================

57FEE8:  MOV             R1, R0; CTrain *
57FEEA:  LDR.W           R0, [R1,#0x5E4]; this
57FEEE:  CMP             R0, #0
57FEF0:  BNE             _ZN6CTrain10FindEngineEPS_; CTrain::FindEngine(CTrain*)
57FEF2:  MOV             R0, R1
57FEF4:  BX              LR
