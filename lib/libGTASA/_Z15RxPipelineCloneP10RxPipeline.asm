; =========================================================
; Game Engine Function: _Z15RxPipelineCloneP10RxPipeline
; Address            : 0x1DF794 - 0x1DF994
; =========================================================

1DF794:  PUSH            {R4-R7,LR}
1DF796:  ADD             R7, SP, #0xC
1DF798:  PUSH.W          {R8-R11}
1DF79C:  SUB             SP, SP, #0xC
1DF79E:  MOV             R9, R0
1DF7A0:  CMP.W           R9, #0
1DF7A4:  BEQ             loc_1DF7AC
1DF7A6:  LDR.W           R0, [R9]
1DF7AA:  CBZ             R0, loc_1DF7BA
1DF7AC:  MOV.W           R11, #0
1DF7B0:  MOV             R0, R11
1DF7B2:  ADD             SP, SP, #0xC
1DF7B4:  POP.W           {R8-R11}
1DF7B8:  POP             {R4-R7,PC}
1DF7BA:  BLX             j__Z16RxPipelineCreatev; RxPipelineCreate(void)
1DF7BE:  MOV             R11, R0
1DF7C0:  CMP.W           R11, #0
1DF7C4:  BEQ             loc_1DF7AC
1DF7C6:  LDR.W           R0, [R9,#0x2C]
1DF7CA:  STR.W           R0, [R11,#0x2C]
1DF7CE:  LDR.W           R0, [R9,#0x30]
1DF7D2:  STR.W           R0, [R11,#0x30]
1DF7D6:  LDR.W           R0, [R9,#4]
1DF7DA:  CMP             R0, #0
1DF7DC:  BEQ             loc_1DF7B0
1DF7DE:  MOV             R0, R11
1DF7E0:  BLX             j__Z14RxPipelineLockP10RxPipeline; RxPipelineLock(RxPipeline *)
1DF7E4:  CMP             R0, #0
1DF7E6:  BEQ.W           loc_1DF98C
1DF7EA:  CMP             R11, R9
1DF7EC:  BEQ             loc_1DF8AE
1DF7EE:  LDR.W           R0, [R9,#4]
1DF7F2:  SUBS            R6, R0, #1
1DF7F4:  CMP             R6, #0
1DF7F6:  BLT             loc_1DF8AA
1DF7F8:  ADD.W           R0, R0, R0,LSL#2
1DF7FC:  MOV             R1, #0xFFFFFFEC
1DF800:  MOV.W           R8, #0
1DF804:  ADD.W           R5, R1, R0,LSL#3
1DF808:  LDR             R0, =(RwEngineInstance_ptr - 0x1DF80E)
1DF80A:  ADD             R0, PC; RwEngineInstance_ptr
1DF80C:  LDR.W           R10, [R0]; RwEngineInstance
1DF810:  LDR.W           R0, [R9,#8]
1DF814:  LDR.W           R1, [R11,#8]
1DF818:  ADD             R0, R5
1DF81A:  SUB.W           R2, R0, #0x14
1DF81E:  ADD             R1, R5
1DF820:  VLD1.32         {D16-D17}, [R2]
1DF824:  SUBS            R2, R0, #4
1DF826:  VLD1.32         {D18-D19}, [R2]
1DF82A:  SUBS            R2, R1, #4
1DF82C:  VLDR            D20, [R0,#0xC]
1DF830:  SUB.W           R0, R1, #0x14
1DF834:  VST1.32         {D18-D19}, [R2]
1DF838:  VST1.32         {D16-D17}, [R0]
1DF83C:  VSTR            D20, [R1,#0xC]
1DF840:  LDR.W           R0, [R11,#8]
1DF844:  ADD             R0, R5
1DF846:  STR.W           R8, [R0,#-8]
1DF84A:  LDR.W           R0, [R11,#8]
1DF84E:  ADD             R0, R5
1DF850:  STR.W           R8, [R0,#-4]
1DF854:  LDR.W           R0, [R11,#8]
1DF858:  STR.W           R8, [R0,R5]
1DF85C:  LDR.W           R0, [R11,#8]
1DF860:  ADD             R0, R5
1DF862:  STR.W           R8, [R0,#4]
1DF866:  LDR.W           R0, [R11,#8]
1DF86A:  ADD             R0, R5
1DF86C:  LDR             R0, [R0,#0x10]
1DF86E:  CBZ             R0, loc_1DF89C
1DF870:  LDR.W           R1, [R10]
1DF874:  LDR.W           R1, [R1,#0x12C]
1DF878:  BLX             R1
1DF87A:  LDR.W           R1, [R11,#8]
1DF87E:  ADD             R1, R5
1DF880:  STR             R0, [R1,#0xC]
1DF882:  LDR.W           R0, [R11,#8]
1DF886:  ADDS            R1, R0, R5
1DF888:  LDR             R0, [R1,#0xC]; void *
1DF88A:  CMP             R0, #0
1DF88C:  BEQ             loc_1DF974
1DF88E:  LDR.W           R3, [R9,#8]
1DF892:  LDR             R2, [R1,#0x10]; size_t
1DF894:  ADDS            R1, R3, R5
1DF896:  LDR             R1, [R1,#0xC]; void *
1DF898:  BLX             memcpy_1
1DF89C:  SUBS            R6, #1
1DF89E:  SUBS            R5, #0x28 ; '('
1DF8A0:  CMP.W           R6, #0xFFFFFFFF
1DF8A4:  BGT             loc_1DF810
1DF8A6:  LDR.W           R0, [R9,#4]
1DF8AA:  STR.W           R0, [R11,#4]
1DF8AE:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1DF8B6)
1DF8B0:  LDR             R1, =(RwEngineInstance_ptr - 0x1DF8BC)
1DF8B2:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1DF8B4:  LDR.W           R10, [R11,#8]
1DF8B8:  ADD             R1, PC; RwEngineInstance_ptr
1DF8BA:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
1DF8BC:  LDR             R1, [R1]; RwEngineInstance
1DF8BE:  LDR             R2, [R0]
1DF8C0:  LDR             R1, [R1]
1DF8C2:  LDR.W           R0, [R9,#4]
1DF8C6:  ADD             R1, R2
1DF8C8:  LDR.W           R8, [R1,#0x38]
1DF8CC:  SUBS            R1, R0, #1
1DF8CE:  CMP             R1, #0
1DF8D0:  BLT             loc_1DF934
1DF8D2:  ADD.W           R1, R0, R0,LSL#2
1DF8D6:  MOV             R2, #0xFFFFFFE0
1DF8DA:  SUBS            R4, R0, #2
1DF8DC:  ADD.W           R5, R2, R1,LSL#3
1DF8E0:  ADD.W           R1, R8, R8,LSL#2
1DF8E4:  ADD.W           R1, R10, R1,LSL#3
1DF8E8:  ADD.W           R1, R1, R0,LSL#7
1DF8EC:  MOV             R0, R10
1DF8EE:  SUB.W           R6, R1, #0x80
1DF8F2:  B               loc_1DF8FE
1DF8F4:  SUBS            R6, #0x80
1DF8F6:  SUBS            R5, #0x28 ; '('
1DF8F8:  LDR.W           R0, [R11,#8]
1DF8FC:  SUBS            R4, #1
1DF8FE:  STR             R6, [R0,R5]
1DF900:  LDR.W           R0, [R9,#8]
1DF904:  LDR             R1, [R0,R5]; void *
1DF906:  CBZ             R1, loc_1DF914
1DF908:  LDR.W           R0, [R11,#8]
1DF90C:  MOVS            R2, #0x80; size_t
1DF90E:  LDR             R0, [R0,R5]; void *
1DF910:  BLX             memcpy_0
1DF914:  CMP             R4, #0
1DF916:  BGE             loc_1DF8F4
1DF918:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1DF920)
1DF91A:  LDR             R1, =(RwEngineInstance_ptr - 0x1DF922)
1DF91C:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1DF91E:  ADD             R1, PC; RwEngineInstance_ptr
1DF920:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
1DF922:  LDR             R1, [R1]; RwEngineInstance
1DF924:  LDR             R2, [R0]
1DF926:  LDR             R1, [R1]
1DF928:  LDR.W           R0, [R9,#4]
1DF92C:  ADD             R1, R2
1DF92E:  LDR             R1, [R1,#0x38]
1DF930:  CBNZ            R0, loc_1DF938
1DF932:  B               loc_1DF966
1DF934:  MOV             R1, R8
1DF936:  CBZ             R0, loc_1DF966
1DF938:  LSLS            R0, R1, #5
1DF93A:  ADD.W           R1, R8, R8,LSL#2
1DF93E:  MOVS            R2, #0x1C
1DF940:  MOVS            R3, #0
1DF942:  ADD.W           R1, R10, R1,LSL#3
1DF946:  ADD.W           R0, R1, R0,LSL#2
1DF94A:  MOVS            R1, #0
1DF94C:  STRD.W          R1, R1, [R0]
1DF950:  ADDS            R3, #1
1DF952:  STR             R1, [R0,#8]
1DF954:  LDR.W           R6, [R11,#8]
1DF958:  STR             R0, [R6,R2]
1DF95A:  ADDS            R0, #0xC
1DF95C:  ADDS            R2, #0x28 ; '('
1DF95E:  LDR.W           R6, [R9,#4]
1DF962:  CMP             R3, R6
1DF964:  BCC             loc_1DF94C
1DF966:  MOV             R0, R11
1DF968:  BLX             j__Z18RxLockedPipeUnlockP10RxPipeline; RxLockedPipeUnlock(RxPipeline *)
1DF96C:  CMP             R0, #0
1DF96E:  BNE.W           loc_1DF7B0
1DF972:  B               loc_1DF98C
1DF974:  MOVS            R0, #0
1DF976:  STR             R0, [SP,#0x28+var_24]
1DF978:  MOVS            R0, #0x13
1DF97A:  LDR             R1, [R1,#0x10]
1DF97C:  MOVT            R0, #0x8000; int
1DF980:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DF984:  STR             R0, [SP,#0x28+var_20]
1DF986:  ADD             R0, SP, #0x28+var_24
1DF988:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DF98C:  MOV             R0, R11
1DF98E:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1DF992:  B               loc_1DF7AC
