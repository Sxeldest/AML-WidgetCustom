; =========================================================
; Game Engine Function: _ZN13CCarEnterExit26GetNearestCarPassengerDoorERK4CPedRK8CVehicleR7CVectorRibbb
; Address            : 0x5074F0 - 0x5078D6
; =========================================================

5074F0:  PUSH            {R4-R7,LR}
5074F2:  ADD             R7, SP, #0xC
5074F4:  PUSH.W          {R8-R11}
5074F8:  SUB             SP, SP, #4
5074FA:  VPUSH           {D8-D15}
5074FE:  SUB             SP, SP, #0x10
507500:  MOV             R6, R1
507502:  MOV             R9, R0
507504:  LDR.W           R0, [R6,#0x388]
507508:  MOV             R8, R3
50750A:  MOV             R4, R2
50750C:  LDRB.W          R1, [R0,#0xDE]
507510:  LDRD.W          R11, R3, [R7,#arg_4]; CVector *
507514:  SUBS            R1, #0xF
507516:  CMP             R1, #1
507518:  BHI             loc_507560
50751A:  CMP.W           R11, #1
50751E:  BNE             loc_50752A
507520:  LDRB.W          R0, [R6,#0x48A]
507524:  LSLS            R0, R0, #0x1D
507526:  BMI.W           loc_50766A
50752A:  CMP             R3, #1
50752C:  BNE             loc_507540
50752E:  MOV             R0, R6; this
507530:  MOVS            R1, #byte_8; CVehicle *
507532:  MOVS            R2, #0; int
507534:  MOVS            R5, #0
507536:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
50753A:  CMP             R0, #1
50753C:  BNE.W           loc_5078AE
507540:  MOV             R0, SP; this
507542:  MOV             R1, R6; CVehicle *
507544:  MOVS            R2, #8; int
507546:  MOVS            R5, #8
507548:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
50754C:  VLDR            D16, [SP,#0x70+var_70]
507550:  LDR             R0, [SP,#0x70+var_68]
507552:  STR             R0, [R4,#8]
507554:  VSTR            D16, [R4]
507558:  STR.W           R5, [R8]
50755C:  MOVS            R5, #1
50755E:  B               loc_5078AE
507560:  LDR.W           R1, [R6,#0x5A0]
507564:  LDR.W           R10, [R7,#arg_0]
507568:  CMP             R1, #9
50756A:  BEQ             loc_5075F0
50756C:  LDRB.W          R0, [R0,#0xCD]
507570:  LSLS            R0, R0, #0x1E
507572:  BMI             loc_5075F0
507574:  CMP.W           R10, #1
507578:  BNE             loc_507582
50757A:  LDR.W           R0, [R6,#0x468]
50757E:  CMP             R0, #0
507580:  BNE             loc_507676
507582:  CMP.W           R11, #1
507586:  BNE             loc_507590
507588:  LDRB.W          R0, [R6,#0x48A]
50758C:  LSLS            R0, R0, #0x1D
50758E:  BMI             loc_507676
507590:  CMP             R3, #1
507592:  BNE             loc_5075A6
507594:  MOV             R0, R6; this
507596:  MOVS            R1, #byte_8; CVehicle *
507598:  MOVS            R2, #0; int
50759A:  MOVS            R5, #0
50759C:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
5075A0:  CMP             R0, #1
5075A2:  BNE.W           loc_507704
5075A6:  MOV             R0, SP; this
5075A8:  MOV             R1, R6; CVehicle *
5075AA:  MOVS            R2, #8; int
5075AC:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
5075B0:  LDR.W           R0, [R9,#0x14]
5075B4:  MOVS            R5, #1
5075B6:  VLDR            S17, [SP,#0x70+var_70]
5075BA:  ADD.W           R1, R0, #0x30 ; '0'
5075BE:  CMP             R0, #0
5075C0:  VLDR            S30, [SP,#0x70+var_70+4]
5075C4:  VLDR            S28, [SP,#0x70+var_68]
5075C8:  IT EQ
5075CA:  ADDEQ.W         R1, R9, #4
5075CE:  VLDR            S22, =999.0
5075D2:  VLDR            S0, [R1]
5075D6:  VLDR            S2, [R1,#4]
5075DA:  VMOV.F32        S24, S22
5075DE:  VSUB.F32        S25, S17, S0
5075E2:  VSUB.F32        S26, S30, S2
5075E6:  VMOV.F32        S27, S22
5075EA:  VMOV.F32        S29, S22
5075EE:  B               loc_50771C
5075F0:  CMP.W           R10, #1
5075F4:  BNE             loc_507608
5075F6:  LDR.W           R0, [R6,#0x468]
5075FA:  CBZ             R0, loc_507608
5075FC:  VLDR            S22, =999.0
507600:  MOVS            R5, #0
507602:  VMOV.F32        S24, S22
507606:  B               loc_5076F4
507608:  CMP.W           R11, #1
50760C:  BNE             loc_507616
50760E:  LDRB.W          R0, [R6,#0x48A]
507612:  LSLS            R0, R0, #0x1E
507614:  BMI             loc_50766E
507616:  CMP             R3, #1
507618:  BNE             loc_50762A
50761A:  MOV             R0, R6; this
50761C:  MOVS            R1, #(byte_9+2); CVehicle *
50761E:  MOVS            R2, #0; int
507620:  MOVS            R5, #0
507622:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
507626:  CMP             R0, #1
507628:  BNE             loc_50767E
50762A:  MOV             R0, SP; this
50762C:  MOV             R1, R6; CVehicle *
50762E:  MOVS            R2, #0xB; int
507630:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
507634:  LDR.W           R0, [R9,#0x14]
507638:  MOVS            R5, #1
50763A:  VLDR            S20, [SP,#0x70+var_70]
50763E:  ADD.W           R1, R0, #0x30 ; '0'
507642:  CMP             R0, #0
507644:  VLDR            S18, [SP,#0x70+var_70+4]
507648:  VLDR            S16, [SP,#0x70+var_68]
50764C:  IT EQ
50764E:  ADDEQ.W         R1, R9, #4
507652:  VLDR            S0, [R1]
507656:  VLDR            S2, [R1,#4]
50765A:  VSUB.F32        S24, S20, S0
50765E:  VSUB.F32        S22, S18, S2
507662:  CMP.W           R10, #1
507666:  BEQ             loc_50768C
507668:  B               loc_507692
50766A:  MOVS            R5, #0
50766C:  B               loc_5078AE
50766E:  VLDR            S22, =999.0
507672:  MOVS            R5, #0
507674:  B               loc_507682
507676:  VLDR            S26, =999.0
50767A:  MOVS            R5, #0
50767C:  B               loc_507708
50767E:  VLDR            S22, =999.0
507682:  VMOV.F32        S24, S22
507686:  CMP.W           R10, #1
50768A:  BNE             loc_507692
50768C:  LDR.W           R0, [R6,#0x468]
507690:  CBNZ            R0, loc_5076F4
507692:  CMP.W           R11, #1
507696:  BNE             loc_5076A0
507698:  LDRB.W          R0, [R6,#0x48A]
50769C:  LSLS            R0, R0, #0x1C
50769E:  BMI             loc_5076F4
5076A0:  LDR             R0, [R7,#arg_8]
5076A2:  CMP             R0, #1
5076A4:  BNE             loc_5076B2
5076A6:  MOV             R0, R6; this
5076A8:  MOVS            R1, #byte_9; CVehicle *
5076AA:  MOVS            R2, #0; int
5076AC:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
5076B0:  CBZ             R0, loc_5076F4
5076B2:  MOV             R0, SP; this
5076B4:  MOV             R1, R6; CVehicle *
5076B6:  MOVS            R2, #9; int
5076B8:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
5076BC:  LDR.W           R0, [R9,#0x14]
5076C0:  MOVS            R5, #1
5076C2:  VLDR            S23, [SP,#0x70+var_70]
5076C6:  ADD.W           R1, R0, #0x30 ; '0'
5076CA:  CMP             R0, #0
5076CC:  VLDR            S21, [SP,#0x70+var_70+4]
5076D0:  VLDR            S19, [SP,#0x70+var_68]
5076D4:  IT EQ
5076D6:  ADDEQ.W         R1, R9, #4
5076DA:  VLDR            S0, [R1]
5076DE:  VLDR            S2, [R1,#4]
5076E2:  VLDR            S26, =999.0
5076E6:  VSUB.F32        S29, S23, S0
5076EA:  VSUB.F32        S27, S21, S2
5076EE:  VMOV.F32        S25, S26
5076F2:  B               loc_50771C
5076F4:  VLDR            S26, =999.0
5076F8:  CMP             R5, #0
5076FA:  IT NE
5076FC:  MOVNE           R5, #1
5076FE:  VMOV.F32        S25, S26
507702:  B               loc_507714
507704:  VLDR            S26, =999.0
507708:  VMOV.F32        S25, S26
50770C:  VMOV.F32        S22, S26
507710:  VMOV.F32        S24, S26
507714:  VMOV.F32        S27, S26
507718:  VMOV.F32        S29, S26
50771C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x507726)
50771E:  LDRSH.W         R1, [R6,#0x26]
507722:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
507724:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
507726:  LDR.W           R0, [R0,R1,LSL#2]
50772A:  LDRSB.W         R0, [R0,#0x64]
50772E:  CMP             R0, #3
507730:  BLT             loc_50782C
507732:  LDR.W           R0, [R6,#0x388]
507736:  LDRB.W          R0, [R0,#0xCD]
50773A:  LSLS            R0, R0, #0x18
50773C:  BMI             loc_5077A6
50773E:  CMP.W           R10, #1
507742:  BNE             loc_50774A
507744:  LDR.W           R0, [R6,#0x46C]
507748:  CBNZ            R0, loc_5077B0
50774A:  CMP.W           R11, #1
50774E:  BNE             loc_507758
507750:  LDRB.W          R0, [R6,#0x48A]
507754:  LSLS            R0, R0, #0x1E
507756:  BMI             loc_5077B0
507758:  LDR             R0, [R7,#arg_8]
50775A:  CMP             R0, #1
50775C:  BNE             loc_50776C
50775E:  MOV             R0, R6; this
507760:  MOVS            R1, #(byte_9+2); CVehicle *
507762:  MOVS            R2, #0; int
507764:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
507768:  CMP             R0, #1
50776A:  BNE             loc_5077B0
50776C:  MOV             R0, SP; this
50776E:  MOV             R1, R6; CVehicle *
507770:  MOVS            R2, #0xB; int
507772:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
507776:  LDR.W           R0, [R9,#0x14]
50777A:  MOVS            R5, #1
50777C:  VLDR            S20, [SP,#0x70+var_70]
507780:  ADD.W           R1, R0, #0x30 ; '0'
507784:  CMP             R0, #0
507786:  VLDR            S18, [SP,#0x70+var_70+4]
50778A:  VLDR            S16, [SP,#0x70+var_68]
50778E:  IT EQ
507790:  ADDEQ.W         R1, R9, #4
507794:  VLDR            S0, [R1]
507798:  VLDR            S2, [R1,#4]
50779C:  VSUB.F32        S24, S20, S0
5077A0:  VSUB.F32        S22, S18, S2
5077A4:  B               loc_5077B0
5077A6:  LDR.W           R0, [R6,#0x5A0]
5077AA:  CMP             R0, #0
5077AC:  BEQ.W           loc_5078BE
5077B0:  LDR.W           R0, [R6,#0x388]
5077B4:  LDRB.W          R0, [R0,#0xCD]
5077B8:  LSLS            R0, R0, #0x18
5077BA:  BMI             loc_507824
5077BC:  CMP.W           R10, #1
5077C0:  BNE             loc_5077C8
5077C2:  LDR.W           R0, [R6,#0x470]
5077C6:  CBNZ            R0, loc_50782C
5077C8:  CMP.W           R11, #1
5077CC:  BNE             loc_5077D6
5077CE:  LDRB.W          R0, [R6,#0x48A]
5077D2:  LSLS            R0, R0, #0x1C
5077D4:  BMI             loc_50782C
5077D6:  LDR             R0, [R7,#arg_8]
5077D8:  CMP             R0, #1
5077DA:  BNE             loc_5077EA
5077DC:  MOV             R0, R6; this
5077DE:  MOVS            R1, #byte_9; CVehicle *
5077E0:  MOVS            R2, #0; int
5077E2:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
5077E6:  CMP             R0, #1
5077E8:  BNE             loc_50782C
5077EA:  MOV             R0, SP; this
5077EC:  MOV             R1, R6; CVehicle *
5077EE:  MOVS            R2, #9; int
5077F0:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
5077F4:  LDR.W           R0, [R9,#0x14]
5077F8:  MOVS            R5, #1
5077FA:  VLDR            S23, [SP,#0x70+var_70]
5077FE:  ADD.W           R1, R0, #0x30 ; '0'
507802:  CMP             R0, #0
507804:  VLDR            S21, [SP,#0x70+var_70+4]
507808:  VLDR            S19, [SP,#0x70+var_68]
50780C:  IT EQ
50780E:  ADDEQ.W         R1, R9, #4
507812:  VLDR            S0, [R1]
507816:  VLDR            S2, [R1,#4]
50781A:  VSUB.F32        S29, S23, S0
50781E:  VSUB.F32        S27, S21, S2
507822:  B               loc_50782C
507824:  LDR.W           R0, [R6,#0x5A0]
507828:  CMP             R0, #0
50782A:  BEQ             loc_5078CA
50782C:  VMUL.F32        S0, S25, S25
507830:  MOVS            R0, #8
507832:  VMUL.F32        S2, S26, S26
507836:  VSTR            S17, [R4]
50783A:  VMUL.F32        S4, S24, S24
50783E:  VSTR            S30, [R4,#4]
507842:  VMUL.F32        S6, S22, S22
507846:  VSTR            S28, [R4,#8]
50784A:  STR.W           R0, [R8]
50784E:  VADD.F32        S0, S2, S0
507852:  VADD.F32        S2, S6, S4
507856:  VCMPE.F32       S2, S0
50785A:  VMRS            APSR_nzcv, FPSCR
50785E:  BGE             loc_50787A
507860:  VMOV.F32        S26, S22
507864:  MOVS            R0, #0xB
507866:  VMOV.F32        S25, S24
50786A:  STR.W           R0, [R8]
50786E:  VSTR            S20, [R4]
507872:  VSTR            S18, [R4,#4]
507876:  VSTR            S16, [R4,#8]
50787A:  VMUL.F32        S0, S25, S25
50787E:  VMUL.F32        S2, S26, S26
507882:  VMUL.F32        S4, S29, S29
507886:  VMUL.F32        S6, S27, S27
50788A:  VADD.F32        S0, S2, S0
50788E:  VADD.F32        S2, S6, S4
507892:  VCMPE.F32       S2, S0
507896:  VMRS            APSR_nzcv, FPSCR
50789A:  BGE             loc_5078AE
50789C:  MOVS            R0, #9
50789E:  STR.W           R0, [R8]
5078A2:  VSTR            S23, [R4]
5078A6:  VSTR            S21, [R4,#4]
5078AA:  VSTR            S19, [R4,#8]
5078AE:  MOV             R0, R5
5078B0:  ADD             SP, SP, #0x10
5078B2:  VPOP            {D8-D15}
5078B6:  ADD             SP, SP, #4
5078B8:  POP.W           {R8-R11}
5078BC:  POP             {R4-R7,PC}
5078BE:  LDR.W           R0, [R6,#0x688]
5078C2:  CMP             R0, #0
5078C4:  BNE.W           loc_50773E
5078C8:  B               loc_5077B0
5078CA:  LDR.W           R0, [R6,#0x680]
5078CE:  CMP             R0, #0
5078D0:  BNE.W           loc_5077BC
5078D4:  B               loc_50782C
