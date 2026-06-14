; =========================================================
; Game Engine Function: _ZN27CEventPotentialWalkIntoFireD0Ev
; Address            : 0x377488 - 0x3774B4
; =========================================================

377488:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37748E)
37748A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37748C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37748E:  LDR             R1, [R1]; CPools::ms_pEventPool
377490:  LDRD.W          R2, R3, [R1]
377494:  SUBS            R0, R0, R2
377496:  MOV             R2, #0xF0F0F0F1
37749E:  ASRS            R0, R0, #2
3774A0:  MULS            R0, R2
3774A2:  LDRB            R2, [R3,R0]
3774A4:  ORR.W           R2, R2, #0x80
3774A8:  STRB            R2, [R3,R0]
3774AA:  LDR             R2, [R1,#0xC]
3774AC:  CMP             R0, R2
3774AE:  IT LT
3774B0:  STRLT           R0, [R1,#0xC]
3774B2:  BX              LR
