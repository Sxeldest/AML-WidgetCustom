; =========================================================
; Game Engine Function: sub_214EF4
; Address            : 0x214EF4 - 0x21515A
; =========================================================

214EF4:  PUSH            {R4-R7,LR}
214EF6:  ADD             R7, SP, #0xC
214EF8:  PUSH.W          {R8-R11}
214EFC:  SUB             SP, SP, #0x24
214EFE:  MOV             R9, R2
214F00:  ADD             R2, SP, #0x40+var_20
214F02:  ADD             R3, SP, #0x40+var_24
214F04:  MOV             R5, R1
214F06:  MOVS            R1, #1
214F08:  MOV             R10, R0
214F0A:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
214F0E:  MOVW            R8, #0x1A
214F12:  CMP             R0, #0
214F14:  MOVT            R8, #0x8000
214F18:  BEQ.W           loc_21505E
214F1C:  LDR             R0, [SP,#0x40+var_24]
214F1E:  MOVW            R1, #0x2003
214F22:  SUB.W           R0, R0, #0x34000
214F26:  CMP             R0, R1
214F28:  BHI.W           loc_215064
214F2C:  LDR             R4, [SP,#0x40+var_20]
214F2E:  VMOV.I32        Q8, #0
214F32:  ADD             R1, SP, #0x40+var_38; void *
214F34:  MOV             R0, R10; int
214F36:  MOV             R2, R4; size_t
214F38:  VST1.64         {D16-D17}, [R1]
214F3C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
214F40:  CMP             R4, R0
214F42:  BNE.W           loc_21513E
214F46:  ADD             R0, SP, #0x40+var_38; void *
214F48:  MOVS            R1, #0x10; unsigned int
214F4A:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
214F4E:  LDR             R0, =(RwEngineInstance_ptr - 0x214F56)
214F50:  LDR             R1, =(dword_6BD598 - 0x214F58)
214F52:  ADD             R0, PC; RwEngineInstance_ptr
214F54:  ADD             R1, PC; dword_6BD598
214F56:  LDR             R0, [R0]; RwEngineInstance
214F58:  LDR             R1, [R1]
214F5A:  LDR             R2, [R0]
214F5C:  LDR             R0, [R2,R1]
214F5E:  LDR.W           R1, [R2,#0x13C]
214F62:  BLX             R1
214F64:  MOV             R6, R0
214F66:  MOVS            R4, #0
214F68:  CMP             R6, #0
214F6A:  BEQ.W           loc_215150
214F6E:  LDR             R0, =(sub_21431E+1 - 0x214F7A)
214F70:  MOVS            R1, #1
214F72:  STR.W           R4, [R6,#1]
214F76:  ADD             R0, PC; sub_21431E
214F78:  STRB            R4, [R6,#7]
214F7A:  STRH.W          R4, [R6,#5]
214F7E:  STRB            R1, [R6]
214F80:  MOVS            R1, #0
214F82:  STRD.W          R0, R4, [R6,#0x10]
214F86:  MOVW            R0, #0x105
214F8A:  STRH            R0, [R6,#2]
214F8C:  MOV             R0, R6
214F8E:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
214F92:  LDR             R1, =(_Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0 - 0x214FA4)
214F94:  VMOV.I32        Q8, #0
214F98:  ADD.W           R2, R6, #0x28 ; '('
214F9C:  ADD.W           R11, R6, #0x18
214FA0:  ADD             R1, PC; _Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0
214FA2:  MOVS            R3, #3
214FA4:  VST1.32         {D16-D17}, [R2]
214FA8:  MOV.W           R2, #0x3F800000
214FAC:  ADD.W           R12, R6, #0x48 ; 'H'
214FB0:  LDR             R1, [R1]; AtomicDefaultRenderCallBack(RpAtomic *)
214FB2:  VST1.32         {D16-D17}, [R11]
214FB6:  STRD.W          R2, R4, [R6,#0x58]
214FBA:  STRD.W          R4, R4, [R6,#0x38]
214FBE:  STRD.W          R4, R4, [R6,#0x40]
214FC2:  STM.W           R12, {R1,R3,R4}
214FC6:  STR             R2, [R6,#0x54]
214FC8:  ADD.W           R2, R6, #0x64 ; 'd'
214FCC:  LDRB            R1, [R6,#3]
214FCE:  LDR             R0, =(dword_683B48 - 0x214FDC)
214FD0:  ORR.W           R1, R1, #1
214FD4:  STRD.W          R2, R2, [R6,#0x64]
214FD8:  ADD             R0, PC; dword_683B48
214FDA:  STR             R4, [R6,#0x6C]
214FDC:  STRB            R1, [R6,#3]
214FDE:  MOV             R1, R6
214FE0:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
214FE4:  LDR             R0, [SP,#0x40+var_30]
214FE6:  STRB            R0, [R6,#2]
214FE8:  LDR             R0, [R5,#4]
214FEA:  CBZ             R0, loc_215002
214FEC:  LDR             R0, [SP,#0x40+var_38]
214FEE:  LDR             R1, [R5]
214FF0:  LDR.W           R1, [R1,R0,LSL#2]
214FF4:  MOV             R0, R6
214FF6:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
214FFA:  LDRB            R0, [R6,#3]
214FFC:  ORR.W           R0, R0, #1
215000:  STRB            R0, [R6,#3]
215002:  LDR.W           R0, [R9,#4]
215006:  CBZ             R0, loc_215076
215008:  LDR             R1, [SP,#0x40+var_34]
21500A:  LDR.W           R2, [R9]
21500E:  LDR.W           R0, [R11]
215012:  LDR.W           R4, [R2,R1,LSL#2]
215016:  CMP             R0, R4
215018:  BEQ             loc_2150EA
21501A:  CBZ             R4, loc_215026
21501C:  MOV             R0, R4
21501E:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
215022:  LDR.W           R0, [R11]
215026:  CMP             R0, #0
215028:  IT NE
21502A:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
21502E:  CMP             R4, #0
215030:  STR.W           R4, [R11]
215034:  BEQ             loc_215046
215036:  LDR             R0, [R4,#0x60]
215038:  ADDS            R0, #4
21503A:  VLD1.32         {D16-D17}, [R0]
21503E:  ADD.W           R0, R6, #0x1C
215042:  VST1.32         {D16-D17}, [R0]
215046:  LDR             R4, [R6,#4]
215048:  CMP             R4, #0
21504A:  BEQ             loc_2150EA
21504C:  MOV             R0, R6
21504E:  BLX             j__Z16RpAtomicGetWorldPK8RpAtomic; RpAtomicGetWorld(RpAtomic const*)
215052:  CMP             R0, #0
215054:  BEQ             loc_2150EA
215056:  MOV             R0, R4
215058:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
21505C:  B               loc_2150EA
21505E:  MOVS            R4, #0
215060:  MOV             R0, R8
215062:  B               loc_21506A
215064:  SUB.W           R0, R8, #0x16; int
215068:  MOVS            R4, #0
21506A:  STR             R4, [SP,#0x40+var_38]
21506C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
215070:  STR             R0, [SP,#0x40+var_34]
215072:  ADD             R0, SP, #0x40+var_38
215074:  B               loc_21514C
215076:  ADD             R3, SP, #0x40+var_24
215078:  MOV             R0, R10; int
21507A:  MOVS            R1, #0xF
21507C:  MOVS            R2, #0
21507E:  MOVS            R4, #0
215080:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
215084:  CMP             R0, #0
215086:  BEQ             loc_215122
215088:  LDR             R0, [SP,#0x40+var_24]
21508A:  MOVW            R1, #0x2003
21508E:  SUB.W           R0, R0, #0x34000
215092:  CMP             R0, R1
215094:  BHI             loc_21512A
215096:  MOV             R0, R10
215098:  BLX             j__Z20RpGeometryStreamReadP8RwStream; RpGeometryStreamRead(RwStream *)
21509C:  MOV             R4, R0
21509E:  CMP             R4, #0
2150A0:  BEQ             loc_215138
2150A2:  LDR.W           R0, [R11]
2150A6:  CMP             R0, R4
2150A8:  BEQ             loc_2150E4
2150AA:  MOV             R0, R4
2150AC:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
2150B0:  LDR.W           R0, [R11]
2150B4:  CMP             R0, #0
2150B6:  IT NE
2150B8:  BLXNE           j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
2150BC:  STR             R4, [R6,#0x18]
2150BE:  LDR             R0, [R4,#0x60]
2150C0:  LDR             R5, [R6,#4]
2150C2:  ADDS            R0, #4
2150C4:  VLD1.32         {D16-D17}, [R0]
2150C8:  ADD.W           R0, R6, #0x1C
2150CC:  CMP             R5, #0
2150CE:  VST1.32         {D16-D17}, [R0]
2150D2:  BEQ             loc_2150E4
2150D4:  MOV             R0, R6
2150D6:  BLX             j__Z16RpAtomicGetWorldPK8RpAtomic; RpAtomicGetWorld(RpAtomic const*)
2150DA:  CMP             R0, #0
2150DC:  ITT NE
2150DE:  MOVNE           R0, R5
2150E0:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
2150E4:  MOV             R0, R4
2150E6:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
2150EA:  LDR             R1, =(dword_6BD544 - 0x2150F6)
2150EC:  MOVS            R4, #0
2150EE:  LDR             R2, =(dword_6BD540 - 0x2150F8)
2150F0:  LDR             R0, =(dword_683B48 - 0x2150FA)
2150F2:  ADD             R1, PC; dword_6BD544
2150F4:  ADD             R2, PC; dword_6BD540
2150F6:  ADD             R0, PC; dword_683B48 ; int
2150F8:  STR             R4, [R1]
2150FA:  STR             R4, [R2]
2150FC:  MOV             R1, R10; int
2150FE:  MOV             R2, R6
215100:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
215104:  CBZ             R0, loc_215140
215106:  LDR             R0, =(dword_6BD540 - 0x21510C)
215108:  ADD             R0, PC; dword_6BD540
21510A:  LDR             R1, [R0]
21510C:  CBZ             R1, loc_21511E
21510E:  LDR             R2, =(dword_6BD544 - 0x215116)
215110:  LDR             R0, =(dword_683B48 - 0x215118)
215112:  ADD             R2, PC; dword_6BD544
215114:  ADD             R0, PC; dword_683B48
215116:  LDR             R3, [R2]
215118:  MOV             R2, R6
21511A:  BLX             j__Z29_rwPluginRegistryInvokeRightsPK16RwPluginRegistryjPvj; _rwPluginRegistryInvokeRights(RwPluginRegistry const*,uint,void *,uint)
21511E:  MOV             R4, R6
215120:  B               loc_215150
215122:  MOV             R0, R6
215124:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
215128:  B               loc_215140
21512A:  MOV             R0, R6
21512C:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
215130:  MOVS            R4, #0
215132:  SUB.W           R0, R8, #0x16
215136:  B               loc_215142
215138:  MOV             R0, R6
21513A:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
21513E:  MOVS            R4, #0
215140:  MOV             R0, R8; int
215142:  STR             R4, [SP,#0x40+var_40]
215144:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
215148:  STR             R0, [SP,#0x40+var_3C]
21514A:  MOV             R0, SP
21514C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
215150:  MOV             R0, R4
215152:  ADD             SP, SP, #0x24 ; '$'
215154:  POP.W           {R8-R11}
215158:  POP             {R4-R7,PC}
