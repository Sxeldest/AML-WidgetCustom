; =========================================================
; Game Engine Function: sub_21EEEA
; Address            : 0x21EEEA - 0x21EEF8
; =========================================================

21EEEA:  LDR             R1, [R1,#4]
21EEEC:  LDR             R0, [R0,#4]
21EEEE:  SUBS            R0, R0, R1
21EEF0:  CLZ.W           R0, R0
21EEF4:  LSRS            R0, R0, #5
21EEF6:  BX              LR
