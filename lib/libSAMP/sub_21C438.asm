; =========================================================
; Game Engine Function: sub_21C438
; Address            : 0x21C438 - 0x21C45E
; =========================================================

21C438:  PUSH            {R4,R6,R7,LR}
21C43A:  ADD             R7, SP, #8
21C43C:  LDR             R4, =0x1010138
21C43E:  ADD.W           R6, R0, #8
21C442:  STR             R4, [R0,#4]
21C444:  LDR             R4, [R7,#arg_C]
21C446:  STRB            R4, [R0,#0x1D]
21C448:  LDR             R4, [R7,#arg_8]
21C44A:  STRB            R4, [R0,#0x1C]
21C44C:  LDR             R4, [R7,#arg_4]
21C44E:  STR             R4, [R0,#0x18]
21C450:  LDR             R4, [R7,#arg_0]
21C452:  STM             R6!, {R1-R4}
21C454:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle7NewExprE - 0x21C45A); `vtable for'`anonymous namespace'::itanium_demangle::NewExpr ...
21C456:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NewExpr
21C458:  ADDS            R1, #8
21C45A:  STR             R1, [R0]
21C45C:  POP             {R4,R6,R7,PC}
