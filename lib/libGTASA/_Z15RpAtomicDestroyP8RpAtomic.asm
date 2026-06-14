; =========================================================
; Game Engine Function: _Z15RpAtomicDestroyP8RpAtomic
; Address            : 0x2141EC - 0x214248
; =========================================================

2141EC:  PUSH            {R4,R5,R7,LR}
2141EE:  ADD             R7, SP, #8
2141F0:  MOV             R4, R0
2141F2:  LDR             R0, =(dword_683B48 - 0x2141FA)
2141F4:  MOV             R1, R4
2141F6:  ADD             R0, PC; dword_683B48
2141F8:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
2141FC:  LDR             R0, [R4,#0x14]
2141FE:  CMP             R0, #0
214200:  IT NE
214202:  BLXNE           j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
214206:  LDR             R0, [R4,#0x18]
214208:  CBZ             R0, loc_214226
21420A:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
21420E:  LDR             R5, [R4,#4]
214210:  MOVS            R0, #0
214212:  STR             R0, [R4,#0x18]
214214:  CBZ             R5, loc_214226
214216:  MOV             R0, R4
214218:  BLX             j__Z16RpAtomicGetWorldPK8RpAtomic; RpAtomicGetWorld(RpAtomic const*)
21421C:  CMP             R0, #0
21421E:  ITT NE
214220:  MOVNE           R0, R5
214222:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
214226:  MOV             R0, R4; void *
214228:  BLX             j__Z29_rwObjectHasFrameReleaseFramePv; _rwObjectHasFrameReleaseFrame(void *)
21422C:  LDR             R0, =(RwEngineInstance_ptr - 0x214234)
21422E:  LDR             R1, =(dword_6BD598 - 0x214236)
214230:  ADD             R0, PC; RwEngineInstance_ptr
214232:  ADD             R1, PC; dword_6BD598
214234:  LDR             R0, [R0]; RwEngineInstance
214236:  LDR             R1, [R1]
214238:  LDR             R2, [R0]
21423A:  LDR             R0, [R2,R1]
21423C:  MOV             R1, R4
21423E:  LDR.W           R2, [R2,#0x140]
214242:  BLX             R2
214244:  MOVS            R0, #1
214246:  POP             {R4,R5,R7,PC}
