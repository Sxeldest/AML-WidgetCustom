; =========================================================
; Game Engine Function: _ZN7CSprite16InitSpriteBufferEv
; Address            : 0x5C5A4C - 0x5C5A6A
; =========================================================

5C5A4C:  PUSH            {R4,R5,R7,LR}
5C5A4E:  ADD             R7, SP, #8
5C5A50:  LDR             R0, =(_ZN7CSprite16m_f2DNearScreenZE_ptr - 0x5C5A58)
5C5A52:  LDR             R1, =(_ZN7CSprite15m_f2DFarScreenZE_ptr - 0x5C5A5A)
5C5A54:  ADD             R0, PC; _ZN7CSprite16m_f2DNearScreenZE_ptr
5C5A56:  ADD             R1, PC; _ZN7CSprite15m_f2DFarScreenZE_ptr
5C5A58:  LDR             R4, [R0]; CSprite::m_f2DNearScreenZ ...
5C5A5A:  LDR             R5, [R1]; CSprite::m_f2DFarScreenZ ...
5C5A5C:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5C5A60:  STR             R0, [R4]; CSprite::m_f2DNearScreenZ
5C5A62:  BLX.W           j__Z19RwIm2DGetFarScreenZv; RwIm2DGetFarScreenZ(void)
5C5A66:  STR             R0, [R5]; CSprite::m_f2DFarScreenZ
5C5A68:  POP             {R4,R5,R7,PC}
