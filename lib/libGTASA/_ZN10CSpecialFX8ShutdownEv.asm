; =========================================================
; Game Engine Function: _ZN10CSpecialFX8ShutdownEv
; Address            : 0x5BFDA4 - 0x5BFDFA
; =========================================================

5BFDA4:  PUSH            {R7,LR}
5BFDA6:  MOV             R7, SP
5BFDA8:  BLX.W           j__ZN10C3dMarkers8ShutdownEv; C3dMarkers::Shutdown(void)
5BFDAC:  LDR             R0, =(gpFinishFlagTex_ptr - 0x5BFDB2)
5BFDAE:  ADD             R0, PC; gpFinishFlagTex_ptr
5BFDB0:  LDR             R0, [R0]; gpFinishFlagTex
5BFDB2:  LDR             R0, [R0]
5BFDB4:  CBZ             R0, loc_5BFDC4
5BFDB6:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5BFDBA:  LDR             R0, =(gpFinishFlagTex_ptr - 0x5BFDC2)
5BFDBC:  MOVS            R1, #0
5BFDBE:  ADD             R0, PC; gpFinishFlagTex_ptr
5BFDC0:  LDR             R0, [R0]; gpFinishFlagTex
5BFDC2:  STR             R1, [R0]
5BFDC4:  LDR             R0, =(_ZN8CMirrors7pBufferE_ptr - 0x5BFDCA)
5BFDC6:  ADD             R0, PC; _ZN8CMirrors7pBufferE_ptr
5BFDC8:  LDR             R0, [R0]; CMirrors::pBuffer ...
5BFDCA:  LDR             R0, [R0]; CMirrors::pBuffer
5BFDCC:  CBZ             R0, loc_5BFDDC
5BFDCE:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5BFDD2:  LDR             R0, =(_ZN8CMirrors7pBufferE_ptr - 0x5BFDDA)
5BFDD4:  MOVS            R1, #0
5BFDD6:  ADD             R0, PC; _ZN8CMirrors7pBufferE_ptr
5BFDD8:  LDR             R0, [R0]; CMirrors::pBuffer ...
5BFDDA:  STR             R1, [R0]; CMirrors::pBuffer
5BFDDC:  LDR             R0, =(_ZN8CMirrors8pZBufferE_ptr - 0x5BFDE2)
5BFDDE:  ADD             R0, PC; _ZN8CMirrors8pZBufferE_ptr
5BFDE0:  LDR             R0, [R0]; CMirrors::pZBuffer ...
5BFDE2:  LDR             R0, [R0]; CMirrors::pZBuffer
5BFDE4:  CMP             R0, #0
5BFDE6:  IT EQ
5BFDE8:  POPEQ           {R7,PC}
5BFDEA:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5BFDEE:  LDR             R0, =(_ZN8CMirrors8pZBufferE_ptr - 0x5BFDF6)
5BFDF0:  MOVS            R1, #0
5BFDF2:  ADD             R0, PC; _ZN8CMirrors8pZBufferE_ptr
5BFDF4:  LDR             R0, [R0]; CMirrors::pZBuffer ...
5BFDF6:  STR             R1, [R0]; CMirrors::pZBuffer
5BFDF8:  POP             {R7,PC}
