; =========================================================
; Game Engine Function: sub_219CD8
; Address            : 0x219CD8 - 0x219D1C
; =========================================================

219CD8:  PUSH            {R4-R7,LR}
219CDA:  ADD             R7, SP, #0xC
219CDC:  PUSH.W          {R8}
219CE0:  ADD.W           R0, R0, #0x198
219CE4:  MOV             R6, R1
219CE6:  MOVS            R1, #0x18
219CE8:  MOV             R8, R3
219CEA:  MOV             R5, R2
219CEC:  BL              sub_216EF0
219CF0:  MOV             R4, R0
219CF2:  MOV             R0, R5; s
219CF4:  LDR             R6, [R6]
219CF6:  BLX             strlen
219CFA:  LDR             R1, =0x1010133
219CFC:  ADD             R0, R5
219CFE:  STR             R1, [R4,#4]
219D00:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10MemberExprE - 0x219D06); `vtable for'`anonymous namespace'::itanium_demangle::MemberExpr ...
219D02:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::MemberExpr
219D04:  ADDS            R1, #8
219D06:  STR             R1, [R4]
219D08:  LDR.W           R1, [R8]
219D0C:  STR             R0, [R4,#0x10]
219D0E:  MOV             R0, R4
219D10:  STR             R1, [R4,#0x14]
219D12:  STRD.W          R6, R5, [R4,#8]
219D16:  POP.W           {R8}
219D1A:  POP             {R4-R7,PC}
