; =========================================================
; Game Engine Function: sub_1039B4
; Address            : 0x1039B4 - 0x1039DA
; =========================================================

1039B4:  PUSH            {R4,R6,R7,LR}
1039B6:  ADD             R7, SP, #8
1039B8:  ADD.W           R0, R0, #0x198
1039BC:  MOV             R4, R1
1039BE:  MOVS            R1, #0x10
1039C0:  BL              sub_FFA98
1039C4:  LDRD.W          R1, R2, [R4]
1039C8:  LDR             R4, =(_ZTVN12_GLOBAL__N_116itanium_demangle13FunctionParamE - 0x1039D0); `vtable for'`anonymous namespace'::itanium_demangle::FunctionParam ...
1039CA:  LDR             R3, =0x101013B
1039CC:  ADD             R4, PC; `vtable for'`anonymous namespace'::itanium_demangle::FunctionParam
1039CE:  STRD.W          R1, R2, [R0,#8]
1039D2:  ADDS            R4, #8
1039D4:  STRD.W          R4, R3, [R0]
1039D8:  POP             {R4,R6,R7,PC}
