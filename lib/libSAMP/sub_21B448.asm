; =========================================================
; Game Engine Function: sub_21B448
; Address            : 0x21B448 - 0x21B470
; =========================================================

21B448:  PUSH            {R4,R5,R7,LR}
21B44A:  ADD             R7, SP, #8
21B44C:  ADD.W           R0, R0, #0x198
21B450:  MOV             R5, R1
21B452:  MOVS            R1, #0x10
21B454:  MOV             R4, R2
21B456:  BL              sub_216EF0
21B45A:  LDR             R1, =0x1010116
21B45C:  STR             R1, [R0,#4]
21B45E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13QualifiedNameE - 0x21B466); `vtable for'`anonymous namespace'::itanium_demangle::QualifiedName ...
21B460:  LDR             R2, [R5]
21B462:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::QualifiedName
21B464:  ADDS            R1, #8
21B466:  STR             R1, [R0]
21B468:  LDR             R1, [R4]
21B46A:  STRD.W          R2, R1, [R0,#8]
21B46E:  POP             {R4,R5,R7,PC}
