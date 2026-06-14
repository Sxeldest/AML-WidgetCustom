; =========================================================
; Game Engine Function: _ZN11CFileLoader14LoadAtomicFileEPKc
; Address            : 0x467068 - 0x4670AE
; =========================================================

467068:  PUSH            {R4,R5,R7,LR}
46706A:  ADD             R7, SP, #8
46706C:  MOV             R2, R0
46706E:  MOVS            R0, #2
467070:  MOVS            R1, #1
467072:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
467076:  MOVS            R1, #0x10
467078:  MOVS            R2, #0
46707A:  MOVS            R3, #0
46707C:  MOV             R4, R0
46707E:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
467082:  CBZ             R0, loc_4670A2
467084:  MOV             R0, R4
467086:  BLX             j__Z17RpClumpStreamReadP8RwStream; RpClumpStreamRead(RwStream *)
46708A:  MOV             R5, R0
46708C:  CBZ             R5, loc_4670A2
46708E:  LDR             R0, =(_ZN11CFileLoader22FindRelatedModelInfoCBEP8RpAtomicPv_ptr - 0x467096)
467090:  MOV             R2, R5
467092:  ADD             R0, PC; _ZN11CFileLoader22FindRelatedModelInfoCBEP8RpAtomicPv_ptr
467094:  LDR             R1, [R0]; CFileLoader::FindRelatedModelInfoCB(RpAtomic *,void *)
467096:  MOV             R0, R5
467098:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
46709C:  MOV             R0, R5
46709E:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
4670A2:  MOV             R0, R4
4670A4:  MOVS            R1, #0
4670A6:  POP.W           {R4,R5,R7,LR}
4670AA:  B.W             sub_1962BC
