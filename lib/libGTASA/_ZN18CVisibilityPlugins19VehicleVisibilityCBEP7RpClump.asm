; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins19VehicleVisibilityCBEP7RpClump
; Address            : 0x5D641C - 0x5D64C0
; =========================================================

5D641C:  PUSH            {R4,R6,R7,LR}
5D641E:  ADD             R7, SP, #8
5D6420:  SUB             SP, SP, #0x10
5D6422:  MOV             R4, SP
5D6424:  BFC.W           R4, #0, #4
5D6428:  MOV             SP, R4
5D642A:  MOV             R4, R0
5D642C:  LDR             R0, [R4,#4]
5D642E:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5D6432:  LDR             R1, =(_ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr - 0x5D643C)
5D6434:  VLDR            S0, [R0,#0x30]
5D6438:  ADD             R1, PC; _ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr
5D643A:  VLDR            D16, [R0,#0x34]
5D643E:  LDR             R0, =(_ZN18CVisibilityPlugins18ms_vehicleLod1DistE_ptr - 0x5D6446)
5D6440:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn ...
5D6442:  ADD             R0, PC; _ZN18CVisibilityPlugins18ms_vehicleLod1DistE_ptr
5D6444:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn
5D6446:  LDR             R0, [R0]; CVisibilityPlugins::ms_vehicleLod1Dist ...
5D6448:  VLDR            S2, [R1]
5D644C:  VLDR            D17, [R1,#4]
5D6450:  VSUB.F32        S0, S0, S2
5D6454:  VSUB.F32        D16, D16, D17
5D6458:  VMUL.F32        D1, D16, D16
5D645C:  VMUL.F32        S0, S0, S0
5D6460:  VADD.F32        S0, S0, S2
5D6464:  VADD.F32        S0, S0, S3
5D6468:  VLDR            S2, [R0]
5D646C:  VCMPE.F32       S0, S2
5D6470:  VMRS            APSR_nzcv, FPSCR
5D6474:  BLE             loc_5D647A
5D6476:  MOVS            R0, #0
5D6478:  B               loc_5D64B8
5D647A:  LDR             R0, =(_ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr - 0x5D6480)
5D647C:  ADD             R0, PC; _ZN18CVisibilityPlugins20ms_framePluginOffsetE_ptr
5D647E:  LDR             R1, [R0]; CVisibilityPlugins::ms_framePluginOffset ...
5D6480:  LDR             R0, [R4,#4]
5D6482:  MOV             R4, SP
5D6484:  LDR             R1, [R1]; CVisibilityPlugins::ms_framePluginOffset
5D6486:  LDR             R1, [R0,R1]
5D6488:  LDR             R1, [R1,#0x2C]
5D648A:  ADDS            R1, #0x18
5D648C:  VLD1.32         {D16-D17}, [R1]
5D6490:  VST1.64         {D16-D17}, [R4@128,#0x18+var_18]
5D6494:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5D6498:  MOV             R3, R0
5D649A:  MOV             R0, R4
5D649C:  MOV             R1, R4
5D649E:  MOVS            R2, #1
5D64A0:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5D64A4:  LDR             R0, =(_ZN18CVisibilityPlugins10ms_pCameraE_ptr - 0x5D64AC)
5D64A6:  MOV             R1, R4
5D64A8:  ADD             R0, PC; _ZN18CVisibilityPlugins10ms_pCameraE_ptr
5D64AA:  LDR             R0, [R0]; CVisibilityPlugins::ms_pCamera ...
5D64AC:  LDR             R0, [R0]; CVisibilityPlugins::ms_pCamera
5D64AE:  BLX.W           j__Z25RwCameraFrustumTestSpherePK8RwCameraPK8RwSphere; RwCameraFrustumTestSphere(RwCamera const*,RwSphere const*)
5D64B2:  CMP             R0, #0
5D64B4:  IT NE
5D64B6:  MOVNE           R0, #1
5D64B8:  SUB.W           R4, R7, #-var_8
5D64BC:  MOV             SP, R4
5D64BE:  POP             {R4,R6,R7,PC}
