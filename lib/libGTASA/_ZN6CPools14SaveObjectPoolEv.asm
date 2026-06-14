; =========================================================
; Game Engine Function: _ZN6CPools14SaveObjectPoolEv
; Address            : 0x4886B4 - 0x488924
; =========================================================

4886B4:  PUSH            {R4-R7,LR}
4886B6:  ADD             R7, SP, #0xC
4886B8:  PUSH.W          {R8-R11}
4886BC:  SUB             SP, SP, #0x64
4886BE:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4886C6)
4886C0:  MOVS            R5, #0
4886C2:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4886C4:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4886C6:  LDR             R0, [R0]; CPools::ms_pObjectPool
4886C8:  LDR             R1, [R0,#8]
4886CA:  STR             R1, [SP,#0x80+var_54]
4886CC:  CBZ             R1, loc_4886FA
4886CE:  LDR             R1, [R0,#4]
4886D0:  MOV.W           R2, #0x140
4886D4:  LDR             R3, [SP,#0x80+var_54]
4886D6:  LDRSB.W         R6, [R1]
4886DA:  CMP             R6, #0
4886DC:  BLT             loc_4886F0
4886DE:  LDR             R6, [R0]
4886E0:  ADDS            R4, R6, R2
4886E2:  CMP.W           R4, #0x140
4886E6:  BEQ             loc_4886F0
4886E8:  LDRB            R6, [R6,R2]
4886EA:  CMP             R6, #2
4886EC:  IT EQ
4886EE:  ADDEQ           R5, #1
4886F0:  ADD.W           R2, R2, #0x1A4
4886F4:  ADDS            R1, #1
4886F6:  SUBS            R3, #1
4886F8:  BNE             loc_4886D6
4886FA:  LDR             R0, =(UseDataFence_ptr - 0x488700)
4886FC:  ADD             R0, PC; UseDataFence_ptr
4886FE:  LDR             R0, [R0]; UseDataFence
488700:  LDRB            R6, [R0]
488702:  CBZ             R6, loc_488746
488704:  LDR             R0, =(currentSaveFenceCount_ptr - 0x488710)
488706:  MOVS            R3, #0
488708:  LDR             R1, =(UseDataFence_ptr - 0x488712)
48870A:  LDR             R2, =(DataFence_ptr - 0x488714)
48870C:  ADD             R0, PC; currentSaveFenceCount_ptr
48870E:  ADD             R1, PC; UseDataFence_ptr
488710:  ADD             R2, PC; DataFence_ptr
488712:  LDR             R0, [R0]; currentSaveFenceCount
488714:  LDR.W           R8, [R1]; UseDataFence
488718:  LDR             R1, [R2]; DataFence
48871A:  LDR             R2, [R0]
48871C:  STRB.W          R3, [R8]
488720:  LDRH            R1, [R1]
488722:  ADDS            R3, R2, #1
488724:  STR             R3, [R0]
488726:  MOVS            R0, #2; byte_count
488728:  ADD.W           R9, R2, R1
48872C:  BLX             malloc
488730:  MOV             R4, R0
488732:  MOVS            R1, #(stderr+2); void *
488734:  STRH.W          R9, [R4]
488738:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48873C:  MOV             R0, R4; p
48873E:  BLX             free
488742:  STRB.W          R6, [R8]
488746:  MOVS            R0, #4; byte_count
488748:  BLX             malloc
48874C:  MOV             R4, R0
48874E:  MOVS            R1, #byte_4; void *
488750:  STR             R5, [R4]
488752:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488756:  MOV             R0, R4; p
488758:  BLX             free
48875C:  CMP             R5, #0
48875E:  BEQ.W           loc_488910
488762:  LDR             R0, [SP,#0x80+var_54]
488764:  CMP             R0, #0
488766:  BEQ.W           loc_48890C
48876A:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x48877A)
48876C:  MOV.W           R10, #0
488770:  LDR             R1, =(UseDataFence_ptr - 0x48877E)
488772:  MOV.W           R8, #0
488776:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
488778:  LDR             R2, =(DataFence_ptr - 0x488782)
48877A:  ADD             R1, PC; UseDataFence_ptr
48877C:  LDR             R3, [R0]; CPools::ms_pObjectPool ...
48877E:  ADD             R2, PC; DataFence_ptr
488780:  LDR             R0, =(UseDataFence_ptr - 0x488788)
488782:  STR             R3, [SP,#0x80+var_60]
488784:  ADD             R0, PC; UseDataFence_ptr
488786:  LDR             R0, [R0]; UseDataFence
488788:  STR             R0, [SP,#0x80+var_64]
48878A:  LDR             R0, =(UseDataFence_ptr - 0x488790)
48878C:  ADD             R0, PC; UseDataFence_ptr
48878E:  LDR             R0, [R0]; UseDataFence
488790:  STR             R0, [SP,#0x80+var_68]
488792:  LDR             R0, =(currentSaveFenceCount_ptr - 0x488798)
488794:  ADD             R0, PC; currentSaveFenceCount_ptr
488796:  LDR             R0, [R0]; currentSaveFenceCount
488798:  STR             R0, [SP,#0x80+var_6C]
48879A:  LDR             R0, [R1]; UseDataFence
48879C:  STR             R0, [SP,#0x80+var_70]
48879E:  LDR             R0, [R2]; DataFence
4887A0:  STR             R0, [SP,#0x80+var_74]
4887A2:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4887AA)
4887A4:  LDR             R1, =(UseDataFence_ptr - 0x4887AE)
4887A6:  ADD             R0, PC; currentSaveFenceCount_ptr
4887A8:  LDR             R2, =(DataFence_ptr - 0x4887B2)
4887AA:  ADD             R1, PC; UseDataFence_ptr
4887AC:  LDR             R0, [R0]; currentSaveFenceCount
4887AE:  ADD             R2, PC; DataFence_ptr
4887B0:  STR             R0, [SP,#0x80+var_78]
4887B2:  LDR             R0, [R1]; UseDataFence
4887B4:  STR             R0, [SP,#0x80+var_7C]
4887B6:  LDR             R0, [R2]; DataFence
4887B8:  STR             R0, [SP,#0x80+var_80]
4887BA:  LDR             R0, [R3]; CPools::ms_pObjectPool
4887BC:  LDR             R1, [R0,#4]
4887BE:  LDRSB.W         R1, [R1,R8]; CObject *
4887C2:  CMP             R1, #0
4887C4:  BLT.W           loc_4888FC
4887C8:  LDR             R0, [R0]
4887CA:  ADDS.W          R5, R0, R10
4887CE:  BEQ.W           loc_4888FC
4887D2:  LDRB.W          R0, [R5,#0x140]
4887D6:  CMP             R0, #2
4887D8:  BNE.W           loc_4888FC
4887DC:  MOV             R0, R5; this
4887DE:  BLX             j__ZN6CPools12GetObjectRefEP7CObject; CPools::GetObjectRef(CObject *)
4887E2:  MOV             R6, R0
4887E4:  LDRSH.W         R0, [R5,#0x26]
4887E8:  STR             R0, [SP,#0x80+var_58]
4887EA:  LDR             R0, [SP,#0x80+var_64]
4887EC:  LDRB.W          R9, [R0]
4887F0:  CMP.W           R9, #0
4887F4:  BEQ             loc_48882C
4887F6:  STR             R6, [SP,#0x80+var_5C]
4887F8:  MOVS            R1, #0
4887FA:  LDR             R6, [SP,#0x80+var_7C]
4887FC:  LDR             R3, [SP,#0x80+var_78]
4887FE:  STRB            R1, [R6]
488800:  LDR             R1, [SP,#0x80+var_80]
488802:  LDR             R0, [R3]
488804:  LDRH            R1, [R1]
488806:  ADDS            R2, R0, #1
488808:  STR             R2, [R3]
48880A:  ADD.W           R11, R0, R1
48880E:  MOVS            R0, #2; byte_count
488810:  BLX             malloc
488814:  MOV             R4, R0
488816:  MOVS            R1, #(stderr+2); void *
488818:  STRH.W          R11, [R4]
48881C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488820:  MOV             R0, R4; p
488822:  BLX             free
488826:  STRB.W          R9, [R6]
48882A:  LDR             R6, [SP,#0x80+var_5C]
48882C:  MOVS            R0, #4; byte_count
48882E:  BLX             malloc
488832:  MOV             R4, R0
488834:  MOVS            R1, #byte_4; void *
488836:  STR             R6, [R4]
488838:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48883C:  MOV             R0, R4; p
48883E:  BLX             free
488842:  LDR             R0, [SP,#0x80+var_68]
488844:  LDRB            R6, [R0]
488846:  CBZ             R6, loc_48887E
488848:  LDR.W           R11, [SP,#0x80+var_70]
48884C:  MOVS            R1, #0
48884E:  LDR             R3, [SP,#0x80+var_6C]
488850:  STRB.W          R1, [R11]
488854:  LDR             R1, [SP,#0x80+var_74]
488856:  LDR             R0, [R3]
488858:  LDRH            R1, [R1]
48885A:  ADDS            R2, R0, #1
48885C:  STR             R2, [R3]
48885E:  ADD.W           R9, R0, R1
488862:  MOVS            R0, #2; byte_count
488864:  BLX             malloc
488868:  MOV             R4, R0
48886A:  MOVS            R1, #(stderr+2); void *
48886C:  STRH.W          R9, [R4]
488870:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488874:  MOV             R0, R4; p
488876:  BLX             free
48887A:  STRB.W          R6, [R11]
48887E:  MOVS            R0, #4; byte_count
488880:  BLX             malloc
488884:  MOV             R4, R0
488886:  LDR             R0, [SP,#0x80+var_58]
488888:  STR             R0, [R4]
48888A:  MOV             R0, R4; this
48888C:  MOVS            R1, #byte_4; void *
48888E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488892:  MOV             R0, R4; p
488894:  BLX             free
488898:  ADD             R6, SP, #0x80+var_50
48889A:  MOV             R1, R5; CObject *
48889C:  MOV             R0, R6; this
48889E:  BLX             j__ZN20CObjectSaveStructure9ConstructEP7CObject; CObjectSaveStructure::Construct(CObject *)
4888A2:  MOVS            R0, #4; byte_count
4888A4:  BLX             malloc
4888A8:  MOV             R4, R0
4888AA:  MOVS            R0, #0x34 ; '4'
4888AC:  STR             R0, [R4]
4888AE:  MOV             R0, R4; this
4888B0:  MOVS            R1, #byte_4; void *
4888B2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4888B6:  MOV             R0, R4; p
4888B8:  BLX             free
4888BC:  MOVS            R0, #0x34 ; '4'; byte_count
4888BE:  BLX             malloc
4888C2:  MOV             R4, R0
4888C4:  MOV             R0, R6
4888C6:  VLD1.8          {D16-D17}, [R0]!
4888CA:  ADD.W           R1, R6, #0x20 ; ' '
4888CE:  VLD1.64         {D20-D21}, [R0]
4888D2:  LDR             R0, [SP,#0x80+var_20]
4888D4:  VLD1.64         {D18-D19}, [R1]
4888D8:  MOVS            R1, #dword_34; void *
4888DA:  STR             R0, [R4,#0x30]
4888DC:  ADD.W           R0, R4, #0x20 ; ' '
4888E0:  VST1.8          {D18-D19}, [R0]
4888E4:  MOV             R0, R4
4888E6:  VST1.8          {D16-D17}, [R0]!
4888EA:  VST1.8          {D20-D21}, [R0]
4888EE:  MOV             R0, R4; this
4888F0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4888F4:  MOV             R0, R4; p
4888F6:  BLX             free
4888FA:  LDR             R3, [SP,#0x80+var_60]
4888FC:  LDR             R0, [SP,#0x80+var_54]
4888FE:  ADD.W           R8, R8, #1
488902:  ADD.W           R10, R10, #0x1A4
488906:  CMP             R0, R8
488908:  BNE.W           loc_4887BA
48890C:  MOVS            R0, #1
48890E:  B               loc_48891C
488910:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x488918)
488912:  MOVS            R1, #1
488914:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
488916:  LDR             R0, [R0]; CGenericGameStorage::ms_bFailed ...
488918:  STRB            R1, [R0]; CGenericGameStorage::ms_bFailed
48891A:  MOVS            R0, #0
48891C:  ADD             SP, SP, #0x64 ; 'd'
48891E:  POP.W           {R8-R11}
488922:  POP             {R4-R7,PC}
