; =========================================================
; Game Engine Function: _ZN11CFileLoader14LoadAtomicFileEP8RwStreamj
; Address            : 0x3EF19C - 0x3EF234
; =========================================================

3EF19C:  PUSH            {R4-R7,LR}
3EF19E:  ADD             R7, SP, #0xC
3EF1A0:  PUSH.W          {R8}
3EF1A4:  MOV             R6, R0
3EF1A6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EF1AE)
3EF1A8:  MOV             R5, R1
3EF1AA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EF1AC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EF1AE:  LDR.W           R0, [R0,R5,LSL#2]
3EF1B2:  LDR             R1, [R0]
3EF1B4:  LDR             R1, [R1,#8]
3EF1B6:  BLX             R1
3EF1B8:  MOV             R4, R0
3EF1BA:  CBZ             R4, loc_3EF1C6
3EF1BC:  LDRSH.W         R0, [R4,#0x28]; this
3EF1C0:  CMP.W           R0, #0xFFFFFFFF
3EF1C4:  BLE             loc_3EF1CC
3EF1C6:  MOV.W           R8, #0
3EF1CA:  B               loc_3EF1D4
3EF1CC:  BLX             j__ZN17CVehicleModelInfo30UseCommonVehicleTexDicationaryEv; CVehicleModelInfo::UseCommonVehicleTexDicationary(void)
3EF1D0:  MOV.W           R8, #1
3EF1D4:  MOV             R0, R6; int
3EF1D6:  MOVS            R1, #0x10
3EF1D8:  MOVS            R2, #0
3EF1DA:  MOVS            R3, #0
3EF1DC:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
3EF1E0:  CBZ             R0, loc_3EF206
3EF1E2:  MOV             R0, R6
3EF1E4:  BLX             j__Z17RpClumpStreamReadP8RwStream; RpClumpStreamRead(RwStream *)
3EF1E8:  MOV             R6, R0
3EF1EA:  CBZ             R6, loc_3EF222
3EF1EC:  LDR             R1, =(_ZN11CFileLoader21SetRelatedModelInfoCBEP8RpAtomicPv_ptr - 0x3EF1F6)
3EF1EE:  MOV             R2, R6
3EF1F0:  LDR             R0, =(dword_9586F0 - 0x3EF1F8)
3EF1F2:  ADD             R1, PC; _ZN11CFileLoader21SetRelatedModelInfoCBEP8RpAtomicPv_ptr
3EF1F4:  ADD             R0, PC; dword_9586F0
3EF1F6:  LDR             R1, [R1]; CFileLoader::SetRelatedModelInfoCB(RpAtomic *,void *)
3EF1F8:  STR             R5, [R0]
3EF1FA:  MOV             R0, R6
3EF1FC:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
3EF200:  MOV             R0, R6
3EF202:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
3EF206:  LDR             R0, [R4,#0x34]
3EF208:  CMP             R0, #0
3EF20A:  IT NE
3EF20C:  MOVNE           R0, #(stderr+1); this
3EF20E:  BEQ             loc_3EF22E
3EF210:  EORS.W          R1, R8, #1
3EF214:  BNE             loc_3EF22E
3EF216:  BLX             j__ZN17CVehicleModelInfo36StopUsingCommonVehicleTexDicationaryEv; CVehicleModelInfo::StopUsingCommonVehicleTexDicationary(void)
3EF21A:  MOVS            R0, #1
3EF21C:  POP.W           {R8}
3EF220:  POP             {R4-R7,PC}
3EF222:  CMP.W           R8, #1
3EF226:  IT EQ
3EF228:  BLXEQ           j__ZN17CVehicleModelInfo36StopUsingCommonVehicleTexDicationaryEv; CVehicleModelInfo::StopUsingCommonVehicleTexDicationary(void)
3EF22C:  MOVS            R0, #0
3EF22E:  POP.W           {R8}
3EF232:  POP             {R4-R7,PC}
