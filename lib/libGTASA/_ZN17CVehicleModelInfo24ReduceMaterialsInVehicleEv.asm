; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo24ReduceMaterialsInVehicleEv
; Address            : 0x387738 - 0x387828
; =========================================================

387738:  PUSH            {R4-R7,LR}
38773A:  ADD             R7, SP, #0xC
38773C:  PUSH.W          {R8-R11}
387740:  SUB             SP, SP, #0xC
387742:  MOV             R9, R0
387744:  LDR.W           R8, [R9,#0x34]
387748:  BLX             j__ZN10CMemoryMgr14LockScratchPadEv; CMemoryMgr::LockScratchPad(void)
38774C:  BLX             j__ZN10CMemoryMgr14InitScratchPadEv; CMemoryMgr::InitScratchPad(void)
387750:  MOVS            R0, #0x14
387752:  STR             R0, [SP,#0x28+var_20]
387754:  MOVS            R0, #0x50 ; 'P'; byte_count
387756:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
38775A:  STR             R0, [SP,#0x28+var_28]
38775C:  MOVS            R0, #0; this
38775E:  STR             R0, [SP,#0x28+var_24]
387760:  BLX             j__ZN6CTimer22GetCurrentTimeInCyclesEv; CTimer::GetCurrentTimeInCycles(void)
387764:  LDR             R1, =(sub_389044+1 - 0x38776E)
387766:  MOV             R2, SP
387768:  MOV             R0, R8
38776A:  ADD             R1, PC; sub_389044
38776C:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
387770:  LDR.W           R0, [R9,#0x74]
387774:  LDRSB.W         R1, [R0,#0x324]
387778:  CMP             R1, #1
38777A:  BLT             loc_387804
38777C:  MOV.W           R11, #0
387780:  MOV             R10, SP
387782:  ADD.W           R0, R0, R11,LSL#2
387786:  LDR.W           R0, [R0,#0x2F4]
38778A:  LDR             R5, [R0,#0x18]
38778C:  LDR             R4, [R5,#0x58]
38778E:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
387792:  TST.W           R0, #0x2000
387796:  BNE             loc_3877B8
387798:  LDR             R0, [R5,#0x58]
38779A:  LDRH            R0, [R0,#4]
38779C:  CBZ             R0, loc_3877B8
38779E:  ADD.W           R6, R4, #0x1C
3877A2:  MOVS            R4, #0
3877A4:  LDR.W           R1, [R6],#0x10
3877A8:  MOV             R0, R10
3877AA:  BLX             j__Z29_rpMaterialListAppendMaterialP14RpMaterialListP10RpMaterial; _rpMaterialListAppendMaterial(RpMaterialList *,RpMaterial *)
3877AE:  LDR             R0, [R5,#0x58]
3877B0:  ADDS            R4, #1
3877B2:  LDRH            R0, [R0,#4]
3877B4:  CMP             R4, R0
3877B6:  BLT             loc_3877A4
3877B8:  LDR.W           R0, [R9,#0x74]
3877BC:  ADD.W           R0, R0, R11,LSL#2
3877C0:  LDR.W           R0, [R0,#0x30C]
3877C4:  CBZ             R0, loc_3877F4
3877C6:  LDR             R5, [R0,#0x18]
3877C8:  LDR             R4, [R5,#0x58]
3877CA:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
3877CE:  TST.W           R0, #0x2000
3877D2:  BNE             loc_3877F4
3877D4:  LDR             R0, [R5,#0x58]
3877D6:  LDRH            R0, [R0,#4]
3877D8:  CBZ             R0, loc_3877F4
3877DA:  ADD.W           R6, R4, #0x1C
3877DE:  MOVS            R4, #0
3877E0:  LDR.W           R1, [R6],#0x10
3877E4:  MOV             R0, R10
3877E6:  BLX             j__Z29_rpMaterialListAppendMaterialP14RpMaterialListP10RpMaterial; _rpMaterialListAppendMaterial(RpMaterialList *,RpMaterial *)
3877EA:  LDR             R0, [R5,#0x58]
3877EC:  ADDS            R4, #1
3877EE:  LDRH            R0, [R0,#4]
3877F0:  CMP             R4, R0
3877F2:  BLT             loc_3877E0
3877F4:  LDR.W           R0, [R9,#0x74]; this
3877F8:  ADD.W           R11, R11, #1
3877FC:  LDRSB.W         R1, [R0,#0x324]
387800:  CMP             R11, R1
387802:  BLT             loc_387782
387804:  BLX             j__ZN6CTimer22GetCurrentTimeInCyclesEv; CTimer::GetCurrentTimeInCycles(void)
387808:  BLX             j__ZN6CTimer23GetCyclesPerMillisecondEv; CTimer::GetCyclesPerMillisecond(void)
38780C:  MOV             R0, SP
38780E:  BLX             j__Z27_rpMaterialListDeinitializeP14RpMaterialList; _rpMaterialListDeinitialize(RpMaterialList *)
387812:  BLX             j__ZN10CMemoryMgr17ReleaseScratchPadEv; CMemoryMgr::ReleaseScratchPad(void)
387816:  MOV             R0, R8
387818:  MOV.W           R1, #0x2000
38781C:  BLX             j__ZN18CVisibilityPlugins27ClearClumpForAllAtomicsFlagEP7RpClumpi; CVisibilityPlugins::ClearClumpForAllAtomicsFlag(RpClump *,int)
387820:  ADD             SP, SP, #0xC
387822:  POP.W           {R8-R11}
387826:  POP             {R4-R7,PC}
