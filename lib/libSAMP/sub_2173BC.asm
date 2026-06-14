; =========================================================
; Game Engine Function: sub_2173BC
; Address            : 0x2173BC - 0x2173E4
; =========================================================

2173BC:  PUSH            {R4,R5,R7,LR}
2173BE:  ADD             R7, SP, #8
2173C0:  ADD.W           R0, R0, #0x198
2173C4:  MOV             R5, R1
2173C6:  MOVS            R1, #0x10
2173C8:  MOV             R4, R2
2173CA:  BL              sub_216EF0
2173CE:  LDR             R1, =0x1010125
2173D0:  STR             R1, [R0,#4]
2173D2:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle20NameWithTemplateArgsE - 0x2173DA); `vtable for'`anonymous namespace'::itanium_demangle::NameWithTemplateArgs ...
2173D4:  LDR             R2, [R5]
2173D6:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameWithTemplateArgs
2173D8:  ADDS            R1, #8
2173DA:  STR             R1, [R0]
2173DC:  LDR             R1, [R4]
2173DE:  STRD.W          R2, R1, [R0,#8]
2173E2:  POP             {R4,R5,R7,PC}
