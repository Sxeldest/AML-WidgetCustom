; =========================================================
; Game Engine Function: sub_217468
; Address            : 0x217468 - 0x2174C0
; =========================================================

217468:  CBZ             R1, loc_2174A0
21746A:  PUSH            {R4-R7,LR}
21746C:  ADD             R7, SP, #0xC
21746E:  PUSH.W          {R11}
217472:  LDR             R6, [R0]
217474:  MOV             R4, R0
217476:  MOV             R5, R1
217478:  LDR             R0, [R6]
21747A:  CBZ             R0, loc_2174A4
21747C:  LDR             R0, [R4,#4]
21747E:  MOVS            R1, #0x10
217480:  ADD.W           R0, R0, #0x198
217484:  BL              sub_216EF0
217488:  LDR             R1, [R6]
21748A:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle10NestedNameE - 0x217492); `vtable for'`anonymous namespace'::itanium_demangle::NestedName ...
21748C:  LDR             R2, =0x1010117
21748E:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::NestedName
217490:  STRD.W          R1, R5, [R0,#8]
217494:  ADDS            R3, #8
217496:  STRD.W          R3, R2, [R0]
21749A:  LDR             R1, [R4]
21749C:  STR             R0, [R1]
21749E:  B               loc_2174A6
2174A0:  MOVS            R0, #0
2174A2:  BX              LR
2174A4:  STR             R5, [R6]
2174A6:  LDR             R0, [R4,#8]
2174A8:  LDR             R0, [R0]
2174AA:  CBZ             R0, loc_2174B0
2174AC:  MOVS            R1, #0
2174AE:  STRB            R1, [R0,#1]
2174B0:  LDR             R0, [R4]
2174B2:  LDR             R0, [R0]
2174B4:  CMP             R0, #0
2174B6:  IT NE
2174B8:  MOVNE           R0, #1
2174BA:  POP.W           {R11}
2174BE:  POP             {R4-R7,PC}
