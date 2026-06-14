; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins19SetRenderWareCameraEP8RwCamera
; Address            : 0x5D61F8 - 0x5D62FE
; =========================================================

5D61F8:  PUSH            {R4-R7,LR}
5D61FA:  ADD             R7, SP, #0xC
5D61FC:  PUSH.W          {R8}
5D6200:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x5D620C)
5D6202:  VMOV.F32        S8, #20.0
5D6206:  LDR             R3, =(_ZN18CVisibilityPlugins13ms_pedLodDistE_ptr - 0x5D6210)
5D6208:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
5D620A:  LDR             R5, =(_ZN18CVisibilityPlugins18ms_vehicleLod1DistE_ptr - 0x5D6218)
5D620C:  ADD             R3, PC; _ZN18CVisibilityPlugins13ms_pedLodDistE_ptr
5D620E:  VLDR            S10, =45.0
5D6212:  LDR             R1, [R1]; MobileSettings::settings ...
5D6214:  ADD             R5, PC; _ZN18CVisibilityPlugins18ms_vehicleLod1DistE_ptr
5D6216:  LDR.W           LR, [R3]; CVisibilityPlugins::ms_pedLodDist ...
5D621A:  LDR             R3, [R5]; CVisibilityPlugins::ms_vehicleLod1Dist ...
5D621C:  ADR             R5, dword_5D6318
5D621E:  LDR             R1, [R1,#(dword_6E03FC - 0x6E03F4)]
5D6220:  VLDR            S12, =70.0
5D6224:  CMP             R1, #0
5D6226:  VLDR            S14, =150.0
5D622A:  IT EQ
5D622C:  ADDEQ           R5, #4
5D622E:  CMP             R1, #0
5D6230:  LDR             R1, =(_ZN18CVisibilityPlugins10ms_pCameraE_ptr - 0x5D623C)
5D6232:  VLDR            S0, [R5]
5D6236:  ADR             R5, dword_5D6324
5D6238:  ADD             R1, PC; _ZN18CVisibilityPlugins10ms_pCameraE_ptr
5D623A:  IT EQ
5D623C:  ADDEQ           R5, #4
5D623E:  VLDR            S2, [R5]
5D6242:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCamera ...
5D6244:  LDR             R4, =(_ZN18CVisibilityPlugins14ms_pedFadeDistE_ptr - 0x5D624E)
5D6246:  LDR             R2, =(_ZN18CVisibilityPlugins21ms_bigVehicleLod0DistE_ptr - 0x5D6252)
5D6248:  STR             R0, [R1]; CVisibilityPlugins::ms_pCamera
5D624A:  ADD             R4, PC; _ZN18CVisibilityPlugins14ms_pedFadeDistE_ptr
5D624C:  LDR             R1, =(_ZN18CVisibilityPlugins19ms_cullBigCompsDistE_ptr - 0x5D6256)
5D624E:  ADD             R2, PC; _ZN18CVisibilityPlugins21ms_bigVehicleLod0DistE_ptr
5D6250:  LDR             R0, [R0,#4]
5D6252:  ADD             R1, PC; _ZN18CVisibilityPlugins19ms_cullBigCompsDistE_ptr
5D6254:  LDR             R6, =(_ZN18CVisibilityPlugins18ms_vehicleLod0DistE_ptr - 0x5D6262)
5D6256:  ADDS            R0, #0x40 ; '@'
5D6258:  LDR.W           R8, [R4]; CVisibilityPlugins::ms_pedFadeDist ...
5D625C:  LDR             R5, [R1]; CVisibilityPlugins::ms_cullBigCompsDist ...
5D625E:  ADD             R6, PC; _ZN18CVisibilityPlugins18ms_vehicleLod0DistE_ptr
5D6260:  LDR             R1, =(_ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr - 0x5D6268)
5D6262:  LDR             R4, =(_ZN18CVisibilityPlugins33ms_vehicleLod0RenderMultiPassDistE_ptr - 0x5D626E)
5D6264:  ADD             R1, PC; _ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr
5D6266:  LDR.W           R12, [R2]; CVisibilityPlugins::ms_bigVehicleLod0Dist ...
5D626A:  ADD             R4, PC; _ZN18CVisibilityPlugins33ms_vehicleLod0RenderMultiPassDistE_ptr
5D626C:  LDR             R2, [R6]; CVisibilityPlugins::ms_vehicleLod0Dist ...
5D626E:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn ...
5D6270:  LDR             R4, [R4]; CVisibilityPlugins::ms_vehicleLod0RenderMultiPassDist ...
5D6272:  STR             R0, [R1]; CVisibilityPlugins::ms_pCameraPosn
5D6274:  LDR             R1, =(TheCamera_ptr - 0x5D627C)
5D6276:  LDR             R0, =(_ZN18CVisibilityPlugins16ms_cullCompsDistE_ptr - 0x5D627E)
5D6278:  ADD             R1, PC; TheCamera_ptr
5D627A:  ADD             R0, PC; _ZN18CVisibilityPlugins16ms_cullCompsDistE_ptr
5D627C:  LDR             R1, [R1]; TheCamera
5D627E:  LDR             R0, [R0]; CVisibilityPlugins::ms_cullCompsDist ...
5D6280:  VLDR            S4, [R1,#0xEC]
5D6284:  VLDR            S6, [R1,#0xF0]
5D6288:  VMUL.F32        S2, S4, S2
5D628C:  VMUL.F32        S10, S6, S10
5D6290:  VMUL.F32        S12, S6, S12
5D6294:  VMUL.F32        S6, S6, S14
5D6298:  VLDR            S14, =50.0
5D629C:  VMUL.F32        S0, S4, S0
5D62A0:  VMUL.F32        S8, S4, S8
5D62A4:  VMUL.F32        S4, S4, S14
5D62A8:  VMUL.F32        S2, S2, S2
5D62AC:  VMUL.F32        S10, S10, S10
5D62B0:  VMUL.F32        S12, S12, S12
5D62B4:  VMUL.F32        S6, S6, S6
5D62B8:  VMUL.F32        S0, S0, S0
5D62BC:  VMUL.F32        S8, S8, S8
5D62C0:  VMUL.F32        S4, S4, S4
5D62C4:  VADD.F32        S2, S2, S2
5D62C8:  VADD.F32        S10, S10, S10
5D62CC:  VADD.F32        S12, S12, S12
5D62D0:  VADD.F32        S6, S6, S6
5D62D4:  VADD.F32        S0, S0, S0
5D62D8:  VSTR            S8, [R0]
5D62DC:  VSTR            S4, [R5]
5D62E0:  VSTR            S2, [LR]
5D62E4:  VSTR            S10, [R4]
5D62E8:  VSTR            S12, [R2]
5D62EC:  VSTR            S6, [R3]
5D62F0:  VSTR            S6, [R12]
5D62F4:  VSTR            S0, [R8]
5D62F8:  POP.W           {R8}
5D62FC:  POP             {R4-R7,PC}
