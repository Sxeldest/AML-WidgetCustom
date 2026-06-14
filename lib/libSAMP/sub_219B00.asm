; =========================================================
; Game Engine Function: sub_219B00
; Address            : 0x219B00 - 0x219B36
; =========================================================

219B00:  PUSH            {R4-R7,LR}
219B02:  ADD             R7, SP, #0xC
219B04:  PUSH.W          {R11}
219B08:  ADD.W           R0, R0, #0x198
219B0C:  MOV             R6, R1
219B0E:  MOVS            R1, #0x10
219B10:  MOV             R4, R3
219B12:  MOV             R5, R2
219B14:  BL              sub_216EF0
219B18:  LDR             R1, =0x1010139
219B1A:  STR             R1, [R0,#4]
219B1C:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10DeleteExprE - 0x219B24); `vtable for'`anonymous namespace'::itanium_demangle::DeleteExpr ...
219B1E:  LDRB            R2, [R5]
219B20:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::DeleteExpr
219B22:  ADDS            R1, #8
219B24:  STR             R1, [R0]
219B26:  LDR             R1, [R6]
219B28:  STR             R1, [R0,#8]
219B2A:  LDRB            R1, [R4]
219B2C:  STRB            R2, [R0,#0xC]
219B2E:  STRB            R1, [R0,#0xD]
219B30:  POP.W           {R11}
219B34:  POP             {R4-R7,PC}
