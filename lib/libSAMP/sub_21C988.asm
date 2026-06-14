; =========================================================
; Game Engine Function: sub_21C988
; Address            : 0x21C988 - 0x21C9AA
; =========================================================

21C988:  PUSH            {R4,R6,R7,LR}
21C98A:  ADD             R7, SP, #8
21C98C:  ADD.W           R0, R0, #0x198
21C990:  MOV             R4, R1
21C992:  MOVS            R1, #0xC
21C994:  BL              sub_216EF0
21C998:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle19SpecialSubstitutionE - 0x21C99E); `vtable for'`anonymous namespace'::itanium_demangle::SpecialSubstitution ...
21C99A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::SpecialSubstitution
21C99C:  ADDS            R1, #8
21C99E:  STR             R1, [R0]
21C9A0:  LDR             R1, [R4]
21C9A2:  STR             R1, [R0,#8]
21C9A4:  LDR             R1, =0x1010129
21C9A6:  STR             R1, [R0,#4]
21C9A8:  POP             {R4,R6,R7,PC}
