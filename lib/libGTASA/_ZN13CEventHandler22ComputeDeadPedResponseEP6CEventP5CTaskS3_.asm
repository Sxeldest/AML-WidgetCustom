; =========================================================
; Game Engine Function: _ZN13CEventHandler22ComputeDeadPedResponseEP6CEventP5CTaskS3_
; Address            : 0x37F800 - 0x37F9BC
; =========================================================

37F800:  PUSH            {R4-R7,LR}
37F802:  ADD             R7, SP, #0xC
37F804:  PUSH.W          {R11}
37F808:  VPUSH           {D8-D9}
37F80C:  SUB             SP, SP, #0x20
37F80E:  MOV             R6, R1
37F810:  MOV             R4, R0
37F812:  LDR             R5, [R6,#0x10]
37F814:  CMP             R5, #0
37F816:  BEQ.W           loc_37F9B0; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F81A:  LDR             R0, [R4]; this
37F81C:  LDR             R1, [R5,#0x14]
37F81E:  LDR             R2, [R0,#0x14]
37F820:  ADD.W           R3, R1, #0x30 ; '0'
37F824:  CMP             R1, #0
37F826:  IT EQ
37F828:  ADDEQ           R3, R5, #4
37F82A:  ADD.W           R1, R2, #0x30 ; '0'
37F82E:  CMP             R2, #0
37F830:  VLDR            D8, [R3]
37F834:  IT EQ
37F836:  ADDEQ           R1, R0, #4
37F838:  VLDR            D9, [R1]
37F83C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37F840:  CMP             R0, #1
37F842:  BNE.W           loc_37F928
37F846:  VSUB.F32        D16, D9, D8
37F84A:  VLDR            S2, =0.0
37F84E:  VMUL.F32        D0, D16, D16
37F852:  VADD.F32        S0, S0, S1
37F856:  VADD.F32        S0, S0, S2
37F85A:  VLDR            S2, =0.5625
37F85E:  VCMPE.F32       S0, S2
37F862:  VMRS            APSR_nzcv, FPSCR
37F866:  BGE.W           loc_37F9B0; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F86A:  LDR             R0, [R4]
37F86C:  LDR.W           R0, [R0,#0x440]; this
37F870:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
37F874:  CMP             R0, #0
37F876:  BNE.W           loc_37F9B0; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F87A:  LDR             R0, =(g_ikChainMan_ptr - 0x37F882)
37F87C:  LDR             R1, [R4]; CPed *
37F87E:  ADD             R0, PC; g_ikChainMan_ptr
37F880:  LDR             R0, [R0]; g_ikChainMan ; this
37F882:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
37F886:  CMP             R0, #0
37F888:  BNE.W           loc_37F9B0; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F88C:  LDR             R0, =(TheCamera_ptr - 0x37F892)
37F88E:  ADD             R0, PC; TheCamera_ptr
37F890:  LDR             R1, [R0]; TheCamera
37F892:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
37F896:  ADD.W           R0, R0, R0,LSL#5
37F89A:  ADD.W           R1, R1, R0,LSL#4
37F89E:  LDRH.W          R1, [R1,#0x17E]
37F8A2:  SUBS            R1, #7; switch 45 cases
37F8A4:  CMP             R1, #0x2C ; ','
37F8A6:  BHI             def_37F8A8; jumptable 0037F8A8 default case, cases 9-15,17-33,35-44,47-50
37F8A8:  TBB.W           [PC,R1]; switch jump
37F8AC:  DCB 0x82; jump table for switch statement
37F8AD:  DCB 0x82
37F8AE:  DCB 0x17
37F8AF:  DCB 0x17
37F8B0:  DCB 0x17
37F8B1:  DCB 0x17
37F8B2:  DCB 0x17
37F8B3:  DCB 0x17
37F8B4:  DCB 0x17
37F8B5:  DCB 0x82
37F8B6:  DCB 0x17
37F8B7:  DCB 0x17
37F8B8:  DCB 0x17
37F8B9:  DCB 0x17
37F8BA:  DCB 0x17
37F8BB:  DCB 0x17
37F8BC:  DCB 0x17
37F8BD:  DCB 0x17
37F8BE:  DCB 0x17
37F8BF:  DCB 0x17
37F8C0:  DCB 0x17
37F8C1:  DCB 0x17
37F8C2:  DCB 0x17
37F8C3:  DCB 0x17
37F8C4:  DCB 0x17
37F8C5:  DCB 0x17
37F8C6:  DCB 0x17
37F8C7:  DCB 0x82
37F8C8:  DCB 0x17
37F8C9:  DCB 0x17
37F8CA:  DCB 0x17
37F8CB:  DCB 0x17
37F8CC:  DCB 0x17
37F8CD:  DCB 0x17
37F8CE:  DCB 0x17
37F8CF:  DCB 0x17
37F8D0:  DCB 0x17
37F8D1:  DCB 0x17
37F8D2:  DCB 0x82
37F8D3:  DCB 0x82
37F8D4:  DCB 0x17
37F8D5:  DCB 0x17
37F8D6:  DCB 0x17
37F8D7:  DCB 0x17
37F8D8:  DCB 0x82
37F8D9:  ALIGN 2
37F8DA:  LDR             R1, =(TheCamera_ptr - 0x37F8E0); jumptable 0037F8A8 default case, cases 9-15,17-33,35-44,47-50
37F8DC:  ADD             R1, PC; TheCamera_ptr
37F8DE:  LDR             R1, [R1]; TheCamera
37F8E0:  ADD.W           R0, R1, R0,LSL#4
37F8E4:  ADD.W           R0, R0, #0x170; this
37F8E8:  BLX             j__ZN4CCam22GetWeaponFirstPersonOnEv; CCam::GetWeaponFirstPersonOn(void)
37F8EC:  CMP             R0, #0
37F8EE:  BNE             loc_37F9B0; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F8F0:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37F900)
37F8F4:  MOVS            R1, #0
37F8F6:  MOV.W           R6, #0x1F4
37F8FA:  MOVS            R0, #1
37F8FC:  ADD             R12, PC; g_ikChainMan_ptr
37F8FE:  MOVS            R3, #5
37F900:  LDR             R2, [R4]; CPed *
37F902:  MOV.W           LR, #3
37F906:  STRD.W          R6, R3, [SP,#0x40+var_40]; int
37F90A:  MOV.W           R4, #0x3E800000
37F90E:  STRD.W          R1, R0, [SP,#0x40+var_38]; int
37F912:  ADD             R0, SP, #0x40+var_30
37F914:  STM.W           R0, {R4,R6,LR}
37F918:  MOV             R3, R5; int
37F91A:  LDR.W           R0, [R12]; g_ikChainMan ; int
37F91E:  STR             R1, [SP,#0x40+var_24]; int
37F920:  ADR             R1, aCompdeadpedres; "CompDeadPedResp"
37F922:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37F926:  B               loc_37F9B0; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F928:  LDRSH.W         R0, [R6,#0xA]
37F92C:  CMP.W           R0, #0x258
37F930:  BGE             loc_37F954
37F932:  CMP             R0, #0xC8
37F934:  BEQ             loc_37F99E
37F936:  MOVW            R1, #0x1AB; unsigned int
37F93A:  CMP             R0, R1
37F93C:  BNE             loc_37F9B0; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F93E:  MOVS            R0, #word_28; this
37F940:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F944:  MOVS            R1, #0; unsigned __int8
37F946:  MOVW            R2, #0xFFFF; unsigned __int16
37F94A:  MOV.W           R3, #0xFFFFFFFF; __int16
37F94E:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
37F952:  B               loc_37F9AE
37F954:  BEQ             loc_37F9A2
37F956:  MOVW            R1, #0x38F; unsigned int
37F95A:  CMP             R0, R1
37F95C:  BNE             loc_37F9B0; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F95E:  MOVS            R0, #dword_40; this
37F960:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F964:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x37F970)
37F966:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x37F974)
37F96A:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x37F976)
37F96C:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
37F96E:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x37F97A)
37F970:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
37F972:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
37F974:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
37F976:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
37F978:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
37F97C:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
37F97E:  LDR             R6, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
37F980:  VLDR            S0, [R2]
37F984:  LDR.W           R2, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
37F988:  LDR             R3, [R1]; float
37F98A:  LDR             R1, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
37F98C:  STRD.W          R1, R2, [SP,#0x40+var_40]; int
37F990:  MOV             R1, R5; CEntity *
37F992:  MOVS            R2, #1; bool
37F994:  VSTR            S0, [SP,#0x40+var_38]
37F998:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
37F99C:  B               loc_37F9AE
37F99E:  MOVS            R0, #0
37F9A0:  B               loc_37F9AE
37F9A2:  MOVS            R0, #off_3C; this
37F9A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F9A8:  MOV             R1, R5; CPed *
37F9AA:  BLX             j__ZN30CTaskComplexInvestigateDeadPedC2EP4CPed; CTaskComplexInvestigateDeadPed::CTaskComplexInvestigateDeadPed(CPed *)
37F9AE:  STR             R0, [R4,#0x24]
37F9B0:  ADD             SP, SP, #0x20 ; ' '; jumptable 0037F8A8 cases 7,8,16,34,45,46,51
37F9B2:  VPOP            {D8-D9}
37F9B6:  POP.W           {R11}
37F9BA:  POP             {R4-R7,PC}
