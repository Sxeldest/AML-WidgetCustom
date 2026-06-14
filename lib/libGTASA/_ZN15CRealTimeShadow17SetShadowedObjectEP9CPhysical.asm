; =========================================================
; Game Engine Function: _ZN15CRealTimeShadow17SetShadowedObjectEP9CPhysical
; Address            : 0x5B7D60 - 0x5B7EEE
; =========================================================

5B7D60:  PUSH            {R4-R7,LR}
5B7D62:  ADD             R7, SP, #0xC
5B7D64:  PUSH.W          {R11}
5B7D68:  VPUSH           {D8-D10}
5B7D6C:  SUB             SP, SP, #8
5B7D6E:  MOV             R4, R0
5B7D70:  STR             R1, [R4]
5B7D72:  LDR             R5, [R1,#0x18]
5B7D74:  CBZ             R5, loc_5B7D9C
5B7D76:  LDRB            R0, [R5]
5B7D78:  STR             R0, [R4,#0x18]
5B7D7A:  SUBS            R1, R0, #1
5B7D7C:  CMP             R1, #2
5B7D7E:  BCS             loc_5B7DA0
5B7D80:  CMP             R0, #1
5B7D82:  BEQ             loc_5B7DDE
5B7D84:  CMP             R0, #2
5B7D86:  BNE             loc_5B7E14
5B7D88:  ADD.W           R6, R4, #0x20 ; ' '
5B7D8C:  MOV             R0, R5
5B7D8E:  MOVS            R2, #1
5B7D90:  MOV             R1, R6
5B7D92:  BLX.W           j__Z24RpClumpGetBoundingSphereP7RpClumpP8RwSphereb; RpClumpGetBoundingSphere(RpClump *,RwSphere *,bool)
5B7D96:  LDR             R0, [R4,#0x2C]
5B7D98:  MOV             R1, R6
5B7D9A:  B               loc_5B7DFE
5B7D9C:  MOVS            R5, #0
5B7D9E:  B               loc_5B7EE0
5B7DA0:  LDR             R5, [R4,#8]
5B7DA2:  CBZ             R5, loc_5B7DB4
5B7DA4:  MOV             R0, R5; this
5B7DA6:  BLX.W           j__ZN13CShadowCamera7DestroyEv; CShadowCamera::Destroy(void)
5B7DAA:  MOV             R0, R5; void *
5B7DAC:  BLX.W           _ZdlPv; operator delete(void *)
5B7DB0:  MOVS            R0, #0
5B7DB2:  STR             R0, [R4,#8]
5B7DB4:  MOV.W           R0, #0xFFFFFFFF
5B7DB8:  MOVS            R5, #0
5B7DBA:  STR             R0, [R4,#0x18]
5B7DBC:  LDR             R0, [R4,#0x1C]
5B7DBE:  STR             R5, [R4]
5B7DC0:  CMP             R0, #0
5B7DC2:  BEQ.W           loc_5B7EE0
5B7DC6:  MOVS            R1, #0
5B7DC8:  LDR             R6, [R0,#4]
5B7DCA:  BLX.W           j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
5B7DCE:  MOV             R0, R6
5B7DD0:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
5B7DD4:  LDR             R0, [R4,#0x1C]
5B7DD6:  BLX.W           j__Z14RpLightDestroyP7RpLight; RpLightDestroy(RpLight *)
5B7DDA:  STR             R5, [R4,#0x1C]
5B7DDC:  B               loc_5B7EE0
5B7DDE:  LDRB.W          R0, [R5,#0x4C]
5B7DE2:  LSLS            R0, R0, #0x1E
5B7DE4:  ITT MI
5B7DE6:  MOVMI           R0, R5
5B7DE8:  BLXMI.W         j__Z33_rpAtomicResyncInterpolatedSphereP8RpAtomic; _rpAtomicResyncInterpolatedSphere(RpAtomic *)
5B7DEC:  ADD.W           R0, R5, #0x1C
5B7DF0:  ADD.W           R1, R4, #0x20 ; ' '
5B7DF4:  VLD1.32         {D16-D17}, [R0]
5B7DF8:  VST1.32         {D16-D17}, [R1]
5B7DFC:  LDR             R0, [R4,#0x2C]
5B7DFE:  STR             R0, [R4,#0x3C]
5B7E00:  LDR             R0, [R5,#4]
5B7E02:  ADD.W           R5, R4, #0x30 ; '0'
5B7E06:  ADD.W           R3, R0, #0x10
5B7E0A:  MOV             R0, R5
5B7E0C:  MOVS            R2, #1
5B7E0E:  BLX.W           j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5B7E12:  B               loc_5B7E18
5B7E14:  ADD.W           R5, R4, #0x30 ; '0'
5B7E18:  VLDR            S16, =1.1
5B7E1C:  VLDR            S18, [R4,#0x2C]
5B7E20:  LDR             R6, [R4,#8]
5B7E22:  VMUL.F32        S20, S18, S16
5B7E26:  LDR             R0, [R6]
5B7E28:  VADD.F32        S0, S20, S20
5B7E2C:  VMOV            R1, S0
5B7E30:  BLX.W           j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
5B7E34:  VLDR            S0, =0.001
5B7E38:  LDR             R0, [R6]
5B7E3A:  VMUL.F32        S0, S20, S0
5B7E3E:  VMOV            R1, S0
5B7E42:  BLX.W           j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
5B7E46:  VNMUL.F32       S0, S18, S16
5B7E4A:  MOV             R1, SP
5B7E4C:  VSTR            S0, [SP,#0x30+var_2C]
5B7E50:  VSTR            S20, [SP,#0x30+var_30]
5B7E54:  LDR             R0, [R6]
5B7E56:  BLX.W           j__Z21RwCameraSetViewWindowP8RwCameraPK5RwV2d; RwCameraSetViewWindow(RwCamera *,RwV2d const*)
5B7E5A:  LDR             R0, [R4,#8]
5B7E5C:  VMOV.F32        S0, #-0.5
5B7E60:  VLDR            D16, [R5]
5B7E64:  LDR             R1, [R0]
5B7E66:  LDR             R4, [R1,#4]
5B7E68:  LDR             R1, [R5,#8]
5B7E6A:  STR             R1, [R4,#0x48]
5B7E6C:  VSTR            D16, [R4,#0x40]
5B7E70:  LDR             R1, [R0]
5B7E72:  VLDR            S4, [R4,#0x30]
5B7E76:  VLDR            S6, [R4,#0x34]
5B7E7A:  VLDR            S2, [R1,#0x84]
5B7E7E:  VLDR            S8, [R4,#0x38]
5B7E82:  VMUL.F32        S2, S2, S0
5B7E86:  VLDR            S10, [R4,#0x44]
5B7E8A:  VMUL.F32        S2, S4, S2
5B7E8E:  VLDR            S4, [R4,#0x40]
5B7E92:  VADD.F32        S2, S4, S2
5B7E96:  VSTR            S2, [R4,#0x40]
5B7E9A:  LDR             R1, [R0]
5B7E9C:  VLDR            S2, [R1,#0x84]
5B7EA0:  VMUL.F32        S2, S2, S0
5B7EA4:  VMUL.F32        S2, S6, S2
5B7EA8:  VADD.F32        S2, S10, S2
5B7EAC:  VSTR            S2, [R4,#0x44]
5B7EB0:  LDR             R0, [R0]
5B7EB2:  VLDR            S2, [R0,#0x84]
5B7EB6:  ADD.W           R0, R4, #0x10
5B7EBA:  VMUL.F32        S0, S2, S0
5B7EBE:  VLDR            S2, [R4,#0x48]
5B7EC2:  VMUL.F32        S0, S8, S0
5B7EC6:  VADD.F32        S0, S2, S0
5B7ECA:  VSTR            S0, [R4,#0x48]
5B7ECE:  BLX.W           j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
5B7ED2:  MOV             R0, R4
5B7ED4:  BLX.W           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
5B7ED8:  MOV             R0, R4
5B7EDA:  BLX.W           j__Z21RwFrameOrthoNormalizeP7RwFrame; RwFrameOrthoNormalize(RwFrame *)
5B7EDE:  MOVS            R5, #1
5B7EE0:  MOV             R0, R5
5B7EE2:  ADD             SP, SP, #8
5B7EE4:  VPOP            {D8-D10}
5B7EE8:  POP.W           {R11}
5B7EEC:  POP             {R4-R7,PC}
