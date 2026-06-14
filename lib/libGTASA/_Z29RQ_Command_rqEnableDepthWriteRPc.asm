; =========================================================
; Game Engine Function: _Z29RQ_Command_rqEnableDepthWriteRPc
; Address            : 0x1CFB0E - 0x1CFB22
; =========================================================

1CFB0E:  LDR             R1, [R0]
1CFB10:  LDR.W           R2, [R1],#4
1CFB14:  STR             R1, [R0]
1CFB16:  CMP             R2, #0
1CFB18:  ITE EQ
1CFB1A:  MOVEQ           R0, #0
1CFB1C:  MOVNE           R0, #1; flag
1CFB1E:  B.W             j_glDepthMask
