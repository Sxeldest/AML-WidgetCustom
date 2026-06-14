; =========================================================
; Game Engine Function: _ZN8CShadows8ShutdownEv
; Address            : 0x5B8AAC - 0x5B8B44
; =========================================================

5B8AAC:  PUSH            {R7,LR}
5B8AAE:  MOV             R7, SP
5B8AB0:  LDR             R0, =(gpShadowCarTex_ptr - 0x5B8AB6)
5B8AB2:  ADD             R0, PC; gpShadowCarTex_ptr
5B8AB4:  LDR             R0, [R0]; gpShadowCarTex
5B8AB6:  LDR             R0, [R0]
5B8AB8:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8ABC:  LDR             R0, =(gpShadowPedTex_ptr - 0x5B8AC2)
5B8ABE:  ADD             R0, PC; gpShadowPedTex_ptr
5B8AC0:  LDR             R0, [R0]; gpShadowPedTex
5B8AC2:  LDR             R0, [R0]
5B8AC4:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8AC8:  LDR             R0, =(gpShadowHeliTex_ptr - 0x5B8ACE)
5B8ACA:  ADD             R0, PC; gpShadowHeliTex_ptr
5B8ACC:  LDR             R0, [R0]; gpShadowHeliTex
5B8ACE:  LDR             R0, [R0]
5B8AD0:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8AD4:  LDR             R0, =(gpShadowBikeTex_ptr - 0x5B8ADA)
5B8AD6:  ADD             R0, PC; gpShadowBikeTex_ptr
5B8AD8:  LDR             R0, [R0]; gpShadowBikeTex
5B8ADA:  LDR             R0, [R0]
5B8ADC:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8AE0:  LDR             R0, =(gpShadowBaronTex_ptr - 0x5B8AE6)
5B8AE2:  ADD             R0, PC; gpShadowBaronTex_ptr
5B8AE4:  LDR             R0, [R0]; gpShadowBaronTex
5B8AE6:  LDR             R0, [R0]
5B8AE8:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8AEC:  LDR             R0, =(gpShadowExplosionTex_ptr - 0x5B8AF2)
5B8AEE:  ADD             R0, PC; gpShadowExplosionTex_ptr
5B8AF0:  LDR             R0, [R0]; gpShadowExplosionTex
5B8AF2:  LDR             R0, [R0]
5B8AF4:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8AF8:  LDR             R0, =(gpShadowHeadLightsTex_ptr - 0x5B8AFE)
5B8AFA:  ADD             R0, PC; gpShadowHeadLightsTex_ptr
5B8AFC:  LDR             R0, [R0]; gpShadowHeadLightsTex
5B8AFE:  LDR             R0, [R0]
5B8B00:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8B04:  LDR             R0, =(gpShadowHeadLightsTex2_ptr - 0x5B8B0A)
5B8B06:  ADD             R0, PC; gpShadowHeadLightsTex2_ptr
5B8B08:  LDR             R0, [R0]; gpShadowHeadLightsTex2
5B8B0A:  LDR             R0, [R0]
5B8B0C:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8B10:  LDR             R0, =(gpBloodPoolTex_ptr - 0x5B8B16)
5B8B12:  ADD             R0, PC; gpBloodPoolTex_ptr
5B8B14:  LDR             R0, [R0]; gpBloodPoolTex
5B8B16:  LDR             R0, [R0]
5B8B18:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8B1C:  LDR             R0, =(gpHandManTex_ptr - 0x5B8B22)
5B8B1E:  ADD             R0, PC; gpHandManTex_ptr
5B8B20:  LDR             R0, [R0]; gpHandManTex
5B8B22:  LDR             R0, [R0]
5B8B24:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8B28:  LDR             R0, =(gpCrackedGlassTex_ptr - 0x5B8B2E)
5B8B2A:  ADD             R0, PC; gpCrackedGlassTex_ptr
5B8B2C:  LDR             R0, [R0]; gpCrackedGlassTex
5B8B2E:  LDR             R0, [R0]
5B8B30:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5B8B34:  LDR             R0, =(gpPostShadowTex_ptr - 0x5B8B3A)
5B8B36:  ADD             R0, PC; gpPostShadowTex_ptr
5B8B38:  LDR             R0, [R0]; gpPostShadowTex
5B8B3A:  LDR             R0, [R0]
5B8B3C:  POP.W           {R7,LR}
5B8B40:  B.W             sub_199068
