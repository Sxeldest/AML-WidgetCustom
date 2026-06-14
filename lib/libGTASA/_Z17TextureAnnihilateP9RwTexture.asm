; =========================================================
; Game Engine Function: _Z17TextureAnnihilateP9RwTexture
; Address            : 0x1DB3BC - 0x1DB416
; =========================================================

1DB3BC:  PUSH            {R4,R6,R7,LR}
1DB3BE:  ADD             R7, SP, #8
1DB3C0:  MOV             R4, R0
1DB3C2:  LDR             R0, =(textureTKList_ptr - 0x1DB3CA)
1DB3C4:  LDR             R1, [R4,#0x54]
1DB3C6:  ADD             R0, PC; textureTKList_ptr
1DB3C8:  ADDS            R1, #1
1DB3CA:  STR             R1, [R4,#0x54]
1DB3CC:  LDR             R0, [R0]; textureTKList
1DB3CE:  MOV             R1, R4
1DB3D0:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1DB3D4:  LDR             R0, [R4,#4]
1DB3D6:  CMP             R0, #0
1DB3D8:  ITTTT NE
1DB3DA:  LDRDNE.W        R0, R1, [R4,#8]
1DB3DE:  STRNE           R0, [R1]
1DB3E0:  LDRDNE.W        R0, R1, [R4,#8]
1DB3E4:  STRNE           R1, [R0,#4]
1DB3E6:  LDR             R0, [R4]
1DB3E8:  CBZ             R0, loc_1DB3F2
1DB3EA:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1DB3EE:  MOVS            R0, #0
1DB3F0:  STR             R0, [R4]
1DB3F2:  LDR             R0, =(RwEngineInstance_ptr - 0x1DB3FA)
1DB3F4:  LDR             R1, =(dword_6BCF84 - 0x1DB3FE)
1DB3F6:  ADD             R0, PC; RwEngineInstance_ptr
1DB3F8:  LDR             R2, [R4,#0x54]
1DB3FA:  ADD             R1, PC; dword_6BCF84
1DB3FC:  LDR             R0, [R0]; RwEngineInstance
1DB3FE:  SUBS            R2, #1
1DB400:  STR             R2, [R4,#0x54]
1DB402:  LDR             R1, [R1]
1DB404:  LDR             R0, [R0]
1DB406:  LDR.W           R2, [R0,#0x140]
1DB40A:  ADD             R0, R1
1DB40C:  MOV             R1, R4
1DB40E:  LDR             R0, [R0,#8]
1DB410:  BLX             R2
1DB412:  MOVS            R0, #1
1DB414:  POP             {R4,R6,R7,PC}
