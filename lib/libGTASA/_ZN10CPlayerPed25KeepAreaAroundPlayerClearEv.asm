; =========================================================
; Game Engine Function: _ZN10CPlayerPed25KeepAreaAroundPlayerClearEv
; Address            : 0x4C96D8 - 0x4C994A
; =========================================================

4C96D8:  PUSH            {R4-R7,LR}
4C96DA:  ADD             R7, SP, #0xC
4C96DC:  PUSH.W          {R8-R11}
4C96E0:  SUB             SP, SP, #4
4C96E2:  VPUSH           {D8-D11}
4C96E6:  SUB             SP, SP, #0x50; __int16 *
4C96E8:  MOV             R11, R0
4C96EA:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x4C96F4)
4C96EC:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x4C96FA)
4C96EE:  ADD             R4, SP, #0x90+var_60
4C96F0:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
4C96F2:  LDR.W           R2, [R11,#0x440]
4C96F6:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
4C96F8:  MOV.W           R8, #0
4C96FC:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
4C96FE:  ADD.W           R5, R2, #0x130
4C9702:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
4C9704:  VLDR            S16, [R0]
4C9708:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C9712)
4C970A:  LDR.W           R10, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
4C970E:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C9710:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4C9712:  ADD.W           R9, R0, #8
4C9716:  B               loc_4C97DE
4C9718:  MOV             R0, R6; this
4C971A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4C971E:  CMP             R0, #1
4C9720:  BNE             loc_4C97F6
4C9722:  MOV             R0, R9; this
4C9724:  MOV             R1, R6; CPed *
4C9726:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
4C972A:  CMP             R0, #0
4C972C:  BNE             loc_4C97F6
4C972E:  MOV             R0, R6; this
4C9730:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4C9734:  CMP             R0, #1
4C9736:  BNE             loc_4C97D4
4C9738:  ADDW            R0, R6, #0x484
4C973C:  LDRB            R0, [R0,#0xC]
4C973E:  LSLS            R0, R0, #0x1B
4C9740:  BMI             loc_4C97D4
4C9742:  LDR.W           R0, [R6,#0x440]; this
4C9746:  MOVW            R1, #0x38F; int
4C974A:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
4C974E:  CBZ             R0, loc_4C9756
4C9750:  LDR             R0, [R0,#0xC]
4C9752:  CMP             R0, R11
4C9754:  BEQ             loc_4C97F6
4C9756:  LDR.W           R0, [R6,#0x440]
4C975A:  MOVS            R1, #0x20 ; ' '; int
4C975C:  ADDS            R0, #0x68 ; 'h'; this
4C975E:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
4C9762:  CMP             R0, #0
4C9764:  ITT NE
4C9766:  LDRNE           R0, [R0,#0x10]
4C9768:  CMPNE           R0, #0
4C976A:  BEQ             loc_4C977A
4C976C:  LDR             R1, [R0]
4C976E:  LDR             R1, [R1,#0x14]
4C9770:  BLX             R1
4C9772:  MOVW            R1, #0x38F; unsigned int
4C9776:  CMP             R0, R1
4C9778:  BEQ             loc_4C97F6
4C977A:  MOVS            R0, #dword_40; this
4C977C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4C9780:  STR.W           R10, [SP,#0x90+var_74]
4C9784:  MOV             R10, R0
4C9786:  MOVW            R0, #:lower16:(elf_hash_chain+0x8538)
4C978A:  MOVS            R3, #0
4C978C:  MOVT            R0, #:upper16:(elf_hash_chain+0x8538)
4C9790:  VSTR            S16, [SP,#0x90+var_88]
4C9794:  STR             R0, [SP,#0x90+var_90]; int
4C9796:  MOV             R1, R11; CEntity *
4C9798:  LDR             R0, [SP,#0x90+var_74]
4C979A:  MOVS            R2, #0; bool
4C979C:  STR             R0, [SP,#0x90+var_8C]; int
4C979E:  MOV             R0, R10; this
4C97A0:  MOVT            R3, #0x447A; float
4C97A4:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
4C97A8:  MOVS            R0, #4
4C97AA:  MOVS            R1, #3; int
4C97AC:  STR.W           R0, [R10,#0x30]
4C97B0:  MOV             R2, R10; CTask *
4C97B2:  MOV             R0, R4; this
4C97B4:  MOVS            R3, #0; bool
4C97B6:  LDR.W           R10, [SP,#0x90+var_74]
4C97BA:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
4C97BE:  LDR.W           R0, [R6,#0x440]
4C97C2:  MOV             R1, R4; CEvent *
4C97C4:  MOVS            R2, #0; bool
4C97C6:  ADDS            R0, #0x68 ; 'h'; this
4C97C8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4C97CC:  MOV             R0, R4; this
4C97CE:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
4C97D2:  B               loc_4C97F6
4C97D4:  LDR             R0, [R6]
4C97D6:  LDR             R1, [R0,#0x58]
4C97D8:  MOV             R0, R6
4C97DA:  BLX             R1
4C97DC:  B               loc_4C97F6
4C97DE:  LDR.W           R6, [R5,R8,LSL#2]
4C97E2:  CBZ             R6, loc_4C97F6
4C97E4:  LDRB.W          R0, [R6,#0x448]
4C97E8:  CMP             R0, #1
4C97EA:  ITT EQ
4C97EC:  LDRBEQ.W        R0, [R6,#0x485]
4C97F0:  MOVSEQ.W        R0, R0,LSL#31
4C97F4:  BEQ             loc_4C9718
4C97F6:  ADD.W           R8, R8, #1
4C97FA:  CMP.W           R8, #0x10
4C97FE:  BNE             loc_4C97DE
4C9800:  LDRB.W          R0, [R11,#0x485]
4C9804:  LSLS            R0, R0, #0x1F
4C9806:  ITT NE
4C9808:  LDRNE.W         R0, [R11,#0x590]
4C980C:  CMPNE           R0, #0
4C980E:  BNE             loc_4C9812
4C9810:  MOV             R0, R11
4C9812:  LDR             R1, [R0,#0x14]
4C9814:  MOVS            R5, #0
4C9816:  MOV.W           R8, #1
4C981A:  SUB.W           R3, R7, #-var_62; bool
4C981E:  ADD.W           R2, R1, #0x30 ; '0'
4C9822:  CMP             R1, #0
4C9824:  IT EQ
4C9826:  ADDEQ           R2, R0, #4
4C9828:  LDR.W           R0, [R11,#0x14]
4C982C:  VLDR            S16, [R2]
4C9830:  ADD.W           R1, R0, #0x30 ; '0'
4C9834:  CMP             R0, #0
4C9836:  VLDR            S18, [R2,#4]
4C983A:  VLDR            S20, [R2,#8]
4C983E:  IT EQ
4C9840:  ADDEQ.W         R1, R11, #4
4C9844:  VLDR            D16, [R1]
4C9848:  MOVS            R2, #1; float
4C984A:  LDR             R0, [R1,#8]
4C984C:  MOVS            R1, #0
4C984E:  STR             R0, [SP,#0x90+var_68]
4C9850:  MOVS            R0, #6
4C9852:  VSTR            D16, [SP,#0x90+var_70]
4C9856:  MOVT            R1, #0x4170; CVector *
4C985A:  STMEA.W         SP, {R0,R4,R5,R8}
4C985E:  ADD             R0, SP, #0x90+var_70; this
4C9860:  STRD.W          R5, R5, [SP,#0x90+var_80]; bool
4C9864:  STR             R5, [SP,#0x90+var_78]; bool
4C9866:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
4C986A:  LDRSH.W         R1, [R7,#var_62]
4C986E:  CMP             R1, #1
4C9870:  BLT             loc_4C993C
4C9872:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4C9884)
4C9874:  VMOV.F32        S22, #25.0
4C9878:  MOV.W           R9, #3
4C987C:  MOV.W           R10, #9
4C9880:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4C9882:  MOVS            R6, #0
4C9884:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds ...
4C9888:  LDR.W           R0, [R4,R6,LSL#2]; this
4C988C:  LDRB.W          R2, [R0,#0x4A8]
4C9890:  CMP             R2, #2
4C9892:  BEQ             loc_4C9934
4C9894:  LDRB.W          R2, [R0,#0x3A]
4C9898:  CMP.W           R5, R2,LSR#3
4C989C:  ITT NE
4C989E:  LSRNE           R2, R2, #3
4C98A0:  CMPNE           R2, #9
4C98A2:  BEQ             loc_4C9934
4C98A4:  LDR             R1, [R0,#0x14]
4C98A6:  ADD.W           R2, R1, #0x30 ; '0'
4C98AA:  CMP             R1, #0
4C98AC:  IT EQ
4C98AE:  ADDEQ           R2, R0, #4
4C98B0:  VLDR            S0, [R2]
4C98B4:  VLDR            S2, [R2,#4]
4C98B8:  VSUB.F32        S8, S0, S16
4C98BC:  VLDR            S4, [R2,#8]
4C98C0:  VSUB.F32        S6, S2, S18
4C98C4:  VSUB.F32        S4, S4, S20
4C98C8:  VMUL.F32        S8, S8, S8
4C98CC:  VMUL.F32        S6, S6, S6
4C98D0:  VMUL.F32        S4, S4, S4
4C98D4:  VADD.F32        S6, S8, S6
4C98D8:  VADD.F32        S4, S6, S4
4C98DC:  VCMPE.F32       S4, S22
4C98E0:  VMRS            APSR_nzcv, FPSCR
4C98E4:  BLE             loc_4C98F0
4C98E6:  STRB.W          R8, [R0,#0x3BF]
4C98EA:  MOVW            R1, #0x1388
4C98EE:  B               loc_4C9922
4C98F0:  VSUB.F32        S2, S18, S2
4C98F4:  VLDR            S6, [R1,#0x14]
4C98F8:  VSUB.F32        S0, S16, S0
4C98FC:  VLDR            S4, [R1,#0x10]
4C9900:  MOV.W           R1, #0x7D0
4C9904:  VMUL.F32        S2, S2, S6
4C9908:  VMUL.F32        S0, S0, S4
4C990C:  VADD.F32        S0, S0, S2
4C9910:  VCMPE.F32       S0, #0.0
4C9914:  VMRS            APSR_nzcv, FPSCR
4C9918:  ITE LE
4C991A:  STRBLE.W        R10, [R0,#0x3BF]
4C991E:  STRBGT.W        R9, [R0,#0x3BF]
4C9922:  LDR.W           R2, [R11]; CTimer::m_snTimeInMilliseconds
4C9926:  ADD             R1, R2; CVehicle *
4C9928:  STR.W           R1, [R0,#0x3C0]
4C992C:  BLX             j__ZN8CCarCtrl21PossiblyRemoveVehicleEP8CVehicle; CCarCtrl::PossiblyRemoveVehicle(CVehicle *)
4C9930:  LDRH.W          R1, [R7,#var_62]
4C9934:  ADDS            R6, #1
4C9936:  SXTH            R0, R1
4C9938:  CMP             R6, R0
4C993A:  BLT             loc_4C9888
4C993C:  ADD             SP, SP, #0x50 ; 'P'
4C993E:  VPOP            {D8-D11}
4C9942:  ADD             SP, SP, #4
4C9944:  POP.W           {R8-R11}
4C9948:  POP             {R4-R7,PC}
