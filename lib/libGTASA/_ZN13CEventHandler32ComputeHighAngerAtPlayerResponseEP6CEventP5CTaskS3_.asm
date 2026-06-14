; =========================================================
; Game Engine Function: _ZN13CEventHandler32ComputeHighAngerAtPlayerResponseEP6CEventP5CTaskS3_
; Address            : 0x3828F8 - 0x3829C4
; =========================================================

3828F8:  PUSH            {R4-R7,LR}
3828FA:  ADD             R7, SP, #0xC
3828FC:  PUSH.W          {R11}
382900:  SUB             SP, SP, #0x10
382902:  MOV             R6, R0
382904:  LDRSH.W         R0, [R1,#0xA]
382908:  MOVW            R1, #0x38E; unsigned int
38290C:  CMP             R0, R1
38290E:  BGT             loc_382934
382910:  CMP             R0, #0xC8
382912:  BEQ             loc_38298E
382914:  MOVW            R1, #0x1AB; unsigned int
382918:  CMP             R0, R1
38291A:  BNE             loc_3829BC
38291C:  MOVS            R0, #word_28; this
38291E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382922:  MOVS            R1, #0; unsigned __int8
382924:  MOVW            R2, #0xFFFF; unsigned __int16
382928:  MOV.W           R3, #0xFFFFFFFF; __int16
38292C:  MOV             R5, R0
38292E:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
382932:  B               loc_3829BA
382934:  CMP.W           R0, #0x3E8
382938:  BEQ             loc_382992
38293A:  MOVW            R1, #0x38F; unsigned int
38293E:  CMP             R0, R1
382940:  BNE             loc_3829BC
382942:  MOVS            R0, #dword_40; this
382944:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382948:  MOV             R5, R0
38294A:  MOV.W           R0, #0xFFFFFFFF; int
38294E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
382952:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x382960)
382954:  MOV             LR, R0
382956:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x382962)
382958:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x382966)
38295C:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
38295E:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
382960:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x38296A)
382962:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
382964:  LDR             R1, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
382966:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
382968:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
38296A:  LDR.W           R4, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
38296E:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
382970:  LDR             R3, [R0]; float
382972:  LDR             R0, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime
382974:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
382976:  VLDR            S0, [R2]
38297A:  MOVS            R2, #0; bool
38297C:  STRD.W          R0, R1, [SP,#0x20+var_20]; int
382980:  MOV             R0, R5; this
382982:  MOV             R1, LR; CEntity *
382984:  VSTR            S0, [SP,#0x20+var_18]
382988:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
38298C:  B               loc_3829BA
38298E:  MOVS            R5, #0
382990:  B               loc_3829BA
382992:  MOVS            R0, #dword_38; this
382994:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382998:  MOV             R5, R0
38299A:  MOV.W           R0, #0xFFFFFFFF; int
38299E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3829A2:  MOV             R1, R0; CPed *
3829A4:  MOVS            R2, #0
3829A6:  MOVS            R0, #1
3829A8:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned int
3829AC:  STR             R0, [SP,#0x20+var_18]; int
3829AE:  MOV             R0, R5; this
3829B0:  MOV.W           R2, #0xFFFFFFFF; int
3829B4:  MOVS            R3, #0; unsigned int
3829B6:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
3829BA:  STR             R5, [R6,#0x24]
3829BC:  ADD             SP, SP, #0x10
3829BE:  POP.W           {R11}
3829C2:  POP             {R4-R7,PC}
