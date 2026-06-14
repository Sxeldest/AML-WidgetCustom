; =========================================================
; Game Engine Function: sub_102614
; Address            : 0x102614 - 0x10265C
; =========================================================

102614:  PUSH            {R4-R7,LR}
102616:  ADD             R7, SP, #0xC
102618:  PUSH.W          {R8,R9,R11}
10261C:  MOV             R8, R2
10261E:  MOV             R9, R1
102620:  MOV             R5, R0
102622:  BL              sub_1006E0
102626:  CBZ             R0, loc_102654
102628:  MOV             R6, R0
10262A:  MOV             R0, R5
10262C:  BL              sub_1006E0
102630:  CBZ             R0, loc_102654
102632:  MOV             R4, R0
102634:  ADD.W           R0, R5, #0x198
102638:  MOVS            R1, #0x18
10263A:  BL              sub_FFA98
10263E:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle10BinaryExprE - 0x102646); `vtable for'`anonymous namespace'::itanium_demangle::BinaryExpr ...
102640:  LDR             R1, =0x101012F
102642:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::BinaryExpr
102644:  STRD.W          R6, R9, [R0,#8]
102648:  ADDS            R2, #8
10264A:  STRD.W          R8, R4, [R0,#0x10]
10264E:  STRD.W          R2, R1, [R0]
102652:  B               loc_102656
102654:  MOVS            R0, #0
102656:  POP.W           {R8,R9,R11}
10265A:  POP             {R4-R7,PC}
