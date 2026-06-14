; =========================================================
; Game Engine Function: _ZN11CHudColours12GetIntColourEh
; Address            : 0x43AAEC - 0x43AB0C
; =========================================================

43AAEC:  LDRB.W          R2, [R0,R1,LSL#2]
43AAF0:  ADD.W           R0, R0, R1,LSL#2
43AAF4:  MOVS            R3, #0xFF
43AAF6:  LDRB            R1, [R0,#1]
43AAF8:  LDRB            R0, [R0,#2]
43AAFA:  ORR.W           R2, R3, R2,LSL#24
43AAFE:  ORR.W           R1, R3, R1,LSL#16
43AB02:  ADD             R1, R2
43AB04:  ORR.W           R0, R3, R0,LSL#8
43AB08:  ADD             R0, R1
43AB0A:  BX              LR
