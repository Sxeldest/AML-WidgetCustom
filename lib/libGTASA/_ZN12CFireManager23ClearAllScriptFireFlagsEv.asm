; =========================================================
; Game Engine Function: _ZN12CFireManager23ClearAllScriptFireFlagsEv
; Address            : 0x3F34C2 - 0x3F34D6
; =========================================================

3F34C2:  MOVS            R1, #0
3F34C4:  LDRB            R2, [R0,R1]
3F34C6:  AND.W           R2, R2, #0xFD
3F34CA:  STRB            R2, [R0,R1]
3F34CC:  ADDS            R1, #0x28 ; '('
3F34CE:  CMP.W           R1, #0x960
3F34D2:  BNE             loc_3F34C4
3F34D4:  BX              LR
