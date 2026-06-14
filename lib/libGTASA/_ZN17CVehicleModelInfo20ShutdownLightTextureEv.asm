; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo20ShutdownLightTextureEv
; Address            : 0x386D4C - 0x386D86
; =========================================================

386D4C:  PUSH            {R7,LR}
386D4E:  MOV             R7, SP
386D50:  LDR             R0, =(_ZN17CVehicleModelInfo17ms_pLightsTextureE_ptr - 0x386D56)
386D52:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_pLightsTextureE_ptr
386D54:  LDR             R0, [R0]; CVehicleModelInfo::ms_pLightsTexture ...
386D56:  LDR             R0, [R0]; CVehicleModelInfo::ms_pLightsTexture
386D58:  CBZ             R0, loc_386D68
386D5A:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
386D5E:  LDR             R0, =(_ZN17CVehicleModelInfo17ms_pLightsTextureE_ptr - 0x386D66)
386D60:  MOVS            R1, #0
386D62:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_pLightsTextureE_ptr
386D64:  LDR             R0, [R0]; CVehicleModelInfo::ms_pLightsTexture ...
386D66:  STR             R1, [R0]; CVehicleModelInfo::ms_pLightsTexture
386D68:  LDR             R0, =(_ZN17CVehicleModelInfo19ms_pLightsOnTextureE_ptr - 0x386D6E)
386D6A:  ADD             R0, PC; _ZN17CVehicleModelInfo19ms_pLightsOnTextureE_ptr
386D6C:  LDR             R0, [R0]; CVehicleModelInfo::ms_pLightsOnTexture ...
386D6E:  LDR             R0, [R0]; CVehicleModelInfo::ms_pLightsOnTexture
386D70:  CMP             R0, #0
386D72:  IT EQ
386D74:  POPEQ           {R7,PC}
386D76:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
386D7A:  LDR             R0, =(_ZN17CVehicleModelInfo19ms_pLightsOnTextureE_ptr - 0x386D82)
386D7C:  MOVS            R1, #0
386D7E:  ADD             R0, PC; _ZN17CVehicleModelInfo19ms_pLightsOnTextureE_ptr
386D80:  LDR             R0, [R0]; CVehicleModelInfo::ms_pLightsOnTexture ...
386D82:  STR             R1, [R0]; CVehicleModelInfo::ms_pLightsOnTexture
386D84:  POP             {R7,PC}
