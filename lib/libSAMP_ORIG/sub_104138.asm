; =========================================================
; Game Engine Function: sub_104138
; Address            : 0x104138 - 0x10415A
; =========================================================

104138:  PUSH            {R4,R6,R7,LR}
10413A:  ADD             R7, SP, #8
10413C:  ADD.W           R0, R0, #0x198
104140:  MOV             R4, R1
104142:  MOVS            R1, #0xC
104144:  BL              sub_FFA98
104148:  LDR             R1, =0x1010126
10414A:  STR             R1, [R0,#4]
10414C:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle19GlobalQualifiedNameE - 0x104152); `vtable for'`anonymous namespace'::itanium_demangle::GlobalQualifiedName ...
10414E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::GlobalQualifiedName
104150:  ADDS            R1, #8
104152:  STR             R1, [R0]
104154:  LDR             R1, [R4]
104156:  STR             R1, [R0,#8]
104158:  POP             {R4,R6,R7,PC}
