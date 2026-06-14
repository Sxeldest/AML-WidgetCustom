; =========================================================
; Game Engine Function: sub_17EA86
; Address            : 0x17EA86 - 0x17EA92
; =========================================================

17EA86:  LDR             R1, [R0,#4]
17EA88:  MOVS            R0, #0
17EA8A:  CMP             R1, #0
17EA8C:  IT GT
17EA8E:  MOVGT           R0, #1
17EA90:  BX              LR
