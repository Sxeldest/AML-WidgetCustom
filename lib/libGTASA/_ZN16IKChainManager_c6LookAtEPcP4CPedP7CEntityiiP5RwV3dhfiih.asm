; =========================================================
; Game Engine Function: _ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih
; Address            : 0x4D3672 - 0x4D37CE
; =========================================================

4D3672:  PUSH            {R4-R7,LR}
4D3674:  ADD             R7, SP, #0xC
4D3676:  PUSH.W          {R8-R11}
4D367A:  SUB             SP, SP, #4
4D367C:  VPUSH           {D8}
4D3680:  SUB             SP, SP, #0x40
4D3682:  STR             R3, [SP,#0x68+var_30]
4D3684:  MOV             R4, R2
4D3686:  STR             R1, [SP,#0x68+var_34]
4D3688:  LDRD.W          R1, R8, [R7,#arg_14]
4D368C:  STR             R1, [SP,#0x68+var_40]
4D368E:  LDR             R1, [R7,#arg_C]
4D3690:  VLDR            S16, [R7,#arg_10]
4D3694:  STR             R1, [SP,#0x68+var_2C]
4D3696:  LDRD.W          R1, R6, [R7,#arg_4]
4D369A:  STR             R1, [SP,#0x68+var_3C]
4D369C:  LDR             R1, [R7,#arg_0]
4D369E:  STR             R1, [SP,#0x68+var_38]
4D36A0:  LDR             R1, [R7,#arg_1C]
4D36A2:  CBNZ            R1, loc_4D36AE
4D36A4:  MOV             R1, R4; CPed *
4D36A6:  BLX             j__ZN16IKChainManager_c15CanAcceptLookAtEP4CPed; IKChainManager_c::CanAcceptLookAt(CPed *)
4D36AA:  CMP             R0, #0
4D36AC:  BEQ             loc_4D3748
4D36AE:  LDR.W           R0, [R4,#0x440]
4D36B2:  MOVS            R1, #5; int
4D36B4:  ADDS            R0, #4; this
4D36B6:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D36BA:  MOV             R5, R0
4D36BC:  CBZ             R5, loc_4D36CA
4D36BE:  CBZ             R6, loc_4D36F8
4D36C0:  LDRD.W          R10, R11, [R6]
4D36C4:  LDR.W           R9, [R6,#8]
4D36C8:  B               loc_4D3704
4D36CA:  MOVS            R0, #dword_1C; this
4D36CC:  LDR.W           R9, [R4,#0x440]
4D36D0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D36D4:  MOV             R5, R0
4D36D6:  BLX             j__ZN20CTaskSimpleIKManagerC2Ev; CTaskSimpleIKManager::CTaskSimpleIKManager(void)
4D36DA:  ADD.W           R0, R9, #4; this
4D36DE:  MOV             R1, R5; CTask *
4D36E0:  MOVS            R2, #5; int
4D36E2:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
4D36E6:  LDR.W           R0, [R4,#0x440]
4D36EA:  MOVS            R1, #5; int
4D36EC:  ADDS            R0, #4; this
4D36EE:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D36F2:  MOV             R5, R0
4D36F4:  CMP             R6, #0
4D36F6:  BNE             loc_4D36C0
4D36F8:  MOV.W           R10, #0
4D36FC:  MOV.W           R11, #0
4D3700:  MOV.W           R9, #0
4D3704:  MOV             R0, R5; this
4D3706:  MOVS            R1, #0; int
4D3708:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D370C:  CBZ             R0, loc_4D3756
4D370E:  LDRSB.W         R1, [R0,#0x59]
4D3712:  CMP             R1, R8
4D3714:  BGT             loc_4D3748
4D3716:  LDR             R2, [SP,#0x68+var_2C]
4D3718:  LDRB.W          R1, [R0,#0x58]
4D371C:  CBZ             R2, loc_4D379C
4D371E:  CMP             R1, #0
4D3720:  IT EQ
4D3722:  MOVEQ           R2, R1
4D3724:  LDR             R1, [SP,#0x68+var_40]
4D3726:  ADD             R3, SP, #0x68+var_64
4D3728:  STRD.W          R1, R8, [SP,#0x68+var_4C]; int
4D372C:  VSTR            S16, [SP,#0x68+var_50]
4D3730:  LDR             R1, [SP,#0x68+var_38]
4D3732:  STR             R1, [SP,#0x68+var_68]; int
4D3734:  LDR             R1, [SP,#0x68+var_3C]
4D3736:  STM.W           R3, {R1,R10,R11}
4D373A:  STRD.W          R9, R2, [SP,#0x68+var_58]; int
4D373E:  MOV             R2, R4; int
4D3740:  LDR             R1, [SP,#0x68+var_34]; int
4D3742:  LDR             R3, [SP,#0x68+var_30]; int
4D3744:  BLX             j__ZN19CTaskSimpleIKLookAt16UpdateLookAtInfoEPcP4CPedP7CEntityii5RwV3dhfii; CTaskSimpleIKLookAt::UpdateLookAtInfo(char *,CPed *,CEntity *,int,int,RwV3d,uchar,float,int,int)
4D3748:  ADD             SP, SP, #0x40 ; '@'
4D374A:  VPOP            {D8}
4D374E:  ADD             SP, SP, #4
4D3750:  POP.W           {R8-R11}
4D3754:  POP             {R4-R7,PC}; int
4D3756:  MOVS            R0, #dword_5C; this
4D3758:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D375C:  MOV             R4, R0
4D375E:  LDR             R0, [SP,#0x68+var_40]
4D3760:  STRD.W          R0, R8, [SP,#0x68+var_50]; int
4D3764:  VSTR            S16, [SP,#0x68+var_54]
4D3768:  LDR             R0, [SP,#0x68+var_3C]
4D376A:  STMEA.W         SP, {R0,R10,R11}
4D376E:  STR.W           R9, [SP,#0x68+var_5C]; int
4D3772:  LDR             R0, [SP,#0x68+var_2C]
4D3774:  STR             R0, [SP,#0x68+var_58]; int
4D3776:  MOV             R0, R4; int
4D3778:  LDR             R2, [SP,#0x68+var_30]; int
4D377A:  LDRD.W          R3, R1, [SP,#0x68+var_38]; int
4D377E:  BLX             j__ZN19CTaskSimpleIKLookAtC2EPcP7CEntityii5RwV3dhfii; CTaskSimpleIKLookAt::CTaskSimpleIKLookAt(char *,CEntity *,int,int,RwV3d,uchar,float,int,int)
4D3782:  MOV             R0, R5
4D3784:  MOV             R1, R4
4D3786:  MOVS            R2, #0
4D3788:  ADD             SP, SP, #0x40 ; '@'
4D378A:  VPOP            {D8}
4D378E:  ADD             SP, SP, #4
4D3790:  POP.W           {R8-R11}
4D3794:  POP.W           {R4-R7,LR}
4D3798:  B.W             sub_189F30
4D379C:  CBZ             R1, loc_4D37CA
4D379E:  LDR.W           R0, [R4,#0x440]
4D37A2:  MOVS            R1, #5; int
4D37A4:  ADDS            R0, #4; this
4D37A6:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D37AA:  MOVS            R1, #0; int
4D37AC:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D37B0:  CMP             R0, #0
4D37B2:  BEQ             loc_4D3748
4D37B4:  MOVS            R1, #0xFA; int
4D37B6:  ADD             SP, SP, #0x40 ; '@'
4D37B8:  VPOP            {D8}
4D37BC:  ADD             SP, SP, #4
4D37BE:  POP.W           {R8-R11}
4D37C2:  POP.W           {R4-R7,LR}
4D37C6:  B.W             sub_18BD28
4D37CA:  MOVS            R2, #0
4D37CC:  B               loc_4D3724
