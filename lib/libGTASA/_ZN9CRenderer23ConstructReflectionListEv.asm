; =========================================================
; Game Engine Function: _ZN9CRenderer23ConstructReflectionListEv
; Address            : 0x40EDA8 - 0x40EEDE
; =========================================================

40EDA8:  PUSH            {R4,R6,R7,LR}
40EDAA:  ADD             R7, SP, #8
40EDAC:  LDR             R0, =(TheCamera_ptr - 0x40EDB2)
40EDAE:  ADD             R0, PC; TheCamera_ptr
40EDB0:  LDR             R0, [R0]; TheCamera
40EDB2:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
40EDB4:  ADD.W           R2, R1, #0x30 ; '0'
40EDB8:  CMP             R1, #0
40EDBA:  IT EQ
40EDBC:  ADDEQ           R2, R0, #4
40EDBE:  LDM             R2, {R0-R2}
40EDC0:  BLX             j__ZN10CCullZones28FindTunnelAttributesForCoorsE7CVector; CCullZones::FindTunnelAttributesForCoors(CVector)
40EDC4:  LDR             R1, =(_ZN9CRenderer17ms_bRenderTunnelsE_ptr - 0x40EDD6)
40EDC6:  ANDS.W          R2, R0, #0x880
40EDCA:  IT NE
40EDCC:  MOVNE           R2, #1
40EDCE:  TST.W           R0, #0x80
40EDD2:  ADD             R1, PC; _ZN9CRenderer17ms_bRenderTunnelsE_ptr
40EDD4:  VMOV.F32        S0, #10.0
40EDD8:  LDR             R3, =(_ZN9CRenderer18ms_lowLodDistScaleE_ptr - 0x40EDE4)
40EDDA:  MOV.W           R4, #0
40EDDE:  LDR             R1, [R1]; CRenderer::ms_bRenderTunnels ...
40EDE0:  ADD             R3, PC; _ZN9CRenderer18ms_lowLodDistScaleE_ptr
40EDE2:  STRB            R2, [R1]; CRenderer::ms_bRenderTunnels
40EDE4:  MOV.W           R1, #1
40EDE8:  IT EQ
40EDEA:  BICEQ.W         R1, R1, R0,LSR#11
40EDEE:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x40EDF6)
40EDF0:  LDR             R2, =(_ZN9CRenderer12ms_bInTheSkyE_ptr - 0x40EDFA)
40EDF2:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
40EDF4:  LDR             R3, [R3]; CRenderer::ms_lowLodDistScale ...
40EDF6:  ADD             R2, PC; _ZN9CRenderer12ms_bInTheSkyE_ptr
40EDF8:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
40EDFA:  LDR             R2, [R2]; CRenderer::ms_bInTheSky ...
40EDFC:  VLDR            S2, [R0,#0xA8]
40EE00:  LDR             R0, =(_ZN9CRenderer24ms_bRenderOutsideTunnelsE_ptr - 0x40EE0C)
40EE02:  VMUL.F32        S0, S2, S0
40EE06:  STRB            R4, [R2]; CRenderer::ms_bInTheSky
40EE08:  ADD             R0, PC; _ZN9CRenderer24ms_bRenderOutsideTunnelsE_ptr
40EE0A:  LDR             R0, [R0]; this
40EE0C:  STRB            R1, [R0]; CRenderer::ms_bRenderOutsideTunnels
40EE0E:  VSTR            S0, [R3]
40EE12:  BLX             j__ZN10COcclusion22ProcessBeforeRenderingEv; COcclusion::ProcessBeforeRendering(void)
40EE16:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x40EE20)
40EE18:  LDR             R1, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40EE22)
40EE1A:  LDR             R2, =(_ZN9CRenderer25ms_nNoOfInVisibleEntitiesE_ptr - 0x40EE24)
40EE1C:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
40EE1E:  ADD             R1, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40EE20:  ADD             R2, PC; _ZN9CRenderer25ms_nNoOfInVisibleEntitiesE_ptr
40EE22:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleLods ...
40EE24:  LDR             R1, [R1]; CRenderer::ms_nNoOfVisibleEntities ...
40EE26:  LDR             R2, [R2]; CRenderer::ms_nNoOfInVisibleEntities ...
40EE28:  STR             R4, [R0]; CRenderer::ms_nNoOfVisibleLods
40EE2A:  MOV.W           R0, #0xFFFFFFFF; int
40EE2E:  STR             R4, [R1]; CRenderer::ms_nNoOfVisibleEntities
40EE30:  STR             R4, [R2]; CRenderer::ms_nNoOfInVisibleEntities
40EE32:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
40EE36:  LDR             R1, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x40EE3E)
40EE38:  LDR             R2, =(TheCamera_ptr - 0x40EE42)
40EE3A:  ADD             R1, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
40EE3C:  LDR             R3, [R0,#0x14]
40EE3E:  ADD             R2, PC; TheCamera_ptr
40EE40:  LDR             R4, [R1]; CRenderer::ms_vecCameraPosition ...
40EE42:  CMP             R3, #0
40EE44:  LDR             R1, [R2]; TheCamera
40EE46:  ADD.W           R2, R3, #0x30 ; '0'
40EE4A:  IT EQ
40EE4C:  ADDEQ           R2, R0, #4
40EE4E:  VLDR            D16, [R2]
40EE52:  LDR             R1, [R1,#(dword_951FBC - 0x951FA8)]
40EE54:  LDR             R0, [R2,#8]
40EE56:  CMP             R1, #0
40EE58:  STR             R0, [R4,#(dword_960B58 - 0x960B50)]
40EE5A:  VSTR            D16, [R4]
40EE5E:  BEQ             loc_40EE72
40EE60:  LDRD.W          R0, R1, [R1,#0x10]; y
40EE64:  EOR.W           R1, R1, #0x80000000; x
40EE68:  BLX             atan2f
40EE6C:  VMOV            S0, R0
40EE70:  B               loc_40EE84
40EE72:  LDR             R0, =(TheCamera_ptr - 0x40EE7C)
40EE74:  VLDR            S0, =3.1416
40EE78:  ADD             R0, PC; TheCamera_ptr
40EE7A:  LDR             R0, [R0]; TheCamera
40EE7C:  VLDR            S2, [R0,#0x10]
40EE80:  VADD.F32        S0, S2, S0
40EE84:  LDR             R0, =(TheCamera_ptr - 0x40EE8C)
40EE86:  LDR             R1, =(_ZN9CRenderer17ms_fCameraHeadingE_ptr - 0x40EE92)
40EE88:  ADD             R0, PC; TheCamera_ptr
40EE8A:  LDR.W           R12, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x40EE98)
40EE8E:  ADD             R1, PC; _ZN9CRenderer17ms_fCameraHeadingE_ptr
40EE90:  LDR             R3, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x40EE9C)
40EE92:  LDR             R0, [R0]; TheCamera
40EE94:  ADD             R12, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
40EE96:  LDR             R4, =(_ZN9CRenderer21ms_pLodDontRenderListE_ptr - 0x40EEA4)
40EE98:  ADD             R3, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
40EE9A:  LDR.W           LR, =(PC_Scratch_ptr - 0x40EEA6)
40EE9E:  LDR             R1, [R1]; CRenderer::ms_fCameraHeading ...
40EEA0:  ADD             R4, PC; _ZN9CRenderer21ms_pLodDontRenderListE_ptr
40EEA2:  ADD             LR, PC; PC_Scratch_ptr
40EEA4:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
40EEA8:  LDR.W           R2, [R12]; CRenderer::ms_fFarClipPlane ...
40EEAC:  LDR.W           R12, [R4]; CRenderer::ms_pLodDontRenderList ...
40EEB0:  VSTR            S0, [R1]
40EEB4:  LDR             R3, [R3]; CRenderer::ms_pLodRenderList ...
40EEB6:  LDR.W           R4, [LR]; PC_Scratch
40EEBA:  LDR.W           R0, [R0,#0x84]
40EEBE:  STR             R0, [R2]; CRenderer::ms_fFarClipPlane
40EEC0:  ADD.W           R0, R4, #0x60 ; '`'
40EEC4:  STR             R0, [R3]; CRenderer::ms_pLodRenderList
40EEC6:  ADD.W           R0, R4, #0x8000; this
40EECA:  STR.W           R0, [R12]; CRenderer::ms_pLodDontRenderList
40EECE:  BLX             j__ZN9CRenderer9ScanWorldEv; CRenderer::ScanWorld(void)
40EED2:  BLX             j__ZN9CRenderer21ProcessLodRenderListsEv; CRenderer::ProcessLodRenderLists(void)
40EED6:  POP.W           {R4,R6,R7,LR}
40EEDA:  B.W             sub_19FB4C
