; =========================================================
; Game Engine Function: _ZN15CTouchInterface16GetTouchPositionEi
; Address            : 0x2B0A54 - 0x2B0A6A
; =========================================================

2B0A54:  LDR             R2, =(_ZN15CTouchInterface14m_vecCachedPosE_ptr - 0x2B0A5A)
2B0A56:  ADD             R2, PC; _ZN15CTouchInterface14m_vecCachedPosE_ptr
2B0A58:  LDR             R2, [R2]; CTouchInterface::m_vecCachedPos ...
2B0A5A:  LDR.W           R3, [R2,R1,LSL#3]
2B0A5E:  ADD.W           R1, R2, R1,LSL#3
2B0A62:  LDR             R1, [R1,#4]
2B0A64:  STRD.W          R3, R1, [R0]
2B0A68:  BX              LR
