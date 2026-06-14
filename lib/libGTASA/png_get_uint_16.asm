; =========================================================
; Game Engine Function: png_get_uint_16
; Address            : 0x1FD592 - 0x1FD59C
; =========================================================

1FD592:  LDRB            R1, [R0]
1FD594:  LDRB            R0, [R0,#1]
1FD596:  ORR.W           R0, R0, R1,LSL#8
1FD59A:  BX              LR
