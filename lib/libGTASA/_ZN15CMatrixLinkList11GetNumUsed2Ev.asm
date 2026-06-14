; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList11GetNumUsed2Ev
; Address            : 0x40818E - 0x4081A6
; =========================================================

40818E:  ADD.W           R1, R0, #0xFC
408192:  LDR.W           R2, [R0,#0xF8]
408196:  MOVS            R0, #0
408198:  B               loc_40819E
40819A:  LDR             R2, [R2,#0x50]
40819C:  ADDS            R0, #1
40819E:  CMP             R2, R1
4081A0:  IT EQ
4081A2:  BXEQ            LR
4081A4:  B               loc_40819A
