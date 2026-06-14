; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c16UpdateOfficePedsEv
; Address            : 0x44A638 - 0x44A842
; =========================================================

44A638:  PUSH            {R4-R7,LR}
44A63A:  ADD             R7, SP, #0xC
44A63C:  PUSH.W          {R8-R10}
44A640:  VPUSH           {D8-D9}
44A644:  SUB             SP, SP, #0x20
44A646:  MOV             R10, R0
44A648:  LDRB.W          R1, [R10,#0x34]
44A64C:  LDRB.W          R0, [R10,#0x35]
44A650:  CMP             R1, #0
44A652:  BEQ             loc_44A71A
44A654:  CMP             R0, #0
44A656:  BNE.W           loc_44A836
44A65A:  MOVS            R0, #0
44A65C:  STRD.W          R0, R0, [SP,#0x48+var_38]
44A660:  STR             R0, [SP,#0x48+var_30]
44A662:  LDR.W           R5, [R10,#8]
44A666:  LDR             R1, [R5,#0x14]
44A668:  CBNZ            R1, loc_44A67A
44A66A:  MOV             R0, R5; this
44A66C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
44A670:  LDR             R1, [R5,#0x14]; CMatrix *
44A672:  ADDS            R0, R5, #4; this
44A674:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
44A678:  LDR             R1, [R5,#0x14]
44A67A:  ADD             R2, SP, #0x48+var_38
44A67C:  MOV             R0, SP
44A67E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
44A682:  LDR             R0, [SP,#0x48+var_40]
44A684:  MOVS            R5, #0
44A686:  VLDR            D16, [SP,#0x48+var_48]
44A68A:  STR             R0, [SP,#0x48+var_30]
44A68C:  MOVS            R0, #0
44A68E:  VSTR            D16, [SP,#0x48+var_38]
44A692:  ADD.W           R1, R10, R0,LSL#2
44A696:  LDR             R2, [R1,#0x10]
44A698:  CMP             R2, #0
44A69A:  BEQ             loc_44A6C8
44A69C:  LDRSB.W         R1, [R2,#0x40D]
44A6A0:  CMP             R1, #1
44A6A2:  BLT             loc_44A6C8
44A6A4:  LDRB.W          R3, [R2,#0x590]
44A6A8:  CMP             R3, #6
44A6AA:  IT EQ
44A6AC:  ADDEQ           R5, #1
44A6AE:  CMP             R1, #1
44A6B0:  BEQ             loc_44A6C8
44A6B2:  ADD.W           R2, R2, #0x5B0
44A6B6:  MOVS            R3, #1
44A6B8:  LDRB.W          R6, [R2],#0x20; unsigned __int8
44A6BC:  ADDS            R3, #1
44A6BE:  CMP             R6, #6
44A6C0:  IT EQ
44A6C2:  ADDEQ           R5, #1
44A6C4:  CMP             R3, R1
44A6C6:  BLT             loc_44A6B8
44A6C8:  ADDS            R0, #1
44A6CA:  CMP             R0, #8
44A6CC:  BNE             loc_44A692
44A6CE:  MOVS            R0, #byte_9; this
44A6D0:  MOVS            R1, #0x12; unsigned __int8
44A6D2:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
44A6D6:  CMP             R0, #1
44A6D8:  BNE             loc_44A752
44A6DA:  BLX             rand
44A6DE:  UXTH            R0, R0
44A6E0:  VLDR            S2, =0.000015259
44A6E4:  VMOV            S0, R0
44A6E8:  ADD.W           R0, R5, R5,LSR#31
44A6EC:  VCVT.F32.S32    S0, S0
44A6F0:  SUB.W           R1, R5, R0,ASR#1
44A6F4:  VMOV            S4, R1
44A6F8:  VCVT.F32.S32    S4, S4
44A6FC:  VMUL.F32        S0, S0, S2
44A700:  VMUL.F32        S0, S0, S4
44A704:  VCVT.S32.F32    S0, S0
44A708:  VMOV            R1, S0
44A70C:  ADD.W           R5, R1, R0,ASR#1
44A710:  CMP             R5, #0x10
44A712:  BGE             loc_44A79C
44A714:  CMP             R5, #1
44A716:  BGE             loc_44A79E
44A718:  B               loc_44A836
44A71A:  CMP             R0, #0
44A71C:  BEQ.W           loc_44A836
44A720:  ADD.W           R5, R10, #0x38 ; '8'
44A724:  MOV.W           R8, #0
44A728:  MOVS            R6, #0
44A72A:  LDR.W           R0, [R5,R6,LSL#2]; this
44A72E:  CBZ             R0, loc_44A744
44A730:  BLX             j__ZN4CPed14IsPointerValidEv; CPed::IsPointerValid(void)
44A734:  CMP             R0, #1
44A736:  ITT EQ
44A738:  LDREQ.W         R0, [R5,R6,LSL#2]; this
44A73C:  BLXEQ           j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
44A740:  STR.W           R8, [R5,R6,LSL#2]
44A744:  ADDS            R6, #1
44A746:  CMP             R6, #0x10
44A748:  BNE             loc_44A72A
44A74A:  MOVS            R0, #0
44A74C:  STRB.W          R0, [R10,#0x36]
44A750:  B               loc_44A836
44A752:  MOVS            R0, #word_12; this
44A754:  MOVS            R1, #0x16; unsigned __int8
44A756:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
44A75A:  CBNZ            R0, loc_44A768
44A75C:  MOVS            R0, #byte_6; this
44A75E:  MOVS            R1, #9; unsigned __int8
44A760:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
44A764:  CMP             R0, #1
44A766:  BNE             loc_44A836
44A768:  BLX             rand
44A76C:  UXTH            R0, R0
44A76E:  VLDR            S2, =0.000015259
44A772:  VMOV            S0, R0
44A776:  ADD.W           R0, R5, R5,LSR#31
44A77A:  VCVT.F32.S32    S0, S0
44A77E:  ASRS            R0, R0, #1
44A780:  VMOV            S4, R0
44A784:  VCVT.F32.S32    S4, S4
44A788:  VMUL.F32        S0, S0, S2
44A78C:  VMUL.F32        S0, S0, S4
44A790:  VCVT.S32.F32    S0, S0
44A794:  VMOV            R5, S0
44A798:  CMP             R5, #0xF
44A79A:  BLE             loc_44A714
44A79C:  MOVS            R5, #0x10
44A79E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x44A7B0)
44A7A0:  VMOV.F32        S18, #8.0
44A7A4:  VLDR            S16, =0.000015259
44A7A8:  ADD.W           R8, SP, #0x48+var_38
44A7AC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
44A7AE:  LDR.W           R9, [R0]; CModelInfo::ms_modelInfoPtrs ...
44A7B2:  BLX             rand
44A7B6:  UXTH            R0, R0
44A7B8:  VMOV            S0, R0
44A7BC:  VCVT.F32.S32    S0, S0
44A7C0:  VMUL.F32        S0, S0, S16
44A7C4:  VMUL.F32        S0, S0, S18
44A7C8:  VCVT.S32.F32    S0, S0
44A7CC:  VMOV            R0, S0; this
44A7D0:  BLX             j__ZN10CStreaming24FindMIPedSlotForInteriorEi; CStreaming::FindMIPedSlotForInterior(int)
44A7D4:  MOV             R1, R0
44A7D6:  MOV             R2, R8
44A7D8:  LDR.W           R0, [R9,R1,LSL#2]
44A7DC:  MOVS            R3, #0
44A7DE:  LDRSB.W         R6, [R10,#0x36]
44A7E2:  LDR             R0, [R0,#0x40]
44A7E4:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
44A7E8:  ADD.W           R6, R10, R6,LSL#2
44A7EC:  CMP             R0, #0
44A7EE:  STR.W           R0, [R6,#0x38]!
44A7F2:  BEQ             loc_44A832
44A7F4:  LDRB.W          R0, [R10,#0x36]
44A7F8:  MOVS            R1, #2; unsigned __int8
44A7FA:  ADDS            R0, #1
44A7FC:  STRB.W          R0, [R10,#0x36]
44A800:  LDR             R0, [R6]; this
44A802:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
44A806:  LDR             R0, [R6]
44A808:  MOVS            R1, #7; int
44A80A:  LDR.W           R0, [R0,#0x440]; this
44A80E:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
44A812:  LDR             R0, [R6]
44A814:  LDR.W           R4, [R0,#0x440]
44A818:  MOVS            R0, #off_18; this
44A81A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
44A81E:  MOV             R1, R10; InteriorGroup_c *
44A820:  MOV             R6, R0
44A822:  BLX             j__ZN23CTaskInteriorBeInOfficeC2EP15InteriorGroup_c; CTaskInteriorBeInOffice::CTaskInteriorBeInOffice(InteriorGroup_c *)
44A826:  ADDS            R0, R4, #4; this
44A828:  MOV             R1, R6; CTask *
44A82A:  MOVS            R2, #4; int
44A82C:  MOVS            R3, #0; bool
44A82E:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
44A832:  SUBS            R5, #1
44A834:  BNE             loc_44A7B2
44A836:  ADD             SP, SP, #0x20 ; ' '
44A838:  VPOP            {D8-D9}
44A83C:  POP.W           {R8-R10}
44A840:  POP             {R4-R7,PC}
