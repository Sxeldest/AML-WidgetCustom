; =========================================================
; Game Engine Function: _ZN15CAEStreamThread5PauseEv
; Address            : 0x3AA490 - 0x3AA496
; =========================================================

3AA490:  LDR             R0, [R0,#0xC]; mutex
3AA492:  B.W             j_j__Z14OS_MutexObtainPv; j_OS_MutexObtain(void *)
