; =========================================================
; Game Engine Function: _ZN10CStreaming22FinishLoadingLargeFileEPci
; Address            : 0x2D3640 - 0x2D3778
; =========================================================

2D3640:  PUSH            {R4-R7,LR}
2D3642:  ADD             R7, SP, #0xC
2D3644:  PUSH.W          {R8-R11}
2D3648:  SUB             SP, SP, #0xC
2D364A:  MOV             R4, R1
2D364C:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D3656)
2D364E:  ADD.W           R9, R4, R4,LSL#2
2D3652:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D3654:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2D3656:  ADD.W           R6, R1, R9,LSL#2
2D365A:  LDRB.W          R1, [R6,#0x10]!
2D365E:  CMP             R1, #4
2D3660:  BNE             loc_2D36F6
2D3662:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D366C)
2D3664:  MOVS            R3, #1
2D3666:  STR             R0, [SP,#0x28+var_24]
2D3668:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D366A:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2D366C:  ADD.W           R11, R1, R9,LSL#2
2D3670:  LDR             R1, =(unk_792F90 - 0x2D367A)
2D3672:  LDR.W           R2, [R11,#0xC]!
2D3676:  ADD             R1, PC; unk_792F90
2D3678:  LSLS            R0, R2, #0xB
2D367A:  MOVS            R2, #3
2D367C:  STR             R0, [SP,#0x28+var_20]
2D367E:  ADD             R0, SP, #0x28+var_24
2D3680:  STR             R0, [SP,#0x28+var_28]
2D3682:  MOV             R0, R1
2D3684:  MOVS            R1, #0
2D3686:  BLX             j__Z19_rwStreamInitializeP8RwStreami12RwStreamType18RwStreamAccessTypePKv; _rwStreamInitialize(RwStream *,int,RwStreamType,RwStreamAccessType,void const*)
2D368A:  MOV             R8, R0
2D368C:  MOVW            R0, #0x4E1F
2D3690:  CMP             R4, R0
2D3692:  BGT             loc_2D370E
2D3694:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D369C)
2D3696:  MOVS            R1, #0; int
2D3698:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D369A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D369C:  LDR.W           R5, [R0,R4,LSL#2]
2D36A0:  LDRSH.W         R0, [R5,#0x20]; this
2D36A4:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
2D36A8:  MOV             R0, R8
2D36AA:  MOV             R1, R4
2D36AC:  BLX             j__ZN11CFileLoader19FinishLoadClumpFileEP8RwStreamj; CFileLoader::FinishLoadClumpFile(RwStream *,uint)
2D36B0:  MOV             R10, R0
2D36B2:  CMP.W           R10, #1
2D36B6:  BNE             loc_2D36C2
2D36B8:  MOV             R0, R4; this
2D36BA:  BLX             j__ZN10CStreaming23AddToLoadedVehiclesListEi; CStreaming::AddToLoadedVehiclesList(int)
2D36BE:  MOV.W           R10, #1
2D36C2:  MOV             R0, R5; this
2D36C4:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
2D36C8:  LDRSH.W         R0, [R5,#0x20]; this
2D36CC:  BLX             j__ZN9CTxdStore22RemoveRefWithoutDeleteEi; CTxdStore::RemoveRefWithoutDelete(int)
2D36D0:  LDR             R0, [R5]
2D36D2:  LDR             R1, [R0,#0x3C]
2D36D4:  MOV             R0, R5
2D36D6:  BLX             R1
2D36D8:  CMP.W           R10, #0
2D36DC:  ADD.W           R0, R0, #1
2D36E0:  IT NE
2D36E2:  MOVNE.W         R10, #1
2D36E6:  CBZ             R0, loc_2D3732
2D36E8:  LDR             R0, [R5]
2D36EA:  LDR             R1, [R0,#0x3C]
2D36EC:  MOV             R0, R5
2D36EE:  BLX             R1
2D36F0:  BLX             j__ZN12CAnimManager31RemoveAnimBlockRefWithoutDeleteEi; CAnimManager::RemoveAnimBlockRefWithoutDelete(int)
2D36F4:  B               loc_2D3732
2D36F6:  MOVW            R0, #0x4E1F
2D36FA:  CMP             R4, R0
2D36FC:  BGT             loc_2D376E
2D36FE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D3704)
2D3700:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D3702:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D3704:  LDR.W           R0, [R0,R4,LSL#2]; this
2D3708:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
2D370C:  B               loc_2D376E
2D370E:  MOVW            R0, #0x61A7
2D3712:  CMP             R4, R0
2D3714:  BGT             loc_2D3732
2D3716:  MOVW            R0, #0x4E20
2D371A:  SUBS            R5, R4, R0
2D371C:  MOV             R0, R5; this
2D371E:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
2D3722:  MOV             R0, R5
2D3724:  MOV             R1, R8; int
2D3726:  NOP
2D3728:  MOVS            R0, #1
2D372A:  MOV             R10, R0
2D372C:  MOV             R0, R5; this
2D372E:  BLX             j__ZN9CTxdStore22RemoveRefWithoutDeleteEi; CTxdStore::RemoveRefWithoutDelete(int)
2D3732:  ADD             R1, SP, #0x28+var_24
2D3734:  MOV             R0, R8
2D3736:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
2D373A:  LDR             R1, =(_ZN10CStreaming13ms_memoryUsedE_ptr - 0x2D3744)
2D373C:  MOVS            R0, #1
2D373E:  STRB            R0, [R6]
2D3740:  ADD             R1, PC; _ZN10CStreaming13ms_memoryUsedE_ptr
2D3742:  LDR.W           R2, [R11]
2D3746:  LDR             R1, [R1]; CStreaming::ms_memoryUsed ...
2D3748:  LDR             R3, [R1]; CStreaming::ms_memoryUsed
2D374A:  ADD.W           R2, R3, R2,LSL#11
2D374E:  STR             R2, [R1]; CStreaming::ms_memoryUsed
2D3750:  MOVS.W          R1, R10,LSL#31; int
2D3754:  BNE             loc_2D3770
2D3756:  MOV             R0, R4; this
2D3758:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D375C:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D3762)
2D375E:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D3760:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D3762:  ADD.W           R0, R0, R9,LSL#2
2D3766:  LDRB            R1, [R0,#6]; int
2D3768:  MOV             R0, R4; this
2D376A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D376E:  MOVS            R0, #0
2D3770:  ADD             SP, SP, #0xC
2D3772:  POP.W           {R8-R11}
2D3776:  POP             {R4-R7,PC}
