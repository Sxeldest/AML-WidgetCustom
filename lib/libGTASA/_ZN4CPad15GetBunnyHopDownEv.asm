; =========================================================
; Game Engine Function: _ZN4CPad15GetBunnyHopDownEv
; Address            : 0x3FBBEA - 0x3FBC06
; =========================================================

3FBBEA:  LDRH.W          R1, [R0,#0x110]
3FBBEE:  CMP             R1, #0
3FBBF0:  ITT EQ
3FBBF2:  LDRBEQ.W        R0, [R0,#0x132]
3FBBF6:  CMPEQ           R0, #0
3FBBF8:  BEQ             loc_3FBBFE
3FBBFA:  MOVS            R0, #0
3FBBFC:  BX              LR
3FBBFE:  MOVS            R0, #0x5F ; '_'
3FBC00:  MOVS            R1, #0
3FBC02:  B.W             sub_196BF4
