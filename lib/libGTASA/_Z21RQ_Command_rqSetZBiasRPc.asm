; =========================================================
; Game Engine Function: _Z21RQ_Command_rqSetZBiasRPc
; Address            : 0x1CFB22 - 0x1CFB3A
; =========================================================

1CFB22:  LDR             R1, [R0]
1CFB24:  LDR.W           R2, [R1],#4
1CFB28:  STR             R1, [R0]
1CFB2A:  MOVW            R0, #0x8037; cap
1CFB2E:  CMP             R2, #0
1CFB30:  IT EQ
1CFB32:  BEQ.W           j_glDisable
1CFB36:  B.W             j_glEnable
