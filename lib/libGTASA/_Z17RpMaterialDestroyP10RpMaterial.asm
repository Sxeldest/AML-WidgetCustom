; =========================================================
; Game Engine Function: _Z17RpMaterialDestroyP10RpMaterial
; Address            : 0x217250 - 0x217296
; =========================================================

217250:  PUSH            {R4,R6,R7,LR}
217252:  ADD             R7, SP, #8
217254:  MOV             R4, R0
217256:  LDRH            R0, [R4,#0x18]
217258:  CMP             R0, #1
21725A:  BNE             loc_21728E
21725C:  LDR             R0, =(dword_683BC4 - 0x217264)
21725E:  MOV             R1, R4
217260:  ADD             R0, PC; dword_683BC4
217262:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
217266:  LDR             R0, [R4]
217268:  CBZ             R0, loc_217272
21726A:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
21726E:  MOVS            R0, #0
217270:  STR             R0, [R4]
217272:  LDR             R0, =(RwEngineInstance_ptr - 0x21727A)
217274:  LDR             R1, =(dword_6BD5F4 - 0x21727C)
217276:  ADD             R0, PC; RwEngineInstance_ptr
217278:  ADD             R1, PC; dword_6BD5F4
21727A:  LDR             R0, [R0]; RwEngineInstance
21727C:  LDR             R1, [R1]
21727E:  LDR             R2, [R0]
217280:  LDR             R0, [R2,R1]
217282:  MOV             R1, R4
217284:  LDR.W           R2, [R2,#0x140]
217288:  BLX             R2
21728A:  MOVS            R0, #1
21728C:  POP             {R4,R6,R7,PC}
21728E:  SUBS            R0, #1
217290:  STRH            R0, [R4,#0x18]
217292:  MOVS            R0, #1
217294:  POP             {R4,R6,R7,PC}
