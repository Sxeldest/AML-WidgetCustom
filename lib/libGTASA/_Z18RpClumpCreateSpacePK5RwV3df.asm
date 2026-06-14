; =========================================================
; Game Engine Function: _Z18RpClumpCreateSpacePK5RwV3df
; Address            : 0x213EE4 - 0x2140A0
; =========================================================

213EE4:  PUSH            {R4-R7,LR}
213EE6:  ADD             R7, SP, #0xC
213EE8:  PUSH.W          {R8-R11}
213EEC:  SUB             SP, SP, #4
213EEE:  MOV             R5, R0
213EF0:  MOV             R0, R1; float
213EF2:  BLX             j__Z21RpGeometryCreateSpacef; RpGeometryCreateSpace(float)
213EF6:  MOV             R11, R0
213EF8:  CMP.W           R11, #0
213EFC:  BEQ.W           loc_214094
213F00:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
213F04:  MOV             R8, R0
213F06:  CMP.W           R8, #0
213F0A:  BEQ.W           loc_21408E
213F0E:  LDR             R0, =(RwEngineInstance_ptr - 0x213F16)
213F10:  LDR             R1, =(dword_6BD598 - 0x213F1E)
213F12:  ADD             R0, PC; RwEngineInstance_ptr
213F14:  VLDR            D16, [R5]
213F18:  LDR             R2, [R5,#8]
213F1A:  ADD             R1, PC; dword_6BD598
213F1C:  LDR             R0, [R0]; RwEngineInstance
213F1E:  STR.W           R2, [R8,#0x48]
213F22:  VSTR            D16, [R8,#0x40]
213F26:  LDR             R1, [R1]
213F28:  LDR             R2, [R0]
213F2A:  LDR             R0, [R2,R1]
213F2C:  LDR.W           R1, [R2,#0x13C]
213F30:  BLX             R1
213F32:  MOV             R6, R0
213F34:  CMP             R6, #0
213F36:  BEQ.W           loc_214088
213F3A:  LDR             R0, =(sub_21431E+1 - 0x213F48)
213F3C:  MOVS            R4, #0
213F3E:  MOVS            R1, #1
213F40:  STR.W           R4, [R6,#1]
213F44:  ADD             R0, PC; sub_21431E
213F46:  STRB            R4, [R6,#7]
213F48:  STRH.W          R4, [R6,#5]
213F4C:  STRB            R1, [R6]
213F4E:  MOVS            R1, #0
213F50:  STRD.W          R0, R4, [R6,#0x10]
213F54:  MOVW            R0, #0x105
213F58:  STRH            R0, [R6,#2]
213F5A:  MOV             R0, R6
213F5C:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
213F60:  LDR             R1, =(_Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0 - 0x213F72)
213F62:  VMOV.I32        Q8, #0
213F66:  ADD.W           R2, R6, #0x28 ; '('
213F6A:  ADD.W           R9, R6, #0x18
213F6E:  ADD             R1, PC; _Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0
213F70:  MOVS            R3, #3
213F72:  VST1.32         {D16-D17}, [R2]
213F76:  MOV.W           R2, #0x3F800000
213F7A:  MOV             R10, R6
213F7C:  LDR             R1, [R1]; AtomicDefaultRenderCallBack(RpAtomic *)
213F7E:  VST1.32         {D16-D17}, [R9]
213F82:  STR             R4, [R6,#0x38]
213F84:  STRD.W          R4, R1, [R6,#0x44]
213F88:  STRD.W          R3, R4, [R6,#0x4C]
213F8C:  STRD.W          R2, R2, [R6,#0x54]
213F90:  ADD.W           R2, R6, #0x64 ; 'd'
213F94:  STR             R4, [R6,#0x5C]
213F96:  STR             R4, [R6,#0x3C]
213F98:  LDRB            R1, [R6,#3]
213F9A:  LDR             R0, =(dword_683B48 - 0x213FA8)
213F9C:  ORR.W           R1, R1, #1
213FA0:  STRD.W          R2, R2, [R6,#0x64]
213FA4:  ADD             R0, PC; dword_683B48
213FA6:  STR             R4, [R6,#0x6C]
213FA8:  STRB            R1, [R6,#3]
213FAA:  MOV             R1, R6
213FAC:  STR.W           R4, [R10,#0x40]!
213FB0:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
213FB4:  LDR             R0, =(RwEngineInstance_ptr - 0x213FBC)
213FB6:  LDR             R1, =(dword_6BD598 - 0x213FBE)
213FB8:  ADD             R0, PC; RwEngineInstance_ptr
213FBA:  ADD             R1, PC; dword_6BD598
213FBC:  LDR             R0, [R0]; RwEngineInstance
213FBE:  LDR             R1, [R1]
213FC0:  LDR             R0, [R0]
213FC2:  LDR.W           R2, [R0,#0x13C]
213FC6:  ADD             R0, R1
213FC8:  LDR             R0, [R0,#4]
213FCA:  BLX             R2
213FCC:  MOV             R5, R0
213FCE:  CMP             R5, #0
213FD0:  BEQ             loc_214082
213FD2:  LDR             R0, =(dword_683B60 - 0x213FEA)
213FD4:  MOVS            R2, #2
213FD6:  LDR             R1, =(nullsub_11+1 - 0x213FF0)
213FD8:  ADD.W           R3, R5, #0x18
213FDC:  STR.W           R9, [SP,#0x20+var_20]
213FE0:  ADD.W           R9, R5, #8
213FE4:  STRB            R4, [R5,#7]
213FE6:  ADD             R0, PC; dword_683B60
213FE8:  STRH.W          R4, [R5,#5]
213FEC:  ADD             R1, PC; nullsub_11
213FEE:  STRB            R2, [R5]
213FF0:  ADD.W           R2, R5, #0x10
213FF4:  STRD.W          R9, R9, [R5,#8]
213FF8:  STRD.W          R2, R2, [R5,#0x10]
213FFC:  STRD.W          R3, R3, [R5,#0x18]
214000:  STRD.W          R4, R4, [R5,#0x20]
214004:  STR.W           R4, [R5,#1]
214008:  STR             R1, [R5,#0x28]
21400A:  MOV             R1, R5
21400C:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
214010:  MOV             R0, R6
214012:  MOV             R1, R8
214014:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
214018:  LDR             R1, [R6,#0x18]
21401A:  LDRB            R0, [R6,#3]
21401C:  CMP             R1, R11
21401E:  ORR.W           R0, R0, #1
214022:  STRB            R0, [R6,#3]
214024:  BEQ             loc_214064
214026:  MOV             R0, R11
214028:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
21402C:  LDR             R0, [SP,#0x20+var_20]
21402E:  LDR             R0, [R0]
214030:  CMP             R0, #0
214032:  IT NE
214034:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
214038:  STR.W           R11, [R6,#0x18]
21403C:  LDR.W           R0, [R11,#0x60]
214040:  LDR             R4, [R6,#4]
214042:  ADDS            R0, #4
214044:  VLD1.32         {D16-D17}, [R0]
214048:  ADD.W           R0, R6, #0x1C
21404C:  CMP             R4, #0
21404E:  VST1.32         {D16-D17}, [R0]
214052:  BEQ             loc_214064
214054:  MOV             R0, R6
214056:  BLX             j__Z16RpAtomicGetWorldPK8RpAtomic; RpAtomicGetWorld(RpAtomic const*)
21405A:  CMP             R0, #0
21405C:  ITT NE
21405E:  MOVNE           R0, R4
214060:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
214064:  MOV             R0, R11
214066:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
21406A:  LDR             R0, [R5,#8]
21406C:  STRD.W          R0, R9, [R6,#0x40]
214070:  LDR             R0, [R5,#8]
214072:  STR.W           R10, [R0,#4]
214076:  STR.W           R10, [R5,#8]
21407A:  STR             R5, [R6,#0x3C]
21407C:  STR.W           R8, [R5,#4]
214080:  B               loc_214096
214082:  MOV             R0, R6
214084:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
214088:  MOV             R0, R8
21408A:  BLX             j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
21408E:  MOV             R0, R11
214090:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
214094:  MOVS            R5, #0
214096:  MOV             R0, R5
214098:  ADD             SP, SP, #4
21409A:  POP.W           {R8-R11}
21409E:  POP             {R4-R7,PC}
