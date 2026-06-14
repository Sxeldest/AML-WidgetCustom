; =========================================================
; Game Engine Function: _Z14textureComparePKvS0_
; Address            : 0x1E99F8 - 0x1E9A14
; =========================================================

1E99F8:  MOVS            R2, #8
1E99FA:  LDR             R1, [R1]
1E99FC:  LDR             R2, [R2]
1E99FE:  LDR             R0, [R0]
1E9A00:  LDR.W           R1, [R2,R1,LSL#2]
1E9A04:  LDR.W           R2, [R2,R0,LSL#2]
1E9A08:  MOVS            R0, #1
1E9A0A:  CMP             R2, R1
1E9A0C:  IT CC
1E9A0E:  MOVCC.W         R0, #0xFFFFFFFF
1E9A12:  BX              LR
