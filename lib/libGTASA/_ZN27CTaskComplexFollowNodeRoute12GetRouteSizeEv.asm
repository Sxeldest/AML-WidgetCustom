; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute12GetRouteSizeEv
; Address            : 0x51FD00 - 0x51FD0C
; =========================================================

51FD00:  LDR             R0, [R0,#0x30]
51FD02:  CMP             R0, #0
51FD04:  ITE NE
51FD06:  LDRNE           R0, [R0]
51FD08:  MOVEQ           R0, #0
51FD0A:  BX              LR
