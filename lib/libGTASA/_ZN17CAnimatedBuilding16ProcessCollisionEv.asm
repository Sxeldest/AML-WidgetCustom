; =========================================================
; Game Engine Function: _ZN17CAnimatedBuilding16ProcessCollisionEv
; Address            : 0x280200 - 0x28020A
; =========================================================

280200:  LDR             R1, [R0,#0x1C]
280202:  ORR.W           R1, R1, #0x20 ; ' '
280206:  STR             R1, [R0,#0x1C]
280208:  BX              LR
