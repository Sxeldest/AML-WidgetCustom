; =========================================================
; Game Engine Function: _Z17RpGeometryDestroyP10RpGeometry
; Address            : 0x2159E0 - 0x215A6C
; =========================================================

2159E0:  PUSH            {R4,R6,R7,LR}
2159E2:  ADD             R7, SP, #8
2159E4:  MOV             R4, R0
2159E6:  LDRH            R0, [R4,#0xE]
2159E8:  SUBS            R0, #1
2159EA:  STRH            R0, [R4,#0xE]
2159EC:  SXTH            R1, R0
2159EE:  CMP             R1, #0
2159F0:  BLE             loc_2159F6
2159F2:  MOVS            R0, #1
2159F4:  POP             {R4,R6,R7,PC}
2159F6:  LDR             R0, [R4,#0x5C]
2159F8:  CBZ             R0, loc_215A00
2159FA:  BLX             j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
2159FE:  LDRH            R1, [R4,#0xE]
215A00:  ADDS            R0, R1, #1
215A02:  STRH            R0, [R4,#0xE]
215A04:  LDR             R0, [R4,#0x58]
215A06:  MOVW            R2, #0xFFF
215A0A:  LDRH            R1, [R4,#0xC]
215A0C:  CMP             R0, #0
215A0E:  ORR.W           R1, R1, R2
215A12:  STRH            R1, [R4,#0xC]
215A14:  BEQ             loc_215A1E
215A16:  BLX             j__Z14_rpMeshDestroyP12RpMeshHeader; _rpMeshDestroy(RpMeshHeader *)
215A1A:  MOVS            R0, #0
215A1C:  STR             R0, [R4,#0x58]
215A1E:  LDR             R0, =(dword_683B78 - 0x215A26)
215A20:  MOV             R1, R4
215A22:  ADD             R0, PC; dword_683B78
215A24:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
215A28:  LDR             R0, [R4,#0x60]
215A2A:  CBZ             R0, loc_215A3E
215A2C:  LDR             R1, =(RwEngineInstance_ptr - 0x215A32)
215A2E:  ADD             R1, PC; RwEngineInstance_ptr
215A30:  LDR             R1, [R1]; RwEngineInstance
215A32:  LDR             R1, [R1]
215A34:  LDR.W           R1, [R1,#0x130]
215A38:  BLX             R1
215A3A:  MOVS            R0, #0
215A3C:  STR             R0, [R4,#0x60]
215A3E:  ADD.W           R0, R4, #0x20 ; ' '
215A42:  BLX             j__Z27_rpMaterialListDeinitializeP14RpMaterialList; _rpMaterialListDeinitialize(RpMaterialList *)
215A46:  LDR             R0, [R4,#0x54]; unsigned int
215A48:  CBZ             R0, loc_215A52
215A4A:  BLX             j__Z16emu_ArraysDeletej; emu_ArraysDelete(uint)
215A4E:  MOVS            R0, #0
215A50:  STR             R0, [R4,#0x54]
215A52:  LDR             R0, =(RwEngineInstance_ptr - 0x215A5A)
215A54:  LDRH            R1, [R4,#0xE]
215A56:  ADD             R0, PC; RwEngineInstance_ptr
215A58:  SUBS            R1, #1
215A5A:  STRH            R1, [R4,#0xE]
215A5C:  LDR             R0, [R0]; RwEngineInstance
215A5E:  LDR             R0, [R0]
215A60:  LDR.W           R1, [R0,#0x130]
215A64:  MOV             R0, R4
215A66:  BLX             R1
215A68:  MOVS            R0, #1
215A6A:  POP             {R4,R6,R7,PC}
