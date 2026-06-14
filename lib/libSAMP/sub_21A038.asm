; =========================================================
; Game Engine Function: sub_21A038
; Address            : 0x21A038 - 0x21A060
; =========================================================

21A038:  PUSH            {R4,R6,R7,LR}
21A03A:  ADD             R7, SP, #8
21A03C:  ADD.W           R0, R0, #0x198
21A040:  MOV             R4, R1
21A042:  MOVS            R1, #0xC
21A044:  BL              sub_216EF0
21A048:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8BoolExprE - 0x21A050); `vtable for'`anonymous namespace'::itanium_demangle::BoolExpr ...
21A04A:  LDR             R1, =0x1010141
21A04C:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::BoolExpr
21A04E:  ADDS            R2, #8
21A050:  STRD.W          R2, R1, [R0]
21A054:  LDR             R1, [R4]
21A056:  CMP             R1, #0
21A058:  IT NE
21A05A:  MOVNE           R1, #1
21A05C:  STRB            R1, [R0,#8]
21A05E:  POP             {R4,R6,R7,PC}
