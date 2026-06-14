; =========================================================
; Game Engine Function: sub_21AE0C
; Address            : 0x21AE0C - 0x21AE32
; =========================================================

21AE0C:  PUSH            {R4,R6,R7,LR}
21AE0E:  ADD             R7, SP, #8
21AE10:  ADD.W           R0, R0, #0x198
21AE14:  MOV             R4, R1
21AE16:  MOVS            R1, #0x10
21AE18:  BL              sub_216EF0
21AE1C:  LDRD.W          R1, R2, [R4]
21AE20:  LDR             R4, =(_ZTVN12_GLOBAL__N_116itanium_demangle13FunctionParamE - 0x21AE28); `vtable for'`anonymous namespace'::itanium_demangle::FunctionParam ...
21AE22:  LDR             R3, =0x101013B
21AE24:  ADD             R4, PC; `vtable for'`anonymous namespace'::itanium_demangle::FunctionParam
21AE26:  STRD.W          R1, R2, [R0,#8]
21AE2A:  ADDS            R4, #8
21AE2C:  STRD.W          R4, R3, [R0]
21AE30:  POP             {R4,R6,R7,PC}
