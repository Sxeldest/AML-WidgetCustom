; =========================================================
; Game Engine Function: sub_21C6BC
; Address            : 0x21C6BC - 0x21C6F2
; =========================================================

21C6BC:  PUSH            {R4-R7,LR}
21C6BE:  ADD             R7, SP, #0xC
21C6C0:  PUSH.W          {R11}
21C6C4:  ADD.W           R0, R0, #0x198
21C6C8:  MOV             R6, R1
21C6CA:  MOVS            R1, #0x14
21C6CC:  MOV             R4, R3
21C6CE:  MOV             R5, R2
21C6D0:  BL              sub_216EF0
21C6D4:  LDR             R1, =0x101012A
21C6D6:  STR             R1, [R0,#4]
21C6D8:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle12CtorDtorNameE - 0x21C6DE); `vtable for'`anonymous namespace'::itanium_demangle::CtorDtorName ...
21C6DA:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::CtorDtorName
21C6DC:  ADDS            R1, #8
21C6DE:  STR             R1, [R0]
21C6E0:  LDR             R1, [R6]
21C6E2:  STR             R1, [R0,#8]
21C6E4:  LDRB            R1, [R5]
21C6E6:  STRB            R1, [R0,#0xC]
21C6E8:  LDR             R1, [R4]
21C6EA:  STR             R1, [R0,#0x10]
21C6EC:  POP.W           {R11}
21C6F0:  POP             {R4-R7,PC}
