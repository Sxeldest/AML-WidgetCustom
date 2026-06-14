; =========================================================
; Game Engine Function: al_free
; Address            : 0x23CEE0 - 0x23CEF2
; =========================================================

23CEE0:  CMP             R0, #0
23CEE2:  IT EQ
23CEE4:  BXEQ            LR
23CEE6:  LDRB.W          R1, [R0,#-1]!; p
23CEEA:  CMP             R1, #0x55 ; 'U'
23CEEC:  BEQ             loc_23CEE6
23CEEE:  B.W             j_free
