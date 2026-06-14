; =========================================================
; Game Engine Function: _Z19IsDummyPointerValidP6CDummy
; Address            : 0x3EAE7C - 0x3EAEAC
; =========================================================

3EAE7C:  CBZ             R0, loc_3EAEA8
3EAE7E:  LDR             R1, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x3EAE84)
3EAE80:  ADD             R1, PC; _ZN6CPools13ms_pDummyPoolE_ptr
3EAE82:  LDR             R1, [R1]; CPools::ms_pDummyPool ...
3EAE84:  LDR             R1, [R1]; CPools::ms_pDummyPool
3EAE86:  LDR             R2, [R1]
3EAE88:  SUBS            R0, R0, R2
3EAE8A:  CMN.W           R0, #0x3B ; ';'
3EAE8E:  BLT             loc_3EAEA8
3EAE90:  MOVW            R2, #0xEEEF
3EAE94:  ASRS            R0, R0, #2
3EAE96:  MOVT            R2, #0xEEEE
3EAE9A:  LDR             R1, [R1,#8]
3EAE9C:  MULS            R2, R0
3EAE9E:  MOVS            R0, #0
3EAEA0:  CMP             R2, R1
3EAEA2:  IT LE
3EAEA4:  MOVLE           R0, #1
3EAEA6:  BX              LR
3EAEA8:  MOVS            R0, #0
3EAEAA:  BX              LR
