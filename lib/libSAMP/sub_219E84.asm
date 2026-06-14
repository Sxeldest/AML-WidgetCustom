; =========================================================
; Game Engine Function: sub_219E84
; Address            : 0x219E84 - 0x219EA6
; =========================================================

219E84:  PUSH            {R4,R6,R7,LR}
219E86:  ADD             R7, SP, #8
219E88:  ADD.W           R0, R0, #0x198
219E8C:  MOV             R4, R1
219E8E:  MOVS            R1, #0xC
219E90:  BL              sub_216EF0
219E94:  LDR             R1, =0x1010122
219E96:  STR             R1, [R0,#4]
219E98:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ParameterPackExpansionE - 0x219E9E); `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion ...
219E9A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion
219E9C:  ADDS            R1, #8
219E9E:  STR             R1, [R0]
219EA0:  LDR             R1, [R4]
219EA2:  STR             R1, [R0,#8]
219EA4:  POP             {R4,R6,R7,PC}
