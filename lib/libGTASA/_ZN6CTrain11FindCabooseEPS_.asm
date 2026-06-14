; =========================================================
; Game Engine Function: _ZN6CTrain11FindCabooseEPS_
; Address            : 0x57FEDA - 0x57FEE8
; =========================================================

57FEDA:  MOV             R1, R0; CTrain *
57FEDC:  LDR.W           R0, [R1,#0x5E8]; this
57FEE0:  CMP             R0, #0
57FEE2:  BNE             _ZN6CTrain11FindCabooseEPS_; CTrain::FindCaboose(CTrain*)
57FEE4:  MOV             R0, R1
57FEE6:  BX              LR
