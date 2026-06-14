; =========================================================
; Game Engine Function: _ZNK14CCollisionData16GetTrianglePointER7CVectori
; Address            : 0x2E168A - 0x2E16AC
; =========================================================

2E168A:  LDR             R3, [R0,#0x14]
2E168C:  ADD.W           R2, R2, R2,LSL#1
2E1690:  LDR.W           R3, [R3,R2,LSL#2]
2E1694:  STR             R3, [R1]
2E1696:  LDR             R3, [R0,#0x14]
2E1698:  ADD.W           R3, R3, R2,LSL#2
2E169C:  LDR             R3, [R3,#4]
2E169E:  STR             R3, [R1,#4]
2E16A0:  LDR             R0, [R0,#0x14]
2E16A2:  ADD.W           R0, R0, R2,LSL#2
2E16A6:  LDR             R0, [R0,#8]
2E16A8:  STR             R0, [R1,#8]
2E16AA:  BX              LR
