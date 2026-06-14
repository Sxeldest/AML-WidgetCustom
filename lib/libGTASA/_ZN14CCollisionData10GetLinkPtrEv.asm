; =========================================================
; Game Engine Function: _ZN14CCollisionData10GetLinkPtrEv
; Address            : 0x2E16FC - 0x2E1714
; =========================================================

2E16FC:  LDRSH.W         R1, [R0,#4]
2E1700:  LDR             R0, [R0,#0x1C]
2E1702:  ADD.W           R1, R1, R1,LSL#2
2E1706:  ADD.W           R0, R0, R1,LSL#2
2E170A:  ADDS            R0, #3
2E170C:  BIC.W           R0, R0, #3
2E1710:  LDR             R0, [R0]
2E1712:  BX              LR
