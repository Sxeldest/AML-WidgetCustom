; =========================================================
; Game Engine Function: _ZN10ES2TextureD0Ev
; Address            : 0x1D1450 - 0x1D1460
; =========================================================

1D1450:  PUSH            {R7,LR}
1D1452:  MOV             R7, SP
1D1454:  BLX             j__ZN10ES2TextureD2Ev; ES2Texture::~ES2Texture()
1D1458:  POP.W           {R7,LR}
1D145C:  B.W             j__ZdlPv; operator delete(void *)
