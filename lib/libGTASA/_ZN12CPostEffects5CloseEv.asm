; =========================================================
; Game Engine Function: _ZN12CPostEffects5CloseEv
; Address            : 0x5B2BAC - 0x5B2BD2
; =========================================================

5B2BAC:  LDR             R0, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B2BB2)
5B2BAE:  ADD             R0, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B2BB0:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer ...
5B2BB2:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer
5B2BB4:  CMP             R0, #0
5B2BB6:  IT EQ
5B2BB8:  BXEQ            LR
5B2BBA:  PUSH            {R7,LR}
5B2BBC:  MOV             R7, SP
5B2BBE:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5B2BC2:  LDR             R0, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B2BCA)
5B2BC4:  MOVS            R1, #0
5B2BC6:  ADD             R0, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B2BC8:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer ...
5B2BCA:  STR             R1, [R0]; CPostEffects::pRasterFrontBuffer
5B2BCC:  POP.W           {R7,LR}
5B2BD0:  BX              LR
