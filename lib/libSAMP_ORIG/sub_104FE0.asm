; =========================================================
; Game Engine Function: sub_104FE0
; Address            : 0x104FE0 - 0x105006
; =========================================================

104FE0:  PUSH            {R4,R6,R7,LR}
104FE2:  ADD             R7, SP, #8
104FE4:  LDR             R4, =0x1010138
104FE6:  ADD.W           R6, R0, #8
104FEA:  STR             R4, [R0,#4]
104FEC:  LDR             R4, [R7,#arg_C]
104FEE:  STRB            R4, [R0,#0x1D]
104FF0:  LDR             R4, [R7,#arg_8]
104FF2:  STRB            R4, [R0,#0x1C]
104FF4:  LDR             R4, [R7,#arg_4]
104FF6:  STR             R4, [R0,#0x18]
104FF8:  LDR             R4, [R7,#arg_0]
104FFA:  STM             R6!, {R1-R4}
104FFC:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle7NewExprE - 0x105002); `vtable for'`anonymous namespace'::itanium_demangle::NewExpr ...
104FFE:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NewExpr
105000:  ADDS            R1, #8
105002:  STR             R1, [R0]
105004:  POP             {R4,R6,R7,PC}
