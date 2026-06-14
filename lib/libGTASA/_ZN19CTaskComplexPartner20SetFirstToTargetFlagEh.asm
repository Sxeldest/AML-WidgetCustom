; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner20SetFirstToTargetFlagEh
; Address            : 0x5347E0 - 0x5347EE
; =========================================================

5347E0:  LDRB.W          R2, [R0,#0x5A]
5347E4:  CMP             R2, #0xFF
5347E6:  IT EQ
5347E8:  STRBEQ.W        R1, [R0,#0x5A]
5347EC:  BX              LR
