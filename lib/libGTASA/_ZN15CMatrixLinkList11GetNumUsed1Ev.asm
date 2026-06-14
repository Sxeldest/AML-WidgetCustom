; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList11GetNumUsed1Ev
; Address            : 0x408178 - 0x40818E
; =========================================================

408178:  ADD.W           R1, R0, #0x54 ; 'T'
40817C:  LDR             R2, [R0,#0x50]
40817E:  MOVS            R0, #0
408180:  B               loc_408186
408182:  LDR             R2, [R2,#0x50]
408184:  ADDS            R0, #1
408186:  CMP             R2, R1
408188:  IT EQ
40818A:  BXEQ            LR
40818C:  B               loc_408182
