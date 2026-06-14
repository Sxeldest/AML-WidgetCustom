; =========================================================
; Game Engine Function: sub_17E596
; Address            : 0x17E596 - 0x17E5AA
; =========================================================

17E596:  LDRH            R2, [R1,#4]
17E598:  LDRH            R3, [R0,#4]
17E59A:  LDR             R1, [R1]
17E59C:  LDR             R0, [R0]
17E59E:  EORS            R2, R3
17E5A0:  EORS            R0, R1
17E5A2:  ORRS            R0, R2
17E5A4:  IT NE
17E5A6:  MOVNE           R0, #1
17E5A8:  BX              LR
