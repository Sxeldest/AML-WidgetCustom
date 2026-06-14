; =========================================================
; Game Engine Function: sub_105530
; Address            : 0x105530 - 0x105552
; =========================================================

105530:  PUSH            {R4,R6,R7,LR}
105532:  ADD             R7, SP, #8
105534:  ADD.W           R0, R0, #0x198
105538:  MOV             R4, R1
10553A:  MOVS            R1, #0xC
10553C:  BL              sub_FFA98
105540:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle19SpecialSubstitutionE - 0x105546); `vtable for'`anonymous namespace'::itanium_demangle::SpecialSubstitution ...
105542:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::SpecialSubstitution
105544:  ADDS            R1, #8
105546:  STR             R1, [R0]
105548:  LDR             R1, [R4]
10554A:  STR             R1, [R0,#8]
10554C:  LDR             R1, =0x1010129
10554E:  STR             R1, [R0,#4]
105550:  POP             {R4,R6,R7,PC}
