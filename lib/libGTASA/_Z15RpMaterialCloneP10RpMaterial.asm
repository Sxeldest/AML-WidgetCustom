; =========================================================
; Game Engine Function: _Z15RpMaterialCloneP10RpMaterial
; Address            : 0x2172CC - 0x21736A
; =========================================================

2172CC:  PUSH            {R4-R7,LR}
2172CE:  ADD             R7, SP, #0xC
2172D0:  PUSH.W          {R8}
2172D4:  MOV             R4, R0
2172D6:  LDR             R0, =(RwEngineInstance_ptr - 0x2172DE)
2172D8:  LDR             R1, =(dword_6BD5F4 - 0x2172E0)
2172DA:  ADD             R0, PC; RwEngineInstance_ptr
2172DC:  ADD             R1, PC; dword_6BD5F4
2172DE:  LDR             R0, [R0]; RwEngineInstance
2172E0:  LDR             R1, [R1]
2172E2:  LDR             R2, [R0]
2172E4:  LDR             R0, [R2,R1]
2172E6:  LDR.W           R1, [R2,#0x13C]
2172EA:  BLX             R1
2172EC:  MOV             R5, R0
2172EE:  MOVS            R0, #0
2172F0:  CBZ             R5, loc_217360
2172F2:  LDR             R1, =(dword_683BB0 - 0x217302)
2172F4:  MOV.W           R2, #0xFFFFFFFF
2172F8:  STR             R2, [R5,#4]
2172FA:  MOVS            R2, #1
2172FC:  STRH            R2, [R5,#0x18]
2172FE:  ADD             R1, PC; dword_683BB0
217300:  STR             R0, [R5]
217302:  STR             R0, [R5,#8]
217304:  LDR             R0, =(dword_683BC4 - 0x217310)
217306:  VLDR            D16, [R1]
21730A:  LDR             R1, [R1,#(dword_683BB8 - 0x683BB0)]
21730C:  ADD             R0, PC; dword_683BC4
21730E:  STR             R1, [R5,#0x14]
217310:  MOV             R1, R5
217312:  VSTR            D16, [R5,#0xC]
217316:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
21731A:  LDR             R6, [R4]
21731C:  ADD.W           R8, R5, #0xC
217320:  CMP             R6, #0
217322:  ITT NE
217324:  LDRNE           R0, [R5]
217326:  CMPNE           R0, R6
217328:  BEQ             loc_21733C
21732A:  LDR             R0, [R6,#0x54]
21732C:  ADDS            R0, #1
21732E:  STR             R0, [R6,#0x54]
217330:  LDR             R0, [R5]
217332:  CMP             R0, #0
217334:  IT NE
217336:  BLXNE           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
21733A:  STR             R6, [R5]
21733C:  LDR             R0, [R4,#4]
21733E:  MOV             R2, R4
217340:  STR             R0, [R5,#4]
217342:  LDR             R0, [R4,#8]
217344:  STR             R0, [R5,#8]
217346:  LDR             R0, =(dword_683BC4 - 0x217352)
217348:  VLDR            D16, [R4,#0xC]
21734C:  LDR             R1, [R4,#0x14]
21734E:  ADD             R0, PC; dword_683BC4
217350:  STR.W           R1, [R8,#8]
217354:  MOV             R1, R5
217356:  VSTR            D16, [R8]
21735A:  BLX             j__Z27_rwPluginRegistryCopyObjectPK16RwPluginRegistryPvPKv; _rwPluginRegistryCopyObject(RwPluginRegistry const*,void *,void const*)
21735E:  B               loc_217362
217360:  MOVS            R5, #0
217362:  MOV             R0, R5
217364:  POP.W           {R8}
217368:  POP             {R4-R7,PC}
