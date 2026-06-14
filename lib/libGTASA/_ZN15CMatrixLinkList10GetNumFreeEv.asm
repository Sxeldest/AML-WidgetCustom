; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList10GetNumFreeEv
; Address            : 0x408160 - 0x408178
; =========================================================

408160:  ADD.W           R1, R0, #0x1A4
408164:  LDR.W           R2, [R0,#0x1A0]
408168:  MOVS            R0, #0
40816A:  B               loc_408170
40816C:  LDR             R2, [R2,#0x50]
40816E:  ADDS            R0, #1
408170:  CMP             R2, R1
408172:  IT EQ
408174:  BXEQ            LR
408176:  B               loc_40816C
