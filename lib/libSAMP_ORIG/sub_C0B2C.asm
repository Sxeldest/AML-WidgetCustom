; =========================================================
; Game Engine Function: sub_C0B2C
; Address            : 0xC0B2C - 0xC0B3C
; =========================================================

C0B2C:  ANDS            R0, R0
C0B2E:  CMP             R10, R9
C0B30:  LDR             R4, loc_C0BA0
C0B32:  STRH            R7, [R7,R3]
C0B34:  LDRH            R2, [R0,R2]
C0B36:  STR             R3, [R6,#0x28]
C0B38:  LDR             R2, [R4,#0x38]
C0B3A:  STRB            R0, [R4,#0x15]
