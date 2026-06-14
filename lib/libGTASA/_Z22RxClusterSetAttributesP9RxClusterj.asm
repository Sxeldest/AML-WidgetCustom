; =========================================================
; Game Engine Function: _Z22RxClusterSetAttributesP9RxClusterj
; Address            : 0x1DE8AC - 0x1DE8B6
; =========================================================

1DE8AC:  CMP             R0, #0
1DE8AE:  ITE NE
1DE8B0:  STRNE           R1, [R0,#0x18]
1DE8B2:  MOVEQ           R0, #0
1DE8B4:  BX              LR
