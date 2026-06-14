; =========================================================
; Game Engine Function: sub_219A6C
; Address            : 0x219A6C - 0x219AB4
; =========================================================

219A6C:  PUSH            {R4-R7,LR}
219A6E:  ADD             R7, SP, #0xC
219A70:  PUSH.W          {R8,R9,R11}
219A74:  MOV             R8, R2
219A76:  MOV             R9, R1
219A78:  MOV             R5, R0
219A7A:  BL              sub_217B38
219A7E:  CBZ             R0, loc_219AAC
219A80:  MOV             R6, R0
219A82:  MOV             R0, R5
219A84:  BL              sub_217B38
219A88:  CBZ             R0, loc_219AAC
219A8A:  MOV             R4, R0
219A8C:  ADD.W           R0, R5, #0x198
219A90:  MOVS            R1, #0x18
219A92:  BL              sub_216EF0
219A96:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle10BinaryExprE - 0x219A9E); `vtable for'`anonymous namespace'::itanium_demangle::BinaryExpr ...
219A98:  LDR             R1, =0x101012F
219A9A:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::BinaryExpr
219A9C:  STRD.W          R6, R9, [R0,#8]
219AA0:  ADDS            R2, #8
219AA2:  STRD.W          R8, R4, [R0,#0x10]
219AA6:  STRD.W          R2, R1, [R0]
219AAA:  B               loc_219AAE
219AAC:  MOVS            R0, #0
219AAE:  POP.W           {R8,R9,R11}
219AB2:  POP             {R4-R7,PC}
