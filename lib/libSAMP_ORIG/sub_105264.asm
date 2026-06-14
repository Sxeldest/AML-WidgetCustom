; =========================================================
; Game Engine Function: sub_105264
; Address            : 0x105264 - 0x10529A
; =========================================================

105264:  PUSH            {R4-R7,LR}
105266:  ADD             R7, SP, #0xC
105268:  PUSH.W          {R11}
10526C:  ADD.W           R0, R0, #0x198
105270:  MOV             R6, R1
105272:  MOVS            R1, #0x14
105274:  MOV             R4, R3
105276:  MOV             R5, R2
105278:  BL              sub_FFA98
10527C:  LDR             R1, =0x101012A
10527E:  STR             R1, [R0,#4]
105280:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle12CtorDtorNameE - 0x105286); `vtable for'`anonymous namespace'::itanium_demangle::CtorDtorName ...
105282:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::CtorDtorName
105284:  ADDS            R1, #8
105286:  STR             R1, [R0]
105288:  LDR             R1, [R6]
10528A:  STR             R1, [R0,#8]
10528C:  LDRB            R1, [R5]
10528E:  STRB            R1, [R0,#0xC]
105290:  LDR             R1, [R4]
105292:  STR             R1, [R0,#0x10]
105294:  POP.W           {R11}
105298:  POP             {R4-R7,PC}
