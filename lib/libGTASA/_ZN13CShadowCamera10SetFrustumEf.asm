; =========================================================
; Game Engine Function: _ZN13CShadowCamera10SetFrustumEf
; Address            : 0x5B6FE8 - 0x5B7036
; =========================================================

5B6FE8:  PUSH            {R4,R5,R7,LR}
5B6FEA:  ADD             R7, SP, #8
5B6FEC:  VPUSH           {D8}
5B6FF0:  SUB             SP, SP, #8
5B6FF2:  MOV             R4, R1
5B6FF4:  MOV             R5, R0
5B6FF6:  VMOV            S16, R4
5B6FFA:  LDR             R0, [R5]
5B6FFC:  VADD.F32        S0, S16, S16
5B7000:  VMOV            R1, S0
5B7004:  BLX.W           j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
5B7008:  VLDR            S0, =0.001
5B700C:  LDR             R0, [R5]
5B700E:  VMUL.F32        S0, S16, S0
5B7012:  VMOV            R1, S0
5B7016:  BLX.W           j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
5B701A:  VNEG.F32        S0, S16
5B701E:  MOV             R1, SP
5B7020:  VSTR            S0, [SP,#0x18+var_14]
5B7024:  STR             R4, [SP,#0x18+var_18]
5B7026:  LDR             R0, [R5]
5B7028:  BLX.W           j__Z21RwCameraSetViewWindowP8RwCameraPK5RwV2d; RwCameraSetViewWindow(RwCamera *,RwV2d const*)
5B702C:  LDR             R0, [R5]
5B702E:  ADD             SP, SP, #8
5B7030:  VPOP            {D8}
5B7034:  POP             {R4,R5,R7,PC}
