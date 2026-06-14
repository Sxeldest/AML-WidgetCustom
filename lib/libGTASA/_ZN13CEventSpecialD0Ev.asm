; =========================================================
; Game Engine Function: _ZN13CEventSpecialD0Ev
; Address            : 0x3771D4 - 0x377200
; =========================================================

3771D4:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3771DA)
3771D6:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3771D8:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3771DA:  LDR             R1, [R1]; CPools::ms_pEventPool
3771DC:  LDRD.W          R2, R3, [R1]
3771E0:  SUBS            R0, R0, R2
3771E2:  MOV             R2, #0xF0F0F0F1
3771EA:  ASRS            R0, R0, #2
3771EC:  MULS            R0, R2
3771EE:  LDRB            R2, [R3,R0]
3771F0:  ORR.W           R2, R2, #0x80
3771F4:  STRB            R2, [R3,R0]
3771F6:  LDR             R2, [R1,#0xC]
3771F8:  CMP             R0, R2
3771FA:  IT LT
3771FC:  STRLT           R0, [R1,#0xC]
3771FE:  BX              LR
