; =========================================================
; Game Engine Function: sub_20E5B6
; Address            : 0x20E5B6 - 0x20E5C8
; =========================================================

20E5B6:  LDR             R0, [R3]
20E5B8:  SUBS            R2, R2, R1
20E5BA:  SUBS            R0, R0, R2
20E5BC:  STR             R0, [R3]
20E5BE:  CMP             R2, #1
20E5C0:  IT GE
20E5C2:  BGE.W           sub_2242EC
20E5C6:  BX              LR
