; =========================================================
; Game Engine Function: _Z30IsDummyPointerValid_NotInWorldP6CDummy
; Address            : 0x3EAEB0 - 0x3EAEE4
; =========================================================

3EAEB0:  CMP             R0, #0
3EAEB2:  ITT EQ
3EAEB4:  MOVEQ           R0, #0
3EAEB6:  BXEQ            LR
3EAEB8:  LDR             R1, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x3EAEBE)
3EAEBA:  ADD             R1, PC; _ZN6CPools13ms_pDummyPoolE_ptr
3EAEBC:  LDR             R1, [R1]; CPools::ms_pDummyPool ...
3EAEBE:  LDR             R1, [R1]; CPools::ms_pDummyPool
3EAEC0:  LDR             R2, [R1]
3EAEC2:  SUBS            R2, R0, R2
3EAEC4:  MOVS            R0, #0
3EAEC6:  CMN.W           R2, #0x3B ; ';'
3EAECA:  IT LT
3EAECC:  BXLT            LR
3EAECE:  MOVW            R3, #0xEEEF
3EAED2:  ASRS            R2, R2, #2
3EAED4:  MOVT            R3, #0xEEEE
3EAED8:  LDR             R1, [R1,#8]
3EAEDA:  MULS            R2, R3
3EAEDC:  CMP             R2, R1
3EAEDE:  IT LE
3EAEE0:  MOVLE           R0, #1
3EAEE2:  BX              LR
