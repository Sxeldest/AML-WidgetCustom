; =========================================================
; Game Engine Function: _ZN15CTouchInterface15SetEquippedItemENS_9WidgetIDsEi
; Address            : 0x2B2454 - 0x2B246A
; =========================================================

2B2454:  LDR             R2, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B245A)
2B2456:  ADD             R2, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2458:  LDR             R2, [R2]; CTouchInterface::m_pWidgets ...
2B245A:  LDR.W           R0, [R2,R0,LSL#2]
2B245E:  CMP             R0, #0
2B2460:  IT EQ
2B2462:  BXEQ            LR
2B2464:  LDR             R2, [R0]
2B2466:  LDR             R2, [R2,#0x68]
2B2468:  BX              R2
