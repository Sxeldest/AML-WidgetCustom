; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins14RenderWeaponCBEP8RpAtomic
; Address            : 0x5D6150 - 0x5D61C2
; =========================================================

5D6150:  PUSH            {R4,R5,R7,LR}
5D6152:  ADD             R7, SP, #8
5D6154:  MOV             R4, R0
5D6156:  LDR             R0, =(_ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr - 0x5D615E)
5D6158:  LDR             R1, [R4,#0x3C]
5D615A:  ADD             R0, PC; _ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr
5D615C:  LDR             R2, [R0]; CVisibilityPlugins::ms_framePluginOffset ...
5D615E:  LDR             R0, [R1,#4]
5D6160:  LDR             R1, [R2]; CVisibilityPlugins::ms_framePluginOffset
5D6162:  LDR             R5, [R0,R1]
5D6164:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5D6168:  LDR             R1, =(_ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr - 0x5D6172)
5D616A:  VLDR            S0, [R0,#0x30]
5D616E:  ADD             R1, PC; _ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr
5D6170:  LDR             R2, =(TheCamera_ptr - 0x5D617C)
5D6172:  VLDR            D16, [R0,#0x34]
5D6176:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn ...
5D6178:  ADD             R2, PC; TheCamera_ptr
5D617A:  LDR             R2, [R2]; TheCamera
5D617C:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn
5D617E:  VLDR            S4, [R2,#0xEC]
5D6182:  VLDR            S2, [R1]
5D6186:  VLDR            D17, [R1,#4]
5D618A:  VSUB.F32        S0, S0, S2
5D618E:  VLDR            S2, [R5,#0x30]
5D6192:  VSUB.F32        D16, D16, D17
5D6196:  VMUL.F32        S2, S2, S4
5D619A:  VMUL.F32        D2, D16, D16
5D619E:  VMUL.F32        S0, S0, S0
5D61A2:  VMUL.F32        S2, S2, S2
5D61A6:  VADD.F32        S0, S0, S4
5D61AA:  VADD.F32        S0, S0, S5
5D61AE:  VCMPE.F32       S0, S2
5D61B2:  VMRS            APSR_nzcv, FPSCR
5D61B6:  ITT LT
5D61B8:  MOVLT           R0, R4
5D61BA:  BLXLT.W         j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D61BE:  MOV             R0, R4
5D61C0:  POP             {R4,R5,R7,PC}
