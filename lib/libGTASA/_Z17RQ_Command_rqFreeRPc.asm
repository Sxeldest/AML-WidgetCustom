; =========================================================
; Game Engine Function: _Z17RQ_Command_rqFreeRPc
; Address            : 0x1D1FB0 - 0x1D1FBE
; =========================================================

1D1FB0:  LDR             R2, [R0]
1D1FB2:  LDR.W           R1, [R2],#4
1D1FB6:  STR             R2, [R0]
1D1FB8:  MOV             R0, R1; p
1D1FBA:  B.W             j_free
