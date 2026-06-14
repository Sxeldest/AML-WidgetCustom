; =========================================================
; Game Engine Function: _ZN6CEventdlEPv
; Address            : 0x36FB74 - 0x36FBA0
; =========================================================

36FB74:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x36FB7A)
36FB76:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
36FB78:  LDR             R1, [R1]; CPools::ms_pEventPool ...
36FB7A:  LDR             R1, [R1]; CPools::ms_pEventPool
36FB7C:  LDRD.W          R2, R3, [R1]
36FB80:  SUBS            R0, R0, R2
36FB82:  MOV             R2, #0xF0F0F0F1
36FB8A:  ASRS            R0, R0, #2
36FB8C:  MULS            R0, R2
36FB8E:  LDRB            R2, [R3,R0]
36FB90:  ORR.W           R2, R2, #0x80
36FB94:  STRB            R2, [R3,R0]
36FB96:  LDR             R2, [R1,#0xC]
36FB98:  CMP             R0, R2
36FB9A:  IT LT
36FB9C:  STRLT           R0, [R1,#0xC]
36FB9E:  BX              LR
