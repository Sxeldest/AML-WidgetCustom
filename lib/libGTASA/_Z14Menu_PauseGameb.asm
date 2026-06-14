; =========================================================
; Game Engine Function: _Z14Menu_PauseGameb
; Address            : 0x2A93E0 - 0x2A93EC
; =========================================================

2A93E0:  CMP             R0, #1
2A93E2:  IT NE
2A93E4:  BNE.W           j_j__ZN6CTimer12EndUserPauseEv; j_CTimer::EndUserPause(void)
2A93E8:  B.W             sub_196834
