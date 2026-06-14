; =========================================================
; Game Engine Function: sub_104E58
; Address            : 0x104E58 - 0x104E8E
; =========================================================

104E58:  PUSH            {R4-R7,LR}
104E5A:  ADD             R7, SP, #0xC
104E5C:  PUSH.W          {R11}
104E60:  ADD.W           R0, R0, #0x198
104E64:  MOV             R6, R1
104E66:  MOVS            R1, #0x14
104E68:  MOV             R4, R3
104E6A:  MOV             R5, R2
104E6C:  BL              sub_FFA98
104E70:  LDR             R1, =0x1010149
104E72:  STR             R1, [R0,#4]
104E74:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10BracedExprE - 0x104E7C); `vtable for'`anonymous namespace'::itanium_demangle::BracedExpr ...
104E76:  LDR             R2, [R6]
104E78:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::BracedExpr
104E7A:  ADDS            R1, #8
104E7C:  STR             R1, [R0]
104E7E:  LDR             R1, [R5]
104E80:  STRD.W          R2, R1, [R0,#8]
104E84:  LDRB            R1, [R4]
104E86:  STRB            R1, [R0,#0x10]
104E88:  POP.W           {R11}
104E8C:  POP             {R4-R7,PC}
