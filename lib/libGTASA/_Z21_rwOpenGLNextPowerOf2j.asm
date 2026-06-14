; =========================================================
; Game Engine Function: _Z21_rwOpenGLNextPowerOf2j
; Address            : 0x1AE8C0 - 0x1AE8DA
; =========================================================

1AE8C0:  SUBS            R0, #1
1AE8C2:  ORR.W           R0, R0, R0,LSR#16
1AE8C6:  ORR.W           R0, R0, R0,LSR#8
1AE8CA:  ORR.W           R0, R0, R0,LSR#4
1AE8CE:  ORR.W           R0, R0, R0,LSR#2
1AE8D2:  ORR.W           R0, R0, R0,LSR#1
1AE8D6:  ADDS            R0, #1
1AE8D8:  BX              LR
