; =========================================================
; Game Engine Function: sub_21DA34
; Address            : 0x21DA34 - 0x21DA52
; =========================================================

21DA34:  LDR             R1, [R0]
21DA36:  LDR             R0, [R0,#4]
21DA38:  LDR             R2, =0x434C4E
21DA3A:  LSRS            R1, R1, #8
21DA3C:  EOR.W           R2, R2, R0,LSR#8
21DA40:  ORR.W           R0, R1, R0,LSL#24
21DA44:  LDR             R1, =0x47432B2B
21DA46:  EORS            R0, R1
21DA48:  ORRS            R0, R2
21DA4A:  CLZ.W           R0, R0
21DA4E:  LSRS            R0, R0, #5
21DA50:  BX              LR
