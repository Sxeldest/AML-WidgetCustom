; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands2500To2599Ei
; Address            : 0x33E5E0 - 0x340054
; =========================================================

33E5E0:  PUSH            {R4-R7,LR}
33E5E2:  ADD             R7, SP, #0xC
33E5E4:  PUSH.W          {R8-R11}
33E5E8:  SUB             SP, SP, #4
33E5EA:  VPUSH           {D8}
33E5EE:  SUB.W           SP, SP, #0x248; unsigned __int8
33E5F2:  MOV             R4, R0
33E5F4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x33E5FC)
33E5F8:  ADD             R0, PC; __stack_chk_guard_ptr
33E5FA:  LDR             R0, [R0]; __stack_chk_guard
33E5FC:  LDR             R0, [R0]
33E5FE:  STR             R0, [SP,#0x270+var_2C]
33E600:  SUBW            R0, R1, #0x9C4; switch 100 cases
33E604:  CMP             R0, #0x63 ; 'c'
33E606:  BHI.W           def_33E60C; jumptable 0033E60C default case, cases 2509,2510,2527
33E60A:  MOVS            R6, #0
33E60C:  TBH.W           [PC,R0,LSL#1]; switch jump
33E610:  DCW 0x64; jump table for switch statement
33E612:  DCW 0x136
33E614:  DCW 0xD0F
33E616:  DCW 0x155
33E618:  DCW 0x179
33E61A:  DCW 0x181
33E61C:  DCW 0x1A0
33E61E:  DCW 0x1D5
33E620:  DCW 0x1F4
33E622:  DCW 0x213
33E624:  DCW 0x213
33E626:  DCW 0x216
33E628:  DCW 0x23A
33E62A:  DCW 0x259
33E62C:  DCW 0x26D
33E62E:  DCW 0xD0F
33E630:  DCW 0x282
33E632:  DCW 0x28A
33E634:  DCW 0x2A9
33E636:  DCW 0x2C8
33E638:  DCW 0x2E5
33E63A:  DCW 0x2EB
33E63C:  DCW 0x2F3
33E63E:  DCW 0x34C
33E640:  DCW 0xD0F
33E642:  DCW 0x371
33E644:  DCW 0x3A1
33E646:  DCW 0x213
33E648:  DCW 0x3C0
33E64A:  DCW 0x3E9
33E64C:  DCW 0x405
33E64E:  DCW 0x4A1
33E650:  DCW 0x4BB
33E652:  DCW 0x4D1
33E654:  DCW 0x508
33E656:  DCW 0x518
33E658:  DCW 0x52A
33E65A:  DCW 0x54C
33E65C:  DCW 0xD0F
33E65E:  DCW 0x56B
33E660:  DCW 0x5A3
33E662:  DCW 0x5B4
33E664:  DCW 0x5D3
33E666:  DCW 0x5E3
33E668:  DCW 0x5F8
33E66A:  DCW 0x60B
33E66C:  DCW 0x62A
33E66E:  DCW 0xD0F
33E670:  DCW 0x652
33E672:  DCW 0x673
33E674:  DCW 0x683
33E676:  DCW 0x6A4
33E678:  DCW 0x6C3
33E67A:  DCW 0xD0F
33E67C:  DCW 0x6C8
33E67E:  DCW 0x6D3
33E680:  DCW 0x6E2
33E682:  DCW 0x701
33E684:  DCW 0x71D
33E686:  DCW 0x744
33E688:  DCW 0xD0F
33E68A:  DCW 0x753
33E68C:  DCW 0x75F
33E68E:  DCW 0x810
33E690:  DCW 0xD0F
33E692:  DCW 0xD0F
33E694:  DCW 0x814
33E696:  DCW 0x832
33E698:  DCW 0x850
33E69A:  DCW 0x8B8
33E69C:  DCW 0x8D6
33E69E:  DCW 0x8F4
33E6A0:  DCW 0x91B
33E6A2:  DCW 0xD0F
33E6A4:  DCW 0x935
33E6A6:  DCW 0x942
33E6A8:  DCW 0x949
33E6AA:  DCW 0x95B
33E6AC:  DCW 0x82
33E6AE:  DCW 0x977
33E6B0:  DCW 0x97A
33E6B2:  DCW 0x993
33E6B4:  DCW 0x9B1
33E6B6:  DCW 0xA0
33E6B8:  DCW 0x9CF
33E6BA:  DCW 0x9F9
33E6BC:  DCW 0xBC
33E6BE:  DCW 0xA0A
33E6C0:  DCW 0xA28
33E6C2:  DCW 0xA46
33E6C4:  DCW 0xA65
33E6C6:  DCW 0xC3
33E6C8:  DCW 0xA83
33E6CA:  DCW 0xCF
33E6CC:  DCW 0xA95
33E6CE:  DCW 0xAB3
33E6D0:  DCW 0xF0
33E6D2:  DCW 0xFC
33E6D4:  DCW 0xAC1
33E6D6:  DCW 0xACC
33E6D8:  MOV             R0, R4; jumptable 0033E60C case 2500
33E6DA:  MOVS            R1, #2; __int16
33E6DC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E6E0:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33E6F0)
33E6E4:  MOVW            R3, #0xA2C
33E6E8:  LDR.W           R0, =(ScriptParams_ptr - 0x33E6F2)
33E6EC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33E6EE:  ADD             R0, PC; ScriptParams_ptr
33E6F0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33E6F2:  LDR             R0, [R0]; ScriptParams
33E6F4:  LDRD.W          R2, R0, [R0]
33E6F8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33E6FA:  AND.W           R0, R0, #1
33E6FE:  LSRS            R2, R2, #8
33E700:  LDR             R1, [R1]
33E702:  MLA.W           R1, R2, R3, R1
33E706:  LDR.W           R2, [R1,#0x430]
33E70A:  BIC.W           R2, R2, #0x400000
33E70E:  ORR.W           R0, R2, R0,LSL#22
33E712:  B               loc_33E7E8
33E714:  MOV             R0, R4; jumptable 0033E60C case 2578
33E716:  MOVS            R1, #1; __int16
33E718:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E71C:  LDR.W           R0, =(ScriptParams_ptr - 0x33E72C)
33E720:  MOVW            R3, #0xA2C
33E724:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33E72E)
33E728:  ADD             R0, PC; ScriptParams_ptr
33E72A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33E72C:  LDR             R0, [R0]; ScriptParams
33E72E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33E730:  LDR             R2, [R0]
33E732:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33E734:  LSRS            R2, R2, #8
33E736:  LDR             R1, [R1]
33E738:  MLA.W           R1, R2, R3, R1
33E73C:  LDRB.W          R2, [R1,#0x43A]
33E740:  STR             R2, [R0]
33E742:  LDRB.W          R1, [R1,#0x43B]
33E746:  STR             R1, [R0,#(dword_81A90C - 0x81A908)]
33E748:  MOV             R0, R4
33E74A:  MOVS            R1, #2
33E74C:  B.W             loc_33F778
33E750:  MOV             R0, R4; jumptable 0033E60C case 2583
33E752:  MOVS            R1, #2; __int16
33E754:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E758:  LDR.W           R0, =(ScriptParams_ptr - 0x33E766)
33E75C:  MOVS            R6, #0
33E75E:  LDR.W           R1, =(_ZN17CTheCarGenerators17CarGeneratorArrayE_ptr - 0x33E768)
33E762:  ADD             R0, PC; ScriptParams_ptr
33E764:  ADD             R1, PC; _ZN17CTheCarGenerators17CarGeneratorArrayE_ptr
33E766:  LDR             R0, [R0]; ScriptParams
33E768:  LDR             R1, [R1]; CTheCarGenerators::CarGeneratorArray ...
33E76A:  LDRH            R2, [R0]
33E76C:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
33E76E:  ADD.W           R1, R1, R2,LSL#5
33E772:  CMP             R0, #0
33E774:  LDRB            R2, [R1,#0xD]
33E776:  IT NE
33E778:  MOVNE           R0, #1
33E77A:  AND.W           R2, R2, #0xF7
33E77E:  ORR.W           R0, R2, R0,LSL#3
33E782:  STRB            R0, [R1,#0xD]
33E784:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33E788:  MOV             R0, R4; jumptable 0033E60C case 2586
33E78A:  MOVW            R1, #0xA1A; int
33E78E:  BLX             j__ZN14CRunningScript21PlayAnimScriptCommandEi; CRunningScript::PlayAnimScriptCommand(int)
33E792:  B.W             loc_34002C
33E796:  MOV             R0, R4; jumptable 0033E60C case 2591
33E798:  MOVS            R1, #2; __int16
33E79A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E79E:  LDR.W           R0, =(ScriptParams_ptr - 0x33E7A6)
33E7A2:  ADD             R0, PC; ScriptParams_ptr
33E7A4:  LDR             R1, [R0]; ScriptParams
33E7A6:  LDRH            R0, [R1]
33E7A8:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33E7AA:  B.W             loc_33F8C0
33E7AE:  MOV             R0, R4; jumptable 0033E60C case 2593
33E7B0:  MOVS            R1, #2; __int16
33E7B2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E7B6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33E7C6)
33E7BA:  MOVW            R3, #0xA2C
33E7BE:  LDR.W           R0, =(ScriptParams_ptr - 0x33E7C8)
33E7C2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33E7C4:  ADD             R0, PC; ScriptParams_ptr
33E7C6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33E7C8:  LDR             R0, [R0]; ScriptParams
33E7CA:  LDRD.W          R2, R0, [R0]
33E7CE:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33E7D0:  AND.W           R0, R0, #1
33E7D4:  LSRS            R2, R2, #8
33E7D6:  LDR             R1, [R1]
33E7D8:  MLA.W           R1, R2, R3, R1
33E7DC:  LDR.W           R2, [R1,#0x430]
33E7E0:  BIC.W           R2, R2, #0x2000000
33E7E4:  ORR.W           R0, R2, R0,LSL#25
33E7E8:  STR.W           R0, [R1,#0x430]
33E7EC:  B.W             loc_34002C
33E7F0:  MOV             R0, R4; jumptable 0033E60C case 2596
33E7F2:  MOVS            R1, #1; __int16
33E7F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E7F8:  LDR.W           R0, =(ScriptParams_ptr - 0x33E804)
33E7FC:  LDR.W           R1, =(_ZN10CCullZones22bMilitaryZonesDisabledE_ptr - 0x33E806)
33E800:  ADD             R0, PC; ScriptParams_ptr
33E802:  ADD             R1, PC; _ZN10CCullZones22bMilitaryZonesDisabledE_ptr
33E804:  B.W             loc_33F16A
33E808:  MOV             R0, R4; jumptable 0033E60C case 2597
33E80A:  MOVS            R1, #2; __int16
33E80C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E810:  LDR.W           R0, =(TheCamera_ptr - 0x33E81C)
33E814:  LDR.W           R1, =(ScriptParams_ptr - 0x33E81E)
33E818:  ADD             R0, PC; TheCamera_ptr
33E81A:  ADD             R1, PC; ScriptParams_ptr
33E81C:  LDR             R0, [R0]; TheCamera
33E81E:  LDR             R1, [R1]; ScriptParams
33E820:  LDRB.W          R2, [R0,#(byte_951FFF - 0x951FA8)]
33E824:  LDRD.W          R3, R1, [R1]
33E828:  ADD.W           R4, R2, R2,LSL#5
33E82C:  ADD.W           R0, R0, R4,LSL#4
33E830:  LDRH.W          R2, [R0,#0x17E]
33E834:  STR.W           R1, [R0,#0x204]
33E838:  CMP             R2, #4
33E83A:  STR.W           R3, [R0,#0x1F4]
33E83E:  BNE.W           loc_33FF20
33E842:  MOV.W           R0, #0xFFFFFFFF; int
33E846:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33E84A:  LDR.W           R1, =(TheCamera_ptr - 0x33E858)
33E84E:  MOVS            R3, #1
33E850:  LDR             R2, [R0,#0x14]
33E852:  MOVS            R6, #0
33E854:  ADD             R1, PC; TheCamera_ptr
33E856:  STRD.W          R6, R3, [SP,#0x270+var_270]; float
33E85A:  CMP             R2, #0
33E85C:  MOV.W           R3, #0; float
33E860:  LDR             R5, [R1]; TheCamera
33E862:  ADD.W           R1, R2, #0x30 ; '0'
33E866:  IT EQ
33E868:  ADDEQ           R1, R0, #4; CVector *
33E86A:  MOVS            R2, #0; float
33E86C:  ADD.W           R0, R5, R4,LSL#4
33E870:  ADD.W           R0, R0, #0x170; this
33E874:  BLX             j__ZN4CCam20Process_FollowPed_SAERK7CVectorfffb; CCam::Process_FollowPed_SA(CVector const&,float,float,float,bool)
33E878:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33E87C:  MOV             R0, R4; jumptable 0033E60C case 2501
33E87E:  MOVS            R1, #1; __int16
33E880:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E884:  LDR.W           R0, =(ScriptParams_ptr - 0x33E88C)
33E888:  ADD             R0, PC; ScriptParams_ptr
33E88A:  LDR             R0, [R0]; ScriptParams
33E88C:  LDR             R1, [R0]
33E88E:  CMP             R1, #0
33E890:  BLT.W           loc_33FBEC
33E894:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33E8A0)
33E898:  UXTB            R3, R1
33E89A:  LSRS            R1, R1, #8
33E89C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33E89E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33E8A0:  LDR             R0, [R0]; CPools::ms_pPedPool
33E8A2:  LDR             R2, [R0,#4]
33E8A4:  LDRB            R2, [R2,R1]
33E8A6:  CMP             R2, R3
33E8A8:  BNE.W           loc_33FBEC
33E8AC:  MOVW            R2, #0x7CC
33E8B0:  LDR             R0, [R0]
33E8B2:  MLA.W           R5, R1, R2, R0
33E8B6:  B.W             loc_33FBEE
33E8BA:  MOV             R0, R4; jumptable 0033E60C case 2503
33E8BC:  MOVS            R1, #2; __int16
33E8BE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E8C2:  LDR.W           R0, =(ScriptParams_ptr - 0x33E8CE)
33E8C6:  MOV.W           R2, #0x194
33E8CA:  ADD             R0, PC; ScriptParams_ptr
33E8CC:  LDR             R0, [R0]; ScriptParams
33E8CE:  LDRD.W          R1, R4, [R0]
33E8D2:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x33E8DC)
33E8D6:  MULS            R1, R2
33E8D8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
33E8DA:  LDR             R0, [R0]; CWorld::Players ...
33E8DC:  LDR             R5, [R0,R1]
33E8DE:  LDR             R0, [R5]
33E8E0:  LDR.W           R6, [R5,#0x4E0]
33E8E4:  LDR             R1, [R0,#0x24]
33E8E6:  MOV             R0, R5
33E8E8:  BLX             R1
33E8EA:  LDR             R0, [R5]
33E8EC:  MOVW            R1, #0xFFFF
33E8F0:  STRH            R1, [R5,#0x26]
33E8F2:  MOV             R1, R4
33E8F4:  LDR             R2, [R0,#0x18]
33E8F6:  MOV             R0, R5
33E8F8:  BLX             R2
33E8FA:  STR.W           R6, [R5,#0x4E0]
33E8FE:  B.W             loc_34002C
33E902:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x33E90A); jumptable 0033E60C case 2504
33E906:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
33E908:  LDR             R0, [R0]; MobileSettings::settings ...
33E90A:  LDRB.W          R1, [R0,#(dword_6E06FC - 0x6E03F4)]
33E90E:  B.W             loc_340026
33E912:  MOV             R0, R4; jumptable 0033E60C case 2505
33E914:  MOVS            R1, #2; __int16
33E916:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E91A:  LDR.W           R0, =(ScriptParams_ptr - 0x33E922)
33E91E:  ADD             R0, PC; ScriptParams_ptr
33E920:  LDR             R0, [R0]; ScriptParams
33E922:  LDR             R1, [R0]
33E924:  CMP             R1, #0
33E926:  BLT.W           loc_33FBFA
33E92A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33E936)
33E92E:  UXTB            R3, R1
33E930:  LSRS            R1, R1, #8
33E932:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33E934:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33E936:  LDR             R0, [R0]; CPools::ms_pPedPool
33E938:  LDR             R2, [R0,#4]
33E93A:  LDRB            R2, [R2,R1]
33E93C:  CMP             R2, R3
33E93E:  BNE.W           loc_33FBFA
33E942:  MOVW            R2, #0x7CC
33E946:  LDR             R0, [R0]
33E948:  MLA.W           R4, R1, R2, R0
33E94C:  B.W             loc_33FBFC
33E950:  MOV             R0, R4; jumptable 0033E60C case 2506
33E952:  MOVS            R1, #6; __int16
33E954:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E958:  LDR.W           R0, =(ScriptParams_ptr - 0x33E968)
33E95C:  MOV.W           R12, #0x1A4
33E960:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33E96A)
33E964:  ADD             R0, PC; ScriptParams_ptr
33E966:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33E968:  LDR             R0, [R0]; ScriptParams
33E96A:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33E96C:  LDM.W           R0, {R2,R3,R6}
33E970:  LDRD.W          R5, R4, [R0,#(dword_81A914 - 0x81A908)]
33E974:  LDR             R1, [R1]; CPools::ms_pObjectPool
33E976:  LSRS            R2, R2, #8
33E978:  LDR.W           LR, [R0,#(dword_81A91C - 0x81A908)]
33E97C:  MOV.W           R0, #0x40000
33E980:  AND.W           R0, R0, R3,LSL#18
33E984:  LDR             R1, [R1]
33E986:  MLA.W           R1, R2, R12, R1
33E98A:  LDR             R2, [R1,#0x44]
33E98C:  BIC.W           R2, R2, #0xBC0000
33E990:  ORRS            R0, R2
33E992:  LSLS            R2, R5, #0x17
33E994:  BFI.W           R0, R6, #0x13, #1
33E998:  UXTB16.W        R2, R2
33E99C:  ORRS            R0, R2
33E99E:  MOV.W           R2, #0x100000
33E9A2:  AND.W           R2, R2, R4,LSL#20
33E9A6:  MOVS            R6, #0
33E9A8:  ORRS            R0, R2
33E9AA:  MOV.W           R2, #0x200000
33E9AE:  AND.W           R2, R2, LR,LSL#21
33E9B2:  ORRS            R0, R2
33E9B4:  STR             R0, [R1,#0x44]
33E9B6:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33E9BA:  MOV             R0, R4; jumptable 0033E60C case 2507
33E9BC:  MOVS            R1, #2; __int16
33E9BE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33E9C2:  LDR.W           R0, =(ScriptParams_ptr - 0x33E9CE)
33E9C6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33E9D0)
33E9CA:  ADD             R0, PC; ScriptParams_ptr
33E9CC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33E9CE:  LDR             R0, [R0]; ScriptParams
33E9D0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33E9D2:  LDR             R0, [R0]
33E9D4:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33E9D6:  CMP             R0, #0
33E9D8:  BLT.W           loc_33FC30
33E9DC:  LDR             R2, [R1,#4]
33E9DE:  UXTB            R3, R0
33E9E0:  LSRS            R0, R0, #8
33E9E2:  LDRB            R2, [R2,R0]
33E9E4:  CMP             R2, R3
33E9E6:  BNE.W           loc_33FC30
33E9EA:  MOVW            R2, #0xA2C
33E9EE:  LDR             R3, [R1]
33E9F0:  MLA.W           R0, R0, R2, R3
33E9F4:  B.W             loc_33FC32
33E9F8:  MOV             R0, R4; jumptable 0033E60C case 2508
33E9FA:  MOVS            R1, #2; __int16
33E9FC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EA00:  LDR.W           R0, =(ScriptParams_ptr - 0x33EA08)
33EA04:  ADD             R0, PC; ScriptParams_ptr
33EA06:  LDR             R0, [R0]; ScriptParams
33EA08:  LDR             R1, [R0]
33EA0A:  CMP             R1, #0
33EA0C:  BLT.W           loc_33FC5C
33EA10:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33EA1C)
33EA14:  UXTB            R3, R1
33EA16:  LSRS            R1, R1, #8
33EA18:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33EA1A:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
33EA1C:  LDR             R0, [R0]; CPools::ms_pObjectPool
33EA1E:  LDR             R2, [R0,#4]
33EA20:  LDRB            R2, [R2,R1]
33EA22:  CMP             R2, R3
33EA24:  BNE.W           loc_33FC5C
33EA28:  MOV.W           R2, #0x1A4
33EA2C:  LDR             R0, [R0]
33EA2E:  MLA.W           R0, R1, R2, R0
33EA32:  B.W             loc_33FC5E
33EA36:  MOVS            R6, #0xFF; jumptable 0033E60C default case, cases 2509,2510,2527
33EA38:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33EA3C:  MOV             R0, R4; jumptable 0033E60C case 2511
33EA3E:  MOVS            R1, #2; __int16
33EA40:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EA44:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33EA56)
33EA48:  MOVW            R3, #0xA2C
33EA4C:  LDR.W           R0, =(ScriptParams_ptr - 0x33EA58)
33EA50:  MOVS            R6, #0
33EA52:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33EA54:  ADD             R0, PC; ScriptParams_ptr
33EA56:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33EA58:  LDR             R0, [R0]; ScriptParams
33EA5A:  LDRD.W          R2, R0, [R0]
33EA5E:  CMP             R0, #0
33EA60:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33EA62:  MOV.W           R2, R2,LSR#8
33EA66:  LDR             R1, [R1]
33EA68:  MLA.W           R1, R2, R3, R1
33EA6C:  LDRH.W          R2, [R1,#0x5CC]
33EA70:  IT NE
33EA72:  MOVNE           R0, #1
33EA74:  BIC.W           R2, R2, #0x200
33EA78:  ORR.W           R0, R2, R0,LSL#9
33EA7C:  STRH.W          R0, [R1,#0x5CC]
33EA80:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33EA84:  MOV             R0, R4; jumptable 0033E60C case 2512
33EA86:  MOVS            R1, #1; __int16
33EA88:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EA8C:  LDR.W           R0, =(ScriptParams_ptr - 0x33EA94)
33EA90:  ADD             R0, PC; ScriptParams_ptr
33EA92:  LDR             R0, [R0]; ScriptParams
33EA94:  LDR             R1, [R0]
33EA96:  CMP             R1, #0
33EA98:  BLT.W           loc_33FC94
33EA9C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33EAA8)
33EAA0:  UXTB            R3, R1
33EAA2:  LSRS            R1, R1, #8
33EAA4:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33EAA6:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33EAA8:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33EAAA:  LDR             R2, [R0,#4]
33EAAC:  LDRB            R2, [R2,R1]
33EAAE:  CMP             R2, R3
33EAB0:  BNE.W           loc_33FC94
33EAB4:  MOVW            R2, #0xA2C
33EAB8:  LDR             R0, [R0]
33EABA:  MLA.W           R0, R1, R2, R0
33EABE:  B.W             loc_33FC96
33EAC2:  MOV             R0, R4; jumptable 0033E60C case 2513
33EAC4:  MOVS            R1, #1; __int16
33EAC6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EACA:  LDR.W           R0, =(ScriptParams_ptr - 0x33EAD2)
33EACE:  ADD             R0, PC; ScriptParams_ptr
33EAD0:  LDR             R0, [R0]; ScriptParams
33EAD2:  LDR             R0, [R0]; this
33EAD4:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
33EAD8:  ADDS            R0, #1
33EADA:  MOV.W           R1, #0
33EADE:  MOV.W           R6, #0
33EAE2:  IT NE
33EAE4:  MOVNE           R1, #1
33EAE6:  B.W             loc_33FEFA
33EAEA:  MOV             R0, R4; jumptable 0033E60C case 2514
33EAEC:  MOVS            R1, #1; __int16
33EAEE:  MOVS            R5, #1
33EAF0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EAF4:  LDR.W           R0, =(ScriptParams_ptr - 0x33EAFC)
33EAF8:  ADD             R0, PC; ScriptParams_ptr
33EAFA:  LDR             R0, [R0]; ScriptParams
33EAFC:  LDR             R0, [R0]
33EAFE:  CMP             R0, #0
33EB00:  BEQ.W           loc_33FFBE
33EB04:  LDR.W           R0, =(g_LoadMonitor_ptr - 0x33EB0E)
33EB08:  MOVS            R6, #0
33EB0A:  ADD             R0, PC; g_LoadMonitor_ptr
33EB0C:  LDR             R0, [R0]; g_LoadMonitor
33EB0E:  STRB            R5, [R0,#(byte_959608 - 0x9595EC)]
33EB10:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33EB14:  MOV.W           R0, #0xFFFFFFFF; jumptable 0033E60C case 2516
33EB18:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
33EB1C:  BLX             j__ZN7CWanted29ClearWantedLevelAndGoOnParoleEv; CWanted::ClearWantedLevelAndGoOnParole(void)
33EB20:  B.W             loc_34002C
33EB24:  MOV             R0, R4; jumptable 0033E60C case 2517
33EB26:  MOVS            R1, #5; __int16
33EB28:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EB2C:  LDR.W           R0, =(ScriptParams_ptr - 0x33EB34)
33EB30:  ADD             R0, PC; ScriptParams_ptr
33EB32:  LDR             R0, [R0]; ScriptParams
33EB34:  LDR             R1, [R0]
33EB36:  CMP             R1, #0
33EB38:  BLT.W           loc_33FCAC
33EB3C:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33EB48)
33EB40:  UXTB            R3, R1
33EB42:  LSRS            R1, R1, #8
33EB44:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33EB46:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33EB48:  LDR             R0, [R0]; CPools::ms_pPedPool
33EB4A:  LDR             R2, [R0,#4]
33EB4C:  LDRB            R2, [R2,R1]
33EB4E:  CMP             R2, R3
33EB50:  BNE.W           loc_33FCAC
33EB54:  MOVW            R2, #0x7CC
33EB58:  LDR             R0, [R0]
33EB5A:  MLA.W           R0, R1, R2, R0
33EB5E:  B.W             loc_33FCAE
33EB62:  MOV             R0, R4; jumptable 0033E60C case 2518
33EB64:  MOVS            R1, #5; __int16
33EB66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EB6A:  LDR.W           R0, =(ScriptParams_ptr - 0x33EB72)
33EB6E:  ADD             R0, PC; ScriptParams_ptr
33EB70:  LDR             R0, [R0]; ScriptParams
33EB72:  LDR             R1, [R0]
33EB74:  CMP             R1, #0
33EB76:  BLT.W           loc_33FCDA
33EB7A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33EB86)
33EB7E:  UXTB            R3, R1
33EB80:  LSRS            R1, R1, #8
33EB82:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33EB84:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33EB86:  LDR             R0, [R0]; CPools::ms_pPedPool
33EB88:  LDR             R2, [R0,#4]
33EB8A:  LDRB            R2, [R2,R1]
33EB8C:  CMP             R2, R3
33EB8E:  BNE.W           loc_33FCDA
33EB92:  MOVW            R2, #0x7CC
33EB96:  LDR             R0, [R0]
33EB98:  MLA.W           R0, R1, R2, R0
33EB9C:  B.W             loc_33FCDC
33EBA0:  MOV             R0, R4; jumptable 0033E60C case 2519
33EBA2:  MOVS            R1, #2; __int16
33EBA4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EBA8:  LDR.W           R0, =(ScriptParams_ptr - 0x33EBBA)
33EBAC:  MOV.W           R3, #0x194
33EBB0:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x33EBBC)
33EBB4:  MOVS            R6, #0
33EBB6:  ADD             R0, PC; ScriptParams_ptr
33EBB8:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
33EBBA:  LDR             R0, [R0]; ScriptParams
33EBBC:  LDR             R2, [R2]; CWorld::Players ...
33EBBE:  LDRD.W          R1, R0, [R0]
33EBC2:  CMP             R0, #0
33EBC4:  MUL.W           R1, R3, R1
33EBC8:  LDR             R1, [R2,R1]
33EBCA:  LDR.W           R1, [R1,#0x444]
33EBCE:  IT NE
33EBD0:  MOVNE           R0, #1
33EBD2:  STRB.W          R0, [R1,#0x86]
33EBD6:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33EBDA:  MOV             R0, R4; jumptable 0033E60C case 2520
33EBDC:  MOVS            R1, #1; __int16
33EBDE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EBE2:  B.W             loc_34002C
33EBE6:  MOV.W           R0, #0xFFFFFFFF; jumptable 0033E60C case 2521
33EBEA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33EBEE:  BLX             j__ZN6CWorld12UseDetonatorEP7CEntity; CWorld::UseDetonator(CEntity *)
33EBF2:  B.W             loc_34002C
33EBF6:  MOV             R0, R4; jumptable 0033E60C case 2522
33EBF8:  MOVS            R1, #3; __int16
33EBFA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EBFE:  LDR.W           R0, =(ScriptParams_ptr - 0x33EC12)
33EC02:  VMOV.F32        S6, #0.125
33EC06:  LDR.W           R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x33EC14)
33EC0A:  VMOV.F32        S8, #0.5
33EC0E:  ADD             R0, PC; ScriptParams_ptr
33EC10:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
33EC12:  LDR             R0, [R0]; ScriptParams
33EC14:  LDR             R1, [R1]; CPickups::aPickUps ...
33EC16:  LDRD.W          R2, R3, [R0]
33EC1A:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
33EC1C:  VMOV            S2, R3
33EC20:  STRD.W          R2, R3, [SP,#0x270+var_238]
33EC24:  STR             R0, [SP,#0x270+var_230]
33EC26:  VMOV            S4, R2
33EC2A:  VMOV            S0, R0
33EC2E:  ADD.W           R0, R1, #0x10
33EC32:  MOVS            R1, #0
33EC34:  LDRB            R2, [R0,#0xC]
33EC36:  CMP             R2, #8
33EC38:  BNE             loc_33EC9A
33EC3A:  LDRSH.W         R2, [R0]
33EC3E:  LDRSH.W         R3, [R0,#2]
33EC42:  LDRSH.W         R6, [R0,#4]
33EC46:  VMOV            S12, R2
33EC4A:  VMOV            S10, R3
33EC4E:  VMOV            S14, R6
33EC52:  VCVT.F32.S32    S10, S10
33EC56:  VCVT.F32.S32    S12, S12
33EC5A:  VCVT.F32.S32    S14, S14
33EC5E:  VMUL.F32        S10, S10, S6
33EC62:  VMUL.F32        S12, S12, S6
33EC66:  VMUL.F32        S14, S14, S6
33EC6A:  VSUB.F32        S10, S10, S2
33EC6E:  VSUB.F32        S12, S12, S4
33EC72:  VSUB.F32        S14, S14, S0
33EC76:  VMUL.F32        S10, S10, S10
33EC7A:  VMUL.F32        S12, S12, S12
33EC7E:  VMUL.F32        S14, S14, S14
33EC82:  VADD.F32        S10, S12, S10
33EC86:  VADD.F32        S10, S10, S14
33EC8A:  VSQRT.F32       S10, S10
33EC8E:  VCMPE.F32       S10, S8
33EC92:  VMRS            APSR_nzcv, FPSCR
33EC96:  BLT.W           loc_33FFBA
33EC9A:  ADDS            R1, #1
33EC9C:  ADDS            R0, #0x20 ; ' '
33EC9E:  CMP.W           R1, #0x26C
33ECA2:  BCC             loc_33EC34
33ECA4:  B.W             loc_33FDF8
33ECA8:  MOV             R0, R4; jumptable 0033E60C case 2523
33ECAA:  MOVS            R1, #3; __int16
33ECAC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33ECB0:  LDR.W           R0, =(RsGlobal_ptr - 0x33ECBC)
33ECB4:  VLDR            S2, =640.0
33ECB8:  ADD             R0, PC; RsGlobal_ptr
33ECBA:  LDR             R0, [R0]; RsGlobal
33ECBC:  VLDR            S0, [R0,#4]
33ECC0:  LDR.W           R0, =(ScriptParams_ptr - 0x33ECCC)
33ECC4:  VCVT.F32.S32    S0, S0
33ECC8:  ADD             R0, PC; ScriptParams_ptr
33ECCA:  LDR             R1, [R0]; ScriptParams
33ECCC:  LDRH            R0, [R1,#(dword_81A910 - 0x81A908)]
33ECCE:  VDIV.F32        S0, S0, S2
33ECD2:  VMOV            S2, R0
33ECD6:  VCVT.F32.U32    S2, S2
33ECDA:  LDRB            R0, [R1]; this
33ECDC:  LDRB            R1, [R1,#(dword_81A90C - 0x81A908)]; unsigned __int8
33ECDE:  VMUL.F32        S0, S0, S2
33ECE2:  VCVT.U32.F32    S0, S0
33ECE6:  VMOV            R2, S0; unsigned __int8
33ECEA:  BLX             j__ZN11CMenuSystem14SetColumnWidthEhht; CMenuSystem::SetColumnWidth(uchar,uchar,ushort)
33ECEE:  B.W             loc_34002C
33ECF2:  MOV             R0, R4; jumptable 0033E60C case 2525
33ECF4:  MOVS            R1, #1; __int16
33ECF6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33ECFA:  MOV.W           R0, #0xFFFFFFFF; int
33ECFE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33ED02:  LDR.W           R0, [R0,#0x444]
33ED06:  MOV.W           R2, #0x2D4
33ED0A:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x33ED14)
33ED0E:  LDR             R0, [R0,#0x38]
33ED10:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
33ED12:  LDR             R1, [R1]; CPedGroups::ms_groups ...
33ED14:  MLA.W           R0, R0, R2, R1
33ED18:  ADD.W           R4, R0, #8
33ED1C:  MOV             R0, R4; this
33ED1E:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
33ED22:  MOV             R5, R0
33ED24:  MOV.W           R0, #0xFFFFFFFF; int
33ED28:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33ED2C:  LDR.W           R1, =(ScriptParams_ptr - 0x33ED38)
33ED30:  LDR.W           R0, [R0,#0x444]
33ED34:  ADD             R1, PC; ScriptParams_ptr
33ED36:  LDR             R1, [R1]; ScriptParams
33ED38:  LDRB.W          R0, [R0,#0x43]
33ED3C:  LDR             R1, [R1]
33ED3E:  SUBS            R0, R5, R0
33ED40:  SUBS            R1, R0, R1; int
33ED42:  CMP             R1, #1
33ED44:  BLT.W           loc_34002C
33ED48:  MOV             R0, R4; this
33ED4A:  BLX             j__ZN19CPedGroupMembership16RemoveNFollowersEi; CPedGroupMembership::RemoveNFollowers(int)
33ED4E:  B.W             loc_34002C
33ED52:  MOV             R0, R4; jumptable 0033E60C case 2526
33ED54:  MOVS            R1, #1; __int16
33ED56:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33ED5A:  LDR.W           R0, =(ScriptParams_ptr - 0x33ED62)
33ED5E:  ADD             R0, PC; ScriptParams_ptr
33ED60:  LDR             R0, [R0]; ScriptParams
33ED62:  LDR             R1, [R0]
33ED64:  CMP             R1, #0
33ED66:  BLT.W           loc_33FCF4
33ED6A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33ED76)
33ED6E:  UXTB            R3, R1
33ED70:  LSRS            R1, R1, #8
33ED72:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33ED74:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33ED76:  LDR             R0, [R0]; CPools::ms_pPedPool
33ED78:  LDR             R2, [R0,#4]
33ED7A:  LDRB            R2, [R2,R1]
33ED7C:  CMP             R2, R3
33ED7E:  BNE.W           loc_33FCF4
33ED82:  MOVW            R2, #0x7CC
33ED86:  LDR             R0, [R0]
33ED88:  MLA.W           R5, R1, R2, R0
33ED8C:  B.W             loc_33FCF6
33ED90:  MOV             R0, R4; jumptable 0033E60C case 2528
33ED92:  MOVS            R1, #5; __int16
33ED94:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33ED98:  LDR.W           R0, =(ScriptParams_ptr - 0x33EDA8)
33ED9C:  ADD.W           R12, SP, #0x270+var_238
33EDA0:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33EDAA)
33EDA4:  ADD             R0, PC; ScriptParams_ptr
33EDA6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33EDA8:  LDR             R6, [R0]; ScriptParams
33EDAA:  LDR             R3, [R1]; CPools::ms_pVehiclePool ...
33EDAC:  LDM.W           R6, {R0-R2}
33EDB0:  LDR             R5, [R6,#(dword_81A918 - 0x81A908)]
33EDB2:  LDR             R3, [R3]; CPools::ms_pVehiclePool
33EDB4:  VLDR            S0, [R6,#0xC]
33EDB8:  MOVS            R6, #0
33EDBA:  CMP             R5, #0
33EDBC:  STM.W           R12, {R0-R2}
33EDC0:  BLT.W           loc_33FD30
33EDC4:  LDR             R4, [R3,#4]
33EDC6:  UXTB.W          R12, R5
33EDCA:  LSRS            R5, R5, #8
33EDCC:  LDRB            R4, [R4,R5]
33EDCE:  CMP             R4, R12
33EDD0:  BNE.W           loc_33FD30
33EDD4:  MOVW            R4, #0xA2C
33EDD8:  LDR             R3, [R3]
33EDDA:  MLA.W           R5, R5, R4, R3
33EDDE:  B.W             loc_33FD32
33EDE2:  MOV             R0, R4; jumptable 0033E60C case 2529
33EDE4:  MOVS            R1, #1; __int16
33EDE6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EDEA:  LDR.W           R0, =(ScriptParams_ptr - 0x33EDF6)
33EDEE:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33EDF8)
33EDF2:  ADD             R0, PC; ScriptParams_ptr
33EDF4:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
33EDF6:  LDR             R0, [R0]; ScriptParams
33EDF8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
33EDFA:  LDR             R2, [R0]
33EDFC:  LDR.W           R1, [R1,R2,LSL#2]
33EE00:  LDR.W           R2, =(mod_HandlingManager_ptr - 0x33EE0C)
33EE04:  LDRB.W          R1, [R1,#0x62]
33EE08:  ADD             R2, PC; mod_HandlingManager_ptr
33EE0A:  LDR             R2, [R2]; mod_HandlingManager
33EE0C:  RSB.W           R1, R1, R1,LSL#3
33EE10:  ADD.W           R1, R2, R1,LSL#5
33EE14:  LDR.W           R1, [R1,#0xEC]
33EE18:  B               loc_33F090
33EE1A:  MOV             R0, R4; jumptable 0033E60C case 2530
33EE1C:  MOVS            R1, #0xC; __int16
33EE1E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EE22:  LDR.W           R0, =(ScriptParams_ptr - 0x33EE34)
33EE26:  MOVS            R3, #1
33EE28:  VLDR            S4, =-100.0
33EE2C:  MOV.W           R11, #0
33EE30:  ADD             R0, PC; ScriptParams_ptr
33EE32:  VLDR            S2, =0.015
33EE36:  LDR             R2, [R0]; ScriptParams
33EE38:  LDR             R0, [R2,#(dword_81A914 - 0x81A908)]
33EE3A:  STR             R0, [SP,#0x270+var_244]
33EE3C:  LDR.W           R12, [R2,#(dword_81A918 - 0x81A908)]
33EE40:  LDRD.W          R0, R1, [R2]; float
33EE44:  VLDR            S0, [R2,#8]
33EE48:  LDRB.W          R10, [R2,#(dword_81A928 - 0x81A908)]
33EE4C:  VCMPE.F32       S0, S4
33EE50:  LDRH            R6, [R2,#(dword_81A930 - 0x81A908)]
33EE52:  VMRS            APSR_nzcv, FPSCR
33EE56:  VADD.F32        S2, S0, S2
33EE5A:  LDRSH.W         LR, [R2,#(dword_81A91C - 0x81A908)]
33EE5E:  LDRSH.W         R8, [R2,#(dword_81A920 - 0x81A908)]
33EE62:  LDRB.W          R9, [R2,#(dword_81A924 - 0x81A908)]
33EE66:  LDRB.W          R5, [R2,#(dword_81A92C - 0x81A908)]
33EE6A:  LDRH            R2, [R2,#(word_81A934 - 0x81A908)]
33EE6C:  STR             R3, [SP,#0x270+var_24C]; unsigned __int8
33EE6E:  STRD.W          R2, R11, [SP,#0x270+var_254]; unsigned __int16
33EE72:  STRD.W          R5, R6, [SP,#0x270+var_25C]; unsigned __int8
33EE76:  STRD.W          R9, R10, [SP,#0x270+var_264]; __int16
33EE7A:  IT GT
33EE7C:  VMOVGT.F32      S0, S2
33EE80:  STR.W           R8, [SP,#0x270+var_268]; __int16
33EE84:  VMOV            R2, S0; float
33EE88:  STRD.W          R12, LR, [SP,#0x270+var_270]; float
33EE8C:  LDR             R3, [SP,#0x270+var_244]; float
33EE8E:  BLX             j__ZN17CTheCarGenerators18CreateCarGeneratorEffffisshhhtthh; CTheCarGenerators::CreateCarGenerator(float,float,float,float,int,short,short,uchar,uchar,uchar,ushort,ushort,uchar,uchar)
33EE92:  ADD             R1, SP, #0x270+var_238; char *
33EE94:  MOV             R5, R0
33EE96:  MOV             R0, R4; this
33EE98:  MOVS            R2, #9; unsigned __int8
33EE9A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33EE9E:  LDRB.W          R0, [SP,#0x270+var_238]
33EEA2:  CMP             R0, #0x5F ; '_'
33EEA4:  IT NE
33EEA6:  CMPNE           R0, #0
33EEA8:  BNE             loc_33EEB0
33EEAA:  MOVS            R0, #0x20 ; ' '
33EEAC:  STRB.W          R0, [SP,#0x270+var_238]
33EEB0:  LDRB.W          R0, [SP,#0x270+var_238+1]
33EEB4:  CMP             R0, #0
33EEB6:  IT NE
33EEB8:  CMPNE           R0, #0x5F ; '_'
33EEBA:  BNE             loc_33EEC2
33EEBC:  MOVS            R0, #0x20 ; ' '
33EEBE:  STRB.W          R0, [SP,#0x270+var_238+1]
33EEC2:  LDRB.W          R0, [SP,#0x270+var_238+2]
33EEC6:  CMP             R0, #0x5F ; '_'
33EEC8:  IT NE
33EECA:  CMPNE           R0, #0
33EECC:  BNE             loc_33EED4
33EECE:  MOVS            R0, #0x20 ; ' '
33EED0:  STRB.W          R0, [SP,#0x270+var_238+2]
33EED4:  LDRB.W          R0, [SP,#0x270+var_238+3]
33EED8:  CMP             R0, #0x5F ; '_'
33EEDA:  IT NE
33EEDC:  CMPNE           R0, #0
33EEDE:  BNE             loc_33EEE6
33EEE0:  MOVS            R0, #0x20 ; ' '
33EEE2:  STRB.W          R0, [SP,#0x270+var_238+3]
33EEE6:  LDRB.W          R0, [SP,#0x270+var_234]
33EEEA:  CMP             R0, #0x5F ; '_'
33EEEC:  IT NE
33EEEE:  CMPNE           R0, #0
33EEF0:  BNE             loc_33EEF8
33EEF2:  MOVS            R0, #0x20 ; ' '
33EEF4:  STRB.W          R0, [SP,#0x270+var_234]
33EEF8:  LDRB.W          R0, [SP,#0x270+var_234+1]
33EEFC:  CMP             R0, #0x5F ; '_'
33EEFE:  IT NE
33EF00:  CMPNE           R0, #0
33EF02:  BNE             loc_33EF0A
33EF04:  MOVS            R0, #0x20 ; ' '
33EF06:  STRB.W          R0, [SP,#0x270+var_234+1]
33EF0A:  LDRB.W          R0, [SP,#0x270+var_234+2]
33EF0E:  CMP             R0, #0x5F ; '_'
33EF10:  IT NE
33EF12:  CMPNE           R0, #0
33EF14:  BNE             loc_33EF1C
33EF16:  MOVS            R0, #0x20 ; ' '
33EF18:  STRB.W          R0, [SP,#0x270+var_234+2]
33EF1C:  LDRB.W          R0, [SP,#0x270+var_234+3]
33EF20:  CMP             R0, #0x5F ; '_'
33EF22:  IT NE
33EF24:  CMPNE           R0, #0
33EF26:  BNE             loc_33EF2E
33EF28:  MOVS            R0, #0x20 ; ' '
33EF2A:  STRB.W          R0, [SP,#0x270+var_234+3]
33EF2E:  LDR.W           R0, =(_ZN17CTheCarGenerators21m_SpecialPlateHandlerE_ptr - 0x33EF3C)
33EF32:  ADD             R2, SP, #0x270+var_238; char *
33EF34:  MOVS            R6, #0
33EF36:  MOV             R1, R5; int
33EF38:  ADD             R0, PC; _ZN17CTheCarGenerators21m_SpecialPlateHandlerE_ptr
33EF3A:  STRB.W          R6, [SP,#0x270+var_230]
33EF3E:  LDR             R0, [R0]; this
33EF40:  BLX             j__ZN20CSpecialPlateHandler3AddEiPc; CSpecialPlateHandler::Add(int,char *)
33EF44:  LDR.W           R0, =(ScriptParams_ptr - 0x33EF4C)
33EF48:  ADD             R0, PC; ScriptParams_ptr
33EF4A:  LDR             R0, [R0]; ScriptParams
33EF4C:  STR             R5, [R0]
33EF4E:  B.W             loc_33FCD0
33EF52:  MOV             R0, R4; jumptable 0033E60C case 2531
33EF54:  MOVS            R1, #1; __int16
33EF56:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EF5A:  LDR.W           R0, =(ScriptParams_ptr - 0x33EF6A)
33EF5E:  MOVW            R2, #0xA2C
33EF62:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33EF6C)
33EF66:  ADD             R0, PC; ScriptParams_ptr
33EF68:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33EF6A:  LDR             R0, [R0]; ScriptParams
33EF6C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33EF6E:  LDR             R0, [R0]
33EF70:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33EF72:  LSRS            R0, R0, #8
33EF74:  LDR             R1, [R1]
33EF76:  MLA.W           R0, R0, R2, R1
33EF7A:  LDRH.W          R0, [R0,#0x5CC]
33EF7E:  UBFX.W          R1, R0, #6, #1
33EF82:  B.W             loc_340026
33EF86:  MOV             R0, R4; jumptable 0033E60C case 2532
33EF88:  MOVS            R1, #1; __int16
33EF8A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EF8E:  LDR.W           R0, =(ScriptParams_ptr - 0x33EF9C)
33EF92:  MOVS            R6, #0
33EF94:  LDR.W           R1, =(_ZN7CObject31bAircraftCarrierSamSiteDisabledE_ptr - 0x33EF9E)
33EF98:  ADD             R0, PC; ScriptParams_ptr
33EF9A:  ADD             R1, PC; _ZN7CObject31bAircraftCarrierSamSiteDisabledE_ptr
33EF9C:  LDR             R0, [R0]; ScriptParams
33EF9E:  LDR             R1, [R1]; CObject::bAircraftCarrierSamSiteDisabled ...
33EFA0:  LDR             R0, [R0]
33EFA2:  CMP             R0, #0
33EFA4:  MOV.W           R0, #0
33EFA8:  IT EQ
33EFAA:  MOVEQ           R0, #1
33EFAC:  STRB            R0, [R1]; CObject::bAircraftCarrierSamSiteDisabled
33EFAE:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33EFB2:  MOV             R0, R4; jumptable 0033E60C case 2533
33EFB4:  MOVS            R1, #7; __int16
33EFB6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33EFBA:  LDR.W           R0, =(ScriptParams_ptr - 0x33EFC8)
33EFBE:  MOVS            R6, #0
33EFC0:  VLDR            S6, =255.0
33EFC4:  ADD             R0, PC; ScriptParams_ptr
33EFC6:  LDR             R0, [R0]; ScriptParams
33EFC8:  VLDR            S0, [R0,#0x14]
33EFCC:  VCVT.F32.S32    S0, S0
33EFD0:  VLDR            S2, [R0,#0x10]
33EFD4:  VLDR            S4, [R0,#0xC]
33EFD8:  VCVT.F32.S32    S2, S2
33EFDC:  VCVT.F32.S32    S4, S4
33EFE0:  LDM.W           R0, {R1-R3}
33EFE4:  VDIV.F32        S0, S0, S6
33EFE8:  VDIV.F32        S2, S2, S6
33EFEC:  VDIV.F32        S4, S4, S6
33EFF0:  VLDR            S6, [R0,#0x18]
33EFF4:  ADD             R0, SP, #0x270+var_238
33EFF6:  STM             R0!, {R1-R3}
33EFF8:  MOVS            R0, #1
33EFFA:  STRD.W          R6, R0, [SP,#0x270+var_254]
33EFFE:  MOVS            R0, #0
33F000:  STR             R6, [SP,#0x270+var_24C]
33F002:  VSTR            S6, [SP,#0x270+var_264]
33F006:  STRD.W          R6, R6, [SP,#0x270+var_270]
33F00A:  STR             R6, [SP,#0x270+var_268]
33F00C:  VSTR            S0, [SP,#0x270+var_258]
33F010:  VSTR            S2, [SP,#0x270+var_25C]
33F014:  VSTR            S4, [SP,#0x270+var_260]
33F018:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
33F01C:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F020:  MOV             R0, R4; jumptable 0033E60C case 2534
33F022:  MOVS            R1, #1; __int16
33F024:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F028:  LDR.W           R0, =(ScriptParams_ptr - 0x33F030)
33F02C:  ADD             R0, PC; ScriptParams_ptr
33F02E:  LDR             R0, [R0]; ScriptParams
33F030:  LDR             R0, [R0]
33F032:  CMP             R0, #0
33F034:  IT NE
33F036:  MOVNE           R0, #(stderr+1); this
33F038:  BLX             j__ZN17CEntryExitManager20EnableBurglaryHousesEb; CEntryExitManager::EnableBurglaryHouses(bool)
33F03C:  B.W             loc_34002C
33F040:  MOV             R0, R4; jumptable 0033E60C case 2535
33F042:  MOVS            R1, #1; __int16
33F044:  MOVS            R5, #1
33F046:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F04A:  LDR.W           R0, =(ScriptParams_ptr - 0x33F052)
33F04E:  ADD             R0, PC; ScriptParams_ptr
33F050:  LDR             R0, [R0]; ScriptParams
33F052:  LDR             R0, [R0]; this
33F054:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
33F058:  LDRH.W          R0, [R0,#0x110]
33F05C:  BIC.W           R1, R5, R0,LSR#5
33F060:  B.W             loc_340026
33F064:  MOV             R0, R4; jumptable 0033E60C case 2536
33F066:  MOVS            R1, #1; __int16
33F068:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F06C:  LDR.W           R0, =(ScriptParams_ptr - 0x33F07C)
33F070:  MOVW            R3, #0x7CC
33F074:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33F07E)
33F078:  ADD             R0, PC; ScriptParams_ptr
33F07A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33F07C:  LDR             R0, [R0]; ScriptParams
33F07E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33F080:  LDR             R2, [R0]
33F082:  LDR             R1, [R1]; CPools::ms_pPedPool
33F084:  LSRS            R2, R2, #8
33F086:  LDR             R1, [R1]
33F088:  MLA.W           R1, R2, R3, R1
33F08C:  LDRB.W          R1, [R1,#0x33]
33F090:  STR             R1, [R0]
33F092:  B               loc_33F774
33F094:  DCFS 640.0
33F098:  DCFS -100.0
33F09C:  DCFS 0.015
33F0A0:  DCFS 255.0
33F0A4:  DCD __stack_chk_guard_ptr - 0x33E5FC
33F0A8:  MOV             R0, R4; jumptable 0033E60C case 2537
33F0AA:  MOVS            R1, #1; __int16
33F0AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F0B0:  LDR.W           R0, =(ScriptParams_ptr - 0x33F0B8)
33F0B4:  ADD             R0, PC; ScriptParams_ptr
33F0B6:  LDR             R0, [R0]; ScriptParams
33F0B8:  LDR             R1, [R0]
33F0BA:  CMP             R1, #0
33F0BC:  BLT.W           loc_33FD42
33F0C0:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F0CC)
33F0C4:  UXTB            R3, R1
33F0C6:  LSRS            R1, R1, #8
33F0C8:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33F0CA:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33F0CC:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33F0CE:  LDR             R2, [R0,#4]
33F0D0:  LDRB            R2, [R2,R1]
33F0D2:  CMP             R2, R3
33F0D4:  BNE.W           loc_33FD42
33F0D8:  MOVW            R2, #0xA2C
33F0DC:  LDR             R0, [R0]
33F0DE:  MLA.W           R0, R1, R2, R0
33F0E2:  B.W             loc_33FD44
33F0E6:  MOV             R0, R4; jumptable 0033E60C case 2539
33F0E8:  MOVS            R1, #2; __int16
33F0EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F0EE:  LDR.W           R0, =(ScriptParams_ptr - 0x33F0FE)
33F0F2:  MOV.W           R3, #0x194
33F0F6:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x33F100)
33F0FA:  ADD             R0, PC; ScriptParams_ptr
33F0FC:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
33F0FE:  LDR             R0, [R0]; ScriptParams
33F100:  LDR             R2, [R2]; CWorld::Players ...
33F102:  LDRD.W          R1, R0, [R0]
33F106:  CMP             R0, #0
33F108:  MUL.W           R1, R3, R1; unsigned int
33F10C:  LDR             R4, [R2,R1]
33F10E:  BEQ.W           loc_33FFCA
33F112:  LDR.W           R0, [R4,#0x508]
33F116:  CMP             R0, #0
33F118:  BEQ.W           loc_34002C
33F11C:  LDR.W           R6, [R4,#0x440]
33F120:  LDR             R0, [R6,#0x10]
33F122:  CMP             R0, #0
33F124:  BNE.W           loc_34002C
33F128:  MOVS            R0, #(byte_9+3); this
33F12A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33F12E:  MOV             R5, R0
33F130:  BLX             j__ZN22CTaskComplexUseGogglesC2Ev; CTaskComplexUseGoggles::CTaskComplexUseGoggles(void)
33F134:  ADDS            R0, R6, #4; this
33F136:  MOV             R1, R5; CTask *
33F138:  MOVS            R2, #3; int
33F13A:  MOVS            R3, #0; bool
33F13C:  MOVS            R6, #0
33F13E:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
33F142:  LDR.W           R0, [R4,#0x444]
33F146:  CMP             R0, #0
33F148:  ITTT NE
33F14A:  MOVNE           R1, #1
33F14C:  STRBNE.W        R1, [R0,#0x85]
33F150:  MOVNE           R6, #0
33F152:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F156:  MOV             R0, R4; jumptable 0033E60C case 2540
33F158:  MOVS            R1, #1; __int16
33F15A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F15E:  LDR.W           R0, =(ScriptParams_ptr - 0x33F16A)
33F162:  LDR.W           R1, =(gAllowScriptedFixedCameraCollision_ptr - 0x33F16C)
33F166:  ADD             R0, PC; ScriptParams_ptr
33F168:  ADD             R1, PC; gAllowScriptedFixedCameraCollision_ptr
33F16A:  LDR             R0, [R0]; ScriptParams
33F16C:  LDR             R1, [R1]; CCullZones::bMilitaryZonesDisabled ...
33F16E:  LDR             R0, [R0]
33F170:  CMP             R0, #0
33F172:  IT NE
33F174:  MOVNE           R0, #1
33F176:  B               loc_33F1D0
33F178:  MOV             R0, R4; jumptable 0033E60C case 2541
33F17A:  MOVS            R1, #2; __int16
33F17C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F180:  LDR.W           R0, =(ScriptParams_ptr - 0x33F18C)
33F184:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33F18E)
33F188:  ADD             R0, PC; ScriptParams_ptr
33F18A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33F18C:  LDR             R0, [R0]; ScriptParams
33F18E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33F190:  LDR             R0, [R0]
33F192:  LDR             R1, [R1]; CPools::ms_pPedPool
33F194:  CMP             R0, #0
33F196:  BLT.W           loc_33FD4C
33F19A:  LDR             R2, [R1,#4]
33F19C:  UXTB            R3, R0
33F19E:  LSRS            R0, R0, #8
33F1A0:  LDRB            R2, [R2,R0]
33F1A2:  CMP             R2, R3
33F1A4:  BNE.W           loc_33FD4C
33F1A8:  MOVW            R2, #0x7CC
33F1AC:  LDR             R3, [R1]
33F1AE:  MLA.W           R0, R0, R2, R3
33F1B2:  B.W             loc_33FD4E
33F1B6:  MOV             R0, R4; jumptable 0033E60C case 2542
33F1B8:  MOVS            R1, #1; __int16
33F1BA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F1BE:  LDR.W           R0, =(ScriptParams_ptr - 0x33F1CA)
33F1C2:  LDR.W           R1, =(_ZN4CHud31bScriptForceDisplayWithCountersE_ptr - 0x33F1CC)
33F1C6:  ADD             R0, PC; ScriptParams_ptr
33F1C8:  ADD             R1, PC; _ZN4CHud31bScriptForceDisplayWithCountersE_ptr
33F1CA:  LDR             R0, [R0]; ScriptParams
33F1CC:  LDR             R1, [R1]; CHud::bScriptForceDisplayWithCounters ...
33F1CE:  LDR             R0, [R0]
33F1D0:  STRB            R0, [R1]; CHud::bScriptForceDisplayWithCounters
33F1D2:  B.W             loc_34002C
33F1D6:  MOV             R0, R4; jumptable 0033E60C case 2543
33F1D8:  MOVS            R1, #4; __int16
33F1DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F1DE:  LDR.W           R0, =(ScriptParams_ptr - 0x33F1EC)
33F1E2:  MOVS            R6, #0
33F1E4:  LDR.W           R1, =(TheCamera_ptr - 0x33F1EE)
33F1E8:  ADD             R0, PC; ScriptParams_ptr
33F1EA:  ADD             R1, PC; TheCamera_ptr
33F1EC:  LDR             R0, [R0]; ScriptParams
33F1EE:  LDR             R1, [R1]; TheCamera
33F1F0:  VLD1.32         {D16-D17}, [R0]
33F1F4:  ADDW            R0, R1, #0xCBC
33F1F8:  VST1.32         {D16-D17}, [R0]
33F1FC:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F200:  LDR.W           R0, =(TheCamera_ptr - 0x33F212); jumptable 0033E60C case 2544
33F204:  MOV.W           R1, #0x3F800000
33F208:  MOV.W           R2, #0xFFFFFFFF
33F20C:  MOVS            R6, #0
33F20E:  ADD             R0, PC; TheCamera_ptr
33F210:  LDR             R0, [R0]; TheCamera
33F212:  STR.W           R2, [R0,#(dword_952C64 - 0x951FA8)]
33F216:  STR.W           R1, [R0,#(dword_952C68 - 0x951FA8)]
33F21A:  STR.W           R1, [R0,#(dword_952C6C - 0x951FA8)]
33F21E:  STR.W           R6, [R0,#(dword_952C70 - 0x951FA8)]
33F222:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F226:  MOV             R0, R4; jumptable 0033E60C case 2545
33F228:  MOVS            R1, #2; __int16
33F22A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F22E:  LDR.W           R0, =(ScriptParams_ptr - 0x33F236)
33F232:  ADD             R0, PC; ScriptParams_ptr
33F234:  LDR             R0, [R0]; ScriptParams
33F236:  LDR             R1, [R0]
33F238:  CMP             R1, #0
33F23A:  BLT.W           loc_33FD78
33F23E:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33F24A)
33F242:  UXTB            R3, R1
33F244:  LSRS            R1, R1, #8
33F246:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33F248:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33F24A:  LDR             R0, [R0]; CPools::ms_pPedPool
33F24C:  LDR             R2, [R0,#4]
33F24E:  LDRB            R2, [R2,R1]
33F250:  CMP             R2, R3
33F252:  BNE.W           loc_33FD78
33F256:  MOVW            R2, #0x7CC
33F25A:  LDR             R0, [R0]
33F25C:  MLA.W           R2, R1, R2, R0
33F260:  B.W             loc_33FD7A
33F264:  MOV             R0, R4; jumptable 0033E60C case 2546
33F266:  MOVS            R1, #1; __int16
33F268:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F26C:  LDR.W           R0, =(ScriptParams_ptr - 0x33F276)
33F270:  MOVS            R1, #7; int
33F272:  ADD             R0, PC; ScriptParams_ptr
33F274:  LDR             R0, [R0]; ScriptParams
33F276:  LDR             R0, [R0]; this
33F278:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33F27C:  MOV             R5, R0
33F27E:  CMP             R5, #0x13
33F280:  BHI.W           loc_33FDF8
33F284:  LDR.W           R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33F28C)
33F288:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
33F28A:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
33F28C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
33F28E:  CBNZ            R0, loc_33F2A6
33F290:  MOVW            R0, #0xF1C0; unsigned int
33F294:  BLX             _Znwj; operator new(uint)
33F298:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
33F29C:  LDR.W           R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33F2A4)
33F2A0:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
33F2A2:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
33F2A4:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
33F2A6:  LDR.W           R0, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x33F2AE)
33F2AA:  ADD             R0, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
33F2AC:  LDR             R0, [R0]; CDecisionMakerTypes::m_bIsActive ...
33F2AE:  LDRB            R1, [R0,R5]
33F2B0:  B.W             loc_340026
33F2B4:  MOV             R0, R4; jumptable 0033E60C case 2548
33F2B6:  MOVS            R1, #2; __int16
33F2B8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F2BC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33F2CC)
33F2C0:  MOVW            R3, #0x7CC
33F2C4:  LDR.W           R0, =(ScriptParams_ptr - 0x33F2CE)
33F2C8:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33F2CA:  ADD             R0, PC; ScriptParams_ptr
33F2CC:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33F2CE:  LDR             R0, [R0]; ScriptParams
33F2D0:  LDRD.W          R2, R0, [R0]
33F2D4:  CMP             R0, #0
33F2D6:  LDR             R1, [R1]; CPools::ms_pPedPool
33F2D8:  MOV.W           R2, R2,LSR#8
33F2DC:  LDR             R1, [R1]
33F2DE:  MLA.W           R1, R2, R3, R1
33F2E2:  LDR.W           R2, [R1,#0x490]
33F2E6:  IT NE
33F2E8:  MOVNE           R0, #1
33F2EA:  BIC.W           R2, R2, #0x8000
33F2EE:  ORR.W           R0, R2, R0,LSL#15
33F2F2:  B.W             loc_33FBE6
33F2F6:  MOV             R0, R4; jumptable 0033E60C case 2549
33F2F8:  MOVS            R1, #1; __int16
33F2FA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F2FE:  LDR.W           R0, =(ScriptParams_ptr - 0x33F306)
33F302:  ADD             R0, PC; ScriptParams_ptr
33F304:  LDR             R0, [R0]; ScriptParams
33F306:  LDR             R0, [R0]; this
33F308:  CMP             R0, #0
33F30A:  BEQ.W           loc_33FFD2
33F30E:  BLX             j__ZN23CAEPedSpeechAudioEntity19DisableAllPedSpeechEv; CAEPedSpeechAudioEntity::DisableAllPedSpeech(void)
33F312:  B.W             loc_34002C
33F316:  MOV             R0, R4; jumptable 0033E60C case 2550
33F318:  MOVS            R1, #2; __int16
33F31A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F31E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33F32E)
33F322:  MOVW            R3, #0x7CC
33F326:  LDR.W           R0, =(ScriptParams_ptr - 0x33F330)
33F32A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33F32C:  ADD             R0, PC; ScriptParams_ptr
33F32E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33F330:  LDR             R0, [R0]; ScriptParams
33F332:  LDRD.W          R2, R0, [R0]
33F336:  CMP             R0, #0
33F338:  LDR             R1, [R1]; CPools::ms_pPedPool
33F33A:  MOV.W           R2, R2,LSR#8
33F33E:  LDR             R1, [R1]
33F340:  MLA.W           R1, R2, R3, R1
33F344:  LDR.W           R2, [R1,#0x490]
33F348:  IT NE
33F34A:  MOVNE           R0, #1
33F34C:  BIC.W           R2, R2, #0x20000
33F350:  ORR.W           R0, R2, R0,LSL#17
33F354:  B.W             loc_33FBE6
33F358:  MOV             R0, R4; jumptable 0033E60C case 2551
33F35A:  MOVS            R1, #2; __int16
33F35C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F360:  LDR.W           R0, =(ScriptParams_ptr - 0x33F368)
33F364:  ADD             R0, PC; ScriptParams_ptr
33F366:  LDR             R0, [R0]; ScriptParams
33F368:  LDR             R1, [R0]
33F36A:  CMP             R1, #0
33F36C:  BLT.W           loc_33FD92
33F370:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F37C)
33F374:  UXTB            R3, R1
33F376:  LSRS            R1, R1, #8; bool
33F378:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33F37A:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33F37C:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33F37E:  LDR             R2, [R0,#4]
33F380:  LDRB            R2, [R2,R1]
33F382:  CMP             R2, R3
33F384:  BNE.W           loc_33FD92
33F388:  MOVW            R2, #0xA2C
33F38C:  LDR             R0, [R0]
33F38E:  MLA.W           R2, R1, R2, R0
33F392:  B.W             loc_33FD94
33F396:  MOVS            R0, #(stderr+1); jumptable 0033E60C case 2552
33F398:  BLX             j__ZN10CGameLogic33DoWeaponStuffAtStartOf2PlayerGameEb; CGameLogic::DoWeaponStuffAtStartOf2PlayerGame(bool)
33F39C:  B.W             loc_34002C
33F3A0:  MOVS            R0, #0; jumptable 0033E60C case 2554
33F3A2:  MOVS            R6, #0
33F3A4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
33F3A8:  LDRB.W          R1, [R0,#0x113]
33F3AC:  CMP             R1, #1
33F3AE:  IT NE
33F3B0:  MOVNE           R1, #0
33F3B2:  B.W             loc_33FEFA
33F3B6:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x33F3C2); jumptable 0033E60C case 2555
33F3BA:  LDR.W           R1, =(ScriptParams_ptr - 0x33F3C4)
33F3BE:  ADD             R0, PC; FrontEndMenuManager_ptr
33F3C0:  ADD             R1, PC; ScriptParams_ptr
33F3C2:  LDR             R0, [R0]; FrontEndMenuManager
33F3C4:  LDR             R1, [R1]; ScriptParams
33F3C6:  LDRSB.W         R0, [R0,#(byte_98F140 - 0x98F0F8)]
33F3CA:  CMP             R0, #4
33F3CC:  IT GT
33F3CE:  MOVGT           R0, #0
33F3D0:  STR             R0, [R1]
33F3D2:  B               loc_33F774
33F3D4:  MOV             R0, R4; jumptable 0033E60C case 2556
33F3D6:  MOVS            R1, #1; __int16
33F3D8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F3DC:  LDR.W           R0, =(ScriptParams_ptr - 0x33F3E4)
33F3E0:  ADD             R0, PC; ScriptParams_ptr
33F3E2:  LDR             R0, [R0]; ScriptParams
33F3E4:  LDR             R1, [R0]
33F3E6:  CMP             R1, #0
33F3E8:  BLT.W           loc_33FDAC
33F3EC:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33F3F8)
33F3F0:  UXTB            R3, R1
33F3F2:  LSRS            R1, R1, #8
33F3F4:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33F3F6:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
33F3F8:  LDR             R0, [R0]; CPools::ms_pObjectPool
33F3FA:  LDR             R2, [R0,#4]
33F3FC:  LDRB            R2, [R2,R1]
33F3FE:  CMP             R2, R3
33F400:  BNE.W           loc_33FDAC
33F404:  MOV.W           R2, #0x1A4
33F408:  LDR             R0, [R0]
33F40A:  MLA.W           R0, R1, R2, R0
33F40E:  B.W             loc_33FDAE
33F412:  ADD             R5, SP, #0x270+var_238; jumptable 0033E60C case 2557
33F414:  MOV             R0, R4; this
33F416:  MOVS            R2, #8; unsigned __int8
33F418:  MOV             R1, R5; char *
33F41A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33F41E:  LDR.W           R0, =(TheText_ptr - 0x33F428)
33F422:  MOV             R1, R5; CKeyGen *
33F424:  ADD             R0, PC; TheText_ptr
33F426:  LDR             R0, [R0]; TheText ; this
33F428:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
33F42C:  MOVS            R1, #(stderr+1); unsigned __int16 *
33F42E:  MOVS            R2, #1; unsigned __int8
33F430:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
33F434:  VMOV            S0, R0
33F438:  LDR.W           R0, =(ScriptParams_ptr - 0x33F444)
33F43C:  VCVT.S32.F32    S0, S0
33F440:  ADD             R0, PC; ScriptParams_ptr
33F442:  LDR             R0, [R0]; ScriptParams
33F444:  VSTR            S0, [R0]
33F448:  B               loc_33F774
33F44A:  MOV             R0, R4; jumptable 0033E60C case 2558
33F44C:  MOVS            R1, #1; __int16
33F44E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F452:  LDR.W           R0, =(ScriptParams_ptr - 0x33F462)
33F456:  MOVW            R2, #0xA2C
33F45A:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F464)
33F45E:  ADD             R0, PC; ScriptParams_ptr
33F460:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33F462:  LDR             R0, [R0]; ScriptParams
33F464:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33F466:  LDR             R0, [R0]
33F468:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33F46A:  LSRS            R0, R0, #8
33F46C:  LDR             R1, [R1]
33F46E:  MLA.W           R2, R0, R2, R1
33F472:  LDRB.W          R3, [R2,#0x392]
33F476:  LSLS            R3, R3, #0x1E
33F478:  BPL.W           loc_34002C
33F47C:  LDR.W           R2, [R2,#0x5A0]
33F480:  MOVS            R6, #0
33F482:  CMP             R2, #0
33F484:  BNE.W           loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F488:  MOVW            R2, #0xA2C
33F48C:  MLA.W           R0, R0, R2, R1
33F490:  STRH.W          R6, [R0,#0x880]
33F494:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F498:  MOV             R0, R4; jumptable 0033E60C case 2559
33F49A:  MOVS            R1, #3; __int16
33F49C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F4A0:  LDR.W           R0, =(ScriptParams_ptr - 0x33F4AA)
33F4A4:  ADD             R3, SP, #0x270+var_238
33F4A6:  ADD             R0, PC; ScriptParams_ptr
33F4A8:  LDR             R2, [R0]; ScriptParams
33F4AA:  LDM             R2, {R0-R2}
33F4AC:  STM             R3!, {R0-R2}
33F4AE:  BLX             j__ZN8CRestart35SetRespawnPointForDurationOfMissionE7CVector; CRestart::SetRespawnPointForDurationOfMission(CVector)
33F4B2:  B.W             loc_34002C
33F4B6:  MOV             R0, R4; jumptable 0033E60C case 2561
33F4B8:  MOVS            R1, #1; __int16
33F4BA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F4BE:  LDR.W           R0, =(ScriptParams_ptr - 0x33F4C6)
33F4C2:  ADD             R0, PC; ScriptParams_ptr
33F4C4:  LDR             R0, [R0]; ScriptParams
33F4C6:  LDR             R0, [R0]; this
33F4C8:  BLX             j__ZN10CModelInfo10IsCarModelEi; CModelInfo::IsCarModel(int)
33F4CC:  B               loc_33F870
33F4CE:  MOV             R0, R4; jumptable 0033E60C case 2562
33F4D0:  MOVS            R1, #2; __int16
33F4D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F4D6:  LDR.W           R0, =(ScriptParams_ptr - 0x33F4E0)
33F4DA:  MOVS            R1, #2; int
33F4DC:  ADD             R0, PC; ScriptParams_ptr
33F4DE:  LDR             R0, [R0]; ScriptParams
33F4E0:  LDR             R0, [R0]; this
33F4E2:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33F4E6:  CMP             R0, #0
33F4E8:  BLT.W           loc_34002C
33F4EC:  LDR.W           R1, =(ScriptParams_ptr - 0x33F4FE)
33F4F0:  RSB.W           R0, R0, R0,LSL#5
33F4F4:  LDR.W           R2, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x33F500)
33F4F8:  MOVS            R6, #0
33F4FA:  ADD             R1, PC; ScriptParams_ptr
33F4FC:  ADD             R2, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
33F4FE:  LDR             R1, [R1]; ScriptParams
33F500:  LDR             R2, [R2]; CTheScripts::ScriptSearchLightArray ...
33F502:  ADD.W           R0, R2, R0,LSL#2
33F506:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33F508:  STRB            R1, [R0,#2]
33F50A:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F50E:  ALIGN 0x10
33F510:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33E6F0
33F514:  DCD ScriptParams_ptr - 0x33E6F2
33F518:  DCD ScriptParams_ptr - 0x33E72C
33F51C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33E72E
33F520:  DCD ScriptParams_ptr - 0x33E766
33F524:  DCD _ZN17CTheCarGenerators17CarGeneratorArrayE_ptr - 0x33E768
33F528:  DCD ScriptParams_ptr - 0x33E7A6
33F52C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33E7C6
33F530:  DCD ScriptParams_ptr - 0x33E7C8
33F534:  DCD ScriptParams_ptr - 0x33E804
33F538:  DCD _ZN10CCullZones22bMilitaryZonesDisabledE_ptr - 0x33E806
33F53C:  DCD TheCamera_ptr - 0x33E81C
33F540:  DCD ScriptParams_ptr - 0x33E81E
33F544:  DCD TheCamera_ptr - 0x33E858
33F548:  DCD ScriptParams_ptr - 0x33E88C
33F54C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33E8A0
33F550:  DCD ScriptParams_ptr - 0x33E8CE
33F554:  DCD _ZN6CWorld7PlayersE_ptr - 0x33E8DC
33F558:  DCD _ZN14MobileSettings8settingsE_ptr - 0x33E90A
33F55C:  DCD ScriptParams_ptr - 0x33E922
33F560:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33E936
33F564:  DCD ScriptParams_ptr - 0x33E968
33F568:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33E96A
33F56C:  DCD ScriptParams_ptr - 0x33E9CE
33F570:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33E9D0
33F574:  DCD ScriptParams_ptr - 0x33EA08
33F578:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33EA1C
33F57C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33EA56
33F580:  DCD ScriptParams_ptr - 0x33EA58
33F584:  DCD ScriptParams_ptr - 0x33EA94
33F588:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33EAA8
33F58C:  DCD ScriptParams_ptr - 0x33EAD2
33F590:  DCD ScriptParams_ptr - 0x33EAFC
33F594:  DCD g_LoadMonitor_ptr - 0x33EB0E
33F598:  DCD ScriptParams_ptr - 0x33EB34
33F59C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33EB48
33F5A0:  DCD ScriptParams_ptr - 0x33EB72
33F5A4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33EB86
33F5A8:  DCD ScriptParams_ptr - 0x33EBBA
33F5AC:  DCD _ZN6CWorld7PlayersE_ptr - 0x33EBBC
33F5B0:  DCD ScriptParams_ptr - 0x33EC12
33F5B4:  DCD _ZN8CPickups8aPickUpsE_ptr - 0x33EC14
33F5B8:  DCD RsGlobal_ptr - 0x33ECBC
33F5BC:  DCD ScriptParams_ptr - 0x33ECCC
33F5C0:  DCD _ZN10CPedGroups9ms_groupsE_ptr - 0x33ED14
33F5C4:  DCD ScriptParams_ptr - 0x33ED38
33F5C8:  DCD ScriptParams_ptr - 0x33ED62
33F5CC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33ED76
33F5D0:  DCD ScriptParams_ptr - 0x33EDA8
33F5D4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33EDAA
33F5D8:  DCD ScriptParams_ptr - 0x33EDF6
33F5DC:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x33EDF8
33F5E0:  DCD mod_HandlingManager_ptr - 0x33EE0C
33F5E4:  DCD ScriptParams_ptr - 0x33EE34
33F5E8:  DCD _ZN17CTheCarGenerators21m_SpecialPlateHandlerE_ptr - 0x33EF3C
33F5EC:  DCD ScriptParams_ptr - 0x33EF4C
33F5F0:  DCD ScriptParams_ptr - 0x33EF6A
33F5F4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33EF6C
33F5F8:  DCD ScriptParams_ptr - 0x33EF9C
33F5FC:  DCD _ZN7CObject31bAircraftCarrierSamSiteDisabledE_ptr - 0x33EF9E
33F600:  DCD ScriptParams_ptr - 0x33EFC8
33F604:  DCD ScriptParams_ptr - 0x33F030
33F608:  DCD ScriptParams_ptr - 0x33F052
33F60C:  DCD ScriptParams_ptr - 0x33F07C
33F610:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33F07E
33F614:  DCD ScriptParams_ptr - 0x33F0B8
33F618:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F0CC
33F61C:  DCD ScriptParams_ptr - 0x33F0FE
33F620:  DCD _ZN6CWorld7PlayersE_ptr - 0x33F100
33F624:  DCFS 448.0
33F628:  DCFS 3.1416
33F62C:  DCFS 180.0
33F630:  BLX             j__ZN9CGangWars22GangWarFightingGoingOnEv; jumptable 0033E60C case 2563
33F634:  B.W             loc_340024
33F638:  MOV             R0, R4; jumptable 0033E60C case 2566
33F63A:  MOVS            R1, #1; __int16
33F63C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F640:  LDR.W           R0, =(ScriptParams_ptr - 0x33F648)
33F644:  ADD             R0, PC; ScriptParams_ptr
33F646:  LDR             R0, [R0]; ScriptParams
33F648:  LDR             R1, [R0]; CTrain *
33F64A:  CMP             R1, #0
33F64C:  BLT.W           loc_33FDBA
33F650:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F65C)
33F654:  UXTB            R3, R1
33F656:  LSRS            R1, R1, #8
33F658:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33F65A:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33F65C:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33F65E:  LDR             R2, [R0,#4]
33F660:  LDRB            R2, [R2,R1]
33F662:  CMP             R2, R3
33F664:  BNE.W           loc_33FDBA
33F668:  MOVW            R2, #0xA2C
33F66C:  LDR             R0, [R0]
33F66E:  MLA.W           R0, R1, R2, R0
33F672:  B               loc_33FDBC
33F674:  MOV             R0, R4; jumptable 0033E60C case 2567
33F676:  MOVS            R1, #1; __int16
33F678:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F67C:  LDR.W           R0, =(ScriptParams_ptr - 0x33F684)
33F680:  ADD             R0, PC; ScriptParams_ptr
33F682:  LDR             R0, [R0]; ScriptParams
33F684:  LDR             R1, [R0]; CTrain *
33F686:  CMP             R1, #0
33F688:  BLT.W           loc_33FDC2
33F68C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F698)
33F690:  UXTB            R3, R1
33F692:  LSRS            R1, R1, #8
33F694:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33F696:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33F698:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33F69A:  LDR             R2, [R0,#4]
33F69C:  LDRB            R2, [R2,R1]
33F69E:  CMP             R2, R3
33F6A0:  BNE.W           loc_33FDC2
33F6A4:  MOVW            R2, #0xA2C
33F6A8:  LDR             R0, [R0]
33F6AA:  MLA.W           R0, R1, R2, R0
33F6AE:  B               loc_33FDC4
33F6B0:  SUB.W           R5, R7, #-var_36; jumptable 0033E60C case 2568
33F6B4:  MOV             R0, R4; this
33F6B6:  MOVS            R2, #8; unsigned __int8
33F6B8:  MOV             R1, R5; char *
33F6BA:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33F6BE:  LDR.W           R0, =(TheText_ptr - 0x33F6C8)
33F6C2:  MOV             R1, R5; CKeyGen *
33F6C4:  ADD             R0, PC; TheText_ptr
33F6C6:  LDR             R0, [R0]; TheText ; this
33F6C8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
33F6CC:  MOV             R6, R0
33F6CE:  MOV             R0, R4; this
33F6D0:  MOVS            R1, #1; __int16
33F6D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F6D6:  LDR.W           R0, =(ScriptParams_ptr - 0x33F6EA)
33F6DA:  ADD.W           R8, SP, #0x270+var_238
33F6DE:  MOV.W           R2, #0xFFFFFFFF; int
33F6E2:  MOV.W           R3, #0xFFFFFFFF; int
33F6E6:  ADD             R0, PC; ScriptParams_ptr
33F6E8:  LDR.W           R9, [R0]; ScriptParams
33F6EC:  MOV.W           R0, #0xFFFFFFFF
33F6F0:  LDR.W           R1, [R9]; unsigned __int16 *
33F6F4:  STRD.W          R0, R0, [SP,#0x270+var_270]; int
33F6F8:  STRD.W          R0, R8, [SP,#0x270+var_268]; int
33F6FC:  MOV             R0, R6; this
33F6FE:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
33F702:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x33F70A)
33F706:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
33F708:  LDR             R6, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
33F70A:  LDR.W           R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x33F714)
33F70E:  LDRH            R1, [R6]; unsigned __int8
33F710:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
33F712:  LDR             R5, [R0]; CTheScripts::IntroTextLines ...
33F714:  ADD.W           R0, R1, R1,LSL#4
33F718:  ADD.W           R0, R5, R0,LSL#2
33F71C:  LDRB.W          R0, [R0,#0x28]; this
33F720:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
33F724:  LDR.W           R0, =(RsGlobal_ptr - 0x33F734)
33F728:  VMOV.F32        S4, #0.5
33F72C:  VLDR            S2, =448.0
33F730:  ADD             R0, PC; RsGlobal_ptr
33F732:  LDR             R0, [R0]; RsGlobal
33F734:  VLDR            S0, [R0,#8]
33F738:  VCVT.F32.S32    S0, S0
33F73C:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
33F73E:  ADD.W           R0, R0, R0,LSL#4
33F742:  ADD.W           R0, R5, R0,LSL#2
33F746:  VDIV.F32        S0, S0, S2
33F74A:  VLDR            S2, [R0,#4]
33F74E:  VMUL.F32        S0, S2, S0
33F752:  VMUL.F32        S0, S0, S4
33F756:  VMOV            R0, S0; this
33F75A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
33F75E:  MOV             R0, R8; this
33F760:  MOVS            R1, #(stderr+1); unsigned __int16 *
33F762:  MOVS            R2, #1; unsigned __int8
33F764:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
33F768:  VMOV            S0, R0
33F76C:  VCVT.S32.F32    S0, S0
33F770:  VSTR            S0, [R9]
33F774:  MOV             R0, R4; this
33F776:  MOVS            R1, #1; __int16
33F778:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
33F77C:  B.W             loc_34002C
33F780:  MOV             R0, R4; jumptable 0033E60C case 2569
33F782:  MOVS            R1, #2; __int16
33F784:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F788:  LDR.W           R0, =(ScriptParams_ptr - 0x33F790)
33F78C:  ADD             R0, PC; ScriptParams_ptr
33F78E:  LDR             R0, [R0]; ScriptParams
33F790:  LDR             R1, [R0]
33F792:  CMP             R1, #0
33F794:  BLT.W           loc_33FDCA
33F798:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33F7A4)
33F79C:  UXTB            R3, R1
33F79E:  LSRS            R1, R1, #8
33F7A0:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33F7A2:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33F7A4:  LDR             R0, [R0]; CPools::ms_pPedPool
33F7A6:  LDR             R2, [R0,#4]
33F7A8:  LDRB            R2, [R2,R1]
33F7AA:  CMP             R2, R3
33F7AC:  BNE.W           loc_33FDCA
33F7B0:  MOVW            R2, #0x7CC
33F7B4:  LDR             R0, [R0]
33F7B6:  MLA.W           R0, R1, R2, R0
33F7BA:  B               loc_33FDCC
33F7BC:  MOV             R0, R4; jumptable 0033E60C case 2570
33F7BE:  MOVS            R1, #2; __int16
33F7C0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F7C4:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33F7D6)
33F7C8:  MOV.W           R3, #0x1A4
33F7CC:  LDR.W           R0, =(ScriptParams_ptr - 0x33F7D8)
33F7D0:  MOVS            R6, #0
33F7D2:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33F7D4:  ADD             R0, PC; ScriptParams_ptr
33F7D6:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33F7D8:  LDR             R0, [R0]; ScriptParams
33F7DA:  LDRD.W          R2, R0, [R0]
33F7DE:  LDR             R1, [R1]; CPools::ms_pObjectPool
33F7E0:  LSRS            R2, R2, #8
33F7E2:  LDR             R1, [R1]
33F7E4:  MLA.W           R1, R2, R3, R1
33F7E8:  LDR.W           R2, [R1,#0x144]
33F7EC:  BFI.W           R2, R0, #0x18, #1
33F7F0:  STR.W           R2, [R1,#0x144]
33F7F4:  B.W             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F7F8:  MOV             R0, R4; jumptable 0033E60C case 2571
33F7FA:  MOVS            R1, #4; __int16
33F7FC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F800:  LDR.W           R0, =(ScriptParams_ptr - 0x33F80C)
33F804:  VLDR            S0, =3.1416
33F808:  ADD             R0, PC; ScriptParams_ptr
33F80A:  LDR             R0, [R0]; ScriptParams
33F80C:  VLDR            S2, [R0,#0xC]
33F810:  LDRD.W          R1, R2, [R0]
33F814:  VMUL.F32        S0, S2, S0
33F818:  VLDR            S2, =180.0
33F81C:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]; this
33F81E:  STRD.W          R1, R2, [SP,#0x270+var_238]
33F822:  STR             R0, [SP,#0x270+var_230]
33F824:  VDIV.F32        S16, S0, S2
33F828:  BLX             j__ZN6CTimer4StopEv; CTimer::Stop(void)
33F82C:  VMOV            R1, S16; CVector *
33F830:  ADD             R4, SP, #0x270+var_238
33F832:  MOVS            R2, #0x20 ; ' '; float
33F834:  MOV             R0, R4; this
33F836:  BLX             j__ZN9CRenderer25RequestObjectsInDirectionERK7CVectorfi; CRenderer::RequestObjectsInDirection(CVector const&,float,int)
33F83A:  MOV             R0, R4; this
33F83C:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
33F840:  BLX             j__ZN6CTimer6UpdateEv; CTimer::Update(void)
33F844:  B               loc_34002C
33F846:  MOV             R0, R4; jumptable 0033E60C case 2572
33F848:  MOVS            R1, #1; __int16
33F84A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F84E:  LDR.W           R0, =(ScriptParams_ptr - 0x33F85E)
33F852:  MOV.W           R2, #0x194
33F856:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x33F860)
33F85A:  ADD             R0, PC; ScriptParams_ptr
33F85C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
33F85E:  LDR             R0, [R0]; ScriptParams
33F860:  LDR             R1, [R1]; CWorld::Players ...
33F862:  LDR             R0, [R0]
33F864:  MULS            R0, R2
33F866:  LDR             R0, [R1,R0]
33F868:  LDR.W           R0, [R0,#0x440]; this
33F86C:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
33F870:  MOV             R1, R0
33F872:  CMP             R1, #0
33F874:  IT NE
33F876:  MOVNE           R1, #1
33F878:  B               loc_340026
33F87A:  MOV             R0, R4; jumptable 0033E60C case 2574
33F87C:  MOVS            R1, #1; __int16
33F87E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F882:  LDR.W           R0, =(ScriptParams_ptr - 0x33F88A)
33F886:  ADD             R0, PC; ScriptParams_ptr
33F888:  LDR             R0, [R0]; ScriptParams
33F88A:  LDR             R0, [R0]
33F88C:  SUBS            R0, #1; this
33F88E:  BLX             j__ZN9CMessages20ClearThisBigPrintNowEj; CMessages::ClearThisBigPrintNow(uint)
33F892:  B               loc_34002C
33F894:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x33F89C); jumptable 0033E60C case 2575
33F898:  ADD             R0, PC; FrontEndMenuManager_ptr
33F89A:  LDR             R0, [R0]; FrontEndMenuManager ; this
33F89C:  BLX             j__ZN12CMenuManager18HasLanguageChangedEv; CMenuManager::HasLanguageChanged(void)
33F8A0:  B               loc_340024
33F8A2:  MOV             R0, R4; jumptable 0033E60C case 2576
33F8A4:  MOVS            R1, #2; __int16
33F8A6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F8AA:  LDR.W           R0, =(ScriptParams_ptr - 0x33F8B2)
33F8AE:  ADD             R0, PC; ScriptParams_ptr
33F8B0:  LDR             R0, [R0]; ScriptParams
33F8B2:  VLDR            S0, [R0,#4]
33F8B6:  VCVT.F32.S32    S0, S0
33F8BA:  LDRH            R0, [R0]; this
33F8BC:  VMOV            R1, S0; unsigned __int16
33F8C0:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
33F8C4:  B               loc_34002C
33F8C6:  MOV             R0, R4; jumptable 0033E60C case 2577
33F8C8:  MOVS            R1, #3; __int16
33F8CA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F8CE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F8DE)
33F8D2:  MOVW            R6, #0xA2C
33F8D6:  LDR.W           R0, =(ScriptParams_ptr - 0x33F8E0)
33F8DA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33F8DC:  ADD             R0, PC; ScriptParams_ptr
33F8DE:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33F8E0:  LDR             R0, [R0]; ScriptParams
33F8E2:  LDRD.W          R2, R3, [R0]
33F8E6:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33F8E8:  LSRS            R2, R2, #8
33F8EA:  LDR             R1, [R1]
33F8EC:  MLA.W           R1, R2, R6, R1
33F8F0:  MOVS            R6, #0
33F8F2:  STRB.W          R3, [R1,#0x43A]
33F8F6:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
33F8F8:  STRB.W          R0, [R1,#0x43B]
33F8FC:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F8FE:  BLX             j__ZN11CPopulation19ManageAllPopulationEv; jumptable 0033E60C case 2579
33F902:  B               loc_34002C
33F904:  MOV             R0, R4; jumptable 0033E60C case 2580
33F906:  MOVS            R1, #1; __int16
33F908:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F90C:  LDR.W           R0, =(ScriptParams_ptr - 0x33F91A)
33F910:  MOVS            R6, #0
33F912:  LDR.W           R1, =(_ZN8CGarages10NoRespraysE_ptr - 0x33F91C)
33F916:  ADD             R0, PC; ScriptParams_ptr
33F918:  ADD             R1, PC; _ZN8CGarages10NoRespraysE_ptr
33F91A:  LDR             R0, [R0]; ScriptParams
33F91C:  LDR             R1, [R1]; bool
33F91E:  LDR             R0, [R0]
33F920:  CMP             R0, #0
33F922:  IT NE
33F924:  MOVNE           R0, #1
33F926:  STRB            R0, [R1]; CGarages::NoResprays
33F928:  MOV.W           R0, #0
33F92C:  IT EQ
33F92E:  MOVEQ           R0, #(stderr+1); this
33F930:  BLX             j__ZN8CGarages22AllRespraysCloseOrOpenEb; CGarages::AllRespraysCloseOrOpen(bool)
33F934:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33F936:  MOV             R0, R4; jumptable 0033E60C case 2581
33F938:  MOVS            R1, #1; __int16
33F93A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F93E:  LDR.W           R0, =(ScriptParams_ptr - 0x33F946)
33F942:  ADD             R0, PC; ScriptParams_ptr
33F944:  LDR             R0, [R0]; ScriptParams
33F946:  LDR             R1, [R0]
33F948:  CMP             R1, #0
33F94A:  BLT.W           loc_33FDEA
33F94E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F95A)
33F952:  UXTB            R3, R1
33F954:  LSRS            R1, R1, #8
33F956:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33F958:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33F95A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33F95C:  LDR             R2, [R0,#4]
33F95E:  LDRB            R2, [R2,R1]
33F960:  CMP             R2, R3
33F962:  BNE.W           loc_33FDEA
33F966:  MOVW            R2, #0xA2C
33F96A:  LDR             R0, [R0]
33F96C:  MLA.W           R0, R1, R2, R0
33F970:  B               loc_33FDEC
33F972:  MOV             R0, R4; jumptable 0033E60C case 2582
33F974:  MOVS            R1, #2; __int16
33F976:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F97A:  LDR.W           R0, =(ScriptParams_ptr - 0x33F982)
33F97E:  ADD             R0, PC; ScriptParams_ptr
33F980:  LDR             R0, [R0]; ScriptParams
33F982:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
33F984:  CMP             R1, #0
33F986:  BLT.W           loc_33FDFC
33F98A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33F996)
33F98E:  UXTB            R3, R1
33F990:  LSRS            R1, R1, #8
33F992:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33F994:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33F996:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33F998:  LDR             R2, [R0,#4]
33F99A:  LDRB            R2, [R2,R1]
33F99C:  CMP             R2, R3
33F99E:  BNE.W           loc_33FDFC
33F9A2:  MOVW            R2, #0xA2C
33F9A6:  LDR             R0, [R0]
33F9A8:  MLA.W           R2, R1, R2, R0
33F9AC:  B               loc_33FDFE
33F9AE:  ADD.W           R8, SP, #0x270+var_238; jumptable 0033E60C case 2584
33F9B2:  MOV             R0, R4; this
33F9B4:  MOVS            R2, #8; unsigned __int8
33F9B6:  MOV             R1, R8; char *
33F9B8:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33F9BC:  SUB.W           R6, R7, #-var_36
33F9C0:  MOV             R0, R4; this
33F9C2:  MOVS            R2, #8; unsigned __int8
33F9C4:  MOV             R1, R6; char *
33F9C6:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33F9CA:  ADD             R5, SP, #0x270+var_240
33F9CC:  MOV             R0, R4; this
33F9CE:  MOVS            R2, #8; unsigned __int8
33F9D0:  MOV             R1, R5; char *
33F9D2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33F9D6:  MOV             R0, R4; this
33F9D8:  MOVS            R1, #3; __int16
33F9DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33F9DE:  LDR.W           R0, =(ScriptParams_ptr - 0x33F9E6)
33F9E2:  ADD             R0, PC; ScriptParams_ptr
33F9E4:  LDR             R0, [R0]; ScriptParams
33F9E6:  LDRD.W          R1, R2, [R0]
33F9EA:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
33F9EC:  NEGS            R2, R2
33F9EE:  NEGS            R3, R1; char *
33F9F0:  MOV             R1, R6; char *
33F9F2:  NEGS            R0, R0
33F9F4:  STRD.W          R2, R0, [SP,#0x270+var_270]; int
33F9F8:  MOV             R0, R8; this
33F9FA:  MOV             R2, R5; char *
33F9FC:  BLX             j__ZN14CConversations21SetUpConversationNodeEPcS0_S0_iii; CConversations::SetUpConversationNode(char *,char *,char *,int,int,int)
33FA00:  B               loc_34002C
33FA02:  ADD             R5, SP, #0x270+var_238; jumptable 0033E60C case 2585
33FA04:  MOV             R0, R4; this
33FA06:  MOVS            R2, #8; unsigned __int8
33FA08:  MOV             R1, R5; char *
33FA0A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33FA0E:  LDR.W           R0, =(TheText_ptr - 0x33FA18)
33FA12:  MOV             R1, R5; CKeyGen *
33FA14:  ADD             R0, PC; TheText_ptr
33FA16:  LDR             R0, [R0]; TheText ; this
33FA18:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
33FA1C:  MOVS            R1, #(stderr+1); unsigned __int16 *
33FA1E:  BLX             j__ZN4CHud11SetZoneNameEPth; CHud::SetZoneName(ushort *,uchar)
33FA22:  B               loc_34002C
33FA24:  MOV             R0, R4; jumptable 0033E60C case 2587
33FA26:  MOVS            R1, #2; __int16
33FA28:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33FA2C:  LDR.W           R0, =(ScriptParams_ptr - 0x33FA38)
33FA30:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33FA3A)
33FA34:  ADD             R0, PC; ScriptParams_ptr
33FA36:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33FA38:  LDR             R0, [R0]; ScriptParams
33FA3A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33FA3C:  LDR             R0, [R0]
33FA3E:  LDR             R1, [R1]; CPools::ms_pPedPool
33FA40:  CMP             R0, #0
33FA42:  BLT.W           loc_33FE18
33FA46:  LDR             R2, [R1,#4]
33FA48:  UXTB            R3, R0
33FA4A:  LSRS            R0, R0, #8
33FA4C:  LDRB            R2, [R2,R0]
33FA4E:  CMP             R2, R3
33FA50:  BNE.W           loc_33FE18
33FA54:  MOVW            R2, #0x7CC
33FA58:  LDR             R3, [R1]
33FA5A:  MLA.W           R0, R0, R2, R3
33FA5E:  B               loc_33FE1A
33FA60:  MOV             R0, R4; jumptable 0033E60C case 2588
33FA62:  MOVS            R1, #2; __int16
33FA64:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33FA68:  LDR.W           R0, =(ScriptParams_ptr - 0x33FA70)
33FA6C:  ADD             R0, PC; ScriptParams_ptr
33FA6E:  LDR             R0, [R0]; ScriptParams
33FA70:  LDR             R1, [R0]
33FA72:  CMP             R1, #0
33FA74:  BLT.W           loc_33FE3E
33FA78:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33FA84)
33FA7C:  UXTB            R3, R1
33FA7E:  LSRS            R1, R1, #8
33FA80:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33FA82:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33FA84:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33FA86:  LDR             R2, [R0,#4]
33FA88:  LDRB            R2, [R2,R1]
33FA8A:  CMP             R2, R3
33FA8C:  BNE.W           loc_33FE3E
33FA90:  MOVW            R2, #0xA2C
33FA94:  LDR             R0, [R0]
33FA96:  MLA.W           R0, R1, R2, R0
33FA9A:  B               loc_33FE40
33FA9C:  MOV             R0, R4; jumptable 0033E60C case 2589
33FA9E:  MOVS            R1, #2; __int16
33FAA0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33FAA4:  LDR.W           R0, =(ScriptParams_ptr - 0x33FAAC)
33FAA8:  ADD             R0, PC; ScriptParams_ptr
33FAAA:  LDR             R0, [R0]; ScriptParams
33FAAC:  LDRD.W          R8, R1, [R0]; unsigned int
33FAB0:  CMP             R1, #0
33FAB2:  BLT.W           loc_33FE58
33FAB6:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33FAC2)
33FABA:  UXTB            R3, R1
33FABC:  LSRS            R1, R1, #8
33FABE:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33FAC0:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33FAC2:  LDR             R0, [R0]; CPools::ms_pPedPool
33FAC4:  LDR             R2, [R0,#4]
33FAC6:  LDRB            R2, [R2,R1]
33FAC8:  CMP             R2, R3
33FACA:  BNE.W           loc_33FE58
33FACE:  MOVW            R2, #0x7CC
33FAD2:  LDR             R0, [R0]
33FAD4:  MLA.W           R9, R1, R2, R0
33FAD8:  B               loc_33FE5C
33FADA:  MOV             R0, R4; jumptable 0033E60C case 2590
33FADC:  MOVS            R1, #1; __int16
33FADE:  MOVS            R5, #1
33FAE0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33FAE4:  LDR.W           R0, =(ScriptParams_ptr - 0x33FAF2)
33FAE8:  MOVS            R6, #2
33FAEA:  LDR.W           R1, =(_ZN7CWeapon18m_nTakePhotoFramesE_ptr - 0x33FAFC)
33FAEE:  ADD             R0, PC; ScriptParams_ptr
33FAF0:  LDR.W           R3, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x33FB00)
33FAF4:  LDR.W           R2, =(_ZN12CPostEffects22m_bSavePhotoFromScriptE_ptr - 0x33FB02)
33FAF8:  ADD             R1, PC; _ZN7CWeapon18m_nTakePhotoFramesE_ptr
33FAFA:  LDR             R0, [R0]; ScriptParams
33FAFC:  ADD             R3, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
33FAFE:  ADD             R2, PC; _ZN12CPostEffects22m_bSavePhotoFromScriptE_ptr
33FB00:  LDR             R1, [R1]; CWeapon::m_nTakePhotoFrames ...
33FB02:  LDR             R3, [R3]; CWeapon::ms_bTakePhoto ...
33FB04:  LDR             R0, [R0]
33FB06:  LDR             R2, [R2]; CPostEffects::m_bSavePhotoFromScript ...
33FB08:  CMP             R0, #0
33FB0A:  STR             R6, [R1]; CWeapon::m_nTakePhotoFrames
33FB0C:  STRB            R5, [R3]; CWeapon::ms_bTakePhoto
33FB0E:  IT NE
33FB10:  MOVNE           R0, #1
33FB12:  STRB            R0, [R2]; CPostEffects::m_bSavePhotoFromScript
33FB14:  B               loc_34002C
33FB16:  MOV             R0, R4; jumptable 0033E60C case 2592
33FB18:  MOVS            R1, #2; __int16
33FB1A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33FB1E:  LDR.W           R0, =(ScriptParams_ptr - 0x33FB26)
33FB22:  ADD             R0, PC; ScriptParams_ptr
33FB24:  LDR             R4, [R0]; ScriptParams
33FB26:  LDR             R0, [R4]; int
33FB28:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
33FB2C:  LDR             R1, [R4,#(dword_81A90C - 0x81A908)]
33FB2E:  CMP             R1, #0
33FB30:  IT NE
33FB32:  MOVNE           R1, #1; bool
33FB34:  BLX             j__ZN10CPlayerPed24ForceGroupToAlwaysFollowEb; CPlayerPed::ForceGroupToAlwaysFollow(bool)
33FB38:  B               loc_34002C
33FB3A:  MOV             R0, R4; jumptable 0033E60C case 2594
33FB3C:  MOVS            R1, #4; __int16
33FB3E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33FB42:  LDR.W           R0, =(ScriptParams_ptr - 0x33FB4A)
33FB46:  ADD             R0, PC; ScriptParams_ptr
33FB48:  LDR             R0, [R0]; ScriptParams
33FB4A:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
33FB4C:  CMP             R1, #0
33FB4E:  BLT.W           loc_33FE82
33FB52:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33FB5E)
33FB56:  UXTB            R3, R1
33FB58:  LSRS            R1, R1, #8
33FB5A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33FB5C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33FB5E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33FB60:  LDR             R2, [R0,#4]
33FB62:  LDRB            R2, [R2,R1]
33FB64:  CMP             R2, R3
33FB66:  BNE.W           loc_33FE82
33FB6A:  MOVW            R2, #0xA2C
33FB6E:  LDR             R0, [R0]
33FB70:  MLA.W           R4, R1, R2, R0
33FB74:  B               loc_33FE84
33FB76:  MOV             R0, R4; jumptable 0033E60C case 2595
33FB78:  MOVS            R1, #3; __int16
33FB7A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33FB7E:  LDR.W           R0, =(ScriptParams_ptr - 0x33FB86)
33FB82:  ADD             R0, PC; ScriptParams_ptr
33FB84:  LDR             R2, [R0]; ScriptParams
33FB86:  LDRB            R0, [R2]; this
33FB88:  LDRB            R1, [R2,#(dword_81A90C - 0x81A908)]; unsigned __int8
33FB8A:  LDRB            R2, [R2,#(dword_81A910 - 0x81A908)]; unsigned __int8
33FB8C:  BLX             j__ZN11CMenuSystem16HighlightOneItemEhhh; CMenuSystem::HighlightOneItem(uchar,uchar,uchar)
33FB90:  B               loc_34002C
33FB92:  BLX             j__ZN6CStats28FindMostFavoriteRadioStationEv; jumptable 0033E60C case 2598
33FB96:  LDR.W           R1, =(AudioEngine_ptr - 0x33FB9E)
33FB9A:  ADD             R1, PC; AudioEngine_ptr
33FB9C:  LDR             R2, [R1]; AudioEngine
33FB9E:  SXTB            R1, R0; signed __int8
33FBA0:  MOV             R0, R2; this
33FBA2:  BLX             j__ZN12CAudioEngine11RetuneRadioEa; CAudioEngine::RetuneRadio(signed char)
33FBA6:  B               loc_34002C
33FBA8:  MOV             R0, R4; jumptable 0033E60C case 2599
33FBAA:  MOVS            R1, #2; __int16
33FBAC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33FBB0:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33FBC0)
33FBB4:  MOVW            R3, #0x7CC
33FBB8:  LDR.W           R0, =(ScriptParams_ptr - 0x33FBC2)
33FBBC:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33FBBE:  ADD             R0, PC; ScriptParams_ptr
33FBC0:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33FBC2:  LDR             R0, [R0]; ScriptParams
33FBC4:  LDRD.W          R2, R0, [R0]
33FBC8:  CMP             R0, #0
33FBCA:  LDR             R1, [R1]; CPools::ms_pPedPool
33FBCC:  MOV.W           R2, R2,LSR#8
33FBD0:  LDR             R1, [R1]
33FBD2:  MLA.W           R1, R2, R3, R1
33FBD6:  LDR.W           R2, [R1,#0x490]
33FBDA:  IT NE
33FBDC:  MOVNE           R0, #1
33FBDE:  BIC.W           R2, R2, #0x80000
33FBE2:  ORR.W           R0, R2, R0,LSL#19
33FBE6:  STR.W           R0, [R1,#0x490]
33FBEA:  B               loc_34002C
33FBEC:  MOVS            R5, #0
33FBEE:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
33FBF2:  MOV             R1, R5; CPed *
33FBF4:  BLX             j__ZNK20CPedAttractorManager25IsPedRegisteredWithEffectEP4CPed; CPedAttractorManager::IsPedRegisteredWithEffect(CPed *)
33FBF8:  B               loc_340024
33FBFA:  MOVS            R4, #0
33FBFC:  LDR.W           R0, =(ScriptParams_ptr - 0x33FC04)
33FC00:  ADD             R0, PC; ScriptParams_ptr
33FC02:  LDR             R0, [R0]; ScriptParams
33FC04:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
33FC06:  CMP             R1, #0
33FC08:  BLT.W           loc_33FEA4
33FC0C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33FC18)
33FC10:  UXTB            R3, R1
33FC12:  LSRS            R1, R1, #8
33FC14:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33FC16:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33FC18:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33FC1A:  LDR             R2, [R0,#4]
33FC1C:  LDRB            R2, [R2,R1]
33FC1E:  CMP             R2, R3
33FC20:  BNE.W           loc_33FEA4
33FC24:  MOVW            R2, #0xA2C
33FC28:  LDR             R0, [R0]
33FC2A:  MLA.W           R5, R1, R2, R0
33FC2E:  B               loc_33FEA6
33FC30:  MOVS            R0, #0
33FC32:  LDR.W           R2, =(ScriptParams_ptr - 0x33FC3A)
33FC36:  ADD             R2, PC; ScriptParams_ptr
33FC38:  LDR             R2, [R2]; ScriptParams
33FC3A:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
33FC3C:  CMP             R2, #0
33FC3E:  BLT.W           loc_33FEEA
33FC42:  LDR             R3, [R1,#4]
33FC44:  UXTB            R6, R2
33FC46:  LSRS            R2, R2, #8
33FC48:  LDRB            R3, [R3,R2]
33FC4A:  CMP             R3, R6
33FC4C:  BNE.W           loc_33FEEA
33FC50:  MOVW            R3, #0xA2C
33FC54:  LDR             R1, [R1]
33FC56:  MLA.W           R1, R2, R3, R1
33FC5A:  B               loc_340020
33FC5C:  MOVS            R0, #0
33FC5E:  LDR.W           R1, =(ScriptParams_ptr - 0x33FC66)
33FC62:  ADD             R1, PC; ScriptParams_ptr
33FC64:  LDR             R1, [R1]; ScriptParams
33FC66:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33FC68:  CMP.W           R1, #0xFFFFFFFF
33FC6C:  BGT             loc_33FC82
33FC6E:  LDR.W           R2, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x33FC78)
33FC72:  NEGS            R1, R1
33FC74:  ADD             R2, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
33FC76:  RSB.W           R1, R1, R1,LSL#3
33FC7A:  LDR             R2, [R2]; CTheScripts::UsedObjectArray ...
33FC7C:  ADD.W           R1, R2, R1,LSL#2
33FC80:  LDR             R1, [R1,#0x18]
33FC82:  LDRSH.W         R0, [R0,#0x26]
33FC86:  MOVS            R6, #0
33FC88:  CMP             R1, R0
33FC8A:  MOV.W           R1, #0
33FC8E:  IT EQ
33FC90:  MOVEQ           R1, #1
33FC92:  B               loc_33FEFA
33FC94:  MOVS            R0, #0
33FC96:  LDR.W           R1, [R0,#0x5A0]
33FC9A:  CMP             R1, #0
33FC9C:  BEQ.W           loc_33FFFC
33FCA0:  CMP             R1, #9
33FCA2:  BNE.W           loc_33FDF8
33FCA6:  ADDW            R0, R0, #0x818
33FCAA:  B               loc_340000
33FCAC:  MOVS            R0, #0; this
33FCAE:  LDR.W           R1, =(ScriptParams_ptr - 0x33FCB6)
33FCB2:  ADD             R1, PC; ScriptParams_ptr
33FCB4:  LDR             R5, [R1]; ScriptParams
33FCB6:  LDRB            R2, [R5,#(dword_81A910 - 0x81A908)]
33FCB8:  LDRH            R1, [R5,#(dword_81A90C - 0x81A908)]; unsigned __int16
33FCBA:  LDRB            R3, [R5,#(dword_81A914 - 0x81A908)]
33FCBC:  LDRB            R6, [R5,#(dword_81A918 - 0x81A908)]
33FCBE:  STMEA.W         SP, {R2,R3,R6}
33FCC2:  MOVS            R2, #0; unsigned int
33FCC4:  MOV.W           R3, #0x3F800000; float
33FCC8:  MOVS            R6, #0
33FCCA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
33FCCE:  STR             R0, [R5]
33FCD0:  MOV             R0, R4; this
33FCD2:  MOVS            R1, #1; __int16
33FCD4:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
33FCD8:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FCDA:  MOVS            R0, #0; this
33FCDC:  LDR.W           R1, =(ScriptParams_ptr - 0x33FCE4)
33FCE0:  ADD             R1, PC; ScriptParams_ptr
33FCE2:  LDR             R6, [R1]; ScriptParams
33FCE4:  LDRB            R3, [R6,#(dword_81A914 - 0x81A908)]; unsigned __int8
33FCE6:  LDRB            R2, [R6,#(dword_81A910 - 0x81A908)]; unsigned __int8
33FCE8:  LDR             R1, [R6,#(dword_81A90C - 0x81A908)]; int
33FCEA:  LDRB            R6, [R6,#(dword_81A918 - 0x81A908)]
33FCEC:  STR             R6, [SP,#0x270+var_270]; unsigned __int8
33FCEE:  BLX             j__ZN4CPed9SayScriptEihhh; CPed::SayScript(int,uchar,uchar,uchar)
33FCF2:  B               loc_34002C
33FCF4:  MOVS            R5, #0
33FCF6:  LDR.W           R0, [R5,#0x440]
33FCFA:  MOVW            R1, #0x2BD; int
33FCFE:  ADDS            R0, #4; this
33FD00:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
33FD04:  CBNZ            R0, loc_33FD18
33FD06:  LDR.W           R0, [R5,#0x440]
33FD0A:  MOV.W           R1, #0x2BC; int
33FD0E:  ADDS            R0, #4; this
33FD10:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
33FD14:  CMP             R0, #0
33FD16:  BEQ             loc_33FDF8
33FD18:  LDR.W           R0, [R5,#0x440]
33FD1C:  MOV.W           R1, #0x320; int
33FD20:  ADDS            R0, #4; this
33FD22:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
33FD26:  MOVS            R1, #0
33FD28:  CMP             R0, #0
33FD2A:  IT EQ
33FD2C:  MOVEQ           R1, #1
33FD2E:  B               loc_340026
33FD30:  MOVS            R5, #0
33FD32:  VMOV            R3, S0
33FD36:  STRD.W          R6, R5, [SP,#0x270+var_270]
33FD3A:  STR             R6, [SP,#0x270+var_268]
33FD3C:  BLX             j__ZN10CGameLogic9SetUpSkipE7CVectorfbP8CVehicleb; CGameLogic::SetUpSkip(CVector,float,bool,CVehicle *,bool)
33FD40:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FD42:  MOVS            R0, #0; this
33FD44:  MOVS            R1, #1; signed __int8
33FD46:  BLX             j__ZN11CAutomobile14NitrousControlEa; CAutomobile::NitrousControl(signed char)
33FD4A:  B               loc_34002C
33FD4C:  MOVS            R0, #0; this
33FD4E:  LDR.W           R2, =(ScriptParams_ptr - 0x33FD56)
33FD52:  ADD             R2, PC; ScriptParams_ptr
33FD54:  LDR             R2, [R2]; ScriptParams
33FD56:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
33FD58:  CMP             R2, #0
33FD5A:  BLT.W           loc_33FEEE
33FD5E:  LDR             R3, [R1,#4]
33FD60:  UXTB            R6, R2
33FD62:  LSRS            R2, R2, #8
33FD64:  LDRB            R3, [R3,R2]
33FD66:  CMP             R3, R6
33FD68:  BNE.W           loc_33FEEE
33FD6C:  MOVW            R3, #0x7CC
33FD70:  LDR             R1, [R1]
33FD72:  MLA.W           R1, R2, R3, R1
33FD76:  B               loc_33FEF0
33FD78:  MOVS            R2, #0; CPed *
33FD7A:  LDR.W           R0, =(ScriptParams_ptr - 0x33FD86)
33FD7E:  LDR.W           R3, =(AudioEngine_ptr - 0x33FD88)
33FD82:  ADD             R0, PC; ScriptParams_ptr
33FD84:  ADD             R3, PC; AudioEngine_ptr
33FD86:  LDR             R0, [R0]; ScriptParams
33FD88:  LDRH            R1, [R0,#(dword_81A90C - 0x81A908)]; unsigned __int16
33FD8A:  LDR             R0, [R3]; AudioEngine ; this
33FD8C:  BLX             j__ZN12CAudioEngine23ReportMissionAudioEventEtP4CPed; CAudioEngine::ReportMissionAudioEvent(ushort,CPed *)
33FD90:  B               loc_34002C
33FD92:  MOVS            R2, #0; CVehicle *
33FD94:  LDR.W           R0, =(ScriptParams_ptr - 0x33FDA0)
33FD98:  LDR.W           R3, =(AudioEngine_ptr - 0x33FDA2)
33FD9C:  ADD             R0, PC; ScriptParams_ptr
33FD9E:  ADD             R3, PC; AudioEngine_ptr
33FDA0:  LDR             R0, [R0]; ScriptParams
33FDA2:  LDRH            R1, [R0,#(dword_81A90C - 0x81A908)]; unsigned __int16
33FDA4:  LDR             R0, [R3]; AudioEngine ; this
33FDA6:  BLX             j__ZN12CAudioEngine23ReportMissionAudioEventEtP8CVehicle; CAudioEngine::ReportMissionAudioEvent(ushort,CVehicle *)
33FDAA:  B               loc_34002C
33FDAC:  MOVS            R0, #0
33FDAE:  LDR             R1, [R0]
33FDB0:  MOVS            R6, #0
33FDB2:  LDR             R2, [R1,#0x38]
33FDB4:  MOVS            R1, #0
33FDB6:  BLX             R2
33FDB8:  B               loc_33FEF8
33FDBA:  MOVS            R0, #0; this
33FDBC:  BLX             j__ZN6CTrain20IsNextStationAllowedEPS_; CTrain::IsNextStationAllowed(CTrain*)
33FDC0:  B               loc_340024
33FDC2:  MOVS            R0, #0; this
33FDC4:  BLX             j__ZN6CTrain24SkipToNextAllowedStationEPS_; CTrain::SkipToNextAllowedStation(CTrain*)
33FDC8:  B               loc_34002C
33FDCA:  MOVS            R0, #0; this
33FDCC:  LDR             R1, =(ScriptParams_ptr - 0x33FDD2)
33FDCE:  ADD             R1, PC; ScriptParams_ptr
33FDD0:  LDR             R1, [R1]; ScriptParams
33FDD2:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33FDD4:  CMP             R1, #0
33FDD6:  BEQ.W           loc_33FFD8
33FDDA:  MOVS            R6, #0
33FDDC:  CMP             R0, #0
33FDDE:  BEQ.W           loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FDE2:  MOVS            R1, #0; __int16
33FDE4:  BLX             j__ZN4CPed31DisablePedSpeechForScriptSpeechEs; CPed::DisablePedSpeechForScriptSpeech(short)
33FDE8:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FDEA:  MOVS            R0, #0
33FDEC:  LDR.W           R1, [R0,#0x430]
33FDF0:  TST.W           R1, #0x1000000
33FDF4:  BNE.W           loc_33FF90
33FDF8:  MOVS            R1, #0
33FDFA:  B               loc_340026
33FDFC:  MOVS            R2, #0; CPhysical *
33FDFE:  LDR             R0, =(ScriptParams_ptr - 0x33FE06)
33FE00:  LDR             R1, =(AudioEngine_ptr - 0x33FE08)
33FE02:  ADD             R0, PC; ScriptParams_ptr
33FE04:  ADD             R1, PC; AudioEngine_ptr
33FE06:  LDR             R0, [R0]; ScriptParams
33FE08:  LDR             R3, [R0]
33FE0A:  LDR             R0, [R1]; AudioEngine ; this
33FE0C:  ADD.W           R1, R3, #0xFF
33FE10:  UXTB            R1, R1; unsigned __int8
33FE12:  BLX             j__ZN12CAudioEngine28AttachMissionAudioToPhysicalEhP9CPhysical; CAudioEngine::AttachMissionAudioToPhysical(uchar,CPhysical *)
33FE16:  B               loc_34002C
33FE18:  MOVS            R0, #0; this
33FE1A:  LDR             R2, =(ScriptParams_ptr - 0x33FE20)
33FE1C:  ADD             R2, PC; ScriptParams_ptr
33FE1E:  LDR             R2, [R2]; ScriptParams
33FE20:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
33FE22:  CMP             R2, #0
33FE24:  BLT             loc_33FF02
33FE26:  LDR             R3, [R1,#4]
33FE28:  UXTB            R6, R2
33FE2A:  LSRS            R2, R2, #8
33FE2C:  LDRB            R3, [R3,R2]
33FE2E:  CMP             R3, R6
33FE30:  BNE             loc_33FF02
33FE32:  MOVW            R3, #0x7CC
33FE36:  LDR             R1, [R1]
33FE38:  MLA.W           R1, R2, R3, R1
33FE3C:  B               loc_33FF04
33FE3E:  MOVS            R0, #0
33FE40:  LDR             R1, =(ScriptParams_ptr - 0x33FE4A)
33FE42:  ADD.W           R0, R0, #0x13C; this
33FE46:  ADD             R1, PC; ScriptParams_ptr
33FE48:  LDR             R1, [R1]; ScriptParams
33FE4A:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33FE4C:  CMP             R1, #0
33FE4E:  BEQ.W           loc_33FFE2
33FE52:  BLX             j__ZN21CAEVehicleAudioEntity16EnableHelicoptorEv; CAEVehicleAudioEntity::EnableHelicoptor(void)
33FE56:  B               loc_34002C
33FE58:  MOV.W           R9, #0
33FE5C:  MOVS            R0, #off_18; this
33FE5E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33FE62:  MOV             R1, R9; CPed *
33FE64:  MOV.W           R2, #0xFFFFFFFF; int
33FE68:  MOVS            R3, #0; unsigned __int8
33FE6A:  MOV             R5, R0
33FE6C:  MOVS            R6, #0
33FE6E:  BLX             j__ZN23CTaskComplexSignalAtPedC2EP4CPedih; CTaskComplexSignalAtPed::CTaskComplexSignalAtPed(CPed *,int,uchar)
33FE72:  MOV             R0, R4; this
33FE74:  MOV             R1, R8; int
33FE76:  MOV             R2, R5; CTask *
33FE78:  MOVW            R3, #0xA1D; int
33FE7C:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33FE80:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FE82:  MOVS            R4, #0
33FE84:  LDR             R0, =(ScriptParams_ptr - 0x33FE8A)
33FE86:  ADD             R0, PC; ScriptParams_ptr
33FE88:  LDR             R5, [R0]; ScriptParams
33FE8A:  LDRB            R0, [R5]; this
33FE8C:  LDRB            R1, [R5,#(dword_81A914 - 0x81A908)]; unsigned __int8
33FE8E:  BLX             j__ZN11CMenuSystem20GetCarColourFromGridEhh; CMenuSystem::GetCarColourFromGrid(uchar,uchar)
33FE92:  LDR             R1, [R5,#(dword_81A910 - 0x81A908)]
33FE94:  MOVS            R6, #0
33FE96:  CMP             R1, #1
33FE98:  ITE NE
33FE9A:  STRBNE.W        R0, [R4,#0x439]
33FE9E:  STRBEQ.W        R0, [R4,#0x438]
33FEA2:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FEA4:  MOVS            R5, #0
33FEA6:  LDR             R0, [R4,#0x14]
33FEA8:  ADD.W           R1, R0, #0x30 ; '0'
33FEAC:  CMP             R0, #0
33FEAE:  IT EQ
33FEB0:  ADDEQ           R1, R4, #4
33FEB2:  MOV             R0, R5; this
33FEB4:  LDRD.W          R6, R9, [R1]
33FEB8:  LDR.W           R8, [R1,#8]
33FEBC:  MOV             R1, R4; CVehicle *
33FEBE:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
33FEC2:  MOV             R2, R0; int
33FEC4:  ADD             R0, SP, #0x270+var_238; this
33FEC6:  MOV             R1, R5; CVehicle *
33FEC8:  MOVS            R3, #0; bool
33FECA:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
33FECE:  MOV             R1, R4; CPed *
33FED0:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
33FED4:  LDR             R0, [R4,#0x14]
33FED6:  CMP             R0, #0
33FED8:  BEQ.W           loc_33FFE8
33FEDC:  STR             R6, [R0,#0x30]
33FEDE:  LDR             R0, [R4,#0x14]
33FEE0:  STR.W           R9, [R0,#0x34]
33FEE4:  LDR             R0, [R4,#0x14]
33FEE6:  ADDS            R0, #0x38 ; '8'
33FEE8:  B               loc_33FFF0
33FEEA:  MOVS            R1, #0
33FEEC:  B               loc_340020
33FEEE:  MOVS            R1, #0; CEntity *
33FEF0:  MOVS            R2, #0; bool
33FEF2:  MOVS            R6, #0
33FEF4:  BLX             j__ZN4CPed22OurPedCanSeeThisEntityEP7CEntityb; CPed::OurPedCanSeeThisEntity(CEntity *,bool)
33FEF8:  MOV             R1, R0; unsigned __int8
33FEFA:  MOV             R0, R4; this
33FEFC:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
33FF00:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FF02:  MOVS            R1, #0
33FF04:  LDRB.W          R2, [R0,#0x485]
33FF08:  LSLS            R2, R2, #0x1F
33FF0A:  ITE NE
33FF0C:  LDRNE.W         R5, [R0,#0x590]
33FF10:  MOVEQ           R5, #0
33FF12:  LDRB.W          R2, [R1,#0x485]
33FF16:  LSLS            R2, R2, #0x1F
33FF18:  BNE             loc_33FFA4
33FF1A:  CMP             R5, #0
33FF1C:  BNE             loc_34000E
33FF1E:  B               loc_340020
33FF20:  MOV.W           R0, #0xFFFFFFFF; int
33FF24:  MOVS            R1, #0; bool
33FF26:  MOVS            R6, #0
33FF28:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
33FF2C:  CMP             R0, #0
33FF2E:  BEQ             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FF30:  LDR             R0, =(TheCamera_ptr - 0x33FF38)
33FF32:  MOVS            R6, #0
33FF34:  ADD             R0, PC; TheCamera_ptr
33FF36:  LDR             R0, [R0]; TheCamera
33FF38:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
33FF3C:  ADD.W           R4, R1, R1,LSL#5
33FF40:  ADD.W           R0, R0, R4,LSL#4
33FF44:  LDRH.W          R0, [R0,#0x17E]
33FF48:  CMP             R0, #0x16
33FF4A:  BHI             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FF4C:  MOVS            R1, #:lower16:(loc_440006+2)
33FF4E:  MOVS            R5, #1
33FF50:  LSL.W           R0, R5, R0
33FF54:  MOVT            R1, #:upper16:(loc_440006+2)
33FF58:  TST             R0, R1
33FF5A:  BEQ             loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FF5C:  MOV.W           R0, #0xFFFFFFFF; int
33FF60:  MOVS            R1, #0; bool
33FF62:  MOVS            R6, #0
33FF64:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
33FF68:  LDR             R1, =(TheCamera_ptr - 0x33FF70)
33FF6A:  LDR             R2, [R0,#0x14]
33FF6C:  ADD             R1, PC; TheCamera_ptr
33FF6E:  STRD.W          R6, R5, [SP,#0x270+var_270]; float
33FF72:  CMP             R2, #0
33FF74:  LDR             R3, [R1]; TheCamera
33FF76:  ADD.W           R1, R2, #0x30 ; '0'
33FF7A:  IT EQ
33FF7C:  ADDEQ           R1, R0, #4; CVector *
33FF7E:  MOVS            R2, #0; float
33FF80:  ADD.W           R0, R3, R4,LSL#4
33FF84:  MOVS            R3, #0; float
33FF86:  ADD.W           R0, R0, #0x170; this
33FF8A:  BLX             j__ZN4CCam20Process_FollowCar_SAERK7CVectorfffb; CCam::Process_FollowCar_SA(CVector const&,float,float,float,bool)
33FF8E:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FF90:  LDR.W           R2, [R0,#0x42C]
33FF94:  ADDW            R0, R0, #0x42C
33FF98:  BIC.W           R1, R1, #0x1000000
33FF9C:  STRD.W          R2, R1, [R0]
33FFA0:  MOVS            R1, #1
33FFA2:  B               loc_340026
33FFA4:  LDR.W           R6, [R1,#0x590]
33FFA8:  CMP             R5, #0
33FFAA:  IT NE
33FFAC:  CMPNE           R6, #0
33FFAE:  BEQ             loc_34000C
33FFB0:  MOV             R0, R5; this
33FFB2:  MOV             R1, R6; CEntity *
33FFB4:  BLX             j__ZN9CPhysical18GetHasCollidedWithEP7CEntity; CPhysical::GetHasCollidedWith(CEntity *)
33FFB8:  CBZ             R0, loc_340014
33FFBA:  MOVS            R1, #1
33FFBC:  B               loc_340026
33FFBE:  LDR             R0, =(g_LoadMonitor_ptr - 0x33FFC6)
33FFC0:  MOVS            R6, #0
33FFC2:  ADD             R0, PC; g_LoadMonitor_ptr
33FFC4:  LDR             R0, [R0]; g_LoadMonitor
33FFC6:  STRB            R6, [R0,#(byte_959608 - 0x9595EC)]
33FFC8:  B               loc_34002E; jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
33FFCA:  MOV             R0, R4; this
33FFCC:  BLX             j__ZN4CPed14TakeOffGogglesEv; CPed::TakeOffGoggles(void)
33FFD0:  B               loc_34002C
33FFD2:  BLX             j__ZN23CAEPedSpeechAudioEntity18EnableAllPedSpeechEv; CAEPedSpeechAudioEntity::EnableAllPedSpeech(void)
33FFD6:  B               loc_34002C
33FFD8:  CMP             R0, #0
33FFDA:  IT NE
33FFDC:  BLXNE           j__ZN4CPed30EnablePedSpeechForScriptSpeechEv; CPed::EnablePedSpeechForScriptSpeech(void)
33FFE0:  B               loc_34002C
33FFE2:  BLX             j__ZN21CAEVehicleAudioEntity17DisableHelicoptorEv; CAEVehicleAudioEntity::DisableHelicoptor(void)
33FFE6:  B               loc_34002C
33FFE8:  ADD.W           R0, R4, #0xC
33FFEC:  STRD.W          R6, R9, [R4,#4]
33FFF0:  STR.W           R8, [R0]
33FFF4:  ADD             R0, SP, #0x270+var_238; this
33FFF6:  BLX             j__ZN23CTaskSimpleCarSetPedOutD2Ev; CTaskSimpleCarSetPedOut::~CTaskSimpleCarSetPedOut()
33FFFA:  B               loc_34002C
33FFFC:  ADDW            R0, R0, #0x974
340000:  LDRB            R0, [R0]
340002:  MOVS            R1, #0
340004:  CMP             R0, #4
340006:  IT EQ
340008:  MOVEQ           R1, #1
34000A:  B               loc_340026
34000C:  CBZ             R5, loc_34001A
34000E:  MOV             R0, R1
340010:  MOV             R1, R5
340012:  B               loc_340020
340014:  MOV             R0, R6
340016:  MOV             R1, R5
340018:  B               loc_340020
34001A:  CMP             R6, #0
34001C:  IT NE
34001E:  MOVNE           R1, R6; CEntity *
340020:  BLX             j__ZN9CPhysical18GetHasCollidedWithEP7CEntity; CPhysical::GetHasCollidedWith(CEntity *)
340024:  MOV             R1, R0; unsigned __int8
340026:  MOV             R0, R4; this
340028:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
34002C:  MOVS            R6, #0
34002E:  LDR             R0, =(__stack_chk_guard_ptr - 0x340036); jumptable 0033E60C cases 2502,2515,2524,2538,2547,2553,2560,2564,2565,2573
340030:  LDR             R1, [SP,#0x270+var_2C]
340032:  ADD             R0, PC; __stack_chk_guard_ptr
340034:  LDR             R0, [R0]; __stack_chk_guard
340036:  LDR             R0, [R0]
340038:  SUBS            R0, R0, R1
34003A:  ITTTT EQ
34003C:  SXTBEQ          R0, R6
34003E:  ADDEQ.W         SP, SP, #0x248
340042:  VPOPEQ          {D8}
340046:  ADDEQ           SP, SP, #4
340048:  ITT EQ
34004A:  POPEQ.W         {R8-R11}
34004E:  POPEQ           {R4-R7,PC}
340050:  BLX             __stack_chk_fail
