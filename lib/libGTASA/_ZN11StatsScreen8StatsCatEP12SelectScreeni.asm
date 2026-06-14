; =========================================================
; Game Engine Function: _ZN11StatsScreen8StatsCatEP12SelectScreeni
; Address            : 0x2A5FDC - 0x2A5FF8
; =========================================================

2A5FDC:  LDR             R2, [R0,#0x38]
2A5FDE:  CMP             R2, R1
2A5FE0:  IT EQ
2A5FE2:  BXEQ            LR
2A5FE4:  MOVS            R2, #0xC3480000
2A5FEA:  STRD.W          R2, R1, [R0,#0x34]
2A5FEE:  ADD.W           R0, R1, #0xE
2A5FF2:  MOVS            R1, #1
2A5FF4:  B.W             j_j__Z11AddMenuStat8MenuStati; j_AddMenuStat(MenuStat,int)
