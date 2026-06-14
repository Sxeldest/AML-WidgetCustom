; =========================================================
; Game Engine Function: sub_1029E8
; Address            : 0x1029E8 - 0x102A24
; =========================================================

1029E8:  PUSH            {R4-R7,LR}
1029EA:  ADD             R7, SP, #0xC
1029EC:  PUSH.W          {R11}
1029F0:  ADD.W           R0, R0, #0x198
1029F4:  MOV             R5, R1
1029F6:  MOVS            R1, #0x14
1029F8:  MOV             R4, R2
1029FA:  BL              sub_FFA98
1029FE:  MOV             R6, R0
102A00:  MOV             R0, R4; s
102A02:  LDR             R5, [R5]
102A04:  BLX             strlen
102A08:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle11PostfixExprE - 0x102A12); `vtable for'`anonymous namespace'::itanium_demangle::PostfixExpr ...
102A0A:  ADD             R0, R4
102A0C:  LDR             R1, =0x1010131
102A0E:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::PostfixExpr
102A10:  STR             R0, [R6,#0x10]
102A12:  ADDS            R2, #8
102A14:  STRD.W          R5, R4, [R6,#8]
102A18:  STRD.W          R2, R1, [R6]
102A1C:  MOV             R0, R6
102A1E:  POP.W           {R11}
102A22:  POP             {R4-R7,PC}
