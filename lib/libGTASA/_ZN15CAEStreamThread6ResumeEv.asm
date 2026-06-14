; =========================================================
; Game Engine Function: _ZN15CAEStreamThread6ResumeEv
; Address            : 0x3AA496 - 0x3AA49C
; =========================================================

3AA496:  LDR             R0, [R0,#0xC]; mutex
3AA498:  B.W             j_j__Z15OS_MutexReleasePv; j_OS_MutexRelease(void *)
