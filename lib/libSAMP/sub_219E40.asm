; =========================================================
; Game Engine Function: sub_219E40
; Address            : 0x219E40 - 0x219E7C
; =========================================================

219E40:  PUSH            {R4-R7,LR}
219E42:  ADD             R7, SP, #0xC
219E44:  PUSH.W          {R11}
219E48:  ADD.W           R0, R0, #0x198
219E4C:  MOV             R5, R1
219E4E:  MOVS            R1, #0x14
219E50:  MOV             R4, R2
219E52:  BL              sub_216EF0
219E56:  MOV             R6, R0
219E58:  MOV             R0, R4; s
219E5A:  LDR             R5, [R5]
219E5C:  BLX             strlen
219E60:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle11PostfixExprE - 0x219E6A); `vtable for'`anonymous namespace'::itanium_demangle::PostfixExpr ...
219E62:  ADD             R0, R4
219E64:  LDR             R1, =0x1010131
219E66:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::PostfixExpr
219E68:  STR             R0, [R6,#0x10]
219E6A:  ADDS            R2, #8
219E6C:  STRD.W          R5, R4, [R6,#8]
219E70:  STRD.W          R2, R1, [R6]
219E74:  MOV             R0, R6
219E76:  POP.W           {R11}
219E7A:  POP             {R4-R7,PC}
