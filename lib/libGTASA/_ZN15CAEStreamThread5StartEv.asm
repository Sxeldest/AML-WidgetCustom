; =========================================================
; Game Engine Function: _ZN15CAEStreamThread5StartEv
; Address            : 0x3AA45A - 0x3AA466
; =========================================================

3AA45A:  LDR             R1, [R0,#8]
3AA45C:  MOVS            R2, #1
3AA45E:  STRB            R2, [R0,#0x19]
3AA460:  MOV             R0, R1; sem
3AA462:  B.W             j_j__Z16OS_SemaphorePostPv; j_OS_SemaphorePost(void *)
