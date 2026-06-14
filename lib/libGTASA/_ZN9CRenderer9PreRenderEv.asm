; =========================================================
; Game Engine Function: _ZN9CRenderer9PreRenderEv
; Address            : 0x40F940 - 0x40FB06
; =========================================================

40F940:  PUSH            {R4-R7,LR}
40F942:  ADD             R7, SP, #0xC
40F944:  PUSH.W          {R11}
40F948:  LDR             R0, =(RQCaps_ptr - 0x40F950)
40F94A:  LDR             R1, =(FadeDistMult_ptr - 0x40F954)
40F94C:  ADD             R0, PC; RQCaps_ptr
40F94E:  LDR             R2, =(_ZN14MobileSettings8settingsE_ptr - 0x40F958)
40F950:  ADD             R1, PC; FadeDistMult_ptr
40F952:  LDR             R0, [R0]; RQCaps
40F954:  ADD             R2, PC; _ZN14MobileSettings8settingsE_ptr
40F956:  LDR             R1, [R1]; FadeDistMult
40F958:  LDR             R2, [R2]; MobileSettings::settings ...
40F95A:  LDRB            R3, [R0,#(byte_6B8BA0 - 0x6B8B9C)]
40F95C:  LDRB            R6, [R0,#(byte_6B8BA1 - 0x6B8B9C)]
40F95E:  LDRB            R5, [R0,#(byte_6B8BAA - 0x6B8B9C)]
40F960:  MOV.W           R0, #0x3F800000
40F964:  STR             R0, [R1]
40F966:  ORR.W           R1, R6, R3
40F96A:  ORRS            R1, R5
40F96C:  LDR             R0, [R2,#(dword_6E03FC - 0x6E03F4)]
40F96E:  LSLS            R1, R1, #0x18
40F970:  BEQ             loc_40F982
40F972:  CMP             R0, #2
40F974:  BEQ             loc_40F992
40F976:  CMP             R0, #1
40F978:  BEQ             loc_40F9A0
40F97A:  CBNZ            R0, loc_40F9B6
40F97C:  LDR             R0, =(FadeDistMult_ptr - 0x40F982)
40F97E:  ADD             R0, PC; FadeDistMult_ptr
40F980:  B               loc_40F98C
40F982:  CMP             R0, #1
40F984:  BEQ             loc_40F9AA
40F986:  CBNZ            R0, loc_40F9B6
40F988:  LDR             R0, =(FadeDistMult_ptr - 0x40F98E)
40F98A:  ADD             R0, PC; FadeDistMult_ptr
40F98C:  LDR             R0, [R0]; FadeDistMult
40F98E:  MOVS            R1, #0
40F990:  B               loc_40F9B4
40F992:  LDR             R0, =(FadeDistMult_ptr - 0x40F9A0)
40F994:  MOV             R1, #0x3F19999A
40F99C:  ADD             R0, PC; FadeDistMult_ptr
40F99E:  B               loc_40F9B2
40F9A0:  LDR             R0, =(FadeDistMult_ptr - 0x40F9AA)
40F9A2:  MOV.W           R1, #0x3E800000
40F9A6:  ADD             R0, PC; FadeDistMult_ptr
40F9A8:  B               loc_40F9B2
40F9AA:  LDR             R0, =(FadeDistMult_ptr - 0x40F9B4)
40F9AC:  MOV.W           R1, #0x3F000000
40F9B0:  ADD             R0, PC; FadeDistMult_ptr
40F9B2:  LDR             R0, [R0]; FadeDistMult
40F9B4:  STR             R1, [R0]
40F9B6:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x40F9BC)
40F9B8:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
40F9BA:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleLods ...
40F9BC:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleLods
40F9BE:  CMP             R0, #1
40F9C0:  BLT             loc_40F9E2
40F9C2:  LDR             R0, =(_ZN9CRenderer18ms_aVisibleLodPtrsE_ptr - 0x40F9CA)
40F9C4:  MOVS            R4, #0
40F9C6:  ADD             R0, PC; _ZN9CRenderer18ms_aVisibleLodPtrsE_ptr
40F9C8:  LDR             R5, [R0]; CRenderer::ms_aVisibleLodPtrs ...
40F9CA:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x40F9D0)
40F9CC:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
40F9CE:  LDR             R6, [R0]; CRenderer::ms_nNoOfVisibleLods ...
40F9D0:  LDR.W           R0, [R5,R4,LSL#2]
40F9D4:  LDR             R1, [R0]
40F9D6:  LDR             R1, [R1,#0x48]
40F9D8:  BLX             R1
40F9DA:  LDR             R0, [R6]; CRenderer::ms_nNoOfVisibleLods
40F9DC:  ADDS            R4, #1
40F9DE:  CMP             R4, R0
40F9E0:  BLT             loc_40F9D0
40F9E2:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40F9E8)
40F9E4:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40F9E6:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40F9E8:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities
40F9EA:  CMP             R0, #1
40F9EC:  BLT             loc_40FA0E
40F9EE:  LDR             R0, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x40F9F6)
40F9F0:  MOVS            R4, #0
40F9F2:  ADD             R0, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
40F9F4:  LDR             R5, [R0]; CRenderer::ms_aVisibleEntityPtrs ...
40F9F6:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40F9FC)
40F9F8:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40F9FA:  LDR             R6, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
40F9FC:  LDR.W           R0, [R5,R4,LSL#2]
40FA00:  LDR             R1, [R0]
40FA02:  LDR             R1, [R1,#0x48]
40FA04:  BLX             R1
40FA06:  LDR             R0, [R6]; CRenderer::ms_nNoOfVisibleEntities
40FA08:  ADDS            R4, #1
40FA0A:  CMP             R4, R0
40FA0C:  BLT             loc_40F9FC
40FA0E:  LDR             R0, =(_ZN9CRenderer24ms_nNoOfVisibleSuperLodsE_ptr - 0x40FA14)
40FA10:  ADD             R0, PC; _ZN9CRenderer24ms_nNoOfVisibleSuperLodsE_ptr
40FA12:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleSuperLods ...
40FA14:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleSuperLods
40FA16:  CMP             R0, #1
40FA18:  BLT             loc_40FA3A
40FA1A:  LDR             R0, =(_ZN9CRenderer23ms_aVisibleSuperLodPtrsE_ptr - 0x40FA22)
40FA1C:  MOVS            R4, #0
40FA1E:  ADD             R0, PC; _ZN9CRenderer23ms_aVisibleSuperLodPtrsE_ptr
40FA20:  LDR             R5, [R0]; CRenderer::ms_aVisibleSuperLodPtrs ...
40FA22:  LDR             R0, =(_ZN9CRenderer24ms_nNoOfVisibleSuperLodsE_ptr - 0x40FA28)
40FA24:  ADD             R0, PC; _ZN9CRenderer24ms_nNoOfVisibleSuperLodsE_ptr
40FA26:  LDR             R6, [R0]; CRenderer::ms_nNoOfVisibleSuperLods ...
40FA28:  LDR.W           R0, [R5,R4,LSL#2]
40FA2C:  LDR             R1, [R0]
40FA2E:  LDR             R1, [R1,#0x48]
40FA30:  BLX             R1
40FA32:  LDR             R0, [R6]; CRenderer::ms_nNoOfVisibleSuperLods
40FA34:  ADDS            R4, #1
40FA36:  CMP             R4, R0
40FA38:  BLT             loc_40FA28
40FA3A:  LDR             R0, =(_ZN9CRenderer25ms_nNoOfInVisibleEntitiesE_ptr - 0x40FA40)
40FA3C:  ADD             R0, PC; _ZN9CRenderer25ms_nNoOfInVisibleEntitiesE_ptr
40FA3E:  LDR             R0, [R0]; CRenderer::ms_nNoOfInVisibleEntities ...
40FA40:  LDR             R0, [R0]; CRenderer::ms_nNoOfInVisibleEntities
40FA42:  CMP             R0, #1
40FA44:  BLT             loc_40FA66
40FA46:  LDR             R0, =(_ZN9CRenderer23ms_aInVisibleEntityPtrsE_ptr - 0x40FA4E)
40FA48:  MOVS            R4, #0
40FA4A:  ADD             R0, PC; _ZN9CRenderer23ms_aInVisibleEntityPtrsE_ptr
40FA4C:  LDR             R5, [R0]; CRenderer::ms_aInVisibleEntityPtrs ...
40FA4E:  LDR             R0, =(_ZN9CRenderer25ms_nNoOfInVisibleEntitiesE_ptr - 0x40FA54)
40FA50:  ADD             R0, PC; _ZN9CRenderer25ms_nNoOfInVisibleEntitiesE_ptr
40FA52:  LDR             R6, [R0]; CRenderer::ms_nNoOfInVisibleEntities ...
40FA54:  LDR.W           R0, [R5,R4,LSL#2]
40FA58:  LDR             R1, [R0]
40FA5A:  LDR             R1, [R1,#0x48]
40FA5C:  BLX             R1
40FA5E:  LDR             R0, [R6]; CRenderer::ms_nNoOfInVisibleEntities
40FA60:  ADDS            R4, #1
40FA62:  CMP             R4, R0
40FA64:  BLT             loc_40FA54
40FA66:  LDR             R0, =(_ZN18CVisibilityPlugins17m_alphaEntityListE_ptr - 0x40FA6C)
40FA68:  ADD             R0, PC; _ZN18CVisibilityPlugins17m_alphaEntityListE_ptr
40FA6A:  LDR             R0, [R0]; CVisibilityPlugins::m_alphaEntityList ...
40FA6C:  LDR             R4, [R0,#(dword_A8402C - 0xA8401C)]
40FA6E:  ADDS            R0, #0x14
40FA70:  CMP             R4, R0
40FA72:  BEQ             loc_40FAA6
40FA74:  LDR             R0, =(_ZN18CVisibilityPlugins12RenderEntityEPvf_ptr - 0x40FA7A)
40FA76:  ADD             R0, PC; _ZN18CVisibilityPlugins12RenderEntityEPvf_ptr
40FA78:  LDR             R5, [R0]; CVisibilityPlugins::RenderEntity(void *,float)
40FA7A:  LDR             R0, =(_ZN18CVisibilityPlugins17m_alphaEntityListE_ptr - 0x40FA80)
40FA7C:  ADD             R0, PC; _ZN18CVisibilityPlugins17m_alphaEntityListE_ptr
40FA7E:  LDR             R0, [R0]; CVisibilityPlugins::m_alphaEntityList ...
40FA80:  ADD.W           R6, R0, #0x14
40FA84:  LDR             R0, [R4,#4]
40FA86:  CMP             R0, R5
40FA88:  BNE             loc_40FAA0
40FA8A:  LDR             R0, [R4]
40FA8C:  LDRD.W          R1, R2, [R0,#0x1C]
40FA90:  BIC.W           R1, R1, #0x20000
40FA94:  STRD.W          R1, R2, [R0,#0x1C]
40FA98:  LDR             R0, [R4]
40FA9A:  LDR             R1, [R0]
40FA9C:  LDR             R1, [R1,#0x48]
40FA9E:  BLX             R1
40FAA0:  LDR             R4, [R4,#0x10]
40FAA2:  CMP             R4, R6
40FAA4:  BNE             loc_40FA84
40FAA6:  LDR             R0, =(_ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr - 0x40FAAC)
40FAA8:  ADD             R0, PC; _ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr
40FAAA:  LDR             R0, [R0]; CVisibilityPlugins::m_alphaUnderwaterEntityList ...
40FAAC:  LDR             R4, [R0,#(dword_A84080 - 0xA84070)]
40FAAE:  ADDS            R0, #0x14
40FAB0:  CMP             R4, R0
40FAB2:  BEQ             loc_40FAE6
40FAB4:  LDR             R0, =(_ZN18CVisibilityPlugins12RenderEntityEPvf_ptr - 0x40FABA)
40FAB6:  ADD             R0, PC; _ZN18CVisibilityPlugins12RenderEntityEPvf_ptr
40FAB8:  LDR             R5, [R0]; CVisibilityPlugins::RenderEntity(void *,float)
40FABA:  LDR             R0, =(_ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr - 0x40FAC0)
40FABC:  ADD             R0, PC; _ZN18CVisibilityPlugins27m_alphaUnderwaterEntityListE_ptr
40FABE:  LDR             R0, [R0]; CVisibilityPlugins::m_alphaUnderwaterEntityList ...
40FAC0:  ADD.W           R6, R0, #0x14
40FAC4:  LDR             R0, [R4,#4]
40FAC6:  CMP             R0, R5
40FAC8:  BNE             loc_40FAE0
40FACA:  LDR             R0, [R4]
40FACC:  LDRD.W          R1, R2, [R0,#0x1C]
40FAD0:  BIC.W           R1, R1, #0x20000
40FAD4:  STRD.W          R1, R2, [R0,#0x1C]
40FAD8:  LDR             R0, [R4]
40FADA:  LDR             R1, [R0]
40FADC:  LDR             R1, [R1,#0x48]
40FADE:  BLX             R1
40FAE0:  LDR             R4, [R4,#0x10]
40FAE2:  CMP             R4, R6
40FAE4:  BNE             loc_40FAC4
40FAE6:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x40FAEC)
40FAE8:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
40FAEA:  LDR             R0, [R0]; MobileSettings::settings ...
40FAEC:  LDR.W           R0, [R0,#(dword_6E049C - 0x6E03F4)]; this
40FAF0:  CMP             R0, #2
40FAF2:  ITT EQ
40FAF4:  POPEQ.W         {R11}
40FAF8:  POPEQ           {R4-R7,PC}
40FAFA:  POP.W           {R11}
40FAFE:  POP.W           {R4-R7,LR}
40FB02:  B.W             j_j__ZN8CShadows24RenderExtraPlayerShadowsEv; j_CShadows::RenderExtraPlayerShadows(void)
