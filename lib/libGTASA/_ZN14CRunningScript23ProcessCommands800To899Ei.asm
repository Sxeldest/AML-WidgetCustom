; =========================================================
; Game Engine Function: _ZN14CRunningScript23ProcessCommands800To899Ei
; Address            : 0x3464B4 - 0x348438
; =========================================================

3464B4:  PUSH            {R4-R7,LR}
3464B6:  ADD             R7, SP, #0xC
3464B8:  PUSH.W          {R8-R11}
3464BC:  SUB             SP, SP, #4
3464BE:  VPUSH           {D8-D11}
3464C2:  SUB             SP, SP, #0x130; float
3464C4:  MOV             R8, R0
3464C6:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x3464D0)
3464CA:  MOVS            R5, #0
3464CC:  ADD             R0, PC; __stack_chk_guard_ptr
3464CE:  LDR             R0, [R0]; __stack_chk_guard
3464D0:  LDR             R0, [R0]
3464D2:  STR             R0, [SP,#0x170+var_44]
3464D4:  SUBW            R0, R1, #0x321; switch 99 cases
3464D8:  CMP             R0, #0x62 ; 'b'
3464DA:  STRD.W          R5, R5, [SP,#0x170+var_6C]
3464DE:  BHI.W           def_3464E6; jumptable 003464E6 default case, cases 802,804,808,813-815,819,820,822,826-829,838,839,842-844,849-853,855-859,862,869,871-873,875,876,878-882,884,885,887-893,895,896
3464E2:  MOV.W           R6, #0xFFFFFFFF
3464E6:  TBH.W           [PC,R0,LSL#1]; switch jump
3464EA:  DCW 0x63; jump table for switch statement
3464EC:  DCW 0x83
3464EE:  DCW 0x86
3464F0:  DCW 0x83
3464F2:  DCW 0xA9
3464F4:  DCW 0xCA
3464F6:  DCW 0xEB
3464F8:  DCW 0x83
3464FA:  DCW 0xF80
3464FC:  DCW 0x182
3464FE:  DCW 0x1A6
346500:  DCW 0xF80
346502:  DCW 0x83
346504:  DCW 0x83
346506:  DCW 0x83
346508:  DCW 0x1F8
34650A:  DCW 0x212
34650C:  DCW 0x22C
34650E:  DCW 0x83
346510:  DCW 0x83
346512:  DCW 0x24F
346514:  DCW 0x83
346516:  DCW 0x263
346518:  DCW 0x282
34651A:  DCW 0x2A1
34651C:  DCW 0x83
34651E:  DCW 0x83
346520:  DCW 0x83
346522:  DCW 0x83
346524:  DCW 0x2FA
346526:  DCW 0x383
346528:  DCW 0x3A7
34652A:  DCW 0x3D1
34652C:  DCW 0x3EE
34652E:  DCW 0x40B
346530:  DCW 0x425
346532:  DCW 0x43F
346534:  DCW 0x83
346536:  DCW 0x83
346538:  DCW 0x45C
34653A:  DCW 0x479
34653C:  DCW 0x83
34653E:  DCW 0x83
346540:  DCW 0x83
346542:  DCW 0x493
346544:  DCW 0x4B2
346546:  DCW 0x4D1
346548:  DCW 0x529
34654A:  DCW 0x83
34654C:  DCW 0x83
34654E:  DCW 0x83
346550:  DCW 0x83
346552:  DCW 0x83
346554:  DCW 0x548
346556:  DCW 0x83
346558:  DCW 0x83
34655A:  DCW 0x83
34655C:  DCW 0x83
34655E:  DCW 0x83
346560:  DCW 0x579
346562:  DCW 0x598
346564:  DCW 0x83
346566:  DCW 0x5B7
346568:  DCW 0x5D6
34656A:  DCW 0x5ED
34656C:  DCW 0x604
34656E:  DCW 0x623
346570:  DCW 0x6EC
346572:  DCW 0x83
346574:  DCW 0x708
346576:  DCW 0x83
346578:  DCW 0x83
34657A:  DCW 0x83
34657C:  DCW 0x722
34657E:  DCW 0x83
346580:  DCW 0x83
346582:  DCW 0x819
346584:  DCW 0x83
346586:  DCW 0x83
346588:  DCW 0x83
34658A:  DCW 0x83
34658C:  DCW 0x83
34658E:  DCW 0x844
346590:  DCW 0x83
346592:  DCW 0x83
346594:  DCW 0x84C
346596:  DCW 0x83
346598:  DCW 0x83
34659A:  DCW 0x83
34659C:  DCW 0x83
34659E:  DCW 0x83
3465A0:  DCW 0x83
3465A2:  DCW 0x83
3465A4:  DCW 0xF80
3465A6:  DCW 0x83
3465A8:  DCW 0x83
3465AA:  DCW 0x8DB
3465AC:  DCW 0x8F9
3465AE:  DCW 0xF80
3465B0:  MOV             R0, R8; jumptable 003464E6 case 801
3465B2:  MOVS            R1, #1; __int16
3465B4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3465B8:  LDR.W           R0, =(ScriptParams_ptr - 0x3465C2)
3465BC:  MOVS            R5, #0
3465BE:  ADD             R0, PC; ScriptParams_ptr
3465C0:  LDR             R0, [R0]; ScriptParams
3465C2:  LDR             R0, [R0]
3465C4:  CMP             R0, #0
3465C6:  BLT.W           loc_34771C
3465CA:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3465D6)
3465CE:  UXTB            R3, R0
3465D0:  LSRS            R0, R0, #8
3465D2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3465D4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3465D6:  LDR             R1, [R1]; CPools::ms_pPedPool
3465D8:  LDR             R2, [R1,#4]
3465DA:  LDRB            R2, [R2,R0]
3465DC:  CMP             R2, R3
3465DE:  BNE.W           loc_34771C
3465E2:  MOVW            R2, #0x7CC
3465E6:  LDR             R1, [R1]
3465E8:  MLA.W           R4, R0, R2, R1
3465EC:  B.W             loc_34771E
3465F0:  MOVS            R5, #0xFF; jumptable 003464E6 default case, cases 802,804,808,813-815,819,820,822,826-829,838,839,842-844,849-853,855-859,862,869,871-873,875,876,878-882,884,885,887-893,895,896
3465F2:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
3465F6:  MOV             R0, R8; jumptable 003464E6 case 803
3465F8:  MOVS            R1, #2; __int16
3465FA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3465FE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x346610)
346602:  MOVW            R3, #0xA2C
346606:  LDR.W           R0, =(ScriptParams_ptr - 0x346612)
34660A:  MOVS            R5, #0
34660C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34660E:  ADD             R0, PC; ScriptParams_ptr
346610:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
346612:  LDR             R0, [R0]; ScriptParams
346614:  LDRD.W          R2, R0, [R0]
346618:  CMP             R0, #0
34661A:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34661C:  MOV.W           R2, R2,LSR#8
346620:  LDR             R1, [R1]
346622:  MLA.W           R1, R2, R3, R1
346626:  LDRB.W          R2, [R1,#0x5C0]
34662A:  AND.W           R3, R2, #0xFB
34662E:  IT NE
346630:  ORRNE.W         R3, R2, #4
346634:  STRB.W          R3, [R1,#0x5C0]
346638:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
34663C:  MOV             R0, R8; jumptable 003464E6 case 805
34663E:  MOVS            R1, #1; __int16
346640:  MOVS            R4, #1
346642:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346646:  LDR.W           R0, =(ScriptParams_ptr - 0x346650)
34664A:  MOVS            R5, #0
34664C:  ADD             R0, PC; ScriptParams_ptr
34664E:  LDR             R0, [R0]; ScriptParams
346650:  LDR             R0, [R0]
346652:  CMP             R0, #0
346654:  BLT.W           loc_347776
346658:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x346664)
34665C:  UXTB            R3, R0
34665E:  LSRS            R0, R0, #8
346660:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
346662:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
346664:  LDR             R1, [R1]; CPools::ms_pVehiclePool
346666:  LDR             R2, [R1,#4]
346668:  LDRB            R2, [R2,R0]
34666A:  CMP             R2, R3
34666C:  BNE.W           loc_347776
346670:  MOVW            R2, #0xA2C
346674:  LDR             R1, [R1]
346676:  MLA.W           R2, R0, R2, R1
34667A:  B.W             loc_347778
34667E:  MOV             R0, R8; jumptable 003464E6 case 806
346680:  MOVS            R1, #1; __int16
346682:  MOVS            R4, #1
346684:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346688:  LDR.W           R0, =(ScriptParams_ptr - 0x346692)
34668C:  MOVS            R5, #0
34668E:  ADD             R0, PC; ScriptParams_ptr
346690:  LDR             R0, [R0]; ScriptParams
346692:  LDR             R0, [R0]
346694:  CMP             R0, #0
346696:  BLT.W           loc_3477B4
34669A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3466A6)
34669E:  UXTB            R3, R0
3466A0:  LSRS            R0, R0, #8
3466A2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3466A4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3466A6:  LDR             R1, [R1]; CPools::ms_pPedPool
3466A8:  LDR             R2, [R1,#4]
3466AA:  LDRB            R2, [R2,R0]
3466AC:  CMP             R2, R3
3466AE:  BNE.W           loc_3477B4
3466B2:  MOVW            R2, #0x7CC
3466B6:  LDR             R1, [R1]
3466B8:  MLA.W           R2, R0, R2, R1
3466BC:  B.W             loc_3477B6
3466C0:  MOV             R0, R8; jumptable 003464E6 case 807
3466C2:  MOVS            R1, #5; __int16
3466C4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3466C8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3466D0)
3466CC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3466CE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3466D0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3466D2:  LDR             R1, [R0,#8]
3466D4:  CMP             R1, #0
3466D6:  BEQ.W           loc_347B94
3466DA:  MOVW            R2, #0xA2C
3466DE:  SUBS            R5, R1, #1
3466E0:  MUL.W           R4, R1, R2
3466E4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3466F0)
3466E8:  MOVW            R11, #0xFA00
3466EC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3466EE:  MOVT            R11, #0xFFFF
3466F2:  LDR.W           R10, [R1]; CPools::ms_pVehiclePool ...
3466F6:  LDR.W           R1, =(ScriptParams_ptr - 0x3466FE)
3466FA:  ADD             R1, PC; ScriptParams_ptr
3466FC:  LDR             R1, [R1]; ScriptParams
3466FE:  STR             R1, [SP,#0x170+var_134]
346700:  LDR.W           R1, =(ScriptParams_ptr - 0x346708)
346704:  ADD             R1, PC; ScriptParams_ptr
346706:  LDR             R1, [R1]; ScriptParams
346708:  STR             R1, [SP,#0x170+var_138]
34670A:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x346712)
34670E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
346710:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
346712:  STR             R1, [SP,#0x170+var_13C]
346714:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x34671C)
346718:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
34671A:  LDR             R1, [R1]; CTheScripts::MissionCleanUp ...
34671C:  STR             R1, [SP,#0x170+var_140]
34671E:  B               loc_34672A
346720:  SUBS            R5, #1
346722:  LDR.W           R0, [R10]; CPools::ms_pVehiclePool
346726:  SUBW            R4, R4, #0xA2C
34672A:  LDR             R1, [R0,#4]
34672C:  LDRSB           R1, [R1,R5]
34672E:  CMP             R1, #0
346730:  BLT             loc_3467DC
346732:  LDR             R0, [R0]
346734:  ADD.W           R9, R0, R4
346738:  SUBW            R6, R9, #0xA2C
34673C:  CMP             R6, #0
34673E:  BEQ             loc_3467DC
346740:  MOV             R0, R6; this
346742:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
346746:  CMP             R0, #1
346748:  BEQ             loc_346754
34674A:  MOV             R0, R6; this
34674C:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
346750:  CMP             R0, #2
346752:  BNE             loc_3467DC
346754:  LDRB.W          R0, [R9,R11]
346758:  LSLS            R0, R0, #0x1F
34675A:  BNE             loc_3467DC
34675C:  MOV             R0, #0xFFFFF5FA
346764:  LDRSH.W         R1, [R9,R0]
346768:  LDR             R0, [SP,#0x170+var_134]
34676A:  LDR             R0, [R0,#0x10]
34676C:  CMP             R0, R1
34676E:  BEQ             loc_346776
346770:  CMP.W           R0, #0xFFFFFFFF
346774:  BGT             loc_3467DC
346776:  MOV             R0, R6; this
346778:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
34677C:  CBZ             R0, loc_3467DC
34677E:  LDR             R0, [SP,#0x170+var_138]
346780:  LDM.W           R0, {R1-R3}; float
346784:  VLDR            S0, [R0,#0xC]
346788:  MOV             R0, R6; this
34678A:  VSTR            S0, [SP,#0x170+var_170]
34678E:  BLX             j__ZNK10CPlaceable12IsWithinAreaEffff; CPlaceable::IsWithinArea(float,float,float,float)
346792:  CBZ             R0, loc_3467DC
346794:  LDR             R0, [SP,#0x170+var_13C]
346796:  MOV             R2, #0xBFE6D523
34679E:  LDR             R0, [R0]
3467A0:  LDRD.W          R1, R0, [R0]
3467A4:  SUBS            R1, R6, R1
3467A6:  ASRS            R1, R1, #2
3467A8:  MUL.W           R9, R1, R2
3467AC:  MOVS            R1, #2; int
3467AE:  MOVS            R2, #0; bool
3467B0:  LDRB.W          R11, [R0,R9]
3467B4:  MOV             R0, R6; this
3467B6:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
3467BA:  LDRB.W          R0, [R8,#0xE6]
3467BE:  ORR.W           R6, R11, R9,LSL#8
3467C2:  CBZ             R0, loc_3467CE
3467C4:  LDR             R0, [SP,#0x170+var_140]; this
3467C6:  MOV             R1, R6; int
3467C8:  MOVS            R2, #1; unsigned __int8
3467CA:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
3467CE:  MOV             R11, #0xFFFFFA00
3467D6:  CBNZ            R5, loc_3467E6
3467D8:  B.W             loc_347B98
3467DC:  MOV.W           R6, #0xFFFFFFFF
3467E0:  CMP             R5, #0
3467E2:  BEQ.W           loc_347B98
3467E6:  ADDS            R0, R6, #1
3467E8:  BEQ             loc_346720
3467EA:  B.W             loc_347B98
3467EE:  MOV             R0, R8; jumptable 003464E6 case 810
3467F0:  MOVS            R1, #1; __int16
3467F2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3467F6:  LDR.W           R0, =(TheCamera_ptr - 0x3467FE)
3467FA:  ADD             R0, PC; TheCamera_ptr
3467FC:  LDR             R0, [R0]; TheCamera
3467FE:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
346802:  ADD.W           R1, R1, R1,LSL#5
346806:  ADD.W           R0, R0, R1,LSL#4
34680A:  LDRH.W          R0, [R0,#0x17E]
34680E:  CMP             R0, #0x12
346810:  BEQ.W           loc_347D5A
346814:  CMP             R0, #4
346816:  BNE.W           loc_3483E8
34681A:  LDR.W           R0, =(ScriptParams_ptr - 0x346826)
34681E:  LDR.W           R2, =(TheCamera_ptr - 0x346828)
346822:  ADD             R0, PC; ScriptParams_ptr
346824:  ADD             R2, PC; TheCamera_ptr
346826:  LDR             R0, [R0]; ScriptParams
346828:  LDRSH.W         R1, [R0]; __int16
34682C:  LDR             R0, [R2]; TheCamera ; this
34682E:  BLX             j__ZN7CCamera27SetZoomValueFollowPedScriptEs; CCamera::SetZoomValueFollowPedScript(short)
346832:  B.W             loc_3483E8
346836:  MOV             R0, R8; jumptable 003464E6 case 811
346838:  MOVS            R1, #6; __int16
34683A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34683E:  LDR.W           R0, =(ScriptParams_ptr - 0x346846)
346842:  ADD             R0, PC; ScriptParams_ptr
346844:  LDR             R0, [R0]; ScriptParams
346846:  LDR.W           R9, [R0]
34684A:  CMP.W           R9, #0xFFFFFFFF
34684E:  BGT             loc_346868
346850:  LDR.W           R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x34685C)
346854:  RSB.W           R1, R9, #0
346858:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
34685A:  RSB.W           R1, R1, R1,LSL#3
34685E:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
346860:  ADD.W           R0, R0, R1,LSL#2
346864:  LDR.W           R9, [R0,#0x18]
346868:  LDR.W           R0, =(ScriptParams_ptr - 0x346874)
34686C:  VLDR            S0, =-100.0
346870:  ADD             R0, PC; ScriptParams_ptr
346872:  LDR             R0, [R0]; ScriptParams
346874:  VLDR            S20, [R0,#0x14]
346878:  VLDR            S16, [R0,#0xC]
34687C:  VCMPE.F32       S20, S0
346880:  VLDR            S18, [R0,#0x10]
346884:  VMRS            APSR_nzcv, FPSCR
346888:  BGT             loc_3468A2
34688A:  VMOV            R0, S16; this
34688E:  VMOV            R1, S18; float
346892:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
346896:  VMOV.F32        S0, #0.5
34689A:  VMOV            S2, R0
34689E:  VADD.F32        S20, S2, S0
3468A2:  MOV             R0, R8; this
3468A4:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3468A8:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
3468AC:  VMOV            R0, S16
3468B0:  LDR.W           R3, =(ScriptParams_ptr - 0x3468C2)
3468B4:  VMOV            R1, S18
3468B8:  MOVS            R5, #0
3468BA:  VMOV            R2, S20
3468BE:  ADD             R3, PC; ScriptParams_ptr
3468C0:  LDR             R6, [R3]; ScriptParams
3468C2:  LDRB            R3, [R6,#(dword_81A90C - 0x81A908)]
3468C4:  LDR             R4, [R6,#(dword_81A910 - 0x81A908)]
3468C6:  STMEA.W         SP, {R3-R5}
3468CA:  MOV             R3, R9
3468CC:  STRD.W          R5, R5, [SP,#0x170+var_164]
3468D0:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
3468D4:  STR             R0, [R6]
3468D6:  B.W             loc_3477F4
3468DA:  MOV             R0, R8; jumptable 003464E6 case 816
3468DC:  MOVS            R1, #2; __int16
3468DE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3468E2:  LDR.W           R0, =(ScriptParams_ptr - 0x3468F4)
3468E6:  MOV.W           R3, #0x194
3468EA:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3468F6)
3468EE:  MOVS            R5, #0
3468F0:  ADD             R0, PC; ScriptParams_ptr
3468F2:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3468F4:  LDR             R0, [R0]; ScriptParams
3468F6:  LDR             R1, [R1]; CWorld::Players ...
3468F8:  LDRD.W          R2, R0, [R0]
3468FC:  CMP             R0, #0
3468FE:  IT NE
346900:  MOVNE           R0, #1
346902:  MLA.W           R1, R2, R3, R1
346906:  STRB.W          R0, [R1,#0x14C]
34690A:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
34690E:  MOV             R0, R8; jumptable 003464E6 case 817
346910:  MOVS            R1, #2; __int16
346912:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346916:  LDR.W           R0, =(ScriptParams_ptr - 0x346928)
34691A:  MOV.W           R3, #0x194
34691E:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x34692A)
346922:  MOVS            R5, #0
346924:  ADD             R0, PC; ScriptParams_ptr
346926:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
346928:  LDR             R0, [R0]; ScriptParams
34692A:  LDR             R1, [R1]; CWorld::Players ...
34692C:  LDRD.W          R2, R0, [R0]
346930:  CMP             R0, #0
346932:  IT NE
346934:  MOVNE           R0, #1
346936:  MLA.W           R1, R2, R3, R1
34693A:  STRB.W          R0, [R1,#0x14D]
34693E:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346942:  MOV             R0, R8; jumptable 003464E6 case 818
346944:  MOVS            R1, #2; __int16
346946:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34694A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34695C)
34694E:  MOVW            R3, #0x7CC
346952:  LDR.W           R0, =(ScriptParams_ptr - 0x34695E)
346956:  MOVS            R5, #0
346958:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34695A:  ADD             R0, PC; ScriptParams_ptr
34695C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34695E:  LDR             R0, [R0]; ScriptParams
346960:  LDRD.W          R2, R0, [R0]
346964:  CMP             R0, #0
346966:  LDR             R1, [R1]; CPools::ms_pPedPool
346968:  MOV.W           R2, R2,LSR#8
34696C:  LDR             R1, [R1]
34696E:  MLA.W           R1, R2, R3, R1
346972:  LDR.W           R2, [R1,#0x484]
346976:  BIC.W           R3, R2, #0x40000
34697A:  IT NE
34697C:  ORRNE.W         R3, R2, #0x40000
346980:  STR.W           R3, [R1,#0x484]
346984:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346988:  MOV             R0, R8; jumptable 003464E6 case 821
34698A:  MOVS            R1, #1; __int16
34698C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346990:  LDR.W           R0, =(ScriptParams_ptr - 0x34699E)
346994:  MOVS            R5, #0
346996:  LDR.W           R1, =(_ZN8CGarages15RespraysAreFreeE_ptr - 0x3469A0)
34699A:  ADD             R0, PC; ScriptParams_ptr
34699C:  ADD             R1, PC; _ZN8CGarages15RespraysAreFreeE_ptr
34699E:  LDR             R0, [R0]; ScriptParams
3469A0:  LDR             R1, [R1]; CGarages::RespraysAreFree ...
3469A2:  LDR             R0, [R0]
3469A4:  CMP             R0, #0
3469A6:  IT NE
3469A8:  MOVNE           R0, #1
3469AA:  STRB            R0, [R1]; CGarages::RespraysAreFree
3469AC:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
3469B0:  MOV             R0, R8; jumptable 003464E6 case 823
3469B2:  MOVS            R1, #2; __int16
3469B4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3469B8:  LDR.W           R0, =(ScriptParams_ptr - 0x3469C0)
3469BC:  ADD             R0, PC; ScriptParams_ptr
3469BE:  LDR             R0, [R0]; ScriptParams
3469C0:  LDR             R1, [R0]
3469C2:  CMP             R1, #0
3469C4:  BLT.W           loc_347800
3469C8:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3469D4)
3469CC:  UXTB            R3, R1
3469CE:  LSRS            R1, R1, #8
3469D0:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3469D2:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3469D4:  LDR             R0, [R0]; CPools::ms_pPedPool
3469D6:  LDR             R2, [R0,#4]
3469D8:  LDRB            R2, [R2,R1]
3469DA:  CMP             R2, R3
3469DC:  BNE.W           loc_347800
3469E0:  MOVW            R2, #0x7CC
3469E4:  LDR             R0, [R0]
3469E6:  MLA.W           R4, R1, R2, R0
3469EA:  B.W             loc_347802
3469EE:  MOV             R0, R8; jumptable 003464E6 case 824
3469F0:  MOVS            R1, #2; __int16
3469F2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3469F6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x346A06)
3469FA:  MOVW            R3, #0xA2C
3469FE:  LDR.W           R0, =(ScriptParams_ptr - 0x346A08)
346A02:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
346A04:  ADD             R0, PC; ScriptParams_ptr
346A06:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
346A08:  LDR             R0, [R0]; ScriptParams
346A0A:  LDRD.W          R2, R0, [R0]
346A0E:  CMP             R0, #0
346A10:  LDR             R1, [R1]; CPools::ms_pVehiclePool
346A12:  MOV.W           R2, R2,LSR#8
346A16:  LDR             R1, [R1]
346A18:  MLA.W           R1, R2, R3, R1
346A1C:  LDR             R2, [R1,#0x1C]
346A1E:  BIC.W           R3, R2, #0x80
346A22:  IT NE
346A24:  ORRNE.W         R3, R2, #0x80
346A28:  B.W             loc_347716
346A2C:  MOV             R0, R8; jumptable 003464E6 case 825
346A2E:  MOVS            R1, #0xB; __int16
346A30:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346A34:  LDR.W           R0, =(ScriptParams_ptr - 0x346A3E)
346A38:  MOVS            R5, #0
346A3A:  ADD             R0, PC; ScriptParams_ptr
346A3C:  LDR             R0, [R0]; ScriptParams
346A3E:  VLDR            S0, [R0]
346A42:  VLDR            S2, [R0,#4]
346A46:  VLDR            S8, [R0,#0x10]
346A4A:  VLDR            S4, [R0,#8]
346A4E:  VLDR            S10, [R0,#0x14]
346A52:  VMIN.F32        D7, D1, D4
346A56:  VLDR            S6, [R0,#0xC]
346A5A:  VMAX.F32        D6, D2, D5
346A5E:  VMIN.F32        D2, D2, D5
346A62:  VMAX.F32        D5, D0, D3
346A66:  VMIN.F32        D0, D0, D3
346A6A:  VSTR            S14, [SP,#0x170+var_130+4]
346A6E:  VSTR            S0, [SP,#0x170+var_130]
346A72:  VMAX.F32        D0, D1, D4
346A76:  VSTR            S4, [SP,#0x170+var_128]
346A7A:  LDRD.W          R6, R3, [R0,#(dword_81A920 - 0x81A908)]
346A7E:  LDRD.W          R2, R1, [R0,#(dword_81A928 - 0x81A908)]
346A82:  LDR             R0, [R0,#(dword_81A930 - 0x81A908)]
346A84:  VSTR            S0, [SP,#0x170+var_F0+4]
346A88:  CMP             R0, #0
346A8A:  VSTR            S10, [SP,#0x170+var_F0]
346A8E:  VSTR            S12, [SP,#0x170+var_E8]
346A92:  IT NE
346A94:  MOVNE           R0, #1
346A96:  CMP             R1, #0
346A98:  IT NE
346A9A:  MOVNE           R1, #1
346A9C:  CMP             R2, #0
346A9E:  IT NE
346AA0:  MOVNE           R2, #1
346AA2:  CMP             R3, #0
346AA4:  IT NE
346AA6:  MOVNE           R3, #1
346AA8:  CMP             R6, #0
346AAA:  IT NE
346AAC:  MOVNE           R6, #1
346AAE:  STRD.W          R5, R6, [SP,#0x170+var_170]; __int16
346AB2:  STRD.W          R3, R2, [SP,#0x170+var_168]; bool
346AB6:  SUB.W           R2, R7, #-var_62; CVector *
346ABA:  STRD.W          R1, R0, [SP,#0x170+var_160]; bool
346ABE:  ADD             R0, SP, #0x170+var_130; this
346AC0:  ADD             R1, SP, #0x170+var_F0; CVector *
346AC2:  MOVS            R3, #(stderr+2); __int16 *
346AC4:  BLX             j__ZN6CWorld27FindObjectsIntersectingCubeERK7CVectorS2_PssPP7CEntitybbbbb; CWorld::FindObjectsIntersectingCube(CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool,bool,bool)
346AC8:  LDRSH.W         R0, [R7,#var_62]
346ACC:  MOVS            R1, #0
346ACE:  CMP             R0, #0
346AD0:  MOV             R0, R8; this
346AD2:  IT GT
346AD4:  MOVGT           R1, #1; unsigned __int8
346AD6:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
346ADA:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346ADE:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346AE6); jumptable 003464E6 case 830
346AE2:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346AE4:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346AE6:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346AE8:  CMP             R0, #0x5F ; '_'
346AEA:  BHI.W           loc_3483E8
346AEE:  MOV             R0, R8; this
346AF0:  MOVS            R1, #2; __int16
346AF2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346AF6:  SUB.W           R4, R7, #-var_4E
346AFA:  MOV             R0, R8; this
346AFC:  MOVS            R2, #8; unsigned __int8
346AFE:  MOV             R1, R4; char *
346B00:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
346B04:  ADR.W           R1, aShBck; "SH_BCK"
346B08:  MOV             R0, R4; char *
346B0A:  BLX             strcasecmp
346B0E:  CMP             R0, #0
346B10:  BEQ.W           loc_3483E8
346B14:  SUB.W           R0, R7, #-var_4E; char *
346B18:  ADR.W           R1, aLoad01; "LOAD_01"
346B1C:  BLX             strcasecmp
346B20:  CBNZ            R0, loc_346B3A
346B22:  LDR.W           R0, =(_ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr - 0x346B2A)
346B26:  ADD             R0, PC; _ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr
346B28:  LDR             R0, [R0]; CCutsceneMgr::IntroTextIsActiveHack ...
346B2A:  LDRB            R0, [R0]; CCutsceneMgr::IntroTextIsActiveHack
346B2C:  CBNZ            R0, loc_346B3A
346B2E:  LDR.W           R0, =(_ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr - 0x346B38)
346B32:  MOVS            R1, #1
346B34:  ADD             R0, PC; _ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr
346B36:  LDR             R0, [R0]; CCutsceneMgr::IntroTextIsActiveHack ...
346B38:  STRB            R1, [R0]; CCutsceneMgr::IntroTextIsActiveHack
346B3A:  LDR.W           R0, =(TheText_ptr - 0x346B46)
346B3E:  SUB.W           R4, R7, #-var_4E
346B42:  ADD             R0, PC; TheText_ptr
346B44:  MOV             R1, R4; CKeyGen *
346B46:  LDR             R0, [R0]; TheText ; this
346B48:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
346B4C:  LDR.W           R0, =(ScriptParams_ptr - 0x346B58)
346B50:  ADD             R2, SP, #0x170+var_B8; float *
346B52:  ADD             R3, SP, #0x170+var_C8; float *
346B54:  ADD             R0, PC; ScriptParams_ptr
346B56:  LDR             R0, [R0]; ScriptParams
346B58:  LDRD.W          R1, R0, [R0]
346B5C:  STR             R1, [SP,#0x170+var_130]
346B5E:  ADD             R1, SP, #0x170+var_F0; float *
346B60:  STR             R0, [SP,#0x170+var_F0]
346B62:  MOV.W           R0, #0x3F800000
346B66:  STR             R0, [SP,#0x170+var_B8]
346B68:  STR             R0, [SP,#0x170+var_C8]
346B6A:  ADD             R0, SP, #0x170+var_130; float *
346B6C:  BLX             j__Z13CorrectAspectRfS_S_S_; CorrectAspect(float &,float &,float &,float &)
346B70:  LDR.W           R0, =(RsGlobal_ptr - 0x346B7C)
346B74:  VLDR            S2, =640.0
346B78:  ADD             R0, PC; RsGlobal_ptr
346B7A:  LDR.W           R1, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346B84)
346B7E:  LDR             R0, [R0]; RsGlobal
346B80:  ADD             R1, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346B82:  LDR             R5, [R1]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346B84:  VLDR            S0, [R0,#4]
346B88:  LDR.W           R1, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346B96)
346B8C:  VCVT.F32.S32    S0, S0
346B90:  LDRH            R2, [R5]; CTheScripts::NumberOfIntroTextLinesThisFrame
346B92:  ADD             R1, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346B94:  LDR             R6, [R1]; CTheScripts::IntroTextLines ...
346B96:  ADD.W           R1, R2, R2,LSL#4
346B9A:  MOVS            R2, #8; size_t
346B9C:  ADD.W           R1, R6, R1,LSL#2
346BA0:  VDIV.F32        S0, S0, S2
346BA4:  VLDR            S2, [SP,#0x170+var_130]
346BA8:  VDIV.F32        S0, S2, S0
346BAC:  VSTR            S0, [R1,#0x2C]
346BB0:  VLDR            S0, [R0,#8]
346BB4:  ADD.W           R0, R1, #0x34 ; '4'; char *
346BB8:  VLDR            S2, =448.0
346BBC:  VCVT.F32.S32    S0, S0
346BC0:  VDIV.F32        S0, S0, S2
346BC4:  VLDR            S2, [SP,#0x170+var_F0]
346BC8:  VDIV.F32        S0, S2, S0
346BCC:  VSTR            S0, [R1,#0x30]
346BD0:  MOV             R1, R4; char *
346BD2:  BLX             strncpy
346BD6:  LDRH            R0, [R5]; CTheScripts::NumberOfIntroTextLinesThisFrame
346BD8:  MOV.W           R2, #0xFFFFFFFF
346BDC:  ADD.W           R1, R0, R0,LSL#4
346BE0:  ADDS            R0, #1
346BE2:  ADD.W           R1, R6, R1,LSL#2
346BE6:  STRD.W          R2, R2, [R1,#0x3C]
346BEA:  STRH            R0, [R5]; CTheScripts::NumberOfIntroTextLinesThisFrame
346BEC:  B.W             loc_3483E8
346BF0:  MOV             R0, R8; jumptable 003464E6 case 831
346BF2:  MOVS            R1, #2; __int16
346BF4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346BF8:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346C06)
346BFC:  MOVS            R5, #0
346BFE:  LDR.W           R1, =(ScriptParams_ptr - 0x346C0C)
346C02:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346C04:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346C10)
346C08:  ADD             R1, PC; ScriptParams_ptr
346C0A:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346C0C:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346C0E:  LDR             R1, [R1]; ScriptParams
346C10:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
346C12:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346C14:  LDRD.W          R3, R1, [R1]
346C18:  ADD.W           R0, R0, R0,LSL#4
346C1C:  STR.W           R3, [R2,R0,LSL#2]
346C20:  ADD.W           R0, R2, R0,LSL#2
346C24:  STR             R1, [R0,#4]
346C26:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346C2A:  ALIGN 4
346C2C:  DCFS -100.0
346C30:  DCFS 640.0
346C34:  DCFS 448.0
346C38:  MOV             R0, R8; jumptable 003464E6 case 832
346C3A:  MOVS            R1, #4; __int16
346C3C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346C40:  LDR.W           R0, =(ScriptParams_ptr - 0x346C48)
346C44:  ADD             R0, PC; ScriptParams_ptr
346C46:  LDR             R0, [R0]; ScriptParams
346C48:  LDRB            R1, [R0]; unsigned __int8
346C4A:  LDRB            R2, [R0,#(dword_81A90C - 0x81A908)]; unsigned __int8
346C4C:  LDRB            R3, [R0,#(dword_81A910 - 0x81A908)]; unsigned __int8
346C4E:  LDRB            R0, [R0,#(dword_81A914 - 0x81A908)]
346C50:  STR             R0, [SP,#0x170+var_170]; unsigned __int8
346C52:  ADD             R0, SP, #0x170+var_130; this
346C54:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
346C58:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346C66)
346C5C:  MOVS            R5, #0
346C5E:  LDR.W           R6, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346C6C)
346C62:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346C64:  LDRB.W          R1, [SP,#0x170+var_130]
346C68:  ADD             R6, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346C6A:  LDRB.W          R2, [SP,#0x170+var_130+3]
346C6E:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346C70:  LDR             R6, [R6]; CTheScripts::IntroTextLines ...
346C72:  LDRH.W          R3, [SP,#0x170+var_130+1]
346C76:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346C78:  ADD.W           R0, R0, R0,LSL#4
346C7C:  ADD.W           R0, R6, R0,LSL#2
346C80:  STRB            R2, [R0,#0xB]
346C82:  STRH.W          R3, [R0,#9]
346C86:  STRB            R1, [R0,#8]
346C88:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346C8C:  MOV             R0, R8; jumptable 003464E6 case 833
346C8E:  MOVS            R1, #1; __int16
346C90:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346C94:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346CA2)
346C98:  MOVS            R5, #0
346C9A:  LDR.W           R1, =(ScriptParams_ptr - 0x346CA8)
346C9E:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346CA0:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346CAC)
346CA4:  ADD             R1, PC; ScriptParams_ptr
346CA6:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346CA8:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346CAA:  LDR             R1, [R1]; ScriptParams
346CAC:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
346CAE:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346CB0:  LDR             R1, [R1]
346CB2:  ADD.W           R0, R0, R0,LSL#4
346CB6:  CMP             R1, #0
346CB8:  IT NE
346CBA:  MOVNE           R1, #1
346CBC:  ADD.W           R0, R2, R0,LSL#2
346CC0:  STRB            R1, [R0,#0xC]
346CC2:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346CC6:  MOV             R0, R8; jumptable 003464E6 case 834
346CC8:  MOVS            R1, #1; __int16
346CCA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346CCE:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346CDC)
346CD2:  MOVS            R5, #0
346CD4:  LDR.W           R1, =(ScriptParams_ptr - 0x346CE2)
346CD8:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346CDA:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346CE6)
346CDE:  ADD             R1, PC; ScriptParams_ptr
346CE0:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346CE2:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346CE4:  LDR             R1, [R1]; ScriptParams
346CE6:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
346CE8:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346CEA:  LDR             R1, [R1]
346CEC:  ADD.W           R0, R0, R0,LSL#4
346CF0:  CMP             R1, #0
346CF2:  IT NE
346CF4:  MOVNE           R1, #1
346CF6:  ADD.W           R0, R2, R0,LSL#2
346CFA:  STRB            R1, [R0,#0xD]
346CFC:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346D00:  MOV             R0, R8; jumptable 003464E6 case 835
346D02:  MOVS            R1, #1; __int16
346D04:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346D08:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346D16)
346D0C:  MOVS            R5, #0
346D0E:  LDR.W           R1, =(ScriptParams_ptr - 0x346D1C)
346D12:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346D14:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346D20)
346D18:  ADD             R1, PC; ScriptParams_ptr
346D1A:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346D1C:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346D1E:  LDR             R1, [R1]; ScriptParams
346D20:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
346D22:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346D24:  LDR             R1, [R1]
346D26:  ADD.W           R0, R0, R0,LSL#4
346D2A:  ADD.W           R0, R2, R0,LSL#2
346D2E:  STR             R1, [R0,#0x10]
346D30:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346D34:  MOV             R0, R8; jumptable 003464E6 case 836
346D36:  MOVS            R1, #1; __int16
346D38:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346D3C:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346D4A)
346D40:  MOVS            R5, #0
346D42:  LDR.W           R1, =(ScriptParams_ptr - 0x346D50)
346D46:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346D48:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346D54)
346D4C:  ADD             R1, PC; ScriptParams_ptr
346D4E:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346D50:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346D52:  LDR             R1, [R1]; ScriptParams
346D54:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
346D56:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346D58:  LDR             R1, [R1]
346D5A:  ADD.W           R0, R0, R0,LSL#4
346D5E:  ADD.W           R0, R2, R0,LSL#2
346D62:  STR             R1, [R0,#0x14]
346D64:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346D68:  MOV             R0, R8; jumptable 003464E6 case 837
346D6A:  MOVS            R1, #1; __int16
346D6C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346D70:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346D7E)
346D74:  MOVS            R5, #0
346D76:  LDR.W           R1, =(ScriptParams_ptr - 0x346D84)
346D7A:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346D7C:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346D88)
346D80:  ADD             R1, PC; ScriptParams_ptr
346D82:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346D84:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346D86:  LDR             R1, [R1]; ScriptParams
346D88:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
346D8A:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346D8C:  LDR             R1, [R1]
346D8E:  ADD.W           R0, R0, R0,LSL#4
346D92:  CMP             R1, #0
346D94:  IT NE
346D96:  MOVNE           R1, #1
346D98:  ADD.W           R0, R2, R0,LSL#2
346D9C:  STRB            R1, [R0,#0xE]
346D9E:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346DA2:  MOV             R0, R8; jumptable 003464E6 case 840
346DA4:  MOVS            R1, #1; __int16
346DA6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346DAA:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346DB8)
346DAE:  MOVS            R5, #0
346DB0:  LDR.W           R1, =(ScriptParams_ptr - 0x346DBE)
346DB4:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346DB6:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346DC2)
346DBA:  ADD             R1, PC; ScriptParams_ptr
346DBC:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346DBE:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346DC0:  LDR             R1, [R1]; ScriptParams
346DC2:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
346DC4:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346DC6:  LDR             R1, [R1]
346DC8:  ADD.W           R0, R0, R0,LSL#4
346DCC:  CMP             R1, #0
346DCE:  IT NE
346DD0:  MOVNE           R1, #1
346DD2:  ADD.W           R0, R2, R0,LSL#2
346DD6:  STRB            R1, [R0,#0x1C]
346DD8:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346DDC:  MOV             R0, R8; jumptable 003464E6 case 841
346DDE:  MOVS            R1, #1; __int16
346DE0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346DE4:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346DF2)
346DE8:  MOVS            R5, #0
346DEA:  LDR.W           R1, =(ScriptParams_ptr - 0x346DF8)
346DEE:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
346DF0:  LDR.W           R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x346DFC)
346DF4:  ADD             R1, PC; ScriptParams_ptr
346DF6:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
346DF8:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
346DFA:  LDR             R1, [R1]; ScriptParams
346DFC:  LDR             R2, [R2]; CTheScripts::IntroTextLines ...
346DFE:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
346E00:  LDR             R1, [R1]
346E02:  ADD.W           R0, R0, R0,LSL#4
346E06:  ADD.W           R0, R2, R0,LSL#2
346E0A:  STR             R1, [R0,#0x28]
346E0C:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
346E10:  MOV             R0, R8; jumptable 003464E6 case 845
346E12:  MOVS            R1, #4; __int16
346E14:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346E18:  LDR.W           R0, =(ScriptParams_ptr - 0x346E20)
346E1C:  ADD             R0, PC; ScriptParams_ptr
346E1E:  LDR             R0, [R0]; ScriptParams
346E20:  LDR             R1, [R0]
346E22:  CMP             R1, #0
346E24:  BLT.W           loc_347842
346E28:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x346E34)
346E2C:  UXTB            R3, R1
346E2E:  LSRS            R1, R1, #8
346E30:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
346E32:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
346E34:  LDR             R0, [R0]; CPools::ms_pObjectPool
346E36:  LDR             R2, [R0,#4]
346E38:  LDRB            R2, [R2,R1]
346E3A:  CMP             R2, R3
346E3C:  BNE.W           loc_347842
346E40:  MOV.W           R2, #0x1A4
346E44:  LDR             R0, [R0]
346E46:  MLA.W           R9, R1, R2, R0
346E4A:  B.W             loc_347846
346E4E:  MOV             R0, R8; jumptable 003464E6 case 846
346E50:  MOVS            R1, #8; __int16
346E52:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346E56:  LDR.W           R0, =(ScriptParams_ptr - 0x346E5E)
346E5A:  ADD             R0, PC; ScriptParams_ptr
346E5C:  LDR             R0, [R0]; ScriptParams
346E5E:  LDR             R1, [R0]
346E60:  CMP             R1, #0
346E62:  BLT.W           loc_347862
346E66:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x346E72)
346E6A:  UXTB            R3, R1
346E6C:  LSRS            R1, R1, #8
346E6E:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
346E70:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
346E72:  LDR             R0, [R0]; CPools::ms_pObjectPool
346E74:  LDR             R2, [R0,#4]
346E76:  LDRB            R2, [R2,R1]
346E78:  CMP             R2, R3
346E7A:  BNE.W           loc_347862
346E7E:  MOV.W           R2, #0x1A4
346E82:  LDR             R0, [R0]
346E84:  MLA.W           R9, R1, R2, R0
346E88:  B.W             loc_347866
346E8C:  MOV             R0, R8; jumptable 003464E6 case 847
346E8E:  MOVS            R1, #1; __int16
346E90:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346E94:  LDR.W           R0, =(ScriptParams_ptr - 0x346E9C)
346E98:  ADD             R0, PC; ScriptParams_ptr
346E9A:  LDR             R0, [R0]; ScriptParams
346E9C:  LDR             R1, [R0]
346E9E:  CMP             R1, #0
346EA0:  BLT.W           loc_34841A
346EA4:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x346EAC)
346EA8:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
346EAA:  LDR             R0, [R0]; CPools::ms_pPedPool ...
346EAC:  LDR             R2, [R0]; CPools::ms_pPedPool
346EAE:  LSRS            R0, R1, #8
346EB0:  UXTB            R1, R1
346EB2:  LDR             R3, [R2,#4]
346EB4:  LDRB            R3, [R3,R0]
346EB6:  CMP             R3, R1
346EB8:  BNE.W           loc_34841A
346EBC:  MOVW            R3, #0x7CC
346EC0:  LDR             R1, [R2]
346EC2:  MLA.W           R5, R0, R3, R1
346EC6:  CMP             R5, #0
346EC8:  BEQ.W           loc_34841A
346ECC:  LDRB.W          R2, [R5,#0x448]
346ED0:  CMP             R2, #2
346ED2:  BNE.W           loc_34841A
346ED6:  MOVW            R2, #0x7CC
346EDA:  MLA.W           R0, R0, R2, R1
346EDE:  LDRB.W          R1, [R0,#0x485]
346EE2:  LSLS            R1, R1, #0x1F
346EE4:  ITT NE
346EE6:  LDRNE.W         R1, [R0,#0x590]; CPed *
346EEA:  CMPNE           R1, #0
346EEC:  BNE.W           loc_348414
346EF0:  ADDW            R6, R0, #0x484
346EF4:  MOV             R0, R5; this
346EF6:  MOVS            R1, #1; unsigned __int8
346EF8:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
346EFC:  MOV             R0, R5; this
346EFE:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
346F02:  CBZ             R0, loc_346F1C
346F04:  ADD.W           R4, R0, #8
346F08:  MOV             R1, R5; CPed *
346F0A:  MOV             R0, R4; this
346F0C:  BLX             j__ZNK19CPedGroupMembership10IsFollowerEPK4CPed; CPedGroupMembership::IsFollower(CPed const*)
346F10:  CMP             R0, #1
346F12:  BNE             loc_346F1C
346F14:  MOV             R0, R4; this
346F16:  MOV             R1, R5; CPed *
346F18:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEP4CPed; CPedGroupMembership::RemoveMember(CPed *)
346F1C:  LDR.W           R0, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x346F24)
346F20:  ADD             R0, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
346F22:  LDR             R0, [R0]; CPopulation::ms_nTotalMissionPeds ...
346F24:  LDR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
346F26:  SUBS            R1, #1; CEntity *
346F28:  STR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
346F2A:  LDR             R0, [R6,#4]
346F2C:  ORR.W           R0, R0, #8
346F30:  STR             R0, [R6,#4]
346F32:  MOV             R0, R5; this
346F34:  BLX             j__ZN6CWorld31RemoveReferencesToDeletedObjectEP7CEntity; CWorld::RemoveReferencesToDeletedObject(CEntity *)
346F38:  B.W             loc_34841A
346F3C:  MOV             R0, R8; jumptable 003464E6 case 848
346F3E:  MOVS            R1, #2; __int16
346F40:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346F44:  LDR.W           R0, =(ScriptParams_ptr - 0x346F4C)
346F48:  ADD             R0, PC; ScriptParams_ptr
346F4A:  LDR             R0, [R0]; ScriptParams
346F4C:  LDR             R1, [R0]
346F4E:  CMP             R1, #0
346F50:  BLT.W           loc_347906
346F54:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x346F60)
346F58:  UXTB            R3, R1
346F5A:  LSRS            R1, R1, #8
346F5C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
346F5E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
346F60:  LDR             R0, [R0]; CPools::ms_pPedPool
346F62:  LDR             R2, [R0,#4]
346F64:  LDRB            R2, [R2,R1]
346F66:  CMP             R2, R3
346F68:  BNE.W           loc_347906
346F6C:  MOVW            R2, #0x7CC
346F70:  LDR             R0, [R0]
346F72:  MLA.W           R0, R1, R2, R0
346F76:  B.W             loc_347908
346F7A:  MOV             R0, R8; jumptable 003464E6 case 854
346F7C:  MOVS            R1, #7; __int16
346F7E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346F82:  LDR.W           R0, =(ScriptParams_ptr - 0x346F8A)
346F86:  ADD             R0, PC; ScriptParams_ptr
346F88:  LDR             R0, [R0]; ScriptParams
346F8A:  VLDR            S0, [R0,#0x10]
346F8E:  VLDR            S2, [R0,#4]
346F92:  VLDR            S4, [R0,#0x14]
346F96:  VLDR            S8, [R0,#8]
346F9A:  VMIN.F32        D3, D1, D0
346F9E:  VMAX.F32        D0, D1, D0
346FA2:  VMIN.F32        D1, D4, D2
346FA6:  VMAX.F32        D2, D4, D2
346FAA:  VMOV            R1, S6; int
346FAE:  VMOV            R2, S0; float
346FB2:  VLDR            S0, [R0,#0x18]
346FB6:  VMOV            R3, S2; float
346FBA:  VLDR            S2, [R0,#0xC]
346FBE:  LDR             R0, [R0]; this
346FC0:  VMIN.F32        D3, D1, D0
346FC4:  VSTR            S4, [SP,#0x170+var_170]
346FC8:  VMAX.F32        D0, D1, D0
346FCC:  VSTR            S6, [SP,#0x170+var_16C]
346FD0:  VSTR            S0, [SP,#0x170+var_168]
346FD4:  BLX             j__ZN10CExplosion22TestForExplosionInAreaEiffffff; CExplosion::TestForExplosionInArea(int,float,float,float,float,float,float)
346FD8:  B.W             loc_347B16
346FDC:  MOV             R0, R8; jumptable 003464E6 case 860
346FDE:  MOVS            R1, #5; __int16
346FE0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
346FE4:  LDR.W           R0, =(ScriptParams_ptr - 0x346FEC)
346FE8:  ADD             R0, PC; ScriptParams_ptr
346FEA:  LDR             R0, [R0]; ScriptParams
346FEC:  LDR             R1, [R0]
346FEE:  CMP             R1, #0
346FF0:  BLT.W           loc_347942
346FF4:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x347000)
346FF8:  UXTB            R3, R1
346FFA:  LSRS            R1, R1, #8
346FFC:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
346FFE:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
347000:  LDR             R0, [R0]; CPools::ms_pObjectPool
347002:  LDR             R2, [R0,#4]
347004:  LDRB            R2, [R2,R1]
347006:  CMP             R2, R3
347008:  BNE.W           loc_347942
34700C:  MOV.W           R2, #0x1A4
347010:  LDR             R0, [R0]
347012:  MLA.W           R1, R1, R2, R0
347016:  B.W             loc_347944
34701A:  MOV             R0, R8; jumptable 003464E6 case 861
34701C:  MOVS            R1, #2; __int16
34701E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
347022:  LDR.W           R0, =(ScriptParams_ptr - 0x34702A)
347026:  ADD             R0, PC; ScriptParams_ptr
347028:  LDR             R0, [R0]; ScriptParams
34702A:  LDR             R1, [R0]
34702C:  CMP             R1, #0
34702E:  BLT.W           loc_347978
347032:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34703E)
347036:  UXTB            R3, R1
347038:  LSRS            R1, R1, #8
34703A:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34703C:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
34703E:  LDR             R0, [R0]; CPools::ms_pObjectPool
347040:  LDR             R2, [R0,#4]
347042:  LDRB            R2, [R2,R1]
347044:  CMP             R2, R3
347046:  BNE.W           loc_347978
34704A:  MOV.W           R2, #0x1A4
34704E:  LDR             R0, [R0]
347050:  MLA.W           R4, R1, R2, R0
347054:  B.W             loc_34797A
347058:  MOV             R0, R8; jumptable 003464E6 case 863
34705A:  MOVS            R1, #2; __int16
34705C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
347060:  LDR.W           R0, =(ScriptParams_ptr - 0x347068)
347064:  ADD             R0, PC; ScriptParams_ptr
347066:  LDR             R0, [R0]; ScriptParams
347068:  LDR             R1, [R0]
34706A:  CMP             R1, #0
34706C:  BLT.W           loc_347996
347070:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34707C)
347074:  UXTB            R3, R1
347076:  LSRS            R1, R1, #8
347078:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34707A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34707C:  LDR             R0, [R0]; CPools::ms_pPedPool
34707E:  LDR             R2, [R0,#4]
347080:  LDRB            R2, [R2,R1]
347082:  CMP             R2, R3
347084:  BNE.W           loc_347996
347088:  MOVW            R2, #0x7CC
34708C:  LDR             R0, [R0]
34708E:  MLA.W           R4, R1, R2, R0
347092:  B.W             loc_347998
347096:  ADD             R4, SP, #0x170+var_60; jumptable 003464E6 case 864
347098:  MOV             R0, R8; this
34709A:  MOVS            R2, #8; unsigned __int8
34709C:  MOV             R1, R4; char *
34709E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3470A2:  MOV             R0, R4; this
3470A4:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
3470A8:  CMP             R0, R6
3470AA:  BLE.W           loc_3483E8
3470AE:  LDR.W           R1, =(_ZN8CGarages8aGaragesE_ptr - 0x3470B8)
3470B2:  MOVS            R2, #0xD8
3470B4:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
3470B6:  LDR             R1, [R1]; CGarages::aGarages ...
3470B8:  SMLABB.W        R0, R0, R2, R1; this
3470BC:  BLX             j__ZN7CGarage14OpenThisGarageEv; CGarage::OpenThisGarage(void)
3470C0:  B.W             loc_3483E8
3470C4:  ADD             R4, SP, #0x170+var_60; jumptable 003464E6 case 865
3470C6:  MOV             R0, R8; this
3470C8:  MOVS            R2, #8; unsigned __int8
3470CA:  MOV             R1, R4; char *
3470CC:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3470D0:  MOV             R0, R4; this
3470D2:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
3470D6:  CMP             R0, R6
3470D8:  BLE.W           loc_3483E8
3470DC:  LDR.W           R1, =(_ZN8CGarages8aGaragesE_ptr - 0x3470E6)
3470E0:  MOVS            R2, #0xD8
3470E2:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
3470E4:  LDR             R1, [R1]; CGarages::aGarages ...
3470E6:  SMLABB.W        R0, R0, R2, R1; this
3470EA:  BLX             j__ZN7CGarage15CloseThisGarageEv; CGarage::CloseThisGarage(void)
3470EE:  B.W             loc_3483E8
3470F2:  MOV             R0, R8; jumptable 003464E6 case 866
3470F4:  MOVS            R1, #4; __int16
3470F6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3470FA:  LDR.W           R0, =(ScriptParams_ptr - 0x347102)
3470FE:  ADD             R0, PC; ScriptParams_ptr
347100:  LDR             R0, [R0]; ScriptParams
347102:  LDR             R1, [R0]
347104:  CMP             R1, #0
347106:  BLT.W           loc_3479F0
34710A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x347116)
34710E:  UXTB            R3, R1
347110:  LSRS            R1, R1, #8
347112:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
347114:  LDR             R0, [R0]; CPools::ms_pPedPool ...
347116:  LDR             R0, [R0]; CPools::ms_pPedPool
347118:  LDR             R2, [R0,#4]
34711A:  LDRB            R2, [R2,R1]
34711C:  CMP             R2, R3
34711E:  BNE.W           loc_3479F0
347122:  MOVW            R2, #0x7CC
347126:  LDR             R0, [R0]
347128:  MLA.W           R4, R1, R2, R0
34712C:  B.W             loc_3479F2
347130:  MOV             R0, R8; jumptable 003464E6 case 867
347132:  MOVS            R1, #6; __int16
347134:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
347138:  LDR             R0, =(ScriptParams_ptr - 0x347142)
34713A:  VLDR            S0, =-100.0
34713E:  ADD             R0, PC; ScriptParams_ptr
347140:  LDR             R0, [R0]; ScriptParams
347142:  VLDR            S20, [R0,#8]
347146:  VLDR            S16, [R0]
34714A:  VCMPE.F32       S20, S0
34714E:  VLDR            S18, [R0,#4]
347152:  VMRS            APSR_nzcv, FPSCR
347156:  BGT             loc_347168
347158:  VMOV            R0, S16; this
34715C:  VMOV            R1, S18; float
347160:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
347164:  VMOV            S20, R0
347168:  LDR             R0, =(ScriptParams_ptr - 0x34716E)
34716A:  ADD             R0, PC; ScriptParams_ptr
34716C:  LDR             R0, [R0]; ScriptParams
34716E:  LDR             R4, [R0,#(dword_81A918 - 0x81A908)]
347170:  VLDR            S22, [R0,#0xC]
347174:  CMP.W           R4, #0xFFFFFFFF
347178:  BGT             loc_34718C
34717A:  LDR             R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x347182)
34717C:  NEGS            R1, R4
34717E:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
347180:  RSB.W           R1, R1, R1,LSL#3
347184:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
347186:  ADD.W           R0, R0, R1,LSL#2
34718A:  LDR             R4, [R0,#0x18]
34718C:  VMOV            R5, S22
347190:  MOVS            R0, #1
347192:  MOVS            R1, #0
347194:  MOV.W           R8, #0x10
347198:  VSTR            S18, [SP,#0x170+var_F0+4]
34719C:  ADD             R6, SP, #0x170+var_130
34719E:  VSTR            S16, [SP,#0x170+var_F0]
3471A2:  ADD.W           R9, SP, #0x170+var_B8
3471A6:  VSTR            S20, [SP,#0x170+var_E8]
3471AA:  MOVS            R3, #1; float
3471AC:  STRD.W          R9, R8, [SP,#0x170+var_170]; bool
3471B0:  STRD.W          R6, R0, [SP,#0x170+var_168]; __int16
3471B4:  STRD.W          R1, R1, [SP,#0x170+var_160]; bool
3471B8:  ADD             R1, SP, #0x170+var_F0; unsigned int
3471BA:  STRD.W          R0, R0, [SP,#0x170+var_158]; bool
3471BE:  MOV             R0, R4; this
3471C0:  MOV             R2, R5; CVector *
3471C2:  BLX             j__ZN6CWorld24FindObjectsOfTypeInRangeEjRK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsOfTypeInRange(uint,CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
3471C6:  LDRH.W          R0, [SP,#0x170+var_B8]
3471CA:  CMP             R0, #0
3471CC:  BNE             loc_3471F0
3471CE:  ADD             R1, SP, #0x170+var_F0; unsigned int
3471D0:  MOV             R0, R4; this
3471D2:  MOV             R2, R5; CVector *
3471D4:  MOVS            R3, #1; float
3471D6:  VSTR            S18, [SP,#0x170+var_F0+4]
3471DA:  VSTR            S16, [SP,#0x170+var_F0]
3471DE:  VSTR            S20, [SP,#0x170+var_E8]
3471E2:  STRD.W          R9, R8, [SP,#0x170+var_170]; bool
3471E6:  STR             R6, [SP,#0x170+var_168]; __int16
3471E8:  BLX             j__ZN6CWorld20FindLodOfTypeInRangeEjRK7CVectorfbPssPP7CEntity; CWorld::FindLodOfTypeInRange(uint,CVector const&,float,bool,short *,short,CEntity **)
3471EC:  LDRH.W          R0, [SP,#0x170+var_B8]
3471F0:  SXTH            R1, R0
3471F2:  CMP             R1, #1
3471F4:  BLT.W           loc_3483E8
3471F8:  VADD.F32        S0, S22, S22
3471FC:  MOVS            R3, #0
3471FE:  MOVS            R2, #0
347200:  MOVS            R0, #0
347202:  LDR.W           R3, [R6,R3,LSL#2]
347206:  ADDS            R2, #1
347208:  LDR             R5, [R3,#0x14]
34720A:  ADD.W           R4, R5, #0x30 ; '0'
34720E:  CMP             R5, #0
347210:  IT EQ
347212:  ADDEQ           R4, R3, #4
347214:  VLDR            S2, [R4]
347218:  VLDR            S4, [R4,#4]
34721C:  VSUB.F32        S2, S2, S16
347220:  VLDR            S6, [R4,#8]
347224:  VSUB.F32        S4, S4, S18
347228:  VSUB.F32        S6, S6, S20
34722C:  VMUL.F32        S2, S2, S2
347230:  VMUL.F32        S4, S4, S4
347234:  VMUL.F32        S6, S6, S6
347238:  VADD.F32        S2, S2, S4
34723C:  VADD.F32        S2, S2, S6
347240:  VSQRT.F32       S2, S2
347244:  VCMPE.F32       S2, S0
347248:  VMRS            APSR_nzcv, FPSCR
34724C:  VMIN.F32        D0, D1, D0
347250:  IT LT
347252:  MOVLT           R0, R3
347254:  UXTH            R3, R2
347256:  CMP             R3, R1
347258:  BLT             loc_347202
34725A:  CMP             R0, #0
34725C:  BEQ.W           loc_3483E8
347260:  LDR             R2, =(ScriptParams_ptr - 0x34726C)
347262:  MOV             R1, R0
347264:  LDR.W           R3, [R1,#0x1C]!
347268:  ADD             R2, PC; ScriptParams_ptr
34726A:  LDR             R6, [R2]; ScriptParams
34726C:  LDR             R2, [R1,#4]
34726E:  LDR             R6, [R6,#(dword_81A91C - 0x81A908)]
347270:  CMP             R6, #0
347272:  BEQ.W           loc_348344
347276:  ORR.W           R3, R3, #0x81
34727A:  STRD.W          R3, R2, [R1]
34727E:  LDRB.W          R1, [R0,#0x32]
347282:  CMP             R1, #0
347284:  BNE.W           loc_3483E8
347288:  LDR             R2, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x347292)
34728A:  MOVS            R1, #0
34728C:  MOVS            R3, #0
34728E:  ADD             R2, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
347290:  LDR             R2, [R2]; CTheScripts::InvisibilitySettingArray ...
347292:  LDR.W           R6, [R2,R1,LSL#2]
347296:  MOVS            R5, #0
347298:  CMP             R6, R0
34729A:  IT NE
34729C:  MOVNE           R5, #1
34729E:  ADD             R3, R5
3472A0:  UXTH            R1, R3
3472A2:  CMP             R1, #0x13
3472A4:  BHI             loc_3472AA
3472A6:  CMP             R5, #0
3472A8:  BNE             loc_347292
3472AA:  CMP             R6, R0
3472AC:  BNE.W           loc_3483E8
3472B0:  LDR             R0, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x3472BA)
3472B2:  MOVS            R2, #0
3472B4:  MOVS            R5, #0
3472B6:  ADD             R0, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
3472B8:  LDR             R0, [R0]; CTheScripts::InvisibilitySettingArray ...
3472BA:  STR.W           R2, [R0,R1,LSL#2]
3472BE:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
3472C2:  MOV             R0, R8; jumptable 003464E6 case 868
3472C4:  MOVS            R1, #2; __int16
3472C6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3472CA:  LDR             R0, =(ScriptParams_ptr - 0x3472D2)
3472CC:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3472D4)
3472CE:  ADD             R0, PC; ScriptParams_ptr
3472D0:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3472D2:  LDR             R0, [R0]; ScriptParams
3472D4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3472D6:  LDR             R0, [R0]
3472D8:  LDR             R1, [R1]; CPools::ms_pPedPool
3472DA:  CMP             R0, #0
3472DC:  BLT.W           loc_347A6C
3472E0:  LDR             R2, [R1,#4]
3472E2:  UXTB            R3, R0
3472E4:  LSRS            R0, R0, #8
3472E6:  LDRB            R2, [R2,R0]
3472E8:  CMP             R2, R3
3472EA:  BNE.W           loc_347A6C
3472EE:  MOVW            R2, #0x7CC
3472F2:  LDR             R3, [R1]
3472F4:  MLA.W           R0, R0, R2, R3
3472F8:  B               loc_347A6E
3472FA:  MOV             R0, R8; jumptable 003464E6 case 870
3472FC:  MOVS            R1, #1; __int16
3472FE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
347302:  LDR             R0, =(ScriptParams_ptr - 0x34730E)
347304:  MOV.W           R2, #0x1A4
347308:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x347310)
34730A:  ADD             R0, PC; ScriptParams_ptr
34730C:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34730E:  LDR             R0, [R0]; ScriptParams
347310:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
347312:  LDR             R0, [R0]
347314:  LDR             R1, [R1]; CPools::ms_pObjectPool
347316:  LSRS            R0, R0, #8
347318:  LDR             R1, [R1]
34731A:  MLA.W           R0, R0, R2, R1
34731E:  LDR             R0, [R0,#0x1C]
347320:  AND.W           R0, R0, #0x280
347324:  EORS.W          R1, R0, #0x80
347328:  IT NE
34732A:  MOVNE           R1, #1
34732C:  B               loc_347B18
34732E:  MOV             R0, R8; jumptable 003464E6 case 874
347330:  MOVS            R1, #2; __int16
347332:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
347336:  LDR             R0, =(ScriptParams_ptr - 0x34733C)
347338:  ADD             R0, PC; ScriptParams_ptr
34733A:  LDR             R0, [R0]; ScriptParams
34733C:  LDRD.W          R1, R0, [R0]
347340:  CMP             R1, #0
347342:  BLT.W           loc_347A94
347346:  LDR             R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x347350)
347348:  UXTB            R6, R1
34734A:  LSRS            R1, R1, #8
34734C:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
34734E:  LDR             R2, [R2]; CPools::ms_pPedPool ...
347350:  LDR             R2, [R2]; CPools::ms_pPedPool
347352:  LDR             R3, [R2,#4]
347354:  LDRB            R3, [R3,R1]
347356:  CMP             R3, R6
347358:  BNE.W           loc_347A94
34735C:  MOVW            R3, #0x7CC
347360:  LDR             R2, [R2]
347362:  MLA.W           R8, R1, R3, R2
347366:  CMP             R0, #0
347368:  BGE.W           loc_347A9C
34736C:  B               loc_347B1E
34736E:  ALIGN 0x10
347370:  DCD __stack_chk_guard_ptr - 0x3464D0
347374:  DCD ScriptParams_ptr - 0x3465C2
347378:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3465D6
34737C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x346610
347380:  DCD ScriptParams_ptr - 0x346612
347384:  DCD ScriptParams_ptr - 0x346650
347388:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x346664
34738C:  DCD ScriptParams_ptr - 0x346692
347390:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3466A6
347394:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3466D0
347398:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3466F0
34739C:  DCD ScriptParams_ptr - 0x3466FE
3473A0:  DCD ScriptParams_ptr - 0x346708
3473A4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x346712
3473A8:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x34671C
3473AC:  DCD TheCamera_ptr - 0x3467FE
3473B0:  DCD ScriptParams_ptr - 0x346826
3473B4:  DCD TheCamera_ptr - 0x346828
3473B8:  DCD ScriptParams_ptr - 0x346846
3473BC:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x34685C
3473C0:  DCD ScriptParams_ptr - 0x346874
3473C4:  DCD ScriptParams_ptr - 0x3468C2
3473C8:  DCD ScriptParams_ptr - 0x3468F4
3473CC:  DCD _ZN6CWorld7PlayersE_ptr - 0x3468F6
3473D0:  DCD ScriptParams_ptr - 0x346928
3473D4:  DCD _ZN6CWorld7PlayersE_ptr - 0x34692A
3473D8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34695C
3473DC:  DCD ScriptParams_ptr - 0x34695E
3473E0:  DCD ScriptParams_ptr - 0x34699E
3473E4:  DCD _ZN8CGarages15RespraysAreFreeE_ptr - 0x3469A0
3473E8:  DCD ScriptParams_ptr - 0x3469C0
3473EC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3469D4
3473F0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x346A06
3473F4:  DCD ScriptParams_ptr - 0x346A08
3473F8:  DCD ScriptParams_ptr - 0x346A3E
3473FC:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346AE6
347400:  DCB "SH_BCK",0
347407:  DCB 0
347408:  DCB "LOAD_01",0
347410:  DCD _ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr - 0x346B2A
347414:  DCD _ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr - 0x346B38
347418:  DCD TheText_ptr - 0x346B46
34741C:  DCD ScriptParams_ptr - 0x346B58
347420:  DCD RsGlobal_ptr - 0x346B7C
347424:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346B84
347428:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346B96
34742C:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346C06
347430:  DCD ScriptParams_ptr - 0x346C0C
347434:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346C10
347438:  DCD ScriptParams_ptr - 0x346C48
34743C:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346C66
347440:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346C6C
347444:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346CA2
347448:  DCD ScriptParams_ptr - 0x346CA8
34744C:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346CAC
347450:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346CDC
347454:  DCD ScriptParams_ptr - 0x346CE2
347458:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346CE6
34745C:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346D16
347460:  DCD ScriptParams_ptr - 0x346D1C
347464:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346D20
347468:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346D4A
34746C:  DCD ScriptParams_ptr - 0x346D50
347470:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346D54
347474:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346D7E
347478:  DCD ScriptParams_ptr - 0x346D84
34747C:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346D88
347480:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346DB8
347484:  DCD ScriptParams_ptr - 0x346DBE
347488:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346DC2
34748C:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x346DF2
347490:  DCD ScriptParams_ptr - 0x346DF8
347494:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x346DFC
347498:  DCD ScriptParams_ptr - 0x346E20
34749C:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x346E34
3474A0:  DCD ScriptParams_ptr - 0x346E5E
3474A4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x346E72
3474A8:  DCD ScriptParams_ptr - 0x346E9C
3474AC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x346EAC
3474B0:  DCD _ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x346F24
3474B4:  DCD ScriptParams_ptr - 0x346F4C
3474B8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x346F60
3474BC:  DCD ScriptParams_ptr - 0x346F8A
3474C0:  DCD ScriptParams_ptr - 0x346FEC
3474C4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x347000
3474C8:  DCD ScriptParams_ptr - 0x34702A
3474CC:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x34703E
3474D0:  DCD ScriptParams_ptr - 0x347068
3474D4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34707C
3474D8:  DCD _ZN8CGarages8aGaragesE_ptr - 0x3470B8
3474DC:  DCD _ZN8CGarages8aGaragesE_ptr - 0x3470E6
3474E0:  DCD ScriptParams_ptr - 0x347102
3474E4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x347116
3474E8:  DCD ScriptParams_ptr - 0x347142
3474EC:  DCFS -100.0
3474F0:  DCD ScriptParams_ptr - 0x34716E
3474F4:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x347182
3474F8:  DCD ScriptParams_ptr - 0x34726C
3474FC:  DCD _ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x347292
347500:  DCD _ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x3472BA
347504:  DCD ScriptParams_ptr - 0x3472D2
347508:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3472D4
34750C:  DCD ScriptParams_ptr - 0x34730E
347510:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x347310
347514:  DCD ScriptParams_ptr - 0x34733C
347518:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x347350
34751C:  SUB.W           R4, R7, #-var_4E; jumptable 003464E6 case 877
347520:  MOV             R0, R8; this
347522:  MOVS            R2, #8; unsigned __int8
347524:  MOV             R1, R4; char *
347526:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34752A:  LDR.W           R0, =(TheText_ptr - 0x347534)
34752E:  MOV             R1, R4; CKeyGen *
347530:  ADD             R0, PC; TheText_ptr
347532:  LDR             R0, [R0]; TheText ; this
347534:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
347538:  MOV             R4, R0
34753A:  MOV             R0, R8; this
34753C:  MOVS            R1, #4; __int16
34753E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
347542:  LDR.W           R0, =(ScriptParams_ptr - 0x34754E)
347546:  MOV.W           R6, #0xFFFFFFFF
34754A:  ADD             R0, PC; ScriptParams_ptr
34754C:  LDR             R0, [R0]; ScriptParams
34754E:  LDRD.W          R3, R2, [R0]; unsigned __int16 *
347552:  LDRD.W          R1, R0, [R0,#(dword_81A910 - 0x81A908)]; unsigned __int16 *
347556:  STRD.W          R2, R6, [SP,#0x170+var_170]; int
34755A:  MOVW            R2, #0xFFFF
34755E:  ADD             R0, R2
347560:  STRD.W          R6, R6, [SP,#0x170+var_168]; int
347564:  STR             R6, [SP,#0x170+var_160]; int
347566:  UXTH            R2, R0; unsigned int
347568:  MOV             R0, R4; this
34756A:  BLX             j__ZN9CMessages23AddBigMessageWithNumberEPtjtiiiiii; CMessages::AddBigMessageWithNumber(ushort *,uint,ushort,int,int,int,int,int,int)
34756E:  B.W             loc_3483E8
347572:  LDR.W           R0, =(TheCamera_ptr - 0x34757A); jumptable 003464E6 case 883
347576:  ADD             R0, PC; TheCamera_ptr
347578:  LDR             R0, [R0]; TheCamera ; this
34757A:  BLX             j__ZN7CCamera48SetCameraDirectlyBehindForFollowPed_CamOnAStringEv; CCamera::SetCameraDirectlyBehindForFollowPed_CamOnAString(void)
34757E:  B.W             loc_3483E8
347582:  MOV             R0, R8; jumptable 003464E6 case 886
347584:  MOVS            R1, #3; __int16
347586:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34758A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x34759C)
34758E:  MOV.W           R11, #6
347592:  MOVS            R5, #0
347594:  MOV.W           R9, #0xFFFFFFFF
347598:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
34759A:  MOVS            R6, #0
34759C:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
3475A0:  MOVS            R0, #0; this
3475A2:  MOVS            R1, #0; bool
3475A4:  MOV.W           R2, #0xFFFFFFFF; bool
3475A8:  MOV.W           R3, #0xFFFFFFFF; int
3475AC:  STRD.W          R9, R5, [SP,#0x170+var_170]; int
3475B0:  STRD.W          R5, R5, [SP,#0x170+var_168]; bool
3475B4:  STR             R5, [SP,#0x170+var_160]; char *
3475B6:  BLX             j__ZN11CPopulation24ChooseCivilianOccupationEbbiiibbbPc; CPopulation::ChooseCivilianOccupation(bool,bool,int,int,int,bool,bool,bool,char *)
3475BA:  MOV             R4, R0
3475BC:  LDR.W           R1, [R10,R4,LSL#2]
3475C0:  LDR             R0, [R1,#0x34]
3475C2:  CMP             R0, #0
3475C4:  IT NE
3475C6:  LDRNE.W         R11, [R1,#0x40]
3475CA:  BIC.W           R1, R11, #1
3475CE:  CMP             R1, #4
3475D0:  BEQ             loc_3475DA
3475D2:  ADDS            R6, #1
3475D4:  UXTH            R1, R6; unsigned int
3475D6:  CMP             R1, #5
3475D8:  BCC             loc_3475A0
3475DA:  CBNZ            R0, loc_3475EC
3475DC:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3475E6)
3475E0:  MOVS            R4, #7
3475E2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3475E4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3475E6:  LDR             R0, [R0,#(dword_91DCD4 - 0x91DCB8)]
3475E8:  LDR.W           R11, [R0,#0x40]
3475EC:  MOVW            R0, #(elf_hash_bucket+0x6A8); this
3475F0:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
3475F4:  MOV             R1, R11
3475F6:  MOV             R2, R4
3475F8:  MOV             R5, R0
3475FA:  BLX             j__ZN12CCivilianPedC2E8ePedTypej; CCivilianPed::CCivilianPed(ePedType,uint)
3475FE:  MOVS            R0, #dword_20; this
347600:  LDR.W           R6, [R5,#0x440]
347604:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
347608:  MOVW            R1, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
34760C:  MOV             R4, R0
34760E:  MOV.W           R0, #0x41000000
347612:  MOVT            R1, #:upper16:(aZn6cworld51fin+0x25); int
347616:  STR             R0, [SP,#0x170+var_170]; float
347618:  MOV             R0, R4; this
34761A:  MOVS            R2, #1; bool
34761C:  MOVS            R3, #0; bool
34761E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
347622:  ADDS            R0, R6, #4; this
347624:  MOV             R1, R4; CTask *
347626:  MOVS            R2, #4; int
347628:  MOVS            R3, #0; bool
34762A:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
34762E:  MOV             R0, R5; this
347630:  MOVS            R1, #2; unsigned __int8
347632:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
347636:  LDR.W           R0, =(ScriptParams_ptr - 0x347642)
34763A:  LDR.W           R1, [R5,#0x484]
34763E:  ADD             R0, PC; ScriptParams_ptr
347640:  VLDR            S2, =-100.0
347644:  BIC.W           R1, R1, #0x80000000
347648:  STR.W           R1, [R5,#0x484]
34764C:  LDR             R0, [R0]; ScriptParams
34764E:  VLDR            S0, [R0,#8]
347652:  VLDR            S18, [R0]
347656:  VCMPE.F32       S0, S2
34765A:  VLDR            S16, [R0,#4]
34765E:  VMRS            APSR_nzcv, FPSCR
347662:  BGT             loc_347674
347664:  VMOV            R0, S18; this
347668:  VMOV            R1, S16; float
34766C:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
347670:  VMOV            S0, R0
347674:  VMOV.F32        S2, #1.0
347678:  VSTR            S16, [SP,#0x170+var_130+4]
34767C:  VSTR            S18, [SP,#0x170+var_130]
347680:  VADD.F32        S0, S0, S2
347684:  VSTR            S0, [SP,#0x170+var_128]
347688:  LDR             R0, [R5,#0x14]
34768A:  CMP             R0, #0
34768C:  BEQ.W           loc_347BAE
347690:  VSTR            S18, [R0,#0x30]
347694:  LDR             R0, [R5,#0x14]
347696:  VSTR            S16, [R0,#0x34]
34769A:  LDR             R0, [R5,#0x14]
34769C:  ADDS            R0, #0x38 ; '8'
34769E:  B               loc_347BBA
3476A0:  MOV             R0, R8; jumptable 003464E6 case 897
3476A2:  MOVS            R1, #4; __int16
3476A4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3476A8:  LDR.W           R0, =(ScriptParams_ptr - 0x3476B0)
3476AC:  ADD             R0, PC; ScriptParams_ptr
3476AE:  LDR             R0, [R0]; ScriptParams
3476B0:  LDR             R1, [R0]
3476B2:  CMP             R1, #0
3476B4:  BLT.W           loc_347ABE
3476B8:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3476C4)
3476BC:  UXTB            R3, R1
3476BE:  LSRS            R1, R1, #8
3476C0:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3476C2:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3476C4:  LDR             R0, [R0]; CPools::ms_pObjectPool
3476C6:  LDR             R2, [R0,#4]
3476C8:  LDRB            R2, [R2,R1]
3476CA:  CMP             R2, R3
3476CC:  BNE.W           loc_347ABE
3476D0:  MOV.W           R2, #0x1A4
3476D4:  LDR             R0, [R0]
3476D6:  MLA.W           R0, R1, R2, R0
3476DA:  B               loc_347AC0
3476DC:  MOV             R0, R8; jumptable 003464E6 case 898
3476DE:  MOVS            R1, #2; __int16
3476E0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3476E4:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3476F4)
3476E8:  MOV.W           R3, #0x1A4
3476EC:  LDR.W           R0, =(ScriptParams_ptr - 0x3476F6)
3476F0:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3476F2:  ADD             R0, PC; ScriptParams_ptr
3476F4:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
3476F6:  LDR             R0, [R0]; ScriptParams
3476F8:  LDRD.W          R2, R0, [R0]
3476FC:  CMP             R0, #0
3476FE:  LDR             R1, [R1]; CPools::ms_pObjectPool
347700:  MOV.W           R2, R2,LSR#8
347704:  LDR             R1, [R1]
347706:  MLA.W           R1, R2, R3, R1
34770A:  LDR             R2, [R1,#0x1C]
34770C:  BIC.W           R3, R2, #1
347710:  IT NE
347712:  ORRNE.W         R3, R2, #1
347716:  STR             R3, [R1,#0x1C]
347718:  B.W             loc_3483E8
34771C:  MOVS            R4, #0
34771E:  MOVS            R2, #0
347720:  ADD             R0, SP, #0x170+var_F0
347722:  MOVS            R6, #9
347724:  MOVT            R2, #0x447A
347728:  MOVS            R1, #0
34772A:  MOVS            R3, #0x22 ; '"'
34772C:  STRD.W          R6, R5, [SP,#0x170+var_170]
347730:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
347734:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x347742)
347738:  MOVS            R3, #0x22 ; '"'; int
34773A:  LDR.W           R1, [R4,#0x484]
34773E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
347740:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
347742:  LDR             R2, [R0]; int
347744:  UBFX.W          R0, R1, #8, #1
347748:  STRD.W          R6, R5, [SP,#0x170+var_170]; int
34774C:  MOVS            R1, #0; this
34774E:  STRD.W          R5, R0, [SP,#0x170+var_168]; int
347752:  ADD             R5, SP, #0x170+var_130
347754:  MOV             R0, R5; int
347756:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
34775A:  MOV             R1, R4; CPed *
34775C:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
347760:  CMP             R0, #1
347762:  BNE.W           loc_347B50
347766:  ADD.W           R2, R5, #0x34 ; '4'
34776A:  ADD             R0, SP, #0x170+var_F0; int
34776C:  MOV             R1, R4; this
34776E:  MOVS            R3, #1
347770:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
347774:  B               loc_347B56
347776:  MOVS            R2, #0; CEntity *
347778:  LDR             R0, [R2,#0x14]
34777A:  MOV             R3, #0x3F4CCCCD; float
347782:  ADD.W           R1, R0, #0x30 ; '0'
347786:  CMP             R0, #0
347788:  IT EQ
34778A:  ADDEQ           R1, R2, #4
34778C:  VLDR            D16, [R1]
347790:  LDR             R0, [R1,#8]
347792:  LDR.W           R1, =(gFireManager_ptr - 0x34779C)
347796:  STR             R0, [SP,#0x170+var_128]
347798:  ADD             R1, PC; gFireManager_ptr
34779A:  VSTR            D16, [SP,#0x170+var_130]
34779E:  STR             R4, [SP,#0x170+var_168]; int
3477A0:  LDR             R0, [R1]; gFireManager ; this
3477A2:  ADD             R1, SP, #0x170+var_130; CVector *
3477A4:  STRD.W          R4, R5, [SP,#0x170+var_170]; unsigned __int8
3477A8:  BLX             j__ZN12CFireManager15StartScriptFireERK7CVectorP7CEntityfhai; CFireManager::StartScriptFire(CVector const&,CEntity *,float,uchar,signed char,int)
3477AC:  LDR.W           R1, =(ScriptParams_ptr - 0x3477B4)
3477B0:  ADD             R1, PC; ScriptParams_ptr
3477B2:  B               loc_3477F0
3477B4:  MOVS            R2, #0; CEntity *
3477B6:  LDR             R0, [R2,#0x14]
3477B8:  MOV             R3, #0x3F4CCCCD; float
3477C0:  ADD.W           R1, R0, #0x30 ; '0'
3477C4:  CMP             R0, #0
3477C6:  IT EQ
3477C8:  ADDEQ           R1, R2, #4
3477CA:  VLDR            D16, [R1]
3477CE:  LDR             R0, [R1,#8]
3477D0:  LDR.W           R1, =(gFireManager_ptr - 0x3477DA)
3477D4:  STR             R0, [SP,#0x170+var_128]
3477D6:  ADD             R1, PC; gFireManager_ptr
3477D8:  VSTR            D16, [SP,#0x170+var_130]
3477DC:  STR             R4, [SP,#0x170+var_168]; int
3477DE:  LDR             R0, [R1]; gFireManager ; this
3477E0:  ADD             R1, SP, #0x170+var_130; CVector *
3477E2:  STRD.W          R4, R5, [SP,#0x170+var_170]; unsigned __int8
3477E6:  BLX             j__ZN12CFireManager15StartScriptFireERK7CVectorP7CEntityfhai; CFireManager::StartScriptFire(CVector const&,CEntity *,float,uchar,signed char,int)
3477EA:  LDR.W           R1, =(ScriptParams_ptr - 0x3477F2)
3477EE:  ADD             R1, PC; ScriptParams_ptr
3477F0:  LDR             R1, [R1]; ScriptParams
3477F2:  STR             R0, [R1]
3477F4:  MOV             R0, R8; this
3477F6:  MOVS            R1, #1; __int16
3477F8:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
3477FC:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347800:  MOVS            R4, #0
347802:  MOV.W           R0, #0xFFFFFFFF; int
347806:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
34780A:  LDR.W           R1, =(ScriptParams_ptr - 0x347814)
34780E:  CMP             R4, R0
347810:  ADD             R1, PC; ScriptParams_ptr
347812:  LDR             R1, [R1]; ScriptParams
347814:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
347816:  BNE             loc_34782A
347818:  LDR.W           R0, =(gPlayerPedVisible_ptr - 0x347824)
34781C:  CMP             R1, #0
34781E:  MOV             R2, R1
347820:  ADD             R0, PC; gPlayerPedVisible_ptr
347822:  IT NE
347824:  MOVNE           R2, #1
347826:  LDR             R0, [R0]; gPlayerPedVisible
347828:  STRB            R2, [R0]
34782A:  LDR             R0, [R4,#0x1C]
34782C:  CMP             R1, #0
34782E:  MOV.W           R5, #0
347832:  BIC.W           R2, R0, #0x80
347836:  IT NE
347838:  ORRNE.W         R2, R0, #0x80
34783C:  STR             R2, [R4,#0x1C]
34783E:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347842:  MOV.W           R9, #0
347846:  LDR.W           R5, [R9,#0x14]
34784A:  CMP             R5, #0
34784C:  BEQ.W           loc_347C02
347850:  LDRD.W          R0, R1, [R5,#0x10]; x
347854:  EOR.W           R0, R0, #0x80000000; y
347858:  BLX             atan2f
34785C:  VMOV            S2, R0
347860:  B               loc_347C06
347862:  MOV.W           R9, #0
347866:  LDR.W           R0, =(ScriptParams_ptr - 0x347872)
34786A:  LDR.W           R1, [R9,#0x14]
34786E:  ADD             R0, PC; ScriptParams_ptr
347870:  ADD.W           R2, R1, #0x30 ; '0'
347874:  CMP             R1, #0
347876:  IT EQ
347878:  ADDEQ.W         R2, R9, #4
34787C:  LDR             R0, [R0]; ScriptParams
34787E:  VLDR            D16, [R2]
347882:  VLDR            S18, [R0,#4]
347886:  VLDR            S20, [R0,#8]
34788A:  VLDR            S16, [R0,#0xC]
34788E:  LDR             R0, [R2,#8]
347890:  VSTR            D16, [SP,#0x170+var_130]
347894:  VLDR            S10, [SP,#0x170+var_130]
347898:  VLDR            S6, [SP,#0x170+var_130+4]
34789C:  VCMP.F32        S10, S18
3478A0:  STR             R0, [SP,#0x170+var_128]
3478A2:  VMRS            APSR_nzcv, FPSCR
3478A6:  ITT EQ
3478A8:  VCMPEQ.F32      S6, S20
3478AC:  VMRSEQ          APSR_nzcv, FPSCR
3478B0:  BNE             loc_3478C2
3478B2:  VLDR            S0, [SP,#0x170+var_128]
3478B6:  VCMP.F32        S0, S16
3478BA:  VMRS            APSR_nzcv, FPSCR
3478BE:  BEQ.W           loc_347C42
3478C2:  LDR.W           R0, =(ScriptParams_ptr - 0x3478D6)
3478C6:  VSUB.F32        S2, S10, S18
3478CA:  VSUB.F32        S12, S6, S20
3478CE:  VLDR            S0, [SP,#0x170+var_128]
3478D2:  ADD             R0, PC; ScriptParams_ptr
3478D4:  LDR             R0, [R0]; ScriptParams
3478D6:  VCMPE.F32       S2, #0.0
3478DA:  VLDR            S14, [R0,#0x10]
3478DE:  VLDR            S8, [R0,#0x14]
3478E2:  VLDR            S4, [R0,#0x18]
3478E6:  VMRS            APSR_nzcv, FPSCR
3478EA:  BGE.W           loc_347D74
3478EE:  VNEG.F32        S2, S2
3478F2:  VCMPE.F32       S14, S2
3478F6:  VMRS            APSR_nzcv, FPSCR
3478FA:  VMOV.F32        S2, S18
3478FE:  IT LT
347900:  VADDLT.F32      S2, S10, S14
347904:  B               loc_347D86
347906:  MOVS            R0, #0
347908:  LDR.W           R1, =(ScriptParams_ptr - 0x347914)
34790C:  LDR.W           R6, [R0,#0x484]
347910:  ADD             R1, PC; ScriptParams_ptr
347912:  LDR.W           R3, [R0,#0x488]
347916:  LDR.W           R2, [R0,#0x48C]
34791A:  LDR             R5, [R1]; ScriptParams
34791C:  LDR.W           R1, [R0,#0x490]
347920:  ADDW            R0, R0, #0x484
347924:  LDR             R5, [R5,#(dword_81A90C - 0x81A908)]
347926:  CMP             R5, #0
347928:  MOV.W           R5, #0
34792C:  ITE NE
34792E:  ORRNE.W         R6, R6, #0x200000
347932:  BICEQ.W         R6, R6, #0x200000
347936:  STR             R6, [R0]
347938:  STR             R3, [R0,#4]
34793A:  STR             R2, [R0,#8]
34793C:  STR             R1, [R0,#0xC]
34793E:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347942:  MOVS            R1, #0
347944:  LDR.W           R0, =(ScriptParams_ptr - 0x34794C)
347948:  ADD             R0, PC; ScriptParams_ptr
34794A:  LDR             R0, [R0]; ScriptParams
34794C:  LDR             R2, [R0,#(dword_81A90C - 0x81A908)]
34794E:  CMP             R2, #0
347950:  BLT.W           loc_347AF6
347954:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x347960)
347958:  UXTB            R6, R2
34795A:  LSRS            R2, R2, #8
34795C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34795E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
347960:  LDR             R0, [R0]; CPools::ms_pVehiclePool
347962:  LDR             R3, [R0,#4]
347964:  LDRB            R3, [R3,R2]
347966:  CMP             R3, R6
347968:  BNE.W           loc_347AF6
34796C:  MOVW            R3, #0xA2C
347970:  LDR             R0, [R0]
347972:  MLA.W           R0, R2, R3, R0
347976:  B               loc_347AF8
347978:  MOVS            R4, #0
34797A:  LDR.W           R0, =(ScriptParams_ptr - 0x347982)
34797E:  ADD             R0, PC; ScriptParams_ptr
347980:  LDR             R0, [R0]; ScriptParams
347982:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
347984:  CMP             R0, #0
347986:  BEQ.W           loc_347C46
34798A:  MOV             R0, R4; this
34798C:  MOVS            R1, #1; unsigned __int8
34798E:  BLX             j__ZN7CObject20SetObjectTargettableEh; CObject::SetObjectTargettable(uchar)
347992:  B.W             loc_3483E8
347996:  MOVS            R4, #0
347998:  LDR.W           R0, =(ScriptParams_ptr - 0x3479A4)
34799C:  ADDW            R5, R4, #0x54C
3479A0:  ADD             R0, PC; ScriptParams_ptr
3479A2:  LDR             R0, [R0]; ScriptParams
3479A4:  VLDR            S0, [R0,#4]
3479A8:  MOV             R0, R4; this
3479AA:  VCVT.F32.S32    S0, S0
3479AE:  VLDR            S2, [R5]
3479B2:  VADD.F32        S0, S2, S0
3479B6:  VSTR            S0, [R5]
3479BA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3479BE:  CMP             R0, #1
3479C0:  BNE.W           loc_347B78
3479C4:  MOV             R0, R4; this
3479C6:  BLX             j__ZN6CWorld28FindPlayerSlotWithPedPointerEPv; CWorld::FindPlayerSlotWithPedPointer(void *)
3479CA:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3479DA)
3479CE:  MOV.W           R2, #0x194
3479D2:  VLDR            S0, [R5]
3479D6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3479D8:  LDR             R1, [R1]; CWorld::Players ...
3479DA:  MLA.W           R0, R0, R2, R1
3479DE:  LDRB.W          R0, [R0,#0x150]
3479E2:  VMOV            S2, R0
3479E6:  VCVT.F32.U32    S2, S2
3479EA:  VMIN.F32        D16, D0, D1
3479EE:  B               loc_347B84
3479F0:  MOVS            R4, #0
3479F2:  LDR.W           R0, =(ScriptParams_ptr - 0x3479FE)
3479F6:  VLDR            S0, =-100.0
3479FA:  ADD             R0, PC; ScriptParams_ptr
3479FC:  LDR             R0, [R0]; ScriptParams
3479FE:  VLDR            S20, [R0,#0xC]
347A02:  VLDR            S16, [R0,#4]
347A06:  VCMPE.F32       S20, S0
347A0A:  VLDR            S18, [R0,#8]
347A0E:  VMRS            APSR_nzcv, FPSCR
347A12:  BGT             loc_347A24
347A14:  VMOV            R0, S16; this
347A18:  VMOV            R1, S18; float
347A1C:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
347A20:  VMOV            S20, R0
347A24:  LDR.W           R0, [R4,#0x440]; this
347A28:  MOVS            R1, #1; bool
347A2A:  BLX             j__ZN16CPedIntelligence16FlushImmediatelyEb; CPedIntelligence::FlushImmediately(bool)
347A2E:  MOV             R0, R4; this
347A30:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
347A34:  VMOV            S0, R0
347A38:  LDR             R0, [R4]
347A3A:  VMOV            R1, S16
347A3E:  MOVS            R5, #0
347A40:  VADD.F32        S20, S20, S0
347A44:  VMOV            R2, S18
347A48:  LDR             R6, [R0,#0x3C]
347A4A:  MOV             R0, R4
347A4C:  STR             R5, [SP,#0x170+var_170]
347A4E:  VMOV            R3, S20
347A52:  BLX             R6
347A54:  ADD             R0, SP, #0x170+var_130; this
347A56:  MOV             R1, R4; CVector *
347A58:  VSTR            S18, [SP,#0x170+var_130+4]
347A5C:  VSTR            S16, [SP,#0x170+var_130]
347A60:  VSTR            S20, [SP,#0x170+var_128]
347A64:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
347A68:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347A6C:  MOVS            R0, #0; this
347A6E:  LDR.W           R2, =(ScriptParams_ptr - 0x347A76)
347A72:  ADD             R2, PC; ScriptParams_ptr
347A74:  LDR             R2, [R2]; ScriptParams
347A76:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
347A78:  CMP             R2, #0
347A7A:  BLT             loc_347B0E
347A7C:  LDR             R3, [R1,#4]
347A7E:  UXTB            R6, R2
347A80:  LSRS            R2, R2, #8
347A82:  LDRB            R3, [R3,R2]
347A84:  CMP             R3, R6
347A86:  BNE             loc_347B0E
347A88:  MOVW            R3, #0x7CC
347A8C:  LDR             R1, [R1]
347A8E:  MLA.W           R1, R2, R3, R1
347A92:  B               loc_347B10
347A94:  MOV.W           R8, #0
347A98:  CMP             R0, #0
347A9A:  BLT             loc_347B1E
347A9C:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x347AA8)
347AA0:  UXTB            R3, R0
347AA2:  LSRS            R0, R0, #8
347AA4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
347AA6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
347AA8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
347AAA:  LDR             R2, [R1,#4]
347AAC:  LDRB            R2, [R2,R0]
347AAE:  CMP             R2, R3
347AB0:  BNE             loc_347B1E
347AB2:  MOVW            R2, #0xA2C
347AB6:  LDR             R1, [R1]
347AB8:  MLA.W           R4, R0, R2, R1
347ABC:  B               loc_347B20
347ABE:  MOVS            R0, #0
347AC0:  LDR.W           R1, =(ScriptParams_ptr - 0x347ACE)
347AC4:  MOVS            R5, #0
347AC6:  VLDR            S0, =50.0
347ACA:  ADD             R1, PC; ScriptParams_ptr
347ACC:  LDR             R1, [R1]; ScriptParams
347ACE:  VLDR            S4, [R1,#8]
347AD2:  VLDR            S6, [R1,#0xC]
347AD6:  VLDR            S2, [R1,#4]
347ADA:  VDIV.F32        S6, S6, S0
347ADE:  VDIV.F32        S4, S4, S0
347AE2:  VDIV.F32        S0, S2, S0
347AE6:  VSTR            S0, [R0,#0x48]
347AEA:  VSTR            S4, [R0,#0x4C]
347AEE:  VSTR            S6, [R0,#0x50]
347AF2:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347AF6:  MOVS            R0, #0
347AF8:  LDR.W           R2, =(ScriptParams_ptr - 0x347B00)
347AFC:  ADD             R2, PC; ScriptParams_ptr
347AFE:  LDR             R6, [R2]; ScriptParams
347B00:  ADDS            R6, #8
347B02:  LDM             R6, {R2,R3,R6}
347B04:  STR             R6, [SP,#0x170+var_170]
347B06:  BLX             j__ZN9CPhysical36PlacePhysicalRelativeToOtherPhysicalEPS_S0_7CVector; CPhysical::PlacePhysicalRelativeToOtherPhysical(CPhysical*,CPhysical*,CVector)
347B0A:  B.W             loc_3483E8
347B0E:  MOVS            R1, #0; CEntity *
347B10:  MOVS            R2, #1; bool
347B12:  BLX             j__ZN4CPed22OurPedCanSeeThisEntityEP7CEntityb; CPed::OurPedCanSeeThisEntity(CEntity *,bool)
347B16:  MOV             R1, R0
347B18:  MOV             R0, R8
347B1A:  B.W             loc_3483E4
347B1E:  MOVS            R4, #0
347B20:  LDR.W           R0, [R8,#0x440]; this
347B24:  MOVS            R1, #0; bool
347B26:  MOVS            R5, #0
347B28:  BLX             j__ZN16CPedIntelligence16FlushImmediatelyEb; CPedIntelligence::FlushImmediately(bool)
347B2C:  ADD             R6, SP, #0x170+var_130
347B2E:  MOV             R1, R4; CVehicle *
347B30:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
347B32:  MOV             R0, R6; this
347B34:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsDriver::CTaskSimpleCarSetPedInAsDriver(CVehicle *,CTaskUtilityLineUpPedWithCar *)
347B38:  MOVS            R0, #1
347B3A:  MOV             R1, R8; CPed *
347B3C:  STRB.W          R0, [SP,#0x170+var_118]
347B40:  MOV             R0, R6; this
347B42:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriver10ProcessPedEP4CPed; CTaskSimpleCarSetPedInAsDriver::ProcessPed(CPed *)
347B46:  MOV             R0, R6; this
347B48:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverD2Ev; CTaskSimpleCarSetPedInAsDriver::~CTaskSimpleCarSetPedInAsDriver()
347B4C:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347B50:  MOVS            R0, #1
347B52:  STRB.W          R0, [SP,#0x170+var_F2]
347B56:  LDR.W           R0, [R4,#0x440]
347B5A:  ADD             R4, SP, #0x170+var_130
347B5C:  MOVS            R2, #0; bool
347B5E:  MOVS            R5, #0
347B60:  ADDS            R0, #0x68 ; 'h'; this
347B62:  MOV             R1, R4; CEvent *
347B64:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
347B68:  MOV             R0, R4; this
347B6A:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
347B6E:  ADD             R0, SP, #0x170+var_F0; this
347B70:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
347B74:  B.W             loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347B78:  VLDR            S0, =100.0
347B7C:  VLDR            S2, [R5]
347B80:  VMIN.F32        D16, D1, D0
347B84:  VLDR            S0, =0.0
347B88:  VMAX.F32        D0, D16, D0
347B8C:  VSTR            S0, [R5]
347B90:  B.W             loc_3483E8
347B94:  MOV.W           R6, #0xFFFFFFFF
347B98:  LDR.W           R0, =(ScriptParams_ptr - 0x347BA2)
347B9C:  MOVS            R1, #1; __int16
347B9E:  ADD             R0, PC; ScriptParams_ptr
347BA0:  LDR             R0, [R0]; ScriptParams
347BA2:  STR             R6, [R0]
347BA4:  MOV             R0, R8; this
347BA6:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
347BAA:  B.W             loc_3483E8
347BAE:  ADD.W           R0, R5, #0xC
347BB2:  VSTR            S18, [R5,#4]
347BB6:  VSTR            S16, [R5,#8]
347BBA:  VSTR            S0, [R0]
347BBE:  LDR             R0, [R5,#0x14]; this
347BC0:  CMP             R0, #0
347BC2:  BEQ             loc_347C82
347BC4:  MOVS            R1, #0; x
347BC6:  MOVS            R2, #0; float
347BC8:  MOVS            R3, #0; float
347BCA:  VLDR            S16, [R0,#0x30]
347BCE:  VLDR            S18, [R0,#0x34]
347BD2:  VLDR            S20, [R0,#0x38]
347BD6:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
347BDA:  LDR             R0, [R5,#0x14]
347BDC:  VLDR            S0, [R0,#0x30]
347BE0:  VLDR            S2, [R0,#0x34]
347BE4:  VLDR            S4, [R0,#0x38]
347BE8:  VADD.F32        S0, S16, S0
347BEC:  VADD.F32        S2, S18, S2
347BF0:  VADD.F32        S4, S20, S4
347BF4:  VSTR            S0, [R0,#0x30]
347BF8:  VSTR            S2, [R0,#0x34]
347BFC:  VSTR            S4, [R0,#0x38]
347C00:  B               loc_347C86
347C02:  VLDR            S2, [R9,#0x10]
347C06:  VLDR            S0, =180.0
347C0A:  VLDR            S10, =360.0
347C0E:  VMUL.F32        S4, S2, S0
347C12:  VLDR            S2, =3.1416
347C16:  LDR.W           R0, =(ScriptParams_ptr - 0x347C1E)
347C1A:  ADD             R0, PC; ScriptParams_ptr
347C1C:  LDR             R0, [R0]; ScriptParams
347C1E:  VDIV.F32        S4, S4, S2
347C22:  VCMPE.F32       S4, #0.0
347C26:  VMRS            APSR_nzcv, FPSCR
347C2A:  VADD.F32        S6, S4, S10
347C2E:  IT LT
347C30:  VMOVLT.F32      S4, S6
347C34:  VLDR            S16, [R0,#4]
347C38:  VCMP.F32        S4, S16
347C3C:  VMRS            APSR_nzcv, FPSCR
347C40:  BNE             loc_347D0A
347C42:  MOVS            R5, #1
347C44:  B               loc_3483E0
347C46:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x347C58)
347C4A:  MOV.W           R2, #0x194
347C4E:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x347C5A)
347C52:  MOVS            R5, #0
347C54:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
347C56:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
347C58:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
347C5A:  LDR             R1, [R1]; CWorld::Players ...
347C5C:  LDR             R0, [R0]; CWorld::PlayerInFocus
347C5E:  SMULBB.W        R0, R0, R2
347C62:  LDR             R6, [R1,R0]
347C64:  MOV             R0, R4; this
347C66:  MOVS            R1, #0; unsigned __int8
347C68:  BLX             j__ZN7CObject20SetObjectTargettableEh; CObject::SetObjectTargettable(uchar)
347C6C:  LDR.W           R0, [R6,#0x720]
347C70:  CMP             R0, R4
347C72:  BNE.W           loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347C76:  MOV             R0, R6; this
347C78:  MOVS            R1, #0; CEntity *
347C7A:  MOVS            R5, #0
347C7C:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
347C80:  B               loc_3483EA; jumptable 003464E6 cases 809,812,894,899
347C82:  MOVS            R0, #0
347C84:  STR             R0, [R5,#0x10]
347C86:  ADD             R0, SP, #0x170+var_130; this
347C88:  MOV             R1, R5; CVector *
347C8A:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
347C8E:  LDRB.W          R0, [R8,#0xE6]
347C92:  CMP             R0, #0
347C94:  ITTT NE
347C96:  LDRNE           R0, [R5,#0x1C]
347C98:  ORRNE.W         R0, R0, #0x40000
347C9C:  STRNE           R0, [R5,#0x1C]
347C9E:  MOV             R0, R5; this
347CA0:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
347CA4:  LDR.W           R1, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x347CB0)
347CA8:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x347CB2)
347CAC:  ADD             R1, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
347CAE:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
347CB0:  LDR             R1, [R1]; CPopulation::ms_nTotalMissionPeds ...
347CB2:  LDR             R0, [R0]; CPools::ms_pPedPool ...
347CB4:  LDR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
347CB6:  LDR             R0, [R0]; CPools::ms_pPedPool
347CB8:  ADDS            R2, #1
347CBA:  STR             R2, [R1]; CPopulation::ms_nTotalMissionPeds
347CBC:  LDRD.W          R1, R0, [R0]
347CC0:  MOV             R2, #0xBED87F3B
347CC8:  SUBS            R1, R5, R1
347CCA:  ASRS            R1, R1, #2
347CCC:  MULS            R1, R2
347CCE:  LDR.W           R2, =(ScriptParams_ptr - 0x347CD6)
347CD2:  ADD             R2, PC; ScriptParams_ptr
347CD4:  LDR             R2, [R2]; ScriptParams
347CD6:  LDRB            R0, [R0,R1]
347CD8:  ORR.W           R0, R0, R1,LSL#8
347CDC:  STR             R0, [R2]
347CDE:  MOV             R0, R8; this
347CE0:  MOVS            R1, #1; __int16
347CE2:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
347CE6:  LDRB.W          R0, [R8,#0xE6]
347CEA:  CMP             R0, #0
347CEC:  BEQ.W           loc_3483E8
347CF0:  LDR.W           R0, =(ScriptParams_ptr - 0x347CFC)
347CF4:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x347CFE)
347CF8:  ADD             R0, PC; ScriptParams_ptr
347CFA:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
347CFC:  LDR             R2, [R0]; ScriptParams
347CFE:  LDR             R0, [R1]; this
347D00:  LDR             R1, [R2]; int
347D02:  MOVS            R2, #2; unsigned __int8
347D04:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
347D08:  B               loc_3483E8
347D0A:  VSUB.F32        S8, S4, S16
347D0E:  VLDR            S6, [R0,#8]
347D12:  VSUB.F32        S12, S16, S4
347D16:  VCMPE.F32       S8, #0.0
347D1A:  VMRS            APSR_nzcv, FPSCR
347D1E:  VADD.F32        S14, S8, S10
347D22:  VCMPE.F32       S12, #0.0
347D26:  VADD.F32        S10, S12, S10
347D2A:  IT LT
347D2C:  VMOVLT.F32      S8, S14
347D30:  VMRS            APSR_nzcv, FPSCR
347D34:  IT LT
347D36:  VMOVLT.F32      S12, S10
347D3A:  VCMPE.F32       S12, S8
347D3E:  VMRS            APSR_nzcv, FPSCR
347D42:  BGE.W           loc_3480AA
347D46:  VCMPE.F32       S12, S6
347D4A:  VMRS            APSR_nzcv, FPSCR
347D4E:  VMOV.F32        S18, S16
347D52:  IT GE
347D54:  VADDGE.F32      S18, S6, S4
347D58:  B               loc_3480BC
347D5A:  LDR.W           R0, =(ScriptParams_ptr - 0x347D66)
347D5E:  LDR.W           R2, =(TheCamera_ptr - 0x347D68)
347D62:  ADD             R0, PC; ScriptParams_ptr
347D64:  ADD             R2, PC; TheCamera_ptr
347D66:  LDR             R0, [R0]; ScriptParams
347D68:  LDRSH.W         R1, [R0]; __int16
347D6C:  LDR             R0, [R2]; TheCamera ; this
347D6E:  BLX             j__ZN7CCamera27SetZoomValueCamStringScriptEs; CCamera::SetZoomValueCamStringScript(short)
347D72:  B               loc_3483E8
347D74:  VCMPE.F32       S2, S14
347D78:  VMRS            APSR_nzcv, FPSCR
347D7C:  VMOV.F32        S2, S18
347D80:  IT GT
347D82:  VSUBGT.F32      S2, S10, S14
347D86:  VSUB.F32        S14, S0, S16
347D8A:  VSTR            S2, [SP,#0x170+var_130]
347D8E:  VCMPE.F32       S12, #0.0
347D92:  VMRS            APSR_nzcv, FPSCR
347D96:  BGE             loc_347DCC
347D98:  VNEG.F32        S10, S12
347D9C:  VCMPE.F32       S8, S10
347DA0:  VMRS            APSR_nzcv, FPSCR
347DA4:  VMOV.F32        S10, S20
347DA8:  IT LT
347DAA:  VADDLT.F32      S10, S8, S6
347DAE:  B               loc_347DDE
347DB0:  DCFS -100.0
347DB4:  DCFS 50.0
347DB8:  DCFS 100.0
347DBC:  DCFS 0.0
347DC0:  DCFS 180.0
347DC4:  DCFS 360.0
347DC8:  DCFS 3.1416
347DCC:  VCMPE.F32       S12, S8
347DD0:  VMRS            APSR_nzcv, FPSCR
347DD4:  VMOV.F32        S10, S20
347DD8:  IT GT
347DDA:  VSUBGT.F32      S10, S6, S8
347DDE:  VCMPE.F32       S14, #0.0
347DE2:  VSTR            S10, [SP,#0x170+var_130+4]
347DE6:  VMRS            APSR_nzcv, FPSCR
347DEA:  BGE             loc_347E04
347DEC:  VNEG.F32        S6, S14
347DF0:  VCMPE.F32       S4, S6
347DF4:  VMRS            APSR_nzcv, FPSCR
347DF8:  VMOV.F32        S6, S16
347DFC:  IT LT
347DFE:  VADDLT.F32      S6, S4, S0
347E02:  B               loc_347E16
347E04:  VCMPE.F32       S14, S4
347E08:  VMRS            APSR_nzcv, FPSCR
347E0C:  VMOV.F32        S6, S16
347E10:  IT GT
347E12:  VSUBGT.F32      S6, S0, S4
347E16:  LDR.W           R0, =(ScriptParams_ptr - 0x347E22)
347E1A:  VSTR            S6, [SP,#0x170+var_128]
347E1E:  ADD             R0, PC; ScriptParams_ptr
347E20:  LDR             R0, [R0]; ScriptParams
347E22:  LDR             R0, [R0,#(dword_81A924 - 0x81A908)]
347E24:  CMP             R0, #0
347E26:  BEQ.W           loc_348052
347E2A:  ADD             R0, SP, #0x170+var_AC
347E2C:  MOV             R10, R0
347E2E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
347E32:  LDR.W           R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x347E42)
347E36:  ADD             R2, SP, #0x170+var_130
347E38:  ADD.W           R12, SP, #0x170+var_7C
347E3C:  ADD             R4, SP, #0x170+var_F0
347E3E:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
347E40:  LDM             R2, {R0-R2}
347E42:  STM.W           R12, {R0-R2}
347E46:  ADD.W           R12, SP, #0x170+var_F0
347E4A:  LDRSH.W         R0, [R9,#0x26]
347E4E:  LDR             R1, [R3]; CModelInfo::ms_modelInfoPtrs ...
347E50:  STR             R1, [SP,#0x170+var_134]
347E52:  LDR.W           R0, [R1,R0,LSL#2]
347E56:  LDR             R0, [R0,#0x2C]
347E58:  LDM.W           R0, {R1-R3,R6}
347E5C:  LDRD.W          R5, R0, [R0,#0x10]
347E60:  STM.W           R12, {R1-R3}
347E64:  STRD.W          R6, R2, [SP,#0x170+var_B8]
347E68:  MOV             R2, R4
347E6A:  STR             R0, [SP,#0x170+var_B0]
347E6C:  STRD.W          R6, R5, [SP,#0x170+var_C8]
347E70:  MOV             R6, R10
347E72:  STR             R3, [SP,#0x170+var_C0]
347E74:  STRD.W          R1, R5, [SP,#0x170+var_D8]
347E78:  MOV             R1, R6
347E7A:  STR             R0, [SP,#0x170+var_D0]
347E7C:  ADD             R0, SP, #0x170+var_60
347E7E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
347E82:  LDR             R0, [SP,#0x170+var_58]
347E84:  ADD.W           R10, SP, #0x170+var_B8
347E88:  STR             R0, [SP,#0x170+var_E8]
347E8A:  ADD             R0, SP, #0x170+var_60
347E8C:  VLDR            D16, [SP,#0x170+var_60]
347E90:  MOV             R1, R6
347E92:  MOV             R2, R10
347E94:  VSTR            D16, [SP,#0x170+var_F0]
347E98:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
347E9C:  LDR             R0, [SP,#0x170+var_58]
347E9E:  ADD             R5, SP, #0x170+var_C8
347EA0:  STR             R0, [SP,#0x170+var_B0]
347EA2:  ADD             R0, SP, #0x170+var_60
347EA4:  VLDR            D16, [SP,#0x170+var_60]
347EA8:  MOV             R1, R6
347EAA:  MOV             R2, R5
347EAC:  VSTR            D16, [SP,#0x170+var_B8]
347EB0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
347EB4:  LDR             R0, [SP,#0x170+var_58]
347EB6:  ADD.W           R11, SP, #0x170+var_D8
347EBA:  STR             R0, [SP,#0x170+var_C0]
347EBC:  ADD             R0, SP, #0x170+var_60
347EBE:  VLDR            D16, [SP,#0x170+var_60]
347EC2:  MOV             R1, R6
347EC4:  MOV             R2, R11
347EC6:  VSTR            D16, [SP,#0x170+var_C8]
347ECA:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
347ECE:  VLDR            S2, [SP,#0x170+var_F0]
347ED2:  MOV             R12, R5
347ED4:  VLDR            S6, [SP,#0x170+var_B8]
347ED8:  MOV             R6, R4
347EDA:  LDR             R0, [SP,#0x170+var_58]
347EDC:  VCMPE.F32       S6, S2
347EE0:  VLDR            D16, [SP,#0x170+var_60]
347EE4:  VMRS            APSR_nzcv, FPSCR
347EE8:  STR             R0, [SP,#0x170+var_D0]
347EEA:  MOV             R0, R4
347EEC:  VSTR            D16, [SP,#0x170+var_D8]
347EF0:  VLDR            S4, [SP,#0x170+var_F0+4]
347EF4:  VLDR            S8, [SP,#0x170+var_B8+4]
347EF8:  VLDR            S10, [SP,#0x170+var_C8]
347EFC:  VLDR            S0, [SP,#0x170+var_C8+4]
347F00:  IT LT
347F02:  MOVLT           R0, R10
347F04:  VLDR            S12, [R0]
347F08:  MOV             R1, R0
347F0A:  VCMPE.F32       S10, S12
347F0E:  VMRS            APSR_nzcv, FPSCR
347F12:  IT LT
347F14:  MOVLT           R1, R5
347F16:  VLDR            S1, [SP,#0x170+var_D8]
347F1A:  VLDR            S14, [R1]
347F1E:  MOV             R1, R5
347F20:  VLDR            S3, [SP,#0x170+var_D8+4]
347F24:  VCMPE.F32       S1, S14
347F28:  VMRS            APSR_nzcv, FPSCR
347F2C:  VCMPE.F32       S10, S12
347F30:  ITT LT
347F32:  MOVLT           R1, R11
347F34:  MOVLT           R0, R1
347F36:  VMRS            APSR_nzcv, FPSCR
347F3A:  VCMPE.F32       S8, S4
347F3E:  IT LT
347F40:  MOVLT           R0, R1
347F42:  VMRS            APSR_nzcv, FPSCR
347F46:  MOV             R1, R4
347F48:  LDR             R3, [R0]; CVector *
347F4A:  IT GT
347F4C:  MOVGT           R1, R10
347F4E:  VLDR            S12, [R1,#4]
347F52:  MOV             R0, R1
347F54:  VCMPE.F32       S0, S12
347F58:  VMRS            APSR_nzcv, FPSCR
347F5C:  IT GT
347F5E:  MOVGT           R0, R5
347F60:  VLDR            S14, [R0,#4]
347F64:  VCMPE.F32       S3, S14
347F68:  VMRS            APSR_nzcv, FPSCR
347F6C:  VCMPE.F32       S6, S2
347F70:  ITT GT
347F72:  MOVGT           R12, R11
347F74:  MOVGT           R1, R12
347F76:  VMRS            APSR_nzcv, FPSCR
347F7A:  IT GT
347F7C:  MOVGT           R6, R10
347F7E:  VLDR            S2, [R6]
347F82:  MOV             R0, R6
347F84:  VCMPE.F32       S10, S2
347F88:  VMRS            APSR_nzcv, FPSCR
347F8C:  IT GT
347F8E:  MOVGT           R0, R5
347F90:  VLDR            S6, [R0]
347F94:  MOV             R0, R5
347F96:  VCMPE.F32       S1, S6
347F9A:  VMRS            APSR_nzcv, FPSCR
347F9E:  VCMPE.F32       S10, S2
347FA2:  ITT GT
347FA4:  MOVGT           R0, R11
347FA6:  MOVGT           R6, R0
347FA8:  VMRS            APSR_nzcv, FPSCR
347FAC:  VCMPE.F32       S8, S4
347FB0:  IT GT
347FB2:  MOVGT           R6, R0
347FB4:  VMRS            APSR_nzcv, FPSCR
347FB8:  IT LT
347FBA:  MOVLT           R4, R10
347FBC:  VLDR            S2, [R4,#4]
347FC0:  MOV             R0, R4
347FC2:  VCMPE.F32       S0, S2
347FC6:  VMRS            APSR_nzcv, FPSCR
347FCA:  IT LT
347FCC:  MOVLT           R0, R5
347FCE:  VLDR            S4, [R0,#4]
347FD2:  VCMPE.F32       S3, S4
347FD6:  VMRS            APSR_nzcv, FPSCR
347FDA:  VCMPE.F32       S0, S2
347FDE:  ITT LT
347FE0:  MOVLT           R5, R11
347FE2:  MOVLT           R4, R5
347FE4:  VMRS            APSR_nzcv, FPSCR
347FE8:  LDRSH.W         R0, [R9,#0x26]
347FEC:  VCMPE.F32       S0, S12
347FF0:  LDR             R2, [SP,#0x170+var_134]
347FF2:  LDR.W           R0, [R2,R0,LSL#2]
347FF6:  MOV.W           R2, #2
347FFA:  LDR             R0, [R0,#0x2C]; this
347FFC:  IT LT
347FFE:  MOVLT           R4, R5
348000:  VMRS            APSR_nzcv, FPSCR
348004:  VLDR            S4, [R6]
348008:  MOV.W           R5, #1
34800C:  VLDR            S2, [R4,#4]
348010:  SUB.W           R6, R7, #-var_62
348014:  IT GT
348016:  MOVGT           R1, R12
348018:  VLDR            S0, [R1,#4]
34801C:  MOVS            R1, #0
34801E:  STRD.W          R6, R2, [SP,#0x170+var_164]; CVector *
348022:  ADD             R2, SP, #0x170+var_130; CMatrix *
348024:  STRD.W          R1, R1, [SP,#0x170+var_15C]; __int16
348028:  STRD.W          R5, R5, [SP,#0x170+var_154]; bool
34802C:  STRD.W          R1, R1, [SP,#0x170+var_14C]; bool
348030:  ADD             R1, SP, #0x170+var_AC; CBox *
348032:  VSTR            S2, [SP,#0x170+var_170]
348036:  VSTR            S4, [SP,#0x170+var_16C]
34803A:  VSTR            S0, [SP,#0x170+var_168]
34803E:  BLX             j__ZN6CWorld41FindObjectsIntersectingAngledCollisionBoxERK4CBoxRK7CMatrixRK7CVectorffffPssPP7CEntitybbbbb; CWorld::FindObjectsIntersectingAngledCollisionBox(CBox const&,CMatrix const&,CVector const&,float,float,float,float,short *,short,CEntity **,bool,bool,bool,bool,bool)
348042:  LDRSH.W         R0, [R7,#var_62]
348046:  CMP             R0, #0
348048:  BGT.W           loc_3483E0
34804C:  ADD             R3, SP, #0x170+var_130
34804E:  LDM             R3, {R1-R3}
348050:  B               loc_34805E
348052:  VMOV            R1, S2
348056:  VMOV            R2, S10
34805A:  VMOV            R3, S6
34805E:  LDR.W           R0, [R9]
348062:  MOVS            R4, #0
348064:  LDR             R6, [R0,#0x3C]
348066:  MOV             R0, R9
348068:  STR             R4, [SP,#0x170+var_170]
34806A:  BLX             R6
34806C:  VLDR            S2, [SP,#0x170+var_130+4]
348070:  MOVS            R0, #0
348072:  VLDR            S0, [SP,#0x170+var_130]
348076:  MOVS            R1, #0
348078:  VCMP.F32        S2, S20
34807C:  VLDR            S4, [SP,#0x170+var_128]
348080:  VMRS            APSR_nzcv, FPSCR
348084:  VCMP.F32        S0, S18
348088:  IT EQ
34808A:  MOVEQ           R0, #1
34808C:  VMRS            APSR_nzcv, FPSCR
348090:  VCMP.F32        S4, S16
348094:  IT EQ
348096:  MOVEQ           R1, #1
348098:  VMRS            APSR_nzcv, FPSCR
34809C:  AND.W           R0, R0, R1
3480A0:  IT EQ
3480A2:  MOVEQ           R4, #1
3480A4:  AND.W           R5, R0, R4
3480A8:  B               loc_3483E0
3480AA:  VCMPE.F32       S8, S6
3480AE:  VMRS            APSR_nzcv, FPSCR
3480B2:  VMOV.F32        S18, S16
3480B6:  IT GE
3480B8:  VSUBGE.F32      S18, S4, S6
3480BC:  VMUL.F32        S2, S18, S2
3480C0:  LDR.W           R0, =(ScriptParams_ptr - 0x3480C8)
3480C4:  ADD             R0, PC; ScriptParams_ptr
3480C6:  LDR             R0, [R0]; ScriptParams
3480C8:  VDIV.F32        S20, S2, S0
3480CC:  LDR             R0, [R0,#(dword_81A914 - 0x81A908)]
3480CE:  CMP             R0, #0
3480D0:  BEQ.W           loc_348336
3480D4:  VMOV            R1, S20; x
3480D8:  ADD.W           R0, R5, #0x30 ; '0'
3480DC:  CMP             R5, #0
3480DE:  IT EQ
3480E0:  ADDEQ.W         R0, R9, #4
3480E4:  VLDR            D16, [R0]
3480E8:  LDR             R0, [R0,#8]
3480EA:  STR             R0, [SP,#0x170+var_128]
3480EC:  ADD             R0, SP, #0x170+var_AC; this
3480EE:  VSTR            D16, [SP,#0x170+var_130]
3480F2:  MOV             R10, R0
3480F4:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
3480F8:  VLDR            S0, [SP,#0x170+var_7C]
3480FC:  ADD.W           R12, SP, #0x170+var_F0
348100:  VLDR            S6, [SP,#0x170+var_130]
348104:  ADD             R4, SP, #0x170+var_F0
348106:  VLDR            S2, [SP,#0x170+var_78]
34810A:  VLDR            S8, [SP,#0x170+var_130+4]
34810E:  VADD.F32        S0, S6, S0
348112:  VLDR            S4, [SP,#0x170+var_74]
348116:  VLDR            S10, [SP,#0x170+var_128]
34811A:  VADD.F32        S2, S8, S2
34811E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x348128)
348120:  VADD.F32        S4, S10, S4
348124:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
348126:  LDR             R1, [R0]; CModelInfo::ms_modelInfoPtrs ...
348128:  VSTR            S0, [SP,#0x170+var_7C]
34812C:  VSTR            S2, [SP,#0x170+var_78]
348130:  STR             R1, [SP,#0x170+var_134]
348132:  VSTR            S4, [SP,#0x170+var_74]
348136:  LDRSH.W         R0, [R9,#0x26]
34813A:  LDR.W           R0, [R1,R0,LSL#2]
34813E:  LDR             R0, [R0,#0x2C]
348140:  LDM.W           R0, {R1-R3,R6}
348144:  LDRD.W          R5, R0, [R0,#0x10]
348148:  STM.W           R12, {R1-R3}
34814C:  STRD.W          R6, R2, [SP,#0x170+var_B8]
348150:  MOV             R2, R4
348152:  STR             R0, [SP,#0x170+var_B0]
348154:  STRD.W          R6, R5, [SP,#0x170+var_C8]
348158:  MOV             R6, R10
34815A:  STR             R3, [SP,#0x170+var_C0]
34815C:  STRD.W          R1, R5, [SP,#0x170+var_D8]
348160:  MOV             R1, R6
348162:  STR             R0, [SP,#0x170+var_D0]
348164:  ADD             R0, SP, #0x170+var_60
348166:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
34816A:  LDR             R0, [SP,#0x170+var_58]
34816C:  ADD.W           R10, SP, #0x170+var_B8
348170:  STR             R0, [SP,#0x170+var_E8]
348172:  ADD             R0, SP, #0x170+var_60
348174:  VLDR            D16, [SP,#0x170+var_60]
348178:  MOV             R1, R6
34817A:  MOV             R2, R10
34817C:  VSTR            D16, [SP,#0x170+var_F0]
348180:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
348184:  LDR             R0, [SP,#0x170+var_58]
348186:  ADD             R5, SP, #0x170+var_C8
348188:  STR             R0, [SP,#0x170+var_B0]
34818A:  ADD             R0, SP, #0x170+var_60
34818C:  VLDR            D16, [SP,#0x170+var_60]
348190:  MOV             R1, R6
348192:  MOV             R2, R5
348194:  VSTR            D16, [SP,#0x170+var_B8]
348198:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
34819C:  LDR             R0, [SP,#0x170+var_58]
34819E:  ADD.W           R11, SP, #0x170+var_D8
3481A2:  STR             R0, [SP,#0x170+var_C0]
3481A4:  ADD             R0, SP, #0x170+var_60
3481A6:  VLDR            D16, [SP,#0x170+var_60]
3481AA:  MOV             R1, R6
3481AC:  MOV             R2, R11
3481AE:  VSTR            D16, [SP,#0x170+var_C8]
3481B2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3481B6:  VLDR            S2, [SP,#0x170+var_F0]
3481BA:  MOV             R12, R5
3481BC:  VLDR            S6, [SP,#0x170+var_B8]
3481C0:  MOV             R6, R4
3481C2:  LDR             R0, [SP,#0x170+var_58]
3481C4:  VCMPE.F32       S6, S2
3481C8:  VLDR            D16, [SP,#0x170+var_60]
3481CC:  VMRS            APSR_nzcv, FPSCR
3481D0:  STR             R0, [SP,#0x170+var_D0]
3481D2:  MOV             R0, R4
3481D4:  VSTR            D16, [SP,#0x170+var_D8]
3481D8:  VLDR            S4, [SP,#0x170+var_F0+4]
3481DC:  VLDR            S8, [SP,#0x170+var_B8+4]
3481E0:  VLDR            S10, [SP,#0x170+var_C8]
3481E4:  VLDR            S0, [SP,#0x170+var_C8+4]
3481E8:  IT LT
3481EA:  MOVLT           R0, R10
3481EC:  VLDR            S12, [R0]
3481F0:  MOV             R1, R0
3481F2:  VCMPE.F32       S10, S12
3481F6:  VMRS            APSR_nzcv, FPSCR
3481FA:  IT LT
3481FC:  MOVLT           R1, R5
3481FE:  VLDR            S1, [SP,#0x170+var_D8]
348202:  VLDR            S14, [R1]
348206:  MOV             R1, R5
348208:  VLDR            S3, [SP,#0x170+var_D8+4]
34820C:  VCMPE.F32       S1, S14
348210:  VMRS            APSR_nzcv, FPSCR
348214:  VCMPE.F32       S10, S12
348218:  ITT LT
34821A:  MOVLT           R1, R11
34821C:  MOVLT           R0, R1
34821E:  VMRS            APSR_nzcv, FPSCR
348222:  VCMPE.F32       S8, S4
348226:  IT LT
348228:  MOVLT           R0, R1
34822A:  VMRS            APSR_nzcv, FPSCR
34822E:  MOV             R1, R4
348230:  LDR             R3, [R0]; CVector *
348232:  IT GT
348234:  MOVGT           R1, R10
348236:  VLDR            S12, [R1,#4]
34823A:  MOV             R0, R1
34823C:  VCMPE.F32       S0, S12
348240:  VMRS            APSR_nzcv, FPSCR
348244:  IT GT
348246:  MOVGT           R0, R5
348248:  VLDR            S14, [R0,#4]
34824C:  VCMPE.F32       S3, S14
348250:  VMRS            APSR_nzcv, FPSCR
348254:  VCMPE.F32       S6, S2
348258:  ITT GT
34825A:  MOVGT           R12, R11
34825C:  MOVGT           R1, R12
34825E:  VMRS            APSR_nzcv, FPSCR
348262:  IT GT
348264:  MOVGT           R6, R10
348266:  VLDR            S2, [R6]
34826A:  MOV             R0, R6
34826C:  VCMPE.F32       S10, S2
348270:  VMRS            APSR_nzcv, FPSCR
348274:  IT GT
348276:  MOVGT           R0, R5
348278:  VLDR            S6, [R0]
34827C:  MOV             R0, R5
34827E:  VCMPE.F32       S1, S6
348282:  VMRS            APSR_nzcv, FPSCR
348286:  VCMPE.F32       S10, S2
34828A:  ITT GT
34828C:  MOVGT           R0, R11
34828E:  MOVGT           R6, R0
348290:  VMRS            APSR_nzcv, FPSCR
348294:  VCMPE.F32       S8, S4
348298:  IT GT
34829A:  MOVGT           R6, R0
34829C:  VMRS            APSR_nzcv, FPSCR
3482A0:  IT LT
3482A2:  MOVLT           R4, R10
3482A4:  VLDR            S2, [R4,#4]
3482A8:  MOV             R0, R4
3482AA:  VCMPE.F32       S0, S2
3482AE:  VMRS            APSR_nzcv, FPSCR
3482B2:  IT LT
3482B4:  MOVLT           R0, R5
3482B6:  VLDR            S4, [R0,#4]
3482BA:  VCMPE.F32       S3, S4
3482BE:  VMRS            APSR_nzcv, FPSCR
3482C2:  VCMPE.F32       S0, S2
3482C6:  ITT LT
3482C8:  MOVLT           R5, R11
3482CA:  MOVLT           R4, R5
3482CC:  VMRS            APSR_nzcv, FPSCR
3482D0:  LDRSH.W         R0, [R9,#0x26]
3482D4:  VCMPE.F32       S0, S12
3482D8:  LDR             R2, [SP,#0x170+var_134]
3482DA:  LDR.W           R0, [R2,R0,LSL#2]
3482DE:  MOV.W           R2, #2
3482E2:  LDR             R0, [R0,#0x2C]; this
3482E4:  IT LT
3482E6:  MOVLT           R4, R5
3482E8:  VMRS            APSR_nzcv, FPSCR
3482EC:  VLDR            S4, [R6]
3482F0:  MOV.W           R5, #1
3482F4:  VLDR            S2, [R4,#4]
3482F8:  SUB.W           R6, R7, #-var_62
3482FC:  IT GT
3482FE:  MOVGT           R1, R12
348300:  VLDR            S0, [R1,#4]
348304:  MOVS            R1, #0
348306:  STRD.W          R6, R2, [SP,#0x170+var_164]; CVector *
34830A:  ADD             R2, SP, #0x170+var_130; CMatrix *
34830C:  STRD.W          R1, R1, [SP,#0x170+var_15C]; __int16
348310:  STRD.W          R5, R5, [SP,#0x170+var_154]; bool
348314:  STRD.W          R1, R1, [SP,#0x170+var_14C]; bool
348318:  ADD             R1, SP, #0x170+var_AC; CBox *
34831A:  VSTR            S2, [SP,#0x170+var_170]
34831E:  VSTR            S4, [SP,#0x170+var_16C]
348322:  VSTR            S0, [SP,#0x170+var_168]
348326:  BLX             j__ZN6CWorld41FindObjectsIntersectingAngledCollisionBoxERK4CBoxRK7CMatrixRK7CVectorffffPssPP7CEntitybbbbb; CWorld::FindObjectsIntersectingAngledCollisionBox(CBox const&,CMatrix const&,CVector const&,float,float,float,float,short *,short,CEntity **,bool,bool,bool,bool,bool)
34832A:  LDRSH.W         R0, [R7,#var_62]
34832E:  CMP             R0, #0
348330:  BGT             loc_3483E0
348332:  LDR.W           R5, [R9,#0x14]
348336:  CBZ             R5, loc_3483AA
348338:  VMOV            R1, S20; x
34833C:  MOV             R0, R5; this
34833E:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
348342:  B               loc_3483AE
348344:  BIC.W           R3, R3, #0x81
348348:  STRD.W          R3, R2, [R1]
34834C:  LDRB.W          R1, [R0,#0x32]
348350:  CMP             R1, #0
348352:  BNE             loc_3483E8
348354:  LDR             R1, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x34835E)
348356:  MOVS            R2, #0
348358:  MOVS            R3, #0
34835A:  ADD             R1, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
34835C:  LDR             R1, [R1]; CTheScripts::InvisibilitySettingArray ...
34835E:  LDR.W           R6, [R1,R2,LSL#2]
348362:  MOVS            R5, #0
348364:  CMP             R6, R0
348366:  IT NE
348368:  MOVNE           R5, #1
34836A:  ADD             R3, R5
34836C:  UXTH            R2, R3
34836E:  CMP             R2, #0x13
348370:  BHI             loc_348376
348372:  CMP             R5, #0
348374:  BNE             loc_34835E
348376:  CMP             R6, R0
348378:  BEQ             loc_3483E8
34837A:  LDR             R2, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x348384)
34837C:  MOVS            R1, #0
34837E:  MOVS            R3, #0
348380:  ADD             R2, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
348382:  LDR             R2, [R2]; CTheScripts::InvisibilitySettingArray ...
348384:  LDR.W           R5, [R2,R1,LSL#2]
348388:  CMP             R5, #0
34838A:  MOV             R6, R5
34838C:  IT NE
34838E:  MOVNE           R6, #1
348390:  ADD             R3, R6
348392:  UXTH            R1, R3
348394:  CMP             R1, #0x13
348396:  BHI             loc_34839C
348398:  CMP             R6, #0
34839A:  BNE             loc_348384
34839C:  CBNZ            R5, loc_3483E8
34839E:  LDR             R2, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x3483A4)
3483A0:  ADD             R2, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
3483A2:  LDR             R2, [R2]; CTheScripts::InvisibilitySettingArray ...
3483A4:  STR.W           R0, [R2,R1,LSL#2]
3483A8:  B               loc_3483E8
3483AA:  VSTR            S20, [R9,#0x10]
3483AE:  LDR.W           R0, [R9,#0x18]
3483B2:  CBZ             R0, loc_3483CC
3483B4:  LDR             R1, [R0,#4]
3483B6:  LDR.W           R0, [R9,#0x14]
3483BA:  ADDS            R1, #0x10
3483BC:  CBZ             R0, loc_3483C4
3483BE:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
3483C2:  B               loc_3483CC
3483C4:  ADD.W           R0, R9, #4
3483C8:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3483CC:  MOV             R0, R9; this
3483CE:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
3483D2:  VCMP.F32        S18, S16
3483D6:  VMRS            APSR_nzcv, FPSCR
3483DA:  BEQ.W           loc_347C42
3483DE:  MOVS            R5, #0
3483E0:  MOV             R0, R8; this
3483E2:  MOV             R1, R5; unsigned __int8
3483E4:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
3483E8:  MOVS            R5, #0
3483EA:  ADD             R0, SP, #0x170+var_AC; jumptable 003464E6 cases 809,812,894,899
3483EC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3483F0:  LDR             R0, =(__stack_chk_guard_ptr - 0x3483F8)
3483F2:  LDR             R1, [SP,#0x170+var_44]
3483F4:  ADD             R0, PC; __stack_chk_guard_ptr
3483F6:  LDR             R0, [R0]; __stack_chk_guard
3483F8:  LDR             R0, [R0]
3483FA:  SUBS            R0, R0, R1
3483FC:  ITTTT EQ
3483FE:  SXTBEQ          R0, R5
348400:  ADDEQ           SP, SP, #0x130
348402:  VPOPEQ          {D8-D11}
348406:  ADDEQ           SP, SP, #4
348408:  ITT EQ
34840A:  POPEQ.W         {R8-R11}
34840E:  POPEQ           {R4-R7,PC}
348410:  BLX             __stack_chk_fail
348414:  MOV             R0, R5; this
348416:  BLX             j__ZN11CTheScripts13RemoveThisPedEP4CPed; CTheScripts::RemoveThisPed(CPed *)
34841A:  LDRB.W          R0, [R8,#0xE6]
34841E:  CMP             R0, #0
348420:  BEQ             loc_3483E8
348422:  LDR             R0, =(ScriptParams_ptr - 0x34842A)
348424:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x34842C)
348426:  ADD             R0, PC; ScriptParams_ptr
348428:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
34842A:  LDR             R2, [R0]; ScriptParams
34842C:  LDR             R0, [R1]; this
34842E:  LDR             R1, [R2]; int
348430:  MOVS            R2, #2; unsigned __int8
348432:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
348436:  B               loc_3483E8
