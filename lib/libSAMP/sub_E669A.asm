; =========================================================
; Game Engine Function: sub_E669A
; Address            : 0xE669A - 0xE66BA
; =========================================================

E669A:  PUSH            {R4,R6,R7,LR}
E669C:  ADD             R7, SP, #8
E669E:  MOV             R4, R0
E66A0:  LDR             R0, [R0]
E66A2:  CBZ             R0, loc_E66B6
E66A4:  LDR             R1, [R0]
E66A6:  LDR.W           R1, [R1,#-0xC]
E66AA:  ADD             R0, R1; this
E66AC:  LDR             R1, [R0,#0x10]
E66AE:  AND.W           R1, R1, #2; unsigned int
E66B2:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
E66B6:  MOV             R0, R4
E66B8:  POP             {R4,R6,R7,PC}
