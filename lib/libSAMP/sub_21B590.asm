; =========================================================
; Game Engine Function: sub_21B590
; Address            : 0x21B590 - 0x21B5B2
; =========================================================

21B590:  PUSH            {R4,R6,R7,LR}
21B592:  ADD             R7, SP, #8
21B594:  ADD.W           R0, R0, #0x198
21B598:  MOV             R4, R1
21B59A:  MOVS            R1, #0xC
21B59C:  BL              sub_216EF0
21B5A0:  LDR             R1, =0x1010126
21B5A2:  STR             R1, [R0,#4]
21B5A4:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle19GlobalQualifiedNameE - 0x21B5AA); `vtable for'`anonymous namespace'::itanium_demangle::GlobalQualifiedName ...
21B5A6:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::GlobalQualifiedName
21B5A8:  ADDS            R1, #8
21B5AA:  STR             R1, [R0]
21B5AC:  LDR             R1, [R4]
21B5AE:  STR             R1, [R0,#8]
21B5B0:  POP             {R4,R6,R7,PC}
