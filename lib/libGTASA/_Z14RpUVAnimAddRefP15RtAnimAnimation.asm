; =========================================================
; Game Engine Function: _Z14RpUVAnimAddRefP15RtAnimAnimation
; Address            : 0x1CA2CC - 0x1CA2D6
; =========================================================

1CA2CC:  LDR             R1, [R0,#0x14]
1CA2CE:  LDR             R2, [R1,#0x40]
1CA2D0:  ADDS            R2, #1
1CA2D2:  STR             R2, [R1,#0x40]
1CA2D4:  BX              LR
