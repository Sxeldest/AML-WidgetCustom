; =========================================================
; Game Engine Function: _Z12OS_FileFlushPv
; Address            : 0x2676AE - 0x2676BC
; =========================================================

2676AE:  LDRB            R1, [R0,#8]
2676B0:  CMP             R1, #0
2676B2:  IT NE
2676B4:  BNE.W           j_j__ZN11AndroidFile10AsyncFlushEv; j_AndroidFile::AsyncFlush(void)
2676B8:  MOVS            R0, #0
2676BA:  BX              LR
