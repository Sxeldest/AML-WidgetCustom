; =========================================================
; Game Engine Function: sub_21EEAE
; Address            : 0x21EEAE - 0x21EEBC
; =========================================================

21EEAE:  LDR             R1, [R1,#4]
21EEB0:  LDR             R0, [R0,#4]
21EEB2:  SUBS            R0, R0, R1
21EEB4:  CLZ.W           R0, R0
21EEB8:  LSRS            R0, R0, #5
21EEBA:  BX              LR
