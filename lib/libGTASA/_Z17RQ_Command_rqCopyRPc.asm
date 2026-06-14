; =========================================================
; Game Engine Function: _Z17RQ_Command_rqCopyRPc
; Address            : 0x1D1FBE - 0x1D1FE6
; =========================================================

1D1FBE:  PUSH            {R7,LR}
1D1FC0:  MOV             R7, SP
1D1FC2:  LDR             R2, [R0]
1D1FC4:  ADDS            R1, R2, #4
1D1FC6:  ADD.W           R3, R2, #8
1D1FCA:  MOV             LR, R2
1D1FCC:  LDR.W           R12, [LR],#0xC
1D1FD0:  STR             R1, [R0]
1D1FD2:  LDR             R1, [R2,#4]; void *
1D1FD4:  STR             R3, [R0]
1D1FD6:  LDR             R2, [R2,#8]; size_t
1D1FD8:  STR.W           LR, [R0]
1D1FDC:  MOV             R0, R12; void *
1D1FDE:  POP.W           {R7,LR}
1D1FE2:  B.W             j_memcpy_1
