; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer8ShutdownEv
; Address            : 0x2C9D78 - 0x2C9F04
; =========================================================

2C9D78:  PUSH            {R7,LR}
2C9D7A:  MOV             R7, SP
2C9D7C:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9D82)
2C9D7E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9D80:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9D82:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures
2C9D84:  CBZ             R0, loc_2C9D94
2C9D86:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9D8A:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9D92)
2C9D8C:  MOVS            R1, #0
2C9D8E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9D90:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9D92:  STR             R1, [R0]; CCarFXRenderer::ms_aDirtTextures
2C9D94:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9D9A)
2C9D96:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9D98:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9D9A:  LDR             R0, [R0,#(dword_70BEE0 - 0x70BEDC)]
2C9D9C:  CBZ             R0, loc_2C9DAC
2C9D9E:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9DA2:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9DAA)
2C9DA4:  MOVS            R1, #0
2C9DA6:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9DA8:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9DAA:  STR             R1, [R0,#(dword_70BEE0 - 0x70BEDC)]
2C9DAC:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9DB2)
2C9DAE:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9DB0:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9DB2:  LDR             R0, [R0,#(dword_70BEE4 - 0x70BEDC)]
2C9DB4:  CBZ             R0, loc_2C9DC4
2C9DB6:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9DBA:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9DC2)
2C9DBC:  MOVS            R1, #0
2C9DBE:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9DC0:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9DC2:  STR             R1, [R0,#(dword_70BEE4 - 0x70BEDC)]
2C9DC4:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9DCA)
2C9DC6:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9DC8:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9DCA:  LDR             R0, [R0,#(dword_70BEE8 - 0x70BEDC)]
2C9DCC:  CBZ             R0, loc_2C9DDC
2C9DCE:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9DD2:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9DDA)
2C9DD4:  MOVS            R1, #0
2C9DD6:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9DD8:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9DDA:  STR             R1, [R0,#(dword_70BEE8 - 0x70BEDC)]
2C9DDC:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9DE2)
2C9DDE:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9DE0:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9DE2:  LDR             R0, [R0,#(dword_70BEEC - 0x70BEDC)]
2C9DE4:  CBZ             R0, loc_2C9DF4
2C9DE6:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9DEA:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9DF2)
2C9DEC:  MOVS            R1, #0
2C9DEE:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9DF0:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9DF2:  STR             R1, [R0,#(dword_70BEEC - 0x70BEDC)]
2C9DF4:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9DFA)
2C9DF6:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9DF8:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9DFA:  LDR             R0, [R0,#(dword_70BEF0 - 0x70BEDC)]
2C9DFC:  CBZ             R0, loc_2C9E0C
2C9DFE:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9E02:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E0A)
2C9E04:  MOVS            R1, #0
2C9E06:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E08:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E0A:  STR             R1, [R0,#(dword_70BEF0 - 0x70BEDC)]
2C9E0C:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E12)
2C9E0E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E10:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E12:  LDR             R0, [R0,#(dword_70BEF4 - 0x70BEDC)]
2C9E14:  CBZ             R0, loc_2C9E24
2C9E16:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9E1A:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E22)
2C9E1C:  MOVS            R1, #0
2C9E1E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E20:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E22:  STR             R1, [R0,#(dword_70BEF4 - 0x70BEDC)]
2C9E24:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E2A)
2C9E26:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E28:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E2A:  LDR             R0, [R0,#(dword_70BEF8 - 0x70BEDC)]
2C9E2C:  CBZ             R0, loc_2C9E3C
2C9E2E:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9E32:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E3A)
2C9E34:  MOVS            R1, #0
2C9E36:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E38:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E3A:  STR             R1, [R0,#(dword_70BEF8 - 0x70BEDC)]
2C9E3C:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E42)
2C9E3E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E40:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E42:  LDR             R0, [R0,#(dword_70BEFC - 0x70BEDC)]
2C9E44:  CBZ             R0, loc_2C9E54
2C9E46:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9E4A:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E52)
2C9E4C:  MOVS            R1, #0
2C9E4E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E50:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E52:  STR             R1, [R0,#(dword_70BEFC - 0x70BEDC)]
2C9E54:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E5A)
2C9E56:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E58:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E5A:  LDR             R0, [R0,#(dword_70BF00 - 0x70BEDC)]
2C9E5C:  CBZ             R0, loc_2C9E6C
2C9E5E:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9E62:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E6A)
2C9E64:  MOVS            R1, #0
2C9E66:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E68:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E6A:  STR             R1, [R0,#(dword_70BF00 - 0x70BEDC)]
2C9E6C:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E72)
2C9E6E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E70:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E72:  LDR             R0, [R0,#(dword_70BF04 - 0x70BEDC)]
2C9E74:  CBZ             R0, loc_2C9E84
2C9E76:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9E7A:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E82)
2C9E7C:  MOVS            R1, #0
2C9E7E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E80:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E82:  STR             R1, [R0,#(dword_70BF04 - 0x70BEDC)]
2C9E84:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E8A)
2C9E86:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E88:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E8A:  LDR             R0, [R0,#(dword_70BF08 - 0x70BEDC)]
2C9E8C:  CBZ             R0, loc_2C9E9C
2C9E8E:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9E92:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9E9A)
2C9E94:  MOVS            R1, #0
2C9E96:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9E98:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9E9A:  STR             R1, [R0,#(dword_70BF08 - 0x70BEDC)]
2C9E9C:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9EA2)
2C9E9E:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9EA0:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9EA2:  LDR             R0, [R0,#(dword_70BF0C - 0x70BEDC)]
2C9EA4:  CBZ             R0, loc_2C9EB4
2C9EA6:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9EAA:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9EB2)
2C9EAC:  MOVS            R1, #0
2C9EAE:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9EB0:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9EB2:  STR             R1, [R0,#(dword_70BF0C - 0x70BEDC)]
2C9EB4:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9EBA)
2C9EB6:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9EB8:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9EBA:  LDR             R0, [R0,#(dword_70BF10 - 0x70BEDC)]
2C9EBC:  CBZ             R0, loc_2C9ECC
2C9EBE:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9EC2:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9ECA)
2C9EC4:  MOVS            R1, #0
2C9EC6:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9EC8:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9ECA:  STR             R1, [R0,#(dword_70BF10 - 0x70BEDC)]
2C9ECC:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9ED2)
2C9ECE:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9ED0:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9ED2:  LDR             R0, [R0,#(dword_70BF14 - 0x70BEDC)]
2C9ED4:  CBZ             R0, loc_2C9EE4
2C9ED6:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9EDA:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9EE2)
2C9EDC:  MOVS            R1, #0
2C9EDE:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9EE0:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9EE2:  STR             R1, [R0,#(dword_70BF14 - 0x70BEDC)]
2C9EE4:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9EEA)
2C9EE6:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9EE8:  LDR             R0, [R0]; CCarFXRenderer::ms_aDirtTextures ...
2C9EEA:  LDR             R0, [R0,#(dword_70BF18 - 0x70BEDC)]
2C9EEC:  CBZ             R0, loc_2C9EFC
2C9EEE:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2C9EF2:  LDR             R0, =(_ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr - 0x2C9EFA)
2C9EF4:  MOVS            R1, #0
2C9EF6:  ADD             R0, PC; _ZN14CCarFXRenderer16ms_aDirtTexturesE_ptr
2C9EF8:  LDR             R0, [R0]; this
2C9EFA:  STR             R1, [R0,#(dword_70BF18 - 0x70BEDC)]
2C9EFC:  POP.W           {R7,LR}
2C9F00:  B.W             j_j__ZN24CCustomCarEnvMapPipeline11DestroyPipeEv; j_CCustomCarEnvMapPipeline::DestroyPipe(void)
