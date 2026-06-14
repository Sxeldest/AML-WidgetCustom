; =========================================================
; Game Engine Function: _ZN14CCollisionData10SetLinkPtrEP5CLinkIPS_E
; Address            : 0x2E16E4 - 0x2E16FC
; =========================================================

2E16E4:  LDRSH.W         R2, [R0,#4]
2E16E8:  LDR             R0, [R0,#0x1C]
2E16EA:  ADD.W           R2, R2, R2,LSL#2
2E16EE:  ADD.W           R0, R0, R2,LSL#2
2E16F2:  ADDS            R0, #3
2E16F4:  BIC.W           R0, R0, #3
2E16F8:  STR             R1, [R0]
2E16FA:  BX              LR
