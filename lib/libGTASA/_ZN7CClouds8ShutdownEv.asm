; =========================================================
; Game Engine Function: _ZN7CClouds8ShutdownEv
; Address            : 0x59EA94 - 0x59EAD0
; =========================================================

59EA94:  PUSH            {R4-R7,LR}
59EA96:  ADD             R7, SP, #0xC
59EA98:  PUSH.W          {R8}
59EA9C:  LDR             R0, =(gpCloudTex_ptr - 0x59EAA2)
59EA9E:  ADD             R0, PC; gpCloudTex_ptr
59EAA0:  LDR             R4, [R0]; gpCloudTex
59EAA2:  LDR             R0, [R4]
59EAA4:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
59EAA8:  LDR             R0, [R4,#(dword_A23DEC - 0xA23DE8)]
59EAAA:  MOVS            R5, #0
59EAAC:  STR             R5, [R4]
59EAAE:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
59EAB2:  LDR             R0, =(_ZN7CClouds5ms_vcE_ptr - 0x59EABE)
59EAB4:  MOVW            R8, #(dword_A25340 - 0xA23E28)
59EAB8:  STR             R5, [R4,#(dword_A23DEC - 0xA23DE8)]
59EABA:  ADD             R0, PC; _ZN7CClouds5ms_vcE_ptr
59EABC:  LDR             R6, [R0]; CClouds::ms_vc ...
59EABE:  LDR.W           R0, [R6,R8]
59EAC2:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
59EAC6:  STR.W           R5, [R6,R8]
59EACA:  POP.W           {R8}
59EACE:  POP             {R4-R7,PC}
