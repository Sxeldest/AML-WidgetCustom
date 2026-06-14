; =========================================================
; Game Engine Function: sub_11ACBE
; Address            : 0x11ACBE - 0x11ACD2
; =========================================================

11ACBE:  LDR             R3, [R0,#0xC]
11ACC0:  LDRD.W          R2, R1, [R0,#4]
11ACC4:  ADD.W           R0, R2, R3,ASR#1
11ACC8:  LSLS            R2, R3, #0x1F
11ACCA:  ITT NE
11ACCC:  LDRNE           R2, [R0]
11ACCE:  LDRNE           R1, [R2,R1]
11ACD0:  BX              R1
