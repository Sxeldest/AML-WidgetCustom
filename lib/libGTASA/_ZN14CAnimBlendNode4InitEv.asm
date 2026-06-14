; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode4InitEv
; Address            : 0x38A8D4 - 0x38A8E4
; =========================================================

38A8D4:  MOVS            R1, #0
38A8D6:  MOV.W           R2, #0xFFFFFFFF
38A8DA:  STRD.W          R2, R1, [R0,#8]
38A8DE:  STRD.W          R1, R1, [R0,#0x10]
38A8E2:  BX              LR
