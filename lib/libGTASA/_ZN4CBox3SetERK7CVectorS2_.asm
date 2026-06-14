; =========================================================
; Game Engine Function: _ZN4CBox3SetERK7CVectorS2_
; Address            : 0x2D95C8 - 0x2D95E2
; =========================================================

2D95C8:  VLDR            D16, [R1]
2D95CC:  LDR             R1, [R1,#8]
2D95CE:  STR             R1, [R0,#8]
2D95D0:  VSTR            D16, [R0]
2D95D4:  VLDR            D16, [R2]
2D95D8:  LDR             R1, [R2,#8]
2D95DA:  STR             R1, [R0,#0x14]
2D95DC:  VSTR            D16, [R0,#0xC]
2D95E0:  BX              LR
