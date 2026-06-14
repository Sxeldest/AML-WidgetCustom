; =========================================================
; Game Engine Function: _Z22RQ_Command_rqDepthFuncRPc
; Address            : 0x1CFBD0 - 0x1CFBE8
; =========================================================

1CFBD0:  LDR             R1, [R0]
1CFBD2:  LDR.W           R2, [R1],#4
1CFBD6:  STR             R1, [R0]
1CFBD8:  MOVW            R0, #0x207
1CFBDC:  CMP             R2, #8
1CFBDE:  IT CC
1CFBE0:  ADDCC.W         R0, R2, #0x200; func
1CFBE4:  B.W             j_glDepthFunc
