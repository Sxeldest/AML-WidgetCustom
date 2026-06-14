; =========================================================
; Game Engine Function: _ZN11CFileLoader18StartLoadClumpFileEP8RwStreamj
; Address            : 0x3EF374 - 0x3EF3C0
; =========================================================

3EF374:  PUSH            {R4,R5,R7,LR}
3EF376:  ADD             R7, SP, #8
3EF378:  MOV             R4, R0
3EF37A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EF380)
3EF37C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EF37E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EF380:  LDR.W           R0, [R0,R1,LSL#2]
3EF384:  LDR             R1, [R0]
3EF386:  LDR             R1, [R1,#0x14]
3EF388:  BLX             R1
3EF38A:  MOV             R5, R0
3EF38C:  MOV             R0, R4; int
3EF38E:  MOVS            R1, #0x10
3EF390:  MOVS            R2, #0
3EF392:  MOVS            R3, #0
3EF394:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
3EF398:  CBZ             R0, loc_3EF3B2
3EF39A:  CMP             R5, #6
3EF39C:  BNE             loc_3EF3B6
3EF39E:  BLX             j__ZN17CVehicleModelInfo30UseCommonVehicleTexDicationaryEv; CVehicleModelInfo::UseCommonVehicleTexDicationary(void)
3EF3A2:  MOV             R0, R4
3EF3A4:  BLX             j__Z21RpClumpGtaStreamRead1P8RwStream; RpClumpGtaStreamRead1(RwStream *)
3EF3A8:  MOV             R4, R0
3EF3AA:  BLX             j__ZN17CVehicleModelInfo36StopUsingCommonVehicleTexDicationaryEv; CVehicleModelInfo::StopUsingCommonVehicleTexDicationary(void)
3EF3AE:  MOV             R0, R4
3EF3B0:  POP             {R4,R5,R7,PC}
3EF3B2:  MOVS            R0, #0
3EF3B4:  POP             {R4,R5,R7,PC}
3EF3B6:  MOV             R0, R4
3EF3B8:  POP.W           {R4,R5,R7,LR}
3EF3BC:  B.W             j_j__Z21RpClumpGtaStreamRead1P8RwStream; j_RpClumpGtaStreamRead1(RwStream *)
