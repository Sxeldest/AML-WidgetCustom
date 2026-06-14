; =========================================================
; Game Engine Function: _ZN13CEventHandler31ComputeLowAngerAtPlayerResponseEP6CEventP5CTaskS3_
; Address            : 0x38281C - 0x3828E8
; =========================================================

38281C:  PUSH            {R4-R7,LR}
38281E:  ADD             R7, SP, #0xC
382820:  PUSH.W          {R11}
382824:  SUB             SP, SP, #0x10
382826:  MOV             R6, R0
382828:  LDRSH.W         R0, [R1,#0xA]
38282C:  MOVW            R1, #0x38E; unsigned int
382830:  CMP             R0, R1
382832:  BGT             loc_382858
382834:  CMP             R0, #0xC8
382836:  BEQ             loc_3828B2
382838:  MOVW            R1, #0x1AB; unsigned int
38283C:  CMP             R0, R1
38283E:  BNE             loc_3828E0
382840:  MOVS            R0, #word_28; this
382842:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382846:  MOVS            R1, #0; unsigned __int8
382848:  MOVW            R2, #0xFFFF; unsigned __int16
38284C:  MOV.W           R3, #0xFFFFFFFF; __int16
382850:  MOV             R5, R0
382852:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
382856:  B               loc_3828DE
382858:  CMP.W           R0, #0x3E8
38285C:  BEQ             loc_3828B6
38285E:  MOVW            R1, #0x38F; unsigned int
382862:  CMP             R0, R1
382864:  BNE             loc_3828E0
382866:  MOVS            R0, #dword_40; this
382868:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38286C:  MOV             R5, R0
38286E:  MOV.W           R0, #0xFFFFFFFF; int
382872:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
382876:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x382884)
382878:  MOV             LR, R0
38287A:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x382886)
38287C:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38288A)
382880:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
382882:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
382884:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x38288E)
382886:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
382888:  LDR             R1, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
38288A:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
38288C:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
38288E:  LDR.W           R4, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
382892:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
382894:  LDR             R3, [R0]; float
382896:  LDR             R0, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime
382898:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
38289A:  VLDR            S0, [R2]
38289E:  MOVS            R2, #0; bool
3828A0:  STRD.W          R0, R1, [SP,#0x20+var_20]; int
3828A4:  MOV             R0, R5; this
3828A6:  MOV             R1, LR; CEntity *
3828A8:  VSTR            S0, [SP,#0x20+var_18]
3828AC:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
3828B0:  B               loc_3828DE
3828B2:  MOVS            R5, #0
3828B4:  B               loc_3828DE
3828B6:  MOVS            R0, #dword_38; this
3828B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3828BC:  MOV             R5, R0
3828BE:  MOV.W           R0, #0xFFFFFFFF; int
3828C2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3828C6:  MOV             R1, R0; CPed *
3828C8:  MOVS            R2, #0
3828CA:  MOVS            R0, #1
3828CC:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned int
3828D0:  STR             R0, [SP,#0x20+var_18]; int
3828D2:  MOV             R0, R5; this
3828D4:  MOV.W           R2, #0xFFFFFFFF; int
3828D8:  MOVS            R3, #0; unsigned int
3828DA:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
3828DE:  STR             R5, [R6,#0x24]
3828E0:  ADD             SP, SP, #0x10
3828E2:  POP.W           {R11}
3828E6:  POP             {R4-R7,PC}
