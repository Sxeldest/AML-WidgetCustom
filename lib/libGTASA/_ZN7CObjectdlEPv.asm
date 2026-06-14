; =========================================================
; Game Engine Function: _ZN7CObjectdlEPv
; Address            : 0x4532F0 - 0x45331C
; =========================================================

4532F0:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4532F6)
4532F2:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4532F4:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
4532F6:  LDR             R1, [R1]; CPools::ms_pObjectPool
4532F8:  LDRD.W          R2, R3, [R1]
4532FC:  SUBS            R0, R0, R2
4532FE:  MOV             R2, #0xD8FD8FD9
453306:  ASRS            R0, R0, #2
453308:  MULS            R0, R2
45330A:  LDRB            R2, [R3,R0]
45330C:  ORR.W           R2, R2, #0x80
453310:  STRB            R2, [R3,R0]
453312:  LDR             R2, [R1,#0xC]
453314:  CMP             R0, R2
453316:  IT LT
453318:  STRLT           R0, [R1,#0xC]
45331A:  BX              LR
