; =========================================================
; Game Engine Function: _ZN16CTaskComplexChat18CreateFirstSubTaskEP4CPed
; Address            : 0x535890 - 0x5359E4
; =========================================================

535890:  PUSH            {R4-R7,LR}
535892:  ADD             R7, SP, #0xC
535894:  PUSH.W          {R8}
535898:  SUB             SP, SP, #0x18
53589A:  MOV             R5, R0
53589C:  MOV             R6, R1
53589E:  LDR             R0, [R5,#0x10]
5358A0:  CMP             R0, #0
5358A2:  BEQ             loc_535930
5358A4:  LDRB            R0, [R5,#0xC]
5358A6:  MOV             R8, #0xF423F
5358AE:  CMP             R0, #0
5358B0:  BEQ             loc_535934
5358B2:  LDRSH.W         R0, [R5,#0x18]
5358B6:  CMP             R0, #0
5358B8:  BLT             loc_5358D0
5358BA:  MOVS            R1, #0
5358BC:  MOVS            R2, #0; unsigned int
5358BE:  STRD.W          R1, R1, [SP,#0x28+var_28]; unsigned __int8
5358C2:  MOV.W           R3, #0x3F800000; float
5358C6:  STR             R1, [SP,#0x28+var_20]; unsigned __int8
5358C8:  UXTH            R1, R0; unsigned __int16
5358CA:  MOV             R0, R6; this
5358CC:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5358D0:  LDR             R0, =(g_InterestingEvents_ptr - 0x5358DC)
5358D2:  MOVS            R1, #1
5358D4:  MOV             R2, R6
5358D6:  MOVS            R4, #1
5358D8:  ADD             R0, PC; g_InterestingEvents_ptr
5358DA:  LDR             R0, [R0]; g_InterestingEvents
5358DC:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
5358E0:  LDRSH.W         R0, [R5,#0x18]
5358E4:  SUBS            R0, #0xA4
5358E6:  CMP             R0, #4
5358E8:  BHI             loc_53594C
5358EA:  LSL.W           R0, R4, R0
5358EE:  TST.W           R0, #0x19
5358F2:  BEQ             loc_53594C
5358F4:  BLX             rand
5358F8:  UXTH            R0, R0
5358FA:  VLDR            S2, =0.000015259
5358FE:  VMOV            S0, R0
535902:  VMOV.F32        S4, #3.0
535906:  VCVT.F32.S32    S0, S0
53590A:  VMUL.F32        S0, S0, S2
53590E:  VMUL.F32        S0, S0, S4
535912:  VCVT.S32.F32    S0, S0
535916:  VMOV            R0, S0
53591A:  CMP             R0, #2
53591C:  BEQ             loc_53597E
53591E:  CMP             R0, #1
535920:  BEQ             loc_53598A
535922:  CBNZ            R0, loc_5359A2
535924:  MOVS            R0, #dword_20; this
535926:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53592A:  MOVS            R1, #0; unsigned int
53592C:  MOVS            R2, #0xA6
53592E:  B               loc_535994
535930:  MOVS            R0, #0
535932:  B               loc_5359DC
535934:  MOVS            R0, #dword_20; this
535936:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53593A:  MOV.W           R1, #0x41000000
53593E:  MOVS            R2, #0; bool
535940:  STR             R1, [SP,#0x28+var_28]; float
535942:  MOV             R1, R8; int
535944:  MOVS            R3, #0; bool
535946:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
53594A:  B               loc_5359DC
53594C:  MOVS            R0, #dword_34; this
53594E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535952:  LDR             R1, =(aChat - 0x535960); "Chat"
535954:  MOVS            R6, #0xC0800000
53595A:  MOVS            R2, #0
53595C:  ADD             R1, PC; "Chat"
53595E:  MOV.W           R3, #0x1A0
535962:  STRD.W          R6, R8, [SP,#0x28+var_28]; float
535966:  STRD.W          R3, R1, [SP,#0x28+var_20]; int
53596A:  MOVS            R1, #0; int
53596C:  STR             R2, [SP,#0x28+var_18]; int
53596E:  MOVS            R2, #0xC; int
535970:  MOV.W           R3, #0x40800000; int
535974:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
535978:  LDR             R1, =(_ZTV15CTaskSimpleChat_ptr - 0x53597E)
53597A:  ADD             R1, PC; _ZTV15CTaskSimpleChat_ptr
53597C:  B               loc_5359D6
53597E:  MOVS            R0, #dword_20; this
535980:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535984:  MOVS            R1, #0
535986:  MOVS            R2, #0xA8
535988:  B               loc_535994
53598A:  MOVS            R0, #dword_20; this
53598C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535990:  MOVS            R1, #0
535992:  MOVS            R2, #0xA7
535994:  STR             R1, [SP,#0x28+var_28]
535996:  MOVS            R1, #0
535998:  MOV.W           R3, #0x40800000
53599C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
5359A0:  B               loc_5359DC
5359A2:  MOVS            R0, #dword_34; this
5359A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5359A8:  LDR             R1, =(aChat - 0x5359B6); "Chat"
5359AA:  MOVS            R5, #0
5359AC:  MOVS            R2, #0
5359AE:  MOV.W           R3, #0x1A0
5359B2:  ADD             R1, PC; "Chat"
5359B4:  MOV.W           R6, #0xFA0
5359B8:  MOVT            R5, #0xC080
5359BC:  STRD.W          R5, R6, [SP,#0x28+var_28]; float
5359C0:  STRD.W          R3, R1, [SP,#0x28+var_20]; int
5359C4:  MOVS            R1, #0; int
5359C6:  STR             R2, [SP,#0x28+var_18]; int
5359C8:  MOVS            R2, #0xC; int
5359CA:  MOV.W           R3, #0x40800000; int
5359CE:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
5359D2:  LDR             R1, =(_ZTV15CTaskSimpleChat_ptr - 0x5359D8)
5359D4:  ADD             R1, PC; _ZTV15CTaskSimpleChat_ptr
5359D6:  LDR             R1, [R1]; `vtable for'CTaskSimpleChat ...
5359D8:  ADDS            R1, #8
5359DA:  STR             R1, [R0]
5359DC:  ADD             SP, SP, #0x18
5359DE:  POP.W           {R8}
5359E2:  POP             {R4-R7,PC}
