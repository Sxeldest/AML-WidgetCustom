; =========================================================
; Game Engine Function: _ZN28CTaskUtilityLineUpPedWithCar29GetLocalPositionToOpenCarDoorEP8CVehiclefP21CAnimBlendAssociation
; Address            : 0x50A600 - 0x50A948
; =========================================================

50A600:  PUSH            {R4-R7,LR}
50A602:  ADD             R7, SP, #0xC
50A604:  PUSH.W          {R8-R11}
50A608:  SUB             SP, SP, #4
50A60A:  VPUSH           {D8-D12}
50A60E:  SUB             SP, SP, #0x20
50A610:  MOV             R4, R0
50A612:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x50A61C)
50A614:  MOV             R5, R2
50A616:  MOV             R8, R1
50A618:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
50A61A:  LDRSH.W         R1, [R5,#0x26]
50A61E:  LDRB.W          R2, [R5,#0x42D]
50A622:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
50A624:  LDR.W           R11, [R7,#arg_0]
50A628:  LDR.W           R10, [R0,R1,LSL#2]
50A62C:  LSLS            R0, R2, #0x1F
50A62E:  BEQ             loc_50A648
50A630:  LDR.W           R0, [R8,#0x18]
50A634:  ORR.W           R0, R0, #2
50A638:  CMP             R0, #0xB
50A63A:  BNE             loc_50A648
50A63C:  VLDR            S16, =0.0
50A640:  CMP.W           R11, #0
50A644:  BNE             loc_50A65E
50A646:  B               loc_50A6AA
50A648:  LDR.W           R0, [R5,#0x388]
50A64C:  VMOV            S0, R3
50A650:  VLDR            S2, [R0,#0xD4]
50A654:  VMUL.F32        S16, S2, S0
50A658:  CMP.W           R11, #0
50A65C:  BEQ             loc_50A6AA
50A65E:  LDRSH.W         R1, [R11,#0x2C]
50A662:  SUBW            R2, R1, #0x175
50A666:  UXTH            R0, R1
50A668:  CMP             R2, #0xF
50A66A:  BHI             loc_50A6A4
50A66C:  MOVS            R3, #1
50A66E:  LSL.W           R2, R3, R2
50A672:  MOVW            R3, #0xC78F
50A676:  TST             R2, R3
50A678:  BEQ             loc_50A69A
50A67A:  LDR.W           R1, [R8,#0x18]
50A67E:  SUBS            R1, #8; switch 11 cases
50A680:  CMP             R1, #0xA
50A682:  BHI             def_50A686; jumptable 0050A686 default case, cases 12-17
50A684:  MOVS            R6, #0
50A686:  TBB.W           [PC,R1]; switch jump
50A68A:  DCB 0x2C; jump table for switch statement
50A68B:  DCB 6
50A68C:  DCB 0x2C
50A68D:  DCB 6
50A68E:  DCB 0x29
50A68F:  DCB 0x29
50A690:  DCB 0x29
50A691:  DCB 0x29
50A692:  DCB 0x29
50A693:  DCB 0x29
50A694:  DCB 0x2B
50A695:  ALIGN 2
50A696:  MOVS            R6, #1; jumptable 0050A686 cases 9,11
50A698:  B               loc_50A6E2; jumptable 0050A686 cases 8,10
50A69A:  TST.W           R2, #0x60
50A69E:  BEQ             loc_50A6A4
50A6A0:  MOVS            R6, #0
50A6A2:  B               loc_50A6E2; jumptable 0050A686 cases 8,10
50A6A4:  SUBS            R1, #0x6C ; 'l'
50A6A6:  CMP             R1, #2
50A6A8:  BCC             loc_50A67A
50A6AA:  LDR.W           R0, [R8,#0x18]
50A6AE:  CMP             R0, #9
50A6B0:  BEQ             loc_50A6BA
50A6B2:  CMP             R0, #0x12
50A6B4:  BEQ             loc_50A6C4
50A6B6:  CMP             R0, #0xB
50A6B8:  BNE             loc_50A6CE
50A6BA:  MOVS            R6, #1
50A6BC:  CMP.W           R11, #0
50A6C0:  BNE             loc_50A6D6
50A6C2:  B               loc_50A706
50A6C4:  MOVS            R6, #2
50A6C6:  CMP.W           R11, #0
50A6CA:  BNE             loc_50A6D6
50A6CC:  B               loc_50A706
50A6CE:  MOVS            R6, #0
50A6D0:  CMP.W           R11, #0
50A6D4:  BEQ             loc_50A706
50A6D6:  LDRH.W          R0, [R11,#0x2C]
50A6DA:  B               loc_50A6E2; jumptable 0050A686 cases 8,10
50A6DC:  MOVS            R6, #3; jumptable 0050A686 default case, cases 12-17
50A6DE:  B               loc_50A6E2; jumptable 0050A686 cases 8,10
50A6E0:  MOVS            R6, #2; jumptable 0050A686 case 18
50A6E2:  SXTH            R0, R0; jumptable 0050A686 cases 8,10
50A6E4:  SUBW            R0, R0, #0x185
50A6E8:  CMP             R0, #1
50A6EA:  BHI             loc_50A706
50A6EC:  LDR.W           R0, [R5,#0x388]
50A6F0:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50A6F6)
50A6F2:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50A6F4:  LDRB.W          R0, [R0,#0xDE]
50A6F8:  LDR             R2, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50A6FA:  MOVS            R1, #0x94
50A6FC:  SMLABB.W        R2, R0, R1, R2
50A700:  LDRB            R2, [R2,#8]
50A702:  LSLS            R2, R2, #0x1A
50A704:  BMI             loc_50A738
50A706:  LDR.W           R0, [R5,#0x388]
50A70A:  MOVS            R2, #0x94
50A70C:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50A712)
50A70E:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50A710:  LDRB.W          R0, [R0,#0xDE]
50A714:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50A716:  SMLABB.W        R1, R0, R2, R1; int
50A71A:  ADD             R0, SP, #0x68+var_58; this
50A71C:  MOV             R2, R6
50A71E:  BLX             j__ZN17CVehicleAnimGroup22ComputeAnimDoorOffsetsEi; CVehicleAnimGroup::ComputeAnimDoorOffsets(int)
50A722:  ADD.W           R9, SP, #0x68+var_58
50A726:  LDM.W           R9, {R2,R3,R9}
50A72A:  VMOV            S0, R9
50A72E:  VMOV            S2, R3
50A732:  VMOV            S4, R2
50A736:  B               loc_50A7AE
50A738:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50A73E)
50A73A:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50A73C:  LDR.W           R9, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50A740:  MOV             R2, R6
50A742:  SMLABB.W        R1, R0, R1, R9; int
50A746:  ADD             R0, SP, #0x68+var_58; this
50A748:  BLX             j__ZN17CVehicleAnimGroup22ComputeAnimDoorOffsetsEi; CVehicleAnimGroup::ComputeAnimDoorOffsets(int)
50A74C:  ADD             R0, SP, #0x68+var_58; this
50A74E:  MOV             R1, R9; int
50A750:  MOV             R2, R6
50A752:  VLDR            S18, [SP,#0x68+var_58]
50A756:  VLDR            S20, [SP,#0x68+var_58+4]
50A75A:  VLDR            S22, [SP,#0x68+var_50]
50A75E:  VLDR            S24, [R11,#0x18]
50A762:  BLX             j__ZN17CVehicleAnimGroup22ComputeAnimDoorOffsetsEi; CVehicleAnimGroup::ComputeAnimDoorOffsets(int)
50A766:  VMOV.F32        S0, #1.0
50A76A:  VLDR            S2, [R11,#0x18]
50A76E:  VLDR            S4, [SP,#0x68+var_58+4]
50A772:  VLDR            S6, [SP,#0x68+var_50]
50A776:  VMUL.F32        S4, S24, S4
50A77A:  VMUL.F32        S6, S24, S6
50A77E:  VSUB.F32        S0, S0, S2
50A782:  VLDR            S2, [SP,#0x68+var_58]
50A786:  VMUL.F32        S12, S24, S2
50A78A:  VMUL.F32        S10, S20, S0
50A78E:  VMUL.F32        S8, S22, S0
50A792:  VMUL.F32        S14, S18, S0
50A796:  VADD.F32        S2, S4, S10
50A79A:  VADD.F32        S0, S6, S8
50A79E:  VADD.F32        S4, S12, S14
50A7A2:  VMOV            R3, S2
50A7A6:  VMOV            R9, S0
50A7AA:  VMOV            R2, S4
50A7AE:  LDR.W           LR, [R8,#0x18]
50A7B2:  SUB.W           R1, LR, #8; switch 11 cases
50A7B6:  CMP             R1, #0xA
50A7B8:  BHI             def_50A7BA; jumptable 0050A7BA default case, cases 12-17
50A7BA:  TBB.W           [PC,R1]; switch jump
50A7BE:  DCB 6; jump table for switch statement
50A7BF:  DCB 0x33
50A7C0:  DCB 0x12
50A7C1:  DCB 0x4E
50A7C2:  DCB 0x1E
50A7C3:  DCB 0x1E
50A7C4:  DCB 0x1E
50A7C5:  DCB 0x1E
50A7C6:  DCB 0x1E
50A7C7:  DCB 0x1E
50A7C8:  DCB 0x6B
50A7C9:  ALIGN 2
50A7CA:  LDR.W           R6, [R10,#0x54]; jumptable 0050A7BA case 8
50A7CE:  LDR.W           R1, [R10,#0x74]
50A7D2:  CMP             R6, #5
50A7D4:  IT NE
50A7D6:  ADDNE           R1, #0x30 ; '0'
50A7D8:  VLDR            S0, [R1]
50A7DC:  LDRD.W          R6, R1, [R1,#4]
50A7E0:  B               loc_50A830
50A7E2:  LDR.W           R6, [R10,#0x54]; jumptable 0050A7BA case 10
50A7E6:  LDR.W           R1, [R10,#0x74]
50A7EA:  CMP             R6, #5
50A7EC:  IT NE
50A7EE:  ADDNE           R1, #0x30 ; '0'
50A7F0:  VLDR            S0, [R1]
50A7F4:  LDRD.W          R6, R1, [R1,#4]
50A7F8:  B               loc_50A866
50A7FA:  LDR.W           R0, [R10,#0x54]; jumptable 0050A7BA default case, cases 12-17
50A7FE:  MOVS            R2, #0
50A800:  LDR.W           R1, [R10,#0x74]
50A804:  MOVS            R3, #0
50A806:  CMP             R0, #5
50A808:  MOV.W           R9, #0
50A80C:  IT NE
50A80E:  ADDNE           R1, #0x30 ; '0'
50A810:  LDRD.W          R12, R6, [R1]
50A814:  LDR             R1, [R1,#8]
50A816:  VMOV            S2, R6
50A81A:  VMOV            S4, R12
50A81E:  VMOV            S0, R1
50A822:  B               loc_50A8C0
50A824:  LDR.W           R1, [R10,#0x74]; jumptable 0050A7BA case 9
50A828:  VLDR            S0, [R1,#0x3C]
50A82C:  LDRD.W          R6, R1, [R1,#0x40]
50A830:  VADD.F32        S4, S16, S0
50A834:  VMOV            R12, S4
50A838:  VMOV            S10, R2
50A83C:  EOR.W           R2, R2, #0x80000000
50A840:  VMOV            S0, R9
50A844:  VMOV            S8, R1
50A848:  VMOV            S2, R3
50A84C:  VMOV            S6, R6
50A850:  VSUB.F32        S0, S8, S0
50A854:  VSUB.F32        S2, S6, S2
50A858:  B               loc_50A8BC
50A85A:  LDR.W           R1, [R10,#0x74]; jumptable 0050A7BA case 11
50A85E:  VLDR            S0, [R1,#0x3C]
50A862:  LDRD.W          R6, R1, [R1,#0x40]
50A866:  VADD.F32        S0, S16, S0
50A86A:  VNEG.F32        S4, S0
50A86E:  VMOV            R12, S4
50A872:  VMOV            S10, R2
50A876:  VMOV            S0, R9
50A87A:  VMOV            S8, R1
50A87E:  VMOV            S2, R3
50A882:  VMOV            S6, R6
50A886:  VSUB.F32        S0, S8, S0
50A88A:  VSUB.F32        S2, S6, S2
50A88E:  VSUB.F32        S4, S4, S10
50A892:  B               loc_50A8C0
50A894:  LDR.W           R6, [R10,#0x54]; jumptable 0050A7BA case 18
50A898:  LDR.W           R1, [R10,#0x74]
50A89C:  CMP             R6, #5
50A89E:  IT NE
50A8A0:  ADDNE           R1, #0x30 ; '0'
50A8A2:  LDRD.W          R12, R6, [R1]
50A8A6:  LDR             R1, [R1,#8]
50A8A8:  VMOV            S8, R6
50A8AC:  VMOV            S10, R12
50A8B0:  VMOV            S6, R1
50A8B4:  VADD.F32        S2, S2, S8
50A8B8:  VADD.F32        S0, S0, S6
50A8BC:  VADD.F32        S4, S4, S10
50A8C0:  VSTR            S4, [R4]
50A8C4:  VSTR            S2, [R4,#4]
50A8C8:  VSTR            S0, [R4,#8]
50A8CC:  LDR.W           R0, [R5,#0x5A0]
50A8D0:  CMP             R0, #9
50A8D2:  BNE             loc_50A93A
50A8D4:  CMP.W           LR, #0x12
50A8D8:  BEQ             loc_50A93A
50A8DA:  STRD.W          R9, R12, [SP,#0x68+var_68]
50A8DE:  MOV             R0, R5
50A8E0:  STRD.W          R6, R1, [SP,#0x68+var_60]
50A8E4:  MOV             R1, R4
50A8E6:  BLX             j__ZN5CBike29GetCorrectedWorldDoorPositionER7CVectorS0_S0_; CBike::GetCorrectedWorldDoorPosition(CVector &,CVector,CVector)
50A8EA:  LDR             R2, [R5,#0x14]
50A8EC:  MOV             R1, R4; CMatrix *
50A8EE:  VLDR            S0, [R4]
50A8F2:  ADD.W           R0, R2, #0x30 ; '0'
50A8F6:  CMP             R2, #0
50A8F8:  VLDR            S2, [R4,#4]
50A8FC:  VLDR            S4, [R4,#8]
50A900:  IT EQ
50A902:  ADDEQ           R0, R5, #4
50A904:  VLDR            S6, [R0]
50A908:  VSUB.F32        S0, S0, S6
50A90C:  VSTR            S0, [R4]
50A910:  VLDR            S0, [R0,#4]
50A914:  VSUB.F32        S0, S2, S0
50A918:  VSTR            S0, [R4,#4]
50A91C:  VLDR            S0, [R0,#8]
50A920:  ADD             R0, SP, #0x68+var_58; CVector *
50A922:  VSUB.F32        S0, S4, S0
50A926:  VSTR            S0, [R4,#8]
50A92A:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
50A92E:  VLDR            D16, [SP,#0x68+var_58]
50A932:  LDR             R0, [SP,#0x68+var_50]
50A934:  STR             R0, [R4,#8]
50A936:  VSTR            D16, [R4]
50A93A:  ADD             SP, SP, #0x20 ; ' '
50A93C:  VPOP            {D8-D12}
50A940:  ADD             SP, SP, #4
50A942:  POP.W           {R8-R11}
50A946:  POP             {R4-R7,PC}
