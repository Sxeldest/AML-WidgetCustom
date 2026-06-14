; =========================================================
; Game Engine Function: _ZN16CEventFireNearbyD0Ev
; Address            : 0x377560 - 0x37758C
; =========================================================

377560:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x377566)
377562:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
377564:  LDR             R1, [R1]; CPools::ms_pEventPool ...
377566:  LDR             R1, [R1]; CPools::ms_pEventPool
377568:  LDRD.W          R2, R3, [R1]
37756C:  SUBS            R0, R0, R2
37756E:  MOV             R2, #0xF0F0F0F1
377576:  ASRS            R0, R0, #2
377578:  MULS            R0, R2
37757A:  LDRB            R2, [R3,R0]
37757C:  ORR.W           R2, R2, #0x80
377580:  STRB            R2, [R3,R0]
377582:  LDR             R2, [R1,#0xC]
377584:  CMP             R0, R2
377586:  IT LT
377588:  STRLT           R0, [R1,#0xC]
37758A:  BX              LR
