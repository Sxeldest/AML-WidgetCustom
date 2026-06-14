; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins15FrustumSphereCBEP7RpClump
; Address            : 0x5D63C0 - 0x5D6414
; =========================================================

5D63C0:  PUSH            {R4,R6,R7,LR}
5D63C2:  ADD             R7, SP, #8
5D63C4:  SUB             SP, SP, #0x10
5D63C6:  MOV             R4, SP
5D63C8:  BFC.W           R4, #0, #4
5D63CC:  MOV             SP, R4
5D63CE:  LDR             R1, =(_ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr - 0x5D63D8)
5D63D0:  MOV             R4, SP
5D63D2:  LDR             R0, [R0,#4]
5D63D4:  ADD             R1, PC; _ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr
5D63D6:  LDR             R1, [R1]; CVisibilityPlugins::ms_framePluginOffset ...
5D63D8:  LDR             R1, [R1]; CVisibilityPlugins::ms_framePluginOffset
5D63DA:  LDR             R1, [R0,R1]
5D63DC:  LDR             R1, [R1,#0x2C]
5D63DE:  ADDS            R1, #0x18
5D63E0:  VLD1.32         {D16-D17}, [R1]
5D63E4:  VST1.64         {D16-D17}, [R4@128,#0x18+var_18]
5D63E8:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5D63EC:  MOV             R3, R0
5D63EE:  MOV             R0, R4
5D63F0:  MOV             R1, R4
5D63F2:  MOVS            R2, #1
5D63F4:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5D63F8:  LDR             R0, =(_ZN18CVisibilityPlugins10ms_pCameraE_ptr - 0x5D6400)
5D63FA:  MOV             R1, R4
5D63FC:  ADD             R0, PC; _ZN18CVisibilityPlugins10ms_pCameraE_ptr
5D63FE:  LDR             R0, [R0]; CVisibilityPlugins::ms_pCamera ...
5D6400:  LDR             R0, [R0]; CVisibilityPlugins::ms_pCamera
5D6402:  BLX.W           j__Z25RwCameraFrustumTestSpherePK8RwCameraPK8RwSphere; RwCameraFrustumTestSphere(RwCamera const*,RwSphere const*)
5D6406:  SUB.W           R4, R7, #-var_8
5D640A:  CMP             R0, #0
5D640C:  IT NE
5D640E:  MOVNE           R0, #1
5D6410:  MOV             SP, R4
5D6412:  POP             {R4,R6,R7,PC}
