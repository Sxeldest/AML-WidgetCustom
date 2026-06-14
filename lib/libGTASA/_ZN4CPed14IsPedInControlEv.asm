; =========================================================
; Game Engine Function: _ZN4CPed14IsPedInControlEv
; Address            : 0x4A1860 - 0x4A1884
; =========================================================

4A1860:  LDRB.W          R1, [R0,#0x485]
4A1864:  TST.W           R1, #6
4A1868:  BNE             loc_4A1876
4A186A:  LDR.W           R1, [R0,#0x44C]
4A186E:  BIC.W           R0, R1, #1
4A1872:  CMP             R0, #0x36 ; '6'
4A1874:  BNE             loc_4A187A
4A1876:  MOVS            R0, #0
4A1878:  BX              LR
4A187A:  MOVS            R0, #0
4A187C:  CMP             R1, #0x3F ; '?'
4A187E:  IT NE
4A1880:  MOVNE           R0, #1
4A1882:  BX              LR
