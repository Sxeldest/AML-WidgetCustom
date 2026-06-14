; =========================================================
; Game Engine Function: sub_101EF4
; Address            : 0x101EF4 - 0x101F3A
; =========================================================

101EF4:  PUSH            {R4-R7,LR}
101EF6:  ADD             R7, SP, #0xC
101EF8:  PUSH.W          {R11}
101EFC:  ADD.W           R0, R0, #0x198
101F00:  MOV             R5, R1
101F02:  MOVS            R1, #0x1C
101F04:  MOV             R4, R2
101F06:  BL              sub_FFA98
101F0A:  MOV             R6, R0
101F0C:  MOV             R0, R5; s
101F0E:  BLX             strlen
101F12:  LDR             R1, =0x1010134
101F14:  ADD             R0, R5
101F16:  STR             R1, [R6,#4]
101F18:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x101F1E); `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr ...
101F1A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr
101F1C:  ADDS            R1, #8
101F1E:  STR             R1, [R6]
101F20:  LDR             R1, [R4]
101F22:  STR             R1, [R6,#0x10]
101F24:  STR             R5, [R6,#8]
101F26:  STR             R0, [R6,#0xC]
101F28:  LDR             R0, =(asc_50037 - 0x101F2E); ")" ...
101F2A:  ADD             R0, PC; ")"
101F2C:  STR             R0, [R6,#0x14]
101F2E:  ADDS            R0, #1
101F30:  STR             R0, [R6,#0x18]
101F32:  MOV             R0, R6
101F34:  POP.W           {R11}
101F38:  POP             {R4-R7,PC}
