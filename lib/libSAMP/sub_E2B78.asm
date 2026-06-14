; =========================================================
; Game Engine Function: sub_E2B78
; Address            : 0xE2B78 - 0xE2B90
; =========================================================

E2B78:  LDR             R1, [R0,#8]
E2B7A:  CMP.W           R1, #0x100
E2B7E:  IT NE
E2B80:  BXNE            LR
E2B82:  LDR             R1, [R0,#0x10]
E2B84:  MOVS            R2, #0
E2B86:  STR             R2, [R0,#8]
E2B88:  ADD.W           R1, R1, #0x100
E2B8C:  STR             R1, [R0,#0x10]
E2B8E:  BX              LR
