; =========================================================
; Game Engine Function: _Z28RQ_Command_rqEnableDepthReadRPc
; Address            : 0x1CFAF6 - 0x1CFB0E
; =========================================================

1CFAF6:  LDR             R1, [R0]
1CFAF8:  LDR.W           R2, [R1],#4
1CFAFC:  STR             R1, [R0]
1CFAFE:  MOVW            R0, #0xB71; cap
1CFB02:  CMP             R2, #0
1CFB04:  IT EQ
1CFB06:  BEQ.W           j_glDisable
1CFB0A:  B.W             j_glEnable
