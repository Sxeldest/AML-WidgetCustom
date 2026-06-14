; =========================================================
; Game Engine Function: sub_21D4D0
; Address            : 0x21D4D0 - 0x21D4F8
; =========================================================

21D4D0:  PUSH            {R4,R5,R7,LR}
21D4D2:  ADD             R7, SP, #8
21D4D4:  ADD.W           R0, R0, #0x198
21D4D8:  MOV             R5, R1
21D4DA:  MOVS            R1, #0x10
21D4DC:  MOV             R4, R2
21D4DE:  BL              sub_216EF0
21D4E2:  LDR             R1, =0x1010119
21D4E4:  STR             R1, [R0,#4]
21D4E6:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10VectorTypeE - 0x21D4EE); `vtable for'`anonymous namespace'::itanium_demangle::VectorType ...
21D4E8:  LDR             R2, [R5]
21D4EA:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::VectorType
21D4EC:  ADDS            R1, #8
21D4EE:  STR             R1, [R0]
21D4F0:  LDR             R1, [R4]
21D4F2:  STRD.W          R2, R1, [R0,#8]
21D4F6:  POP             {R4,R5,R7,PC}
