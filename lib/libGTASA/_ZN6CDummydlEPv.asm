; =========================================================
; Game Engine Function: _ZN6CDummydlEPv
; Address            : 0x3EADE8 - 0x3EAE14
; =========================================================

3EADE8:  LDR             R1, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x3EADEE)
3EADEA:  ADD             R1, PC; _ZN6CPools13ms_pDummyPoolE_ptr
3EADEC:  LDR             R1, [R1]; CPools::ms_pDummyPool ...
3EADEE:  LDR             R1, [R1]; CPools::ms_pDummyPool
3EADF0:  LDRD.W          R2, R3, [R1]
3EADF4:  SUBS            R0, R0, R2
3EADF6:  MOV             R2, #0xEEEEEEEF
3EADFE:  ASRS            R0, R0, #2
3EAE00:  MULS            R0, R2
3EAE02:  LDRB            R2, [R3,R0]
3EAE04:  ORR.W           R2, R2, #0x80
3EAE08:  STRB            R2, [R3,R0]
3EAE0A:  LDR             R2, [R1,#0xC]
3EAE0C:  CMP             R0, R2
3EAE0E:  IT LT
3EAE10:  STRLT           R0, [R1,#0xC]
3EAE12:  BX              LR
