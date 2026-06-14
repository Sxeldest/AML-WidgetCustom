; =========================================================
; Game Engine Function: sub_102BE0
; Address            : 0x102BE0 - 0x102C08
; =========================================================

102BE0:  PUSH            {R4,R6,R7,LR}
102BE2:  ADD             R7, SP, #8
102BE4:  ADD.W           R0, R0, #0x198
102BE8:  MOV             R4, R1
102BEA:  MOVS            R1, #0xC
102BEC:  BL              sub_FFA98
102BF0:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8BoolExprE - 0x102BF8); `vtable for'`anonymous namespace'::itanium_demangle::BoolExpr ...
102BF2:  LDR             R1, =0x1010141
102BF4:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::BoolExpr
102BF6:  ADDS            R2, #8
102BF8:  STRD.W          R2, R1, [R0]
102BFC:  LDR             R1, [R4]
102BFE:  CMP             R1, #0
102C00:  IT NE
102C02:  MOVNE           R1, #1
102C04:  STRB            R1, [R0,#8]
102C06:  POP             {R4,R6,R7,PC}
