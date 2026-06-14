; =========================================================
; Game Engine Function: _ZN10C3dMarkers17User3dMarkersDrawEv
; Address            : 0x5BF1A8 - 0x5BF2FC
; =========================================================

5BF1A8:  PUSH            {R4-R7,LR}
5BF1AA:  ADD             R7, SP, #0xC
5BF1AC:  PUSH.W          {R8-R11}
5BF1B0:  SUB             SP, SP, #4
5BF1B2:  VPUSH           {D8-D10}
5BF1B6:  SUB             SP, SP, #0x20
5BF1B8:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF1C6)
5BF1BA:  VMOV.F32        S20, #0.25
5BF1BE:  LDR             R1, =(_ZN10C3dMarkers14m_angleDiamondE_ptr - 0x5BF1CC)
5BF1C0:  MOVS            R5, #0
5BF1C2:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF1C4:  VLDR            S16, =3.1416
5BF1C8:  ADD             R1, PC; _ZN10C3dMarkers14m_angleDiamondE_ptr
5BF1CA:  VLDR            S18, =180.0
5BF1CE:  LDR.W           R10, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF1D2:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BF1D8)
5BF1D4:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BF1D6:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BF1D8:  STR             R0, [SP,#0x58+var_4C]
5BF1DA:  LDR             R0, [R1]; C3dMarkers::m_angleDiamond ...
5BF1DC:  STR             R0, [SP,#0x58+var_50]
5BF1DE:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF1E4)
5BF1E0:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF1E2:  LDR             R0, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF1E4:  STR             R0, [SP,#0x58+var_54]
5BF1E6:  LDR             R0, =(_ZN10C3dMarkers19m_user3dMarkerColorE_ptr - 0x5BF1EC)
5BF1E8:  ADD             R0, PC; _ZN10C3dMarkers19m_user3dMarkerColorE_ptr
5BF1EA:  LDR.W           R8, [R0]; C3dMarkers::m_user3dMarkerColor ...
5BF1EE:  LDR             R0, =(_ZN10C3dMarkers20User3dMarkerAtomicCBEP8RpAtomicPv_ptr - 0x5BF1F4)
5BF1F0:  ADD             R0, PC; _ZN10C3dMarkers20User3dMarkerAtomicCBEP8RpAtomicPv_ptr
5BF1F2:  LDR             R0, [R0]; C3dMarkers::User3dMarkerAtomicCB(RpAtomic *,void *)
5BF1F4:  STR             R0, [SP,#0x58+var_58]
5BF1F6:  LDR             R0, =(_ZN12CPostEffects6ms_imfE_ptr - 0x5BF1FC)
5BF1F8:  ADD             R0, PC; _ZN12CPostEffects6ms_imfE_ptr
5BF1FA:  LDR.W           R11, [R0]; CPostEffects::ms_imf ...
5BF1FE:  MOVS            R0, #0
5BF200:  LDRB.W          R1, [R10,R5]
5BF204:  CMP             R1, #0
5BF206:  BEQ             loc_5BF2C0
5BF208:  LSLS            R0, R0, #0x1F
5BF20A:  BNE             loc_5BF242
5BF20C:  ADD.W           R1, R11, #0x13C
5BF210:  MOVS            R0, #0x14
5BF212:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5BF216:  ADD.W           R1, R11, #0x140
5BF21A:  MOVS            R0, #6
5BF21C:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5BF220:  ADD.W           R1, R11, #0x144
5BF224:  MOVS            R0, #8
5BF226:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5BF22A:  MOVS            R0, #0x14
5BF22C:  MOVS            R1, #1
5BF22E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF232:  MOVS            R0, #6
5BF234:  MOVS            R1, #1
5BF236:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF23A:  MOVS            R0, #8
5BF23C:  MOVS            R1, #0
5BF23E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF242:  LDR             R0, [SP,#0x58+var_4C]
5BF244:  LDR             R6, [R0,#0x14]
5BF246:  LDR             R0, [SP,#0x58+var_50]
5BF248:  VLDR            S0, [R0]
5BF24C:  VMUL.F32        S0, S0, S16
5BF250:  VDIV.F32        S0, S0, S18
5BF254:  VMOV            R0, S0; x
5BF258:  BLX.W           sinf
5BF25C:  VMOV            S0, R0
5BF260:  LDR             R0, [SP,#0x58+var_54]
5BF262:  VMUL.F32        S0, S0, S20
5BF266:  ADD.W           R9, R0, R5
5BF26A:  LDR.W           R0, [R9,#0xC]
5BF26E:  STR             R0, [SP,#0x58+var_40]
5BF270:  VLDR            S2, [SP,#0x58+var_40]
5BF274:  VLDR            D16, [R9,#4]
5BF278:  VADD.F32        S0, S2, S0
5BF27C:  VSTR            D16, [SP,#0x58+var_48]
5BF280:  LDR             R4, [R6,#4]
5BF282:  MOV             R0, R4
5BF284:  VSTR            S0, [SP,#0x58+var_40]
5BF288:  BLX.W           j__Z18RwFrameSetIdentityP7RwFrame; RwFrameSetIdentity(RwFrame *)
5BF28C:  ADD             R1, SP, #0x58+var_48
5BF28E:  MOV             R0, R4
5BF290:  MOVS            R2, #0
5BF292:  BLX.W           j__Z16RwFrameTranslateP7RwFramePK5RwV3d15RwOpCombineType; RwFrameTranslate(RwFrame *,RwV3d const*,RwOpCombineType)
5BF296:  ADD.W           R2, R9, #0x10
5BF29A:  LDM             R2, {R0-R2}
5BF29C:  STRB.W          R0, [R8]; C3dMarkers::m_user3dMarkerColor
5BF2A0:  MOVS            R0, #0xFF
5BF2A2:  STRB.W          R1, [R8,#(_ZN10C3dMarkers19m_user3dMarkerColorE+1 - 0xA59FBC)]; C3dMarkers::m_user3dMarkerColor
5BF2A6:  LDR             R1, [SP,#0x58+var_58]
5BF2A8:  STRB.W          R0, [R8,#(_ZN10C3dMarkers19m_user3dMarkerColorE+3 - 0xA59FBC)]; C3dMarkers::m_user3dMarkerColor
5BF2AC:  MOV             R0, R6
5BF2AE:  STRB.W          R2, [R8,#(_ZN10C3dMarkers19m_user3dMarkerColorE+2 - 0xA59FBC)]; C3dMarkers::m_user3dMarkerColor
5BF2B2:  MOVS            R2, #0
5BF2B4:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5BF2B8:  MOV             R0, R6
5BF2BA:  BLX.W           j__Z13RpClumpRenderP7RpClump; RpClumpRender(RpClump *)
5BF2BE:  MOVS            R0, #1
5BF2C0:  ADDS            R5, #0x1C
5BF2C2:  CMP             R5, #0x8C
5BF2C4:  BNE             loc_5BF200
5BF2C6:  LSLS            R0, R0, #0x1F
5BF2C8:  BEQ             loc_5BF2EE
5BF2CA:  LDR             R0, =(_ZN12CPostEffects6ms_imfE_ptr - 0x5BF2D0)
5BF2CC:  ADD             R0, PC; _ZN12CPostEffects6ms_imfE_ptr
5BF2CE:  LDR             R4, [R0]; CPostEffects::ms_imf ...
5BF2D0:  MOVS            R0, #0x14
5BF2D2:  LDR.W           R1, [R4,#(dword_A477CC - 0xA47690)]
5BF2D6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF2DA:  LDR.W           R1, [R4,#(dword_A477D0 - 0xA47690)]
5BF2DE:  MOVS            R0, #6
5BF2E0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF2E4:  LDR.W           R1, [R4,#(dword_A477D4 - 0xA47690)]
5BF2E8:  MOVS            R0, #8
5BF2EA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF2EE:  ADD             SP, SP, #0x20 ; ' '
5BF2F0:  VPOP            {D8-D10}
5BF2F4:  ADD             SP, SP, #4
5BF2F6:  POP.W           {R8-R11}
5BF2FA:  POP             {R4-R7,PC}
