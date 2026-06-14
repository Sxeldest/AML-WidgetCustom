; =========================================================
; Game Engine Function: _ZN17CAttractorScanner30GetNearestPedNotUsingAttractorERK9C2dEffect
; Address            : 0x4BB754 - 0x4BB972
; =========================================================

4BB754:  PUSH            {R4-R7,LR}
4BB756:  ADD             R7, SP, #0xC
4BB758:  PUSH.W          {R8-R11}
4BB75C:  SUB             SP, SP, #4
4BB75E:  VPUSH           {D8-D9}
4BB762:  SUB             SP, SP, #0x78; CPed *
4BB764:  MOV             R9, R0
4BB766:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4BB76C)
4BB768:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4BB76A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
4BB76C:  LDR.W           R8, [R0]; CPools::ms_pPedPool
4BB770:  LDR.W           R5, [R8,#8]
4BB774:  CMP             R5, #0
4BB776:  BEQ.W           loc_4BB962
4BB77A:  ADD.W           R0, R9, #4
4BB77E:  STR             R0, [SP,#0xA8+var_7C]
4BB780:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB78E)
4BB782:  MOVW            R1, #0x7CC
4BB786:  VLDR            S16, =3.4028e38
4BB78A:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB78C:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB78E:  STR             R0, [SP,#0xA8+var_80]
4BB790:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB796)
4BB792:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB794:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB796:  STR             R0, [SP,#0xA8+var_84]
4BB798:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB79E)
4BB79A:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB79C:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB79E:  STR             R0, [SP,#0xA8+var_88]
4BB7A0:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB7A6)
4BB7A2:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB7A4:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB7A6:  STR             R0, [SP,#0xA8+var_8C]
4BB7A8:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB7AE)
4BB7AA:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB7AC:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB7AE:  STR             R0, [SP,#0xA8+var_90]
4BB7B0:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB7B6)
4BB7B2:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB7B4:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB7B6:  STR             R0, [SP,#0xA8+var_98]
4BB7B8:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB7BE)
4BB7BA:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB7BC:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB7BE:  STR             R0, [SP,#0xA8+var_9C]
4BB7C0:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB7C6)
4BB7C2:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB7C4:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB7C6:  STR             R0, [SP,#0xA8+var_A0]
4BB7C8:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4BB7CE)
4BB7CA:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4BB7CC:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4BB7CE:  STR             R0, [SP,#0xA8+var_A4]
4BB7D0:  MOVS            R0, #0
4BB7D2:  STR             R0, [SP,#0xA8+var_94]
4BB7D4:  MUL.W           R0, R5, R1
4BB7D8:  SUBS            R5, #1
4BB7DA:  SUB.W           R4, R0, #0x38C
4BB7DE:  LDR.W           R0, [R8,#4]
4BB7E2:  LDRSB           R0, [R0,R5]
4BB7E4:  CMP             R0, #0
4BB7E6:  BLT.W           loc_4BB900
4BB7EA:  LDR.W           R6, [R8]
4BB7EE:  ADD.W           R10, R6, R4
4BB7F2:  CMP.W           R10, #0x440
4BB7F6:  BEQ.W           loc_4BB900
4BB7FA:  LDR             R0, [R6,R4]
4BB7FC:  ADDS            R0, #4; this
4BB7FE:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
4BB802:  CBZ             R0, loc_4BB80E
4BB804:  LDR             R1, [R0]
4BB806:  LDR             R1, [R1,#0x14]
4BB808:  BLX             R1
4BB80A:  CMP             R0, #0xE9
4BB80C:  BEQ             loc_4BB900
4BB80E:  MOVW            R0, #0xFBD4
4BB812:  SUB.W           R2, R10, #0x7C8
4BB816:  MOVT            R0, #0xFFFF
4BB81A:  VLDR            S0, [R9]
4BB81E:  LDR.W           R0, [R10,R0]
4BB822:  ADD.W           R1, R0, #0x30 ; '0'
4BB826:  CMP             R0, #0
4BB828:  IT EQ
4BB82A:  ADDEQ.W         R1, R2, #0x38C
4BB82E:  LDR             R0, [SP,#0xA8+var_7C]
4BB830:  VLDR            S2, [R1]
4BB834:  VLDR            D17, [R1,#4]
4BB838:  VSUB.F32        S0, S0, S2
4BB83C:  VLDR            D16, [R0]
4BB840:  VSUB.F32        D16, D16, D17
4BB844:  VMUL.F32        D1, D16, D16
4BB848:  VMUL.F32        S0, S0, S0
4BB84C:  VADD.F32        S0, S0, S2
4BB850:  VADD.F32        S18, S0, S3
4BB854:  VCMPE.F32       S18, S16
4BB858:  VMRS            APSR_nzcv, FPSCR
4BB85C:  BGE             loc_4BB900
4BB85E:  MOV             R0, R9
4BB860:  BLX             j__ZN18CScripted2dEffects8GetIndexEPK9C2dEffect; CScripted2dEffects::GetIndex(C2dEffect const*)
4BB864:  ADD.W           R0, R0, R0,LSL#3
4BB868:  LDR             R1, [SP,#0xA8+var_80]
4BB86A:  ADD.W           R1, R1, R0,LSL#2
4BB86E:  LDRB.W          R1, [R1,#0x20]
4BB872:  CMP             R1, #0
4BB874:  BEQ             loc_4BB90E
4BB876:  MOV             R1, #0xFFFFF838
4BB87E:  ADD             R1, R6
4BB880:  ADD             R1, R4
4BB882:  LDRSH.W         R2, [R1,#0x3AE]
4BB886:  LDR             R1, [SP,#0xA8+var_84]
4BB888:  LDR.W           R1, [R1,R0,LSL#2]
4BB88C:  CMP             R1, R2
4BB88E:  ITTTT NE
4BB890:  LDRNE           R3, [SP,#0xA8+var_88]
4BB892:  ADDNE.W         R3, R3, R0,LSL#2
4BB896:  LDRNE           R6, [R3,#4]
4BB898:  CMPNE           R6, R2
4BB89A:  BEQ             loc_4BB90E
4BB89C:  LDR             R3, [SP,#0xA8+var_8C]
4BB89E:  ADD.W           R3, R3, R0,LSL#2
4BB8A2:  LDR.W           R11, [R3,#8]
4BB8A6:  CMP             R11, R2
4BB8A8:  ITTTT NE
4BB8AA:  LDRNE           R3, [SP,#0xA8+var_90]
4BB8AC:  ADDNE.W         R3, R3, R0,LSL#2
4BB8B0:  LDRNE.W         LR, [R3,#0xC]
4BB8B4:  CMPNE           LR, R2
4BB8B6:  BEQ             loc_4BB90E
4BB8B8:  LDR.W           R12, [R10,#0x15C]
4BB8BC:  ADDS            R1, #2
4BB8BE:  BNE             loc_4BB8CC
4BB8C0:  LDR             R1, [SP,#0xA8+var_98]
4BB8C2:  ADD.W           R1, R1, R0,LSL#2
4BB8C6:  LDR             R1, [R1,#0x10]
4BB8C8:  CMP             R1, R12
4BB8CA:  BEQ             loc_4BB90E
4BB8CC:  ADDS            R1, R6, #2
4BB8CE:  BNE             loc_4BB8DC
4BB8D0:  LDR             R1, [SP,#0xA8+var_9C]
4BB8D2:  ADD.W           R1, R1, R0,LSL#2
4BB8D6:  LDR             R1, [R1,#0x14]
4BB8D8:  CMP             R1, R12
4BB8DA:  BEQ             loc_4BB90E
4BB8DC:  ADDS.W          R1, R11, #2
4BB8E0:  BNE             loc_4BB8EE
4BB8E2:  LDR             R1, [SP,#0xA8+var_A0]
4BB8E4:  ADD.W           R1, R1, R0,LSL#2
4BB8E8:  LDR             R1, [R1,#0x18]
4BB8EA:  CMP             R1, R12
4BB8EC:  BEQ             loc_4BB90E
4BB8EE:  ADDS.W          R1, LR, #2
4BB8F2:  BNE             loc_4BB900
4BB8F4:  LDR             R1, [SP,#0xA8+var_A4]
4BB8F6:  ADD.W           R0, R1, R0,LSL#2
4BB8FA:  LDR             R0, [R0,#0x1C]
4BB8FC:  CMP             R0, R12
4BB8FE:  BEQ             loc_4BB90E
4BB900:  SUBS            R5, #1
4BB902:  SUBW            R4, R4, #0x7CC
4BB906:  ADDS            R0, R5, #1
4BB908:  BNE.W           loc_4BB7DE
4BB90C:  B               loc_4BB95E
4BB90E:  ADD             R4, SP, #0xA8+var_78
4BB910:  MOVS            R0, #0
4BB912:  STRD.W          R0, R0, [SP,#0xA8+var_38]
4BB916:  MOV.W           R1, #0x3F800000; float
4BB91A:  MOV             R0, R4; this
4BB91C:  BLX             j__ZN7CMatrix8SetScaleEf; CMatrix::SetScale(float)
4BB920:  MOVW            R0, #0xF838
4BB924:  MOV             R1, R4; C2dEffect *
4BB926:  MOVT            R0, #0xFFFF
4BB92A:  MOVS            R2, #0; CMatrix *
4BB92C:  ADD             R0, R10
4BB92E:  ADD.W           R11, R0, #0x388
4BB932:  MOV             R0, R9; this
4BB934:  MOV             R3, R11; int
4BB936:  BLX             j__ZN20CPedAttractorManager14IsApproachableEP9C2dEffectRK7CMatrixiP4CPed; CPedAttractorManager::IsApproachable(C2dEffect *,CMatrix const&,int,CPed *)
4BB93A:  MOV             R10, R0
4BB93C:  MOV             R0, R4; this
4BB93E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4BB942:  CMP.W           R10, #0
4BB946:  MOVW            R1, #0x7CC
4BB94A:  IT NE
4BB94C:  VMOVNE.F32      S16, S18
4BB950:  LDR             R0, [SP,#0xA8+var_94]
4BB952:  IT NE
4BB954:  MOVNE           R0, R11
4BB956:  CMP             R5, #0
4BB958:  BNE.W           loc_4BB7D2
4BB95C:  B               loc_4BB964
4BB95E:  LDR             R0, [SP,#0xA8+var_94]
4BB960:  B               loc_4BB964
4BB962:  MOVS            R0, #0
4BB964:  ADD             SP, SP, #0x78 ; 'x'
4BB966:  VPOP            {D8-D9}
4BB96A:  ADD             SP, SP, #4
4BB96C:  POP.W           {R8-R11}
4BB970:  POP             {R4-R7,PC}
