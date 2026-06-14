; =========================================================
; Game Engine Function: sub_21C2B0
; Address            : 0x21C2B0 - 0x21C2E6
; =========================================================

21C2B0:  PUSH            {R4-R7,LR}
21C2B2:  ADD             R7, SP, #0xC
21C2B4:  PUSH.W          {R11}
21C2B8:  ADD.W           R0, R0, #0x198
21C2BC:  MOV             R6, R1
21C2BE:  MOVS            R1, #0x14
21C2C0:  MOV             R4, R3
21C2C2:  MOV             R5, R2
21C2C4:  BL              sub_216EF0
21C2C8:  LDR             R1, =0x1010149
21C2CA:  STR             R1, [R0,#4]
21C2CC:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10BracedExprE - 0x21C2D4); `vtable for'`anonymous namespace'::itanium_demangle::BracedExpr ...
21C2CE:  LDR             R2, [R6]
21C2D0:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::BracedExpr
21C2D2:  ADDS            R1, #8
21C2D4:  STR             R1, [R0]
21C2D6:  LDR             R1, [R5]
21C2D8:  STRD.W          R2, R1, [R0,#8]
21C2DC:  LDRB            R1, [R4]
21C2DE:  STRB            R1, [R0,#0x10]
21C2E0:  POP.W           {R11}
21C2E4:  POP             {R4-R7,PC}
