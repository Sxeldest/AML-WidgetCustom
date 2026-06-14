; =========================================================
; Game Engine Function: _Z22RxClusterGetAttributesP9RxCluster
; Address            : 0x1DE8A0 - 0x1DE8AC
; =========================================================

1DE8A0:  CMP             R0, #0
1DE8A2:  ITE NE
1DE8A4:  LDRNE           R0, [R0,#0x18]
1DE8A6:  MOVEQ.W         R0, #0xFFFFFFFF
1DE8AA:  BX              LR
