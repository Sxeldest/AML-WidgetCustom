; =========================================================
; Game Engine Function: _ZNK14CCollisionData20GetShadTrianglePointER7CVectori
; Address            : 0x2E16AC - 0x2E16CE
; =========================================================

2E16AC:  LDR             R3, [R0,#0x28]
2E16AE:  ADD.W           R2, R2, R2,LSL#1
2E16B2:  LDR.W           R3, [R3,R2,LSL#2]
2E16B6:  STR             R3, [R1]
2E16B8:  LDR             R3, [R0,#0x28]
2E16BA:  ADD.W           R3, R3, R2,LSL#2
2E16BE:  LDR             R3, [R3,#4]
2E16C0:  STR             R3, [R1,#4]
2E16C2:  LDR             R0, [R0,#0x28]
2E16C4:  ADD.W           R0, R0, R2,LSL#2
2E16C8:  LDR             R0, [R0,#8]
2E16CA:  STR             R0, [R1,#8]
2E16CC:  BX              LR
