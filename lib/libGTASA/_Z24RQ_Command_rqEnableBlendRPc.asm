; =========================================================
; Game Engine Function: _Z24RQ_Command_rqEnableBlendRPc
; Address            : 0x1CFADE - 0x1CFAF6
; =========================================================

1CFADE:  LDR             R1, [R0]
1CFAE0:  LDR.W           R2, [R1],#4
1CFAE4:  STR             R1, [R0]
1CFAE6:  MOVW            R0, #0xBE2; cap
1CFAEA:  CMP             R2, #0
1CFAEC:  IT EQ
1CFAEE:  BEQ.W           j_glDisable
1CFAF2:  B.W             j_glEnable
