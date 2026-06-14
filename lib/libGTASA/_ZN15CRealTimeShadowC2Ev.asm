; =========================================================
; Game Engine Function: _ZN15CRealTimeShadowC2Ev
; Address            : 0x5B7B9A - 0x5B7BB2
; =========================================================

5B7B9A:  MOVS            R2, #0
5B7B9C:  MOV.W           R1, #0xFFFFFFFF
5B7BA0:  STR             R2, [R0]
5B7BA2:  STRD.W          R1, R2, [R0,#0x18]
5B7BA6:  STR             R2, [R0,#0x10]
5B7BA8:  STRB            R2, [R0,#0xC]
5B7BAA:  STRB            R2, [R0,#0x14]
5B7BAC:  STRH            R2, [R0,#4]
5B7BAE:  STR             R2, [R0,#8]
5B7BB0:  BX              LR
