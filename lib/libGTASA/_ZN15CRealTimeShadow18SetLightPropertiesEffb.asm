; =========================================================
; Game Engine Function: _ZN15CRealTimeShadow18SetLightPropertiesEffb
; Address            : 0x5B7EF8 - 0x5B7F8E
; =========================================================

5B7EF8:  PUSH            {R4-R7,LR}
5B7EFA:  ADD             R7, SP, #0xC
5B7EFC:  PUSH.W          {R8,R9,R11}
5B7F00:  SUB             SP, SP, #0x10
5B7F02:  MOV             R5, R0
5B7F04:  MOV             R8, R3
5B7F06:  LDR             R0, [R5,#0x1C]
5B7F08:  MOV             R6, R2
5B7F0A:  LDR             R4, [R0,#4]
5B7F0C:  CBZ             R4, loc_5B7F82
5B7F0E:  LDR             R3, =(unk_61FC40 - 0x5B7F1A)
5B7F10:  EOR.W           R2, R1, #0x80000000
5B7F14:  MOV             R0, R4
5B7F16:  ADD             R3, PC; unk_61FC40
5B7F18:  MOV             R1, R3
5B7F1A:  MOVS            R3, #0
5B7F1C:  BLX.W           j__Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType; RwFrameRotate(RwFrame *,RwV3d const*,float,RwOpCombineType)
5B7F20:  LDR             R1, =(unk_61FC34 - 0x5B7F2E)
5B7F22:  ADD.W           R9, SP, #0x28+var_24
5B7F26:  ADD.W           R2, R4, #0x10
5B7F2A:  ADD             R1, PC; unk_61FC34
5B7F2C:  MOV             R0, R9
5B7F2E:  BLX.W           j__Z20RwV3dTransformVectorP5RwV3dPKS_PK11RwMatrixTag; RwV3dTransformVector(RwV3d *,RwV3d const*,RwMatrixTag const*)
5B7F32:  MOV             R0, R4
5B7F34:  MOV             R1, R9
5B7F36:  MOV             R2, R6
5B7F38:  MOVS            R3, #2
5B7F3A:  BLX.W           j__Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType; RwFrameRotate(RwFrame *,RwV3d const*,float,RwOpCombineType)
5B7F3E:  CMP.W           R8, #1
5B7F42:  BNE             loc_5B7F84
5B7F44:  LDR             R0, [R5,#8]
5B7F46:  LDR             R1, [R5,#0x1C]
5B7F48:  LDR             R0, [R0]
5B7F4A:  LDR             R1, [R1,#4]
5B7F4C:  LDR             R5, [R0,#4]
5B7F4E:  VLDR            D16, [R1,#0x10]
5B7F52:  LDR             R0, [R1,#0x18]
5B7F54:  STR             R0, [R5,#0x18]
5B7F56:  VSTR            D16, [R5,#0x10]
5B7F5A:  VLDR            D16, [R1,#0x20]
5B7F5E:  LDR             R0, [R1,#0x28]
5B7F60:  STR             R0, [R5,#0x28]
5B7F62:  VSTR            D16, [R5,#0x20]
5B7F66:  LDR             R0, [R1,#0x38]
5B7F68:  VLDR            D16, [R1,#0x30]
5B7F6C:  STR             R0, [R5,#0x38]
5B7F6E:  ADD.W           R0, R5, #0x10
5B7F72:  VSTR            D16, [R5,#0x30]
5B7F76:  BLX.W           j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
5B7F7A:  MOV             R0, R5
5B7F7C:  BLX.W           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
5B7F80:  B               loc_5B7F84
5B7F82:  MOVS            R4, #0
5B7F84:  MOV             R0, R4
5B7F86:  ADD             SP, SP, #0x10
5B7F88:  POP.W           {R8,R9,R11}
5B7F8C:  POP             {R4-R7,PC}
