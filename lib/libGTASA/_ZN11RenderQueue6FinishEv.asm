; =========================================================
; Game Engine Function: _ZN11RenderQueue6FinishEv
; Address            : 0x1D21DC - 0x1D21F8
; =========================================================

1D21DC:  LDRB.W          R1, [R0,#0x258]
1D21E0:  CMP             R1, #0
1D21E2:  IT EQ
1D21E4:  BXEQ            LR
1D21E6:  LDR             R1, =(GraphicsFinishSemaphore_ptr - 0x1D21F2)
1D21E8:  MOVS            R2, #1
1D21EA:  STRB.W          R2, [R0,#0x26D]
1D21EE:  ADD             R1, PC; GraphicsFinishSemaphore_ptr
1D21F0:  LDR             R1, [R1]; GraphicsFinishSemaphore
1D21F2:  LDR             R0, [R1]; sem
1D21F4:  B.W             j_j__Z16OS_SemaphoreWaitPv; j_OS_SemaphoreWait(void *)
