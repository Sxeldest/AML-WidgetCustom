; =========================================================
; Game Engine Function: _ZN33CTaskSimpleTogglePedThreatScanner10ProcessPedEP4CPed
; Address            : 0x4EFA8C - 0x4EFAA0
; =========================================================

4EFA8C:  LDR.W           R1, [R1,#0x440]
4EFA90:  LDRB            R2, [R0,#0xA]
4EFA92:  LDRH            R0, [R0,#8]
4EFA94:  STRH.W          R0, [R1,#0x248]
4EFA98:  MOVS            R0, #1
4EFA9A:  STRB.W          R2, [R1,#0x24A]
4EFA9E:  BX              LR
