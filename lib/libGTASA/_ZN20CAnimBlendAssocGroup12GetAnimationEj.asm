; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup12GetAnimationEj
; Address            : 0x389818 - 0x389828
; =========================================================

389818:  LDR             R2, [R0,#4]
38981A:  LDR             R0, [R0,#0xC]
38981C:  SUBS            R0, R1, R0
38981E:  ADD.W           R0, R0, R0,LSL#2
389822:  ADD.W           R0, R2, R0,LSL#2
389826:  BX              LR
