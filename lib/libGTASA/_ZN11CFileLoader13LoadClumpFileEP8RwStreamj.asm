; =========================================================
; Game Engine Function: _ZN11CFileLoader13LoadClumpFileEP8RwStreamj
; Address            : 0x3EF240 - 0x3EF33A
; =========================================================

3EF240:  PUSH            {R4-R7,LR}
3EF242:  ADD             R7, SP, #0xC
3EF244:  PUSH.W          {R8-R10}
3EF248:  MOV             R5, R0
3EF24A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EF252)
3EF24C:  MOV             R9, R1
3EF24E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EF250:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EF252:  LDR.W           R8, [R0,R9,LSL#2]
3EF256:  LDR.W           R0, [R8]
3EF25A:  LDR             R1, [R0,#0x14]
3EF25C:  MOV             R0, R8
3EF25E:  BLX             R1
3EF260:  MOV             R6, R0
3EF262:  LDRB.W          R0, [R8,#0x29]
3EF266:  LSLS            R0, R0, #0x1E
3EF268:  BMI             loc_3EF2A0
3EF26A:  MOV             R0, R5; int
3EF26C:  MOVS            R1, #0x10
3EF26E:  MOVS            R2, #0
3EF270:  MOVS            R3, #0
3EF272:  MOVS            R4, #0
3EF274:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
3EF278:  CMP             R0, #0
3EF27A:  BEQ             loc_3EF332
3EF27C:  CMP             R6, #6
3EF27E:  BNE             loc_3EF30A
3EF280:  MOV             R0, R8; this
3EF282:  BLX             j__ZN16CCollisionPlugin12SetModelInfoEP15CClumpModelInfo; CCollisionPlugin::SetModelInfo(CClumpModelInfo *)
3EF286:  BLX             j__ZN17CVehicleModelInfo30UseCommonVehicleTexDicationaryEv; CVehicleModelInfo::UseCommonVehicleTexDicationary(void)
3EF28A:  MOV             R0, R5
3EF28C:  BLX             j__Z17RpClumpStreamReadP8RwStream; RpClumpStreamRead(RwStream *)
3EF290:  MOV             R4, R0
3EF292:  MOVS            R0, #0; this
3EF294:  BLX             j__ZN16CCollisionPlugin12SetModelInfoEP15CClumpModelInfo; CCollisionPlugin::SetModelInfo(CClumpModelInfo *)
3EF298:  BLX             j__ZN17CVehicleModelInfo36StopUsingCommonVehicleTexDicationaryEv; CVehicleModelInfo::StopUsingCommonVehicleTexDicationary(void)
3EF29C:  CBNZ            R4, loc_3EF314
3EF29E:  B               loc_3EF330
3EF2A0:  BLX             j__Z13RpClumpCreatev; RpClumpCreate(void)
3EF2A4:  MOV             R10, R0
3EF2A6:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
3EF2AA:  MOV             R4, R0
3EF2AC:  MOV             R0, R5; int
3EF2AE:  MOVS            R1, #0x10
3EF2B0:  MOVS            R2, #0
3EF2B2:  MOVS            R3, #0
3EF2B4:  STR.W           R4, [R10,#4]
3EF2B8:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
3EF2BC:  CBZ             R0, loc_3EF2FC
3EF2BE:  LDR.W           R9, =(sub_3EF344+1 - 0x3EF2C6)
3EF2C2:  ADD             R9, PC; sub_3EF344
3EF2C4:  MOV             R0, R5
3EF2C6:  BLX             j__Z17RpClumpStreamReadP8RwStream; RpClumpStreamRead(RwStream *)
3EF2CA:  MOV             R6, R0
3EF2CC:  CBZ             R6, loc_3EF330
3EF2CE:  LDR             R0, [R6,#4]
3EF2D0:  BLX             j__Z26_rwFrameCloneAndLinkClonesP7RwFrame; _rwFrameCloneAndLinkClones(RwFrame *)
3EF2D4:  MOV             R1, R0
3EF2D6:  MOV             R0, R4
3EF2D8:  BLX             j__Z15RwFrameAddChildP7RwFrameS0_; RwFrameAddChild(RwFrame *,RwFrame *)
3EF2DC:  MOV             R0, R6
3EF2DE:  MOV             R1, R9
3EF2E0:  MOV             R2, R10
3EF2E2:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
3EF2E6:  MOV             R0, R6
3EF2E8:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
3EF2EC:  MOV             R0, R5; int
3EF2EE:  MOVS            R1, #0x10
3EF2F0:  MOVS            R2, #0
3EF2F2:  MOVS            R3, #0
3EF2F4:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
3EF2F8:  CMP             R0, #0
3EF2FA:  BNE             loc_3EF2C4
3EF2FC:  LDR.W           R0, [R8]
3EF300:  MOV             R1, R10
3EF302:  LDR             R2, [R0,#0x44]
3EF304:  MOV             R0, R8
3EF306:  BLX             R2
3EF308:  B               loc_3EF32C
3EF30A:  MOV             R0, R5
3EF30C:  BLX             j__Z17RpClumpStreamReadP8RwStream; RpClumpStreamRead(RwStream *)
3EF310:  MOV             R4, R0
3EF312:  CBZ             R4, loc_3EF330
3EF314:  LDR.W           R0, [R8]
3EF318:  MOV             R1, R4
3EF31A:  LDR             R2, [R0,#0x44]
3EF31C:  MOV             R0, R8
3EF31E:  BLX             R2
3EF320:  CMP.W           R9, #0x1FC
3EF324:  ITT EQ
3EF326:  MOVEQ           R0, #2
3EF328:  STRBEQ.W        R0, [R8,#0x64]
3EF32C:  MOVS            R4, #1
3EF32E:  B               loc_3EF332
3EF330:  MOVS            R4, #0
3EF332:  MOV             R0, R4
3EF334:  POP.W           {R8-R10}
3EF338:  POP             {R4-R7,PC}
