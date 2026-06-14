; =========================================================
; Game Engine Function: _Z21RQ_Command_rqShutdownRPc
; Address            : 0x1CC550 - 0x1CC570
; =========================================================

1CC550:  PUSH            {R7,LR}
1CC552:  MOV             R7, SP
1CC554:  LDR             R0, =(rqVendor_ptr - 0x1CC55A)
1CC556:  ADD             R0, PC; rqVendor_ptr
1CC558:  LDR             R0, [R0]; rqVendor
1CC55A:  LDR             R0, [R0]; p
1CC55C:  BLX             free
1CC560:  LDR             R0, =(rqRenderer_ptr - 0x1CC566)
1CC562:  ADD             R0, PC; rqRenderer_ptr
1CC564:  LDR             R0, [R0]; rqRenderer
1CC566:  LDR             R0, [R0]; p
1CC568:  POP.W           {R7,LR}
1CC56C:  B.W             j_free
