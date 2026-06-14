; =========================================================
; Game Engine Function: _ZN25CTaskComplexKillPedOnFoot13CreateSubTaskEiP4CPed
; Address            : 0x4E0590 - 0x4E08D8
; =========================================================

4E0590:  PUSH            {R4-R7,LR}
4E0592:  ADD             R7, SP, #0xC
4E0594:  PUSH.W          {R8-R11}
4E0598:  SUB             SP, SP, #4
4E059A:  VPUSH           {D8}
4E059E:  SUB             SP, SP, #0x30
4E05A0:  MOV             R5, R0
4E05A2:  MOVW            R0, #0x2CE
4E05A6:  MOV             R6, R2
4E05A8:  MOVS            R4, #0
4E05AA:  CMP             R1, R0
4E05AC:  BLE             loc_4E065C
4E05AE:  MOVW            R0, #0x3EA
4E05B2:  CMP             R1, R0
4E05B4:  BGT             loc_4E0696
4E05B6:  MOVW            R0, #0x2CF
4E05BA:  CMP             R1, R0
4E05BC:  BEQ.W           loc_4E0728
4E05C0:  MOVW            R0, #0x3E9
4E05C4:  CMP             R1, R0
4E05C6:  BEQ.W           loc_4E0752
4E05CA:  MOVW            R0, #0x3EA
4E05CE:  CMP             R1, R0
4E05D0:  BNE.W           loc_4E08C8
4E05D4:  MOVS            R0, #dword_5C; this
4E05D6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E05DA:  ADD.W           R10, R5, #0x10
4E05DE:  MOV             R4, R0
4E05E0:  LDM.W           R10, {R6,R8-R10}
4E05E4:  LDRB.W          R11, [R5,#0x20]
4E05E8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E05EC:  ADR             R1, dword_4E08E0
4E05EE:  LDR             R0, =(_ZTV30CTaskComplexKillPedOnFootArmed_ptr - 0x4E05FC)
4E05F0:  VLD1.64         {D16-D17}, [R1@128]
4E05F4:  ADD.W           R1, R4, #0x38 ; '8'
4E05F8:  ADD             R0, PC; _ZTV30CTaskComplexKillPedOnFootArmed_ptr
4E05FA:  ADD.W           R2, R4, #0x18
4E05FE:  VST1.32         {D16-D17}, [R1]
4E0602:  MOVS            R1, #0
4E0604:  CMP             R6, #0
4E0606:  STRD.W          R1, R1, [R4,#0x10]
4E060A:  STM.W           R2, {R1,R8-R10}
4E060E:  MOV             R2, #0xC61C3C00
4E0616:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedOnFootArmed ...
4E0618:  STRD.W          R1, R1, [R4,#0x28]
4E061C:  STRB.W          R11, [R4,#0x30]
4E0620:  ADD.W           R0, R0, #8
4E0624:  STR.W           R1, [R4,#0x32]
4E0628:  STRD.W          R1, R2, [R4,#0x48]
4E062C:  STRD.W          R1, R1, [R4,#0x50]
4E0630:  STR             R1, [R4,#0x58]
4E0632:  MOV             R1, R4
4E0634:  STR             R0, [R4]
4E0636:  STR.W           R6, [R1,#0xC]!; CEntity **
4E063A:  ITT NE
4E063C:  MOVNE           R0, R6; this
4E063E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E0642:  LDRB            R1, [R5,#0xC]
4E0644:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E0652)
4E0646:  UBFX.W          R1, R1, #4, #1
4E064A:  STRB.W          R1, [R4,#0x35]
4E064E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E0650:  LDRB            R1, [R5,#0xC]
4E0652:  AND.W           R1, R1, #0xEF; unsigned int
4E0656:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E0658:  STRB            R1, [R5,#0xC]
4E065A:  B               loc_4E07D4
4E065C:  CMP             R1, #0xCA
4E065E:  BLE             loc_4E06C2
4E0660:  CMP             R1, #0xCB
4E0662:  BEQ.W           loc_4E07A2
4E0666:  MOVW            R0, #0x2BF
4E066A:  CMP             R1, R0
4E066C:  BEQ.W           loc_4E07BE
4E0670:  CMP.W           R1, #0x2C0
4E0674:  BNE.W           loc_4E08C8
4E0678:  MOVS            R0, #dword_34; this
4E067A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E067E:  LDR.W           R1, [R6,#0x590]; CVehicle *
4E0682:  MOV             R4, R0
4E0684:  MOVS            R0, #1
4E0686:  MOVS            R2, #0; int
4E0688:  STRD.W          R0, R0, [SP,#0x58+var_58]; bool
4E068C:  MOV             R0, R4; this
4E068E:  MOVS            R3, #0; int
4E0690:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
4E0694:  B               loc_4E08C8
4E0696:  MOVW            R0, #0x3EB
4E069A:  CMP             R1, R0
4E069C:  BEQ.W           loc_4E07E6
4E06A0:  MOVW            R0, #0x4BA
4E06A4:  CMP             R1, R0
4E06A6:  BEQ.W           loc_4E0822
4E06AA:  MOVW            R0, #0x516
4E06AE:  CMP             R1, R0
4E06B0:  ITTTT EQ
4E06B2:  LDREQ.W         R0, [R6,#0x48C]
4E06B6:  BICEQ.W         R0, R0, #0x400000
4E06BA:  STREQ.W         R0, [R6,#0x48C]
4E06BE:  MOVEQ           R4, #0
4E06C0:  B               loc_4E08C8
4E06C2:  CMP             R1, #0xC8
4E06C4:  BEQ.W           loc_4E0862
4E06C8:  CMP             R1, #0xCA
4E06CA:  BNE.W           loc_4E08C8
4E06CE:  ADD.W           R8, SP, #0x58+var_48
4E06D2:  MOV.W           R0, #0x41000000
4E06D6:  STR             R0, [SP,#0x58+var_58]; float
4E06D8:  MOVS            R1, #0; int
4E06DA:  MOV             R0, R8; this
4E06DC:  MOVS            R2, #0; bool
4E06DE:  MOVS            R3, #0; bool
4E06E0:  MOV.W           R9, #0
4E06E4:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E06E8:  MOV             R1, R6; CPed *
4E06EA:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4E06EE:  MOVS            R0, #off_18; this
4E06F0:  LDRB            R5, [R5,#0xC]
4E06F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E06F6:  MOV             R4, R0
4E06F8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E06FC:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x4E070C)
4E06FE:  AND.W           R1, R5, #0x60 ; '`'
4E0702:  MOVW            R2, #0x2710
4E0706:  CMP             R1, #0x60 ; '`'
4E0708:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
4E070A:  STRH.W          R9, [R4,#0x10]
4E070E:  IT NE
4E0710:  MOVNE.W         R2, #0x7D0
4E0714:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
4E0716:  STR             R2, [R4,#0x14]
4E0718:  ADDS            R0, #8
4E071A:  STRD.W          R9, R9, [R4,#8]
4E071E:  STR             R0, [R4]
4E0720:  MOV             R0, R8; this
4E0722:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
4E0726:  B               loc_4E08C8
4E0728:  MOVS            R0, #dword_70; this
4E072A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E072E:  LDR.W           R1, [R6,#0x590]; CVehicle *
4E0732:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
4E0734:  MOVS            R3, #0; bool
4E0736:  MOV             R4, R0
4E0738:  MOVS            R5, #0
4E073A:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
4E073E:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x4E074A)
4E0740:  MOV.W           R1, #0x7D0; unsigned int
4E0744:  STR             R1, [R4,#0x60]
4E0746:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
4E0748:  STRH.W          R5, [R4,#0x6C]
4E074C:  STRD.W          R5, R5, [R4,#0x64]
4E0750:  B               loc_4E0872
4E0752:  MOVS            R0, #dword_38; this
4E0754:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E0758:  MOV             R4, R0
4E075A:  LDR             R6, [R5,#0x10]
4E075C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E0760:  LDR             R0, =(_ZTV30CTaskComplexKillPedOnFootMelee_ptr - 0x4E0772)
4E0762:  VMOV.I32        Q8, #0
4E0766:  ADD.W           R1, R4, #0x10
4E076A:  MOV.W           R2, #0xFFFFFFFF
4E076E:  ADD             R0, PC; _ZTV30CTaskComplexKillPedOnFootMelee_ptr
4E0770:  CMP             R6, #0
4E0772:  VST1.32         {D16-D17}, [R1]
4E0776:  MOV.W           R1, #0
4E077A:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedOnFootMelee ...
4E077C:  STRD.W          R1, R1, [R4,#0x20]
4E0780:  STRD.W          R2, R1, [R4,#0x28]
4E0784:  ADD.W           R0, R0, #8
4E0788:  STR             R2, [R4,#0x34]
4E078A:  STRH            R1, [R4,#0x30]
4E078C:  MOV             R1, R4
4E078E:  STR             R0, [R4]
4E0790:  STR.W           R6, [R1,#0xC]!; CEntity **
4E0794:  ITT NE
4E0796:  MOVNE           R0, R6; this
4E0798:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E079C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E07A2)
4E079E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E07A0:  B               loc_4E07D2
4E07A2:  MOVS            R0, #dword_20; this
4E07A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E07A8:  MOV             R4, R0
4E07AA:  MOV.W           R0, #0x41000000
4E07AE:  STR             R0, [SP,#0x58+var_58]; float
4E07B0:  MOV             R0, R4; this
4E07B2:  MOVS            R1, #0; int
4E07B4:  MOVS            R2, #0; bool
4E07B6:  MOVS            R3, #0; bool
4E07B8:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E07BC:  B               loc_4E08C8
4E07BE:  MOVS            R0, #dword_54; this
4E07C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E07C4:  LDR             R1, [R5,#0x10]; CPed *
4E07C6:  MOVS            R2, #0; int
4E07C8:  MOV             R4, R0
4E07CA:  BLX             j__ZN26CTaskComplexDragPedFromCarC2EP4CPedi; CTaskComplexDragPedFromCar::CTaskComplexDragPedFromCar(CPed *,int)
4E07CE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E07D4)
4E07D0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E07D2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E07D4:  MOVS            R1, #1
4E07D6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E07D8:  STRB.W          R1, [R5,#0x34]
4E07DC:  MOV.W           R1, #0x7D0; unsigned int
4E07E0:  STR             R0, [R5,#0x2C]
4E07E2:  STR             R1, [R5,#0x30]
4E07E4:  B               loc_4E08C8
4E07E6:  MOVS            R0, #dword_20; this
4E07E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E07EC:  MOV             R4, R0
4E07EE:  LDR             R0, [R5,#0x10]
4E07F0:  LDR.W           R5, [R0,#0x590]
4E07F4:  MOV             R0, R4; this
4E07F6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E07FA:  LDR             R0, =(_ZTV22CTaskComplexDestroyCar_ptr - 0x4E0804)
4E07FC:  MOV             R1, R4
4E07FE:  CMP             R5, #0
4E0800:  ADD             R0, PC; _ZTV22CTaskComplexDestroyCar_ptr
4E0802:  LDR             R0, [R0]; `vtable for'CTaskComplexDestroyCar ...
4E0804:  ADD.W           R0, R0, #8
4E0808:  STR             R0, [R4]
4E080A:  MOV.W           R0, #0
4E080E:  STRD.W          R0, R0, [R4,#0x14]
4E0812:  STR             R0, [R4,#0x1C]
4E0814:  STR.W           R5, [R1,#0x10]!; CEntity **
4E0818:  BEQ             loc_4E08C8
4E081A:  MOV             R0, R5; this
4E081C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E0820:  B               loc_4E08C8
4E0822:  MOVS            R0, #0; int
4E0824:  LDR             R4, [R5,#0x10]
4E0826:  MOV.W           R8, #0
4E082A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4E082E:  CMP             R4, R0
4E0830:  BEQ             loc_4E087A
4E0832:  LDR             R0, [R5,#0x10]; this
4E0834:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4E0838:  CBZ             R0, loc_4E0852
4E083A:  LDR             R0, [R5,#0x10]; this
4E083C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4E0840:  ADDS            R0, #8; this
4E0842:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4E0846:  MOV             R4, R0
4E0848:  MOVS            R0, #0; int
4E084A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4E084E:  CMP             R4, R0
4E0850:  BEQ             loc_4E0892
4E0852:  MOVS            R0, #0
4E0854:  MOV.W           R1, #0x102; unsigned int
4E0858:  STRD.W          R0, R0, [SP,#0x58+var_58]
4E085C:  STR             R0, [SP,#0x58+var_50]
4E085E:  MOV             R0, R6
4E0860:  B               loc_4E0888
4E0862:  MOVS            R0, #byte_8; this
4E0864:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E0868:  MOV             R4, R0
4E086A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E086E:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4E0874)
4E0870:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4E0872:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed
4E0874:  ADDS            R0, #8
4E0876:  STR             R0, [R4]
4E0878:  B               loc_4E08C8
4E087A:  STRD.W          R8, R8, [SP,#0x58+var_58]; unsigned __int8
4E087E:  MOV             R0, R6; this
4E0880:  STR.W           R8, [SP,#0x58+var_50]; unsigned __int8
4E0884:  MOVW            R1, #0x103; unsigned __int16
4E0888:  MOVS            R2, #0; unsigned int
4E088A:  MOV.W           R3, #0x3F800000; float
4E088E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4E0892:  BLX             rand
4E0896:  UXTH            R0, R0
4E0898:  VLDR            S2, =0.000015259
4E089C:  VMOV            S0, R0
4E08A0:  MOVS            R0, #off_18; this
4E08A2:  VCVT.F32.S32    S0, S0
4E08A6:  VMUL.F32        S0, S0, S2
4E08AA:  VLDR            S2, =1500.0
4E08AE:  VMUL.F32        S16, S0, S2
4E08B2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E08B6:  LDR             R1, [R5,#0x10]; CPed *
4E08B8:  VCVT.S32.F32    S0, S16
4E08BC:  MOVS            R3, #1; unsigned __int8
4E08BE:  MOV             R4, R0
4E08C0:  VMOV            R2, S0; int
4E08C4:  BLX             j__ZN23CTaskComplexSignalAtPedC2EP4CPedih; CTaskComplexSignalAtPed::CTaskComplexSignalAtPed(CPed *,int,uchar)
4E08C8:  MOV             R0, R4
4E08CA:  ADD             SP, SP, #0x30 ; '0'
4E08CC:  VPOP            {D8}
4E08D0:  ADD             SP, SP, #4
4E08D2:  POP.W           {R8-R11}
4E08D6:  POP             {R4-R7,PC}
