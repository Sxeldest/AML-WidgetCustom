; =========================================================
; Game Engine Function: _ZN14CStreamingInfo4InitEv
; Address            : 0x2CF3B4 - 0x2CF3CC
; =========================================================

2CF3B4:  MOVS            R1, #0
2CF3B6:  MOV.W           R2, #0xFFFFFFFF
2CF3BA:  STRB            R1, [R0,#0x10]
2CF3BC:  STR             R2, [R0]
2CF3BE:  MOVW            R2, #0xFFFF
2CF3C2:  STRH            R2, [R0,#4]
2CF3C4:  STRB            R1, [R0,#7]
2CF3C6:  STRD.W          R1, R1, [R0,#8]
2CF3CA:  BX              LR
