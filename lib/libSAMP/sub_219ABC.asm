; =========================================================
; Game Engine Function: sub_219ABC
; Address            : 0x219ABC - 0x219AF8
; =========================================================

219ABC:  PUSH            {R4-R7,LR}
219ABE:  ADD             R7, SP, #0xC
219AC0:  PUSH.W          {R8}
219AC4:  MOV             R8, R2
219AC6:  MOV             R5, R1
219AC8:  MOV             R4, R0
219ACA:  BL              sub_217B38
219ACE:  CBZ             R0, loc_219AF0
219AD0:  MOV             R6, R0
219AD2:  ADD.W           R0, R4, #0x198
219AD6:  MOVS            R1, #0x14
219AD8:  BL              sub_216EF0
219ADC:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle10PrefixExprE - 0x219AE4); `vtable for'`anonymous namespace'::itanium_demangle::PrefixExpr ...
219ADE:  LDR             R1, =0x101013A
219AE0:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::PrefixExpr
219AE2:  STRD.W          R5, R8, [R0,#8]
219AE6:  ADDS            R2, #8
219AE8:  STR             R6, [R0,#0x10]
219AEA:  STRD.W          R2, R1, [R0]
219AEE:  B               loc_219AF2
219AF0:  MOVS            R0, #0
219AF2:  POP.W           {R8}
219AF6:  POP             {R4-R7,PC}
