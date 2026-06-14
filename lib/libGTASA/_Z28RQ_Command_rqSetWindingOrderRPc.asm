; =========================================================
; Game Engine Function: _Z28RQ_Command_rqSetWindingOrderRPc
; Address            : 0x1CFABE - 0x1CFADE
; =========================================================

1CFABE:  LDR             R1, [R0]
1CFAC0:  LDR.W           R2, [R1],#4
1CFAC4:  STR             R1, [R0]
1CFAC6:  MOVW            R0, #0x901
1CFACA:  CMP             R2, #1
1CFACC:  IT EQ
1CFACE:  MOVEQ.W         R0, #0x900
1CFAD2:  CMP             R2, #0
1CFAD4:  IT EQ
1CFAD6:  MOVWEQ          R0, #0x901; mode
1CFADA:  B.W             j_glFrontFace
