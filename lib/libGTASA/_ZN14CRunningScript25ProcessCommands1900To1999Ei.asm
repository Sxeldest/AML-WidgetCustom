; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1900To1999Ei
; Address            : 0x332370 - 0x333BE2
; =========================================================

332370:  PUSH            {R4-R7,LR}
332372:  ADD             R7, SP, #0xC
332374:  PUSH.W          {R8-R11}
332378:  SUB             SP, SP, #4
33237A:  VPUSH           {D8-D9}
33237E:  SUB             SP, SP, #0xC8; float
332380:  MOV             R4, SP
332382:  BFC.W           R4, #0, #4
332386:  MOV             SP, R4
332388:  MOV             R4, R0
33238A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x332398)
33238E:  VMOV.I32        Q8, #0
332392:  ADD             R5, SP, #0xF8+var_A8
332394:  ADD             R0, PC; __stack_chk_guard_ptr
332396:  LDR             R0, [R0]; __stack_chk_guard
332398:  LDR             R0, [R0]
33239A:  STR             R0, [SP,#0xF8+var_34]
33239C:  SUBW            R0, R1, #0x76C; switch 100 cases
3323A0:  CMP             R0, #0x63 ; 'c'
3323A2:  VST1.64         {D16-D17}, [R5@128]
3323A6:  BHI.W           def_3323AC; jumptable 003323AC default case, case 1977
3323AA:  MOVS            R6, #0
3323AC:  TBH.W           [PC,R0,LSL#1]; switch jump
3323B0:  DCW 0x64; jump table for switch statement
3323B2:  DCW 0x8E
3323B4:  DCW 0xC05
3323B6:  DCW 0xB4
3323B8:  DCW 0xBB
3323BA:  DCW 0xDE
3323BC:  DCW 0x105
3323BE:  DCW 0xC05
3323C0:  DCW 0xC05
3323C2:  DCW 0xC05
3323C4:  DCW 0x129
3323C6:  DCW 0x136
3323C8:  DCW 0x143
3323CA:  DCW 0xC05
3323CC:  DCW 0x150
3323CE:  DCW 0x171
3323D0:  DCW 0x192
3323D2:  DCW 0x1B2
3323D4:  DCW 0x1D1
3323D6:  DCW 0xC05
3323D8:  DCW 0x1DC
3323DA:  DCW 0x1FB
3323DC:  DCW 0x209
3323DE:  DCW 0x217
3323E0:  DCW 0x224
3323E2:  DCW 0xC05
3323E4:  DCW 0x23D
3323E6:  DCW 0xC05
3323E8:  DCW 0x270
3323EA:  DCW 0x28F
3323EC:  DCW 0x2AE
3323EE:  DCW 0x2CD
3323F0:  DCW 0x2EC
3323F2:  DCW 0xC05
3323F4:  DCW 0xC05
3323F6:  DCW 0x2F9
3323F8:  DCW 0x317
3323FA:  DCW 0xC05
3323FC:  DCW 0x326
3323FE:  DCW 0x341
332400:  DCW 0x345
332402:  DCW 0xC05
332404:  DCW 0x349
332406:  DCW 0x368
332408:  DCW 0x387
33240A:  DCW 0x3A6
33240C:  DCW 0xC05
33240E:  DCW 0xC05
332410:  DCW 0xC05
332412:  DCW 0x3C5
332414:  DCW 0x3DD
332416:  DCW 0x3EB
332418:  DCW 0x3F9
33241A:  DCW 0x420
33241C:  DCW 0xC05
33241E:  DCW 0x431
332420:  DCW 0x455
332422:  DCW 0x474
332424:  DCW 0x497
332426:  DCW 0x4B6
332428:  DCW 0x4D6
33242A:  DCW 0x4EC
33242C:  DCW 0xC05
33242E:  DCW 0x50B
332430:  DCW 0x52C
332432:  DCW 0xC05
332434:  DCW 0xC05
332436:  DCW 0x54D
332438:  DCW 0x567
33243A:  DCW 0x57D
33243C:  DCW 0xC05
33243E:  DCW 0x5A3
332440:  DCW 0x5C4
332442:  DCW 0xC05
332444:  DCW 0xC05
332446:  DCW 0xC05
332448:  DCW 0xC05
33244A:  DCW 0x5E4
33244C:  DCW 0xC05
33244E:  DCW 0x5E7
332450:  DCW 0x601
332452:  DCW 0x627
332454:  DCW 0x64A
332456:  DCW 0x66D
332458:  DCW 0x67B
33245A:  DCW 0x688
33245C:  DCW 0xC05
33245E:  DCW 0x696
332460:  DCW 0x6B8
332462:  DCW 0x6D6
332464:  DCW 0x700
332466:  DCW 0x721
332468:  DCW 0xC05
33246A:  DCW 0x73F
33246C:  DCW 0xC05
33246E:  DCW 0x7F4
332470:  DCW 0x816
332472:  DCW 0x82A
332474:  DCW 0xC05
332476:  DCW 0xC05
332478:  ADD.W           R5, SP, #0xF8+var_3E; jumptable 003323AC case 1900
33247C:  MOV             R0, R4; this
33247E:  MOVS            R2, #8; unsigned __int8
332480:  MOV             R1, R5; char *
332482:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
332486:  MOV             R0, R4; this
332488:  MOVS            R1, #2; __int16
33248A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33248E:  MOV             R0, R5; char *
332490:  MOVS            R1, #2
332492:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
332496:  CMP             R0, #0
332498:  BLT.W           loc_333BB8
33249C:  LDR.W           R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x3324AA)
3324A0:  MOVS            R6, #0
3324A2:  LDR.W           R2, =(ScriptParams_ptr - 0x3324B0)
3324A6:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
3324A8:  LDR.W           R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x3324B4)
3324AC:  ADD             R2, PC; ScriptParams_ptr
3324AE:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
3324B0:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
3324B2:  LDR             R2, [R2]; ScriptParams
3324B4:  ADD.W           R0, R1, R0,LSL#5
3324B8:  LDR             R1, [R3]; CTheZones::ZoneInfoArray ...
3324BA:  LDRH            R0, [R0,#0x1C]
3324BC:  LDRD.W          R3, R2, [R2]
3324C0:  ADD.W           R0, R0, R0,LSL#4
3324C4:  ADD             R0, R1
3324C6:  STRB            R2, [R0,R3]
3324C8:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
3324CC:  ADD.W           R5, SP, #0xF8+var_3E; jumptable 003323AC case 1901
3324D0:  MOV             R0, R4; this
3324D2:  MOVS            R2, #8; unsigned __int8
3324D4:  MOV             R1, R5; char *
3324D6:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3324DA:  MOV             R0, R4; this
3324DC:  MOVS            R1, #1; __int16
3324DE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3324E2:  MOV             R0, R5; char *
3324E4:  MOVS            R1, #2
3324E6:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
3324EA:  LDR.W           R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x3324F6)
3324EE:  LDR.W           R2, =(ScriptParams_ptr - 0x3324FC)
3324F2:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
3324F4:  LDR.W           R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x332500)
3324F8:  ADD             R2, PC; ScriptParams_ptr
3324FA:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
3324FC:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
3324FE:  LDR             R2, [R2]; ScriptParams
332500:  ADD.W           R0, R1, R0,LSL#5
332504:  LDR             R1, [R3]; CTheZones::ZoneInfoArray ...
332506:  LDRH            R0, [R0,#0x1C]
332508:  LDR             R3, [R2]
33250A:  ADD.W           R0, R0, R0,LSL#4
33250E:  ADD             R0, R1
332510:  LDRB            R0, [R0,R3]
332512:  STR             R0, [R2]
332514:  B.W             loc_3339B0
332518:  LDR.W           R0, =(_ZN9CMessages13BriefMessagesE_ptr - 0x332520); jumptable 003323AC case 1903
33251C:  ADD             R0, PC; _ZN9CMessages13BriefMessagesE_ptr
33251E:  LDR             R0, [R0]; CMessages::BriefMessages ...
332520:  LDR             R1, [R0,#(dword_A00290 - 0xA00288)]
332522:  B.W             loc_3334FE
332526:  MOV             R0, R4; jumptable 003323AC case 1904
332528:  MOVS            R1, #2; __int16
33252A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33252E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332540)
332532:  MOVW            R3, #0x7CC
332536:  LDR.W           R0, =(ScriptParams_ptr - 0x332542)
33253A:  MOVS            R6, #0
33253C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33253E:  ADD             R0, PC; ScriptParams_ptr
332540:  LDR             R1, [R1]; CPools::ms_pPedPool ...
332542:  LDR             R0, [R0]; ScriptParams
332544:  LDRD.W          R2, R0, [R0]
332548:  CMP             R0, #0
33254A:  LDR             R1, [R1]; CPools::ms_pPedPool
33254C:  MOV.W           R2, R2,LSR#8
332550:  LDR             R1, [R1]
332552:  MLA.W           R1, R2, R3, R1
332556:  LDR.W           R2, [R1,#0x488]
33255A:  BIC.W           R3, R2, #0x20000000
33255E:  IT NE
332560:  ORRNE.W         R3, R2, #0x20000000
332564:  STR.W           R3, [R1,#0x488]
332568:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
33256C:  MOV             R0, R4; jumptable 003323AC case 1905
33256E:  MOVS            R1, #2; __int16
332570:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332574:  LDR.W           R0, =(ScriptParams_ptr - 0x332580)
332578:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x332582)
33257C:  ADD             R0, PC; ScriptParams_ptr
33257E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
332580:  LDR             R0, [R0]; ScriptParams
332582:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
332584:  LDR             R0, [R0]
332586:  LDR.W           R4, [R1,R0,LSL#2]
33258A:  CMP             R4, #0
33258C:  BEQ.W           loc_333BB8
332590:  LDR             R0, [R4]
332592:  LDR             R1, [R0,#0x14]
332594:  MOV             R0, R4
332596:  BLX             R1
332598:  CMP             R0, #6
33259A:  BNE.W           loc_333BB8
33259E:  LDR             R0, [R4,#0x3C]
3325A0:  CMP             R0, #0
3325A2:  BEQ.W           loc_333BB8
3325A6:  LDR.W           R0, =(ScriptParams_ptr - 0x3325B0)
3325AA:  MOVS            R6, #0
3325AC:  ADD             R0, PC; ScriptParams_ptr
3325AE:  LDR             R0, [R0]; ScriptParams
3325B0:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
3325B2:  STRB.W          R0, [R4,#0x49]
3325B6:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
3325BA:  MOV             R0, R4; jumptable 003323AC case 1906
3325BC:  MOVS            R1, #4; __int16
3325BE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3325C2:  LDR.W           R0, =(ScriptParams_ptr - 0x3325CE)
3325C6:  MOV.W           R11, #0
3325CA:  ADD             R0, PC; ScriptParams_ptr
3325CC:  LDR             R1, [R0]; ScriptParams ; unsigned int
3325CE:  LDRD.W          R8, R0, [R1]
3325D2:  CMP             R0, #0
3325D4:  LDRD.W          R6, R10, [R1,#(dword_81A910 - 0x81A908)]
3325D8:  BLT.W           loc_333570
3325DC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3325E8)
3325E0:  UXTB            R3, R0
3325E2:  LSRS            R0, R0, #8
3325E4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3325E6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3325E8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3325EA:  LDR             R2, [R1,#4]
3325EC:  LDRB            R2, [R2,R0]
3325EE:  CMP             R2, R3
3325F0:  BNE.W           loc_333570
3325F4:  MOVW            R2, #0xA2C
3325F8:  LDR             R1, [R1]
3325FA:  MLA.W           R9, R0, R2, R1
3325FE:  B.W             loc_333574
332602:  ADD             R5, SP, #0xF8+var_88; jumptable 003323AC case 1910
332604:  MOV             R0, R4; this
332606:  MOVS            R2, #0x12; unsigned __int8
332608:  MOV             R1, R5; char *
33260A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33260E:  MOV             R0, R5; this
332610:  BLX             j__ZN9CIplStore11FindIplSlotEPKc; CIplStore::FindIplSlot(char const*)
332614:  BLX             j__ZN9CIplStore19RequestIplAndIgnoreEi; CIplStore::RequestIplAndIgnore(int)
332618:  B.W             loc_333BB8
33261C:  ADD             R5, SP, #0xF8+var_88; jumptable 003323AC case 1911
33261E:  MOV             R0, R4; this
332620:  MOVS            R2, #0x12; unsigned __int8
332622:  MOV             R1, R5; char *
332624:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
332628:  MOV             R0, R5; this
33262A:  BLX             j__ZN9CIplStore11FindIplSlotEPKc; CIplStore::FindIplSlot(char const*)
33262E:  BLX             j__ZN9CIplStore18RemoveIplAndIgnoreEi; CIplStore::RemoveIplAndIgnore(int)
332632:  B.W             loc_333BB8
332636:  ADD             R5, SP, #0xF8+var_88; jumptable 003323AC case 1912
332638:  MOV             R0, R4; this
33263A:  MOVS            R2, #0x12; unsigned __int8
33263C:  MOV             R1, R5; char *
33263E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
332642:  MOV             R0, R5; this
332644:  BLX             j__ZN9CIplStore11FindIplSlotEPKc; CIplStore::FindIplSlot(char const*)
332648:  BLX             j__ZN9CIplStore20RemoveIplWhenFarAwayEi; CIplStore::RemoveIplWhenFarAway(int)
33264C:  B.W             loc_333BB8
332650:  MOV             R0, R4; jumptable 003323AC case 1914
332652:  MOVS            R1, #3; __int16
332654:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332658:  LDR.W           R0, =(ScriptParams_ptr - 0x332660)
33265C:  ADD             R0, PC; ScriptParams_ptr
33265E:  LDR             R0, [R0]; ScriptParams
332660:  LDRD.W          R1, R4, [R0]; int
332664:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]; this
332666:  CMP             R1, #0
332668:  BLT.W           loc_3335FC
33266C:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332678)
332670:  UXTB            R6, R1
332672:  LSRS            R1, R1, #8
332674:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
332676:  LDR             R2, [R2]; CPools::ms_pPedPool ...
332678:  LDR             R2, [R2]; CPools::ms_pPedPool
33267A:  LDR             R3, [R2,#4]
33267C:  LDRB            R3, [R3,R1]
33267E:  CMP             R3, R6
332680:  BNE.W           loc_3335FC
332684:  MOVW            R3, #0x7CC
332688:  LDR             R2, [R2]
33268A:  MLA.W           R5, R1, R3, R2
33268E:  B.W             loc_3335FE
332692:  MOV             R0, R4; jumptable 003323AC case 1915
332694:  MOVS            R1, #3; __int16
332696:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33269A:  LDR.W           R0, =(ScriptParams_ptr - 0x3326A2)
33269E:  ADD             R0, PC; ScriptParams_ptr
3326A0:  LDR             R0, [R0]; ScriptParams
3326A2:  LDRD.W          R1, R4, [R0]; int
3326A6:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]; this
3326A8:  CMP             R1, #0
3326AA:  BLT.W           loc_333610
3326AE:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3326BA)
3326B2:  UXTB            R6, R1
3326B4:  LSRS            R1, R1, #8
3326B6:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
3326B8:  LDR             R2, [R2]; CPools::ms_pPedPool ...
3326BA:  LDR             R2, [R2]; CPools::ms_pPedPool
3326BC:  LDR             R3, [R2,#4]
3326BE:  LDRB            R3, [R3,R1]
3326C0:  CMP             R3, R6
3326C2:  BNE.W           loc_333610
3326C6:  MOVW            R3, #0x7CC
3326CA:  LDR             R2, [R2]
3326CC:  MLA.W           R5, R1, R3, R2
3326D0:  B.W             loc_333612
3326D4:  MOV             R0, R4; jumptable 003323AC case 1916
3326D6:  MOVS            R1, #2; __int16
3326D8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3326DC:  LDR.W           R0, =(ScriptParams_ptr - 0x3326E4)
3326E0:  ADD             R0, PC; ScriptParams_ptr
3326E2:  LDR             R1, [R0]; ScriptParams
3326E4:  LDRD.W          R0, R1, [R1]; int
3326E8:  CMP             R0, #0
3326EA:  BLT.W           loc_333624
3326EE:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3326FA)
3326F2:  UXTB            R6, R0
3326F4:  LSRS            R0, R0, #8
3326F6:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
3326F8:  LDR             R2, [R2]; CPools::ms_pPedPool ...
3326FA:  LDR             R2, [R2]; CPools::ms_pPedPool
3326FC:  LDR             R3, [R2,#4]
3326FE:  LDRB            R3, [R3,R0]
332700:  CMP             R3, R6
332702:  BNE.W           loc_333624
332706:  MOVW            R3, #0x7CC
33270A:  LDR             R2, [R2]
33270C:  MLA.W           R0, R0, R3, R2
332710:  B.W             loc_333626
332714:  MOV             R0, R4; jumptable 003323AC case 1917
332716:  MOVS            R1, #1; __int16
332718:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33271C:  LDR.W           R0, =(ScriptParams_ptr - 0x332724)
332720:  ADD             R0, PC; ScriptParams_ptr
332722:  LDR             R0, [R0]; ScriptParams
332724:  LDR             R1, [R0]
332726:  CMP             R1, #0
332728:  BLT.W           loc_333630
33272C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x332738)
332730:  UXTB            R3, R1
332732:  LSRS            R1, R1, #8
332734:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
332736:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
332738:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33273A:  LDR             R2, [R0,#4]
33273C:  LDRB            R2, [R2,R1]
33273E:  CMP             R2, R3
332740:  BNE.W           loc_333630
332744:  MOVW            R2, #0xA2C
332748:  LDR             R0, [R0]
33274A:  MLA.W           R0, R1, R2, R0
33274E:  B.W             loc_333632
332752:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x33275E); jumptable 003323AC case 1918
332756:  LDR.W           R1, =(ScriptParams_ptr - 0x332760)
33275A:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
33275C:  ADD             R1, PC; ScriptParams_ptr
33275E:  LDR             R0, [R0]; CGame::currArea ...
332760:  LDR             R1, [R1]; ScriptParams
332762:  LDR             R0, [R0]; CGame::currArea
332764:  B.W             loc_3339AE
332768:  MOV             R0, R4; jumptable 003323AC case 1920
33276A:  MOVS            R1, #5; __int16
33276C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332770:  LDR.W           R0, =(ScriptParams_ptr - 0x33277C)
332774:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33277E)
332778:  ADD             R0, PC; ScriptParams_ptr
33277A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33277C:  LDR             R0, [R0]; ScriptParams
33277E:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
332780:  LDR             R1, [R0]
332782:  LDR             R0, [R2]; CPools::ms_pVehiclePool
332784:  CMP             R1, #0
332786:  BLT.W           loc_333684
33278A:  LDR             R2, [R0,#4]
33278C:  UXTB            R3, R1
33278E:  LSRS            R1, R1, #8
332790:  LDRB            R2, [R2,R1]
332792:  CMP             R2, R3
332794:  BNE.W           loc_333684
332798:  MOVW            R2, #0xA2C
33279C:  LDR             R3, [R0]
33279E:  MLA.W           R6, R1, R2, R3
3327A2:  B.W             loc_333686
3327A6:  MOV             R0, R4; jumptable 003323AC case 1921
3327A8:  MOVS            R1, #1; __int16
3327AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3327AE:  LDR.W           R0, =(ScriptParams_ptr - 0x3327B8)
3327B2:  MOVS            R1, #1
3327B4:  ADD             R0, PC; ScriptParams_ptr
3327B6:  LDR             R5, [R0]; ScriptParams
3327B8:  LDR             R0, [R5]
3327BA:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3327BE:  LDR             R0, [R0,#0xC]
3327C0:  B               loc_332E78
3327C2:  MOV             R0, R4; jumptable 003323AC case 1922
3327C4:  MOVS            R1, #1; __int16
3327C6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3327CA:  LDR.W           R0, =(ScriptParams_ptr - 0x3327D4)
3327CE:  MOVS            R1, #1
3327D0:  ADD             R0, PC; ScriptParams_ptr
3327D2:  LDR             R5, [R0]; ScriptParams
3327D4:  LDR             R0, [R5]
3327D6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3327DA:  LDR             R0, [R0,#0x14]
3327DC:  B               loc_332E78
3327DE:  MOV             R0, R4; jumptable 003323AC case 1923
3327E0:  MOVS            R1, #2; __int16
3327E2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3327E6:  LDR.W           R0, =(ScriptParams_ptr - 0x3327EE)
3327EA:  ADD             R0, PC; ScriptParams_ptr
3327EC:  LDR             R5, [R0]; ScriptParams
3327EE:  LDRD.W          R0, R1, [R5]; unsigned int
3327F2:  BLX             j__ZN9CShopping12GetExtraInfoEji; CShopping::GetExtraInfo(uint,int)
3327F6:  B               loc_332E78
3327F8:  MOV             R0, R4; jumptable 003323AC case 1924
3327FA:  MOVS            R1, #4; __int16
3327FC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332800:  LDR.W           R0, =(ScriptParams_ptr - 0x33280C)
332804:  LDR.W           R6, =(_ZN6CWorld7PlayersE_ptr - 0x33280E)
332808:  ADD             R0, PC; ScriptParams_ptr
33280A:  ADD             R6, PC; _ZN6CWorld7PlayersE_ptr
33280C:  LDR             R0, [R0]; ScriptParams
33280E:  LDR             R6, [R6]; CWorld::Players ...
332810:  LDRD.W          R5, R1, [R0]; unsigned int
332814:  LDRD.W          R2, R3, [R0,#(dword_81A910 - 0x81A908)]; int
332818:  MOV.W           R0, #0x194
33281C:  MLA.W           R0, R5, R0, R6
332820:  LDR             R0, [R0,#8]; this
332822:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEjji; CPedClothesDesc::SetTextureAndModel(uint,uint,int)
332826:  B.W             loc_333BB8
33282A:  MOV             R0, R4; jumptable 003323AC case 1926
33282C:  MOVS            R1, #6; __int16
33282E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332832:  LDR.W           R0, =(ScriptParams_ptr - 0x33283A)
332836:  ADD             R0, PC; ScriptParams_ptr
332838:  LDR             R5, [R0]; ScriptParams
33283A:  LDR.W           R0, =(gFireManager_ptr - 0x332846)
33283E:  VLDR            S0, [R5]
332842:  ADD             R0, PC; gFireManager_ptr
332844:  VLDR            S6, [R5,#0xC]
332848:  VLDR            S2, [R5,#4]
33284C:  VLDR            S8, [R5,#0x10]
332850:  VMIN.F32        D6, D0, D3
332854:  VLDR            S4, [R5,#8]
332858:  VMAX.F32        D0, D0, D3
33285C:  VLDR            S10, [R5,#0x14]
332860:  VMIN.F32        D7, D1, D4
332864:  VMAX.F32        D1, D1, D4
332868:  LDR             R0, [R0]; gFireManager ; this
33286A:  VMIN.F32        D8, D2, D5
33286E:  VMOV            R1, S12; float
332872:  VMAX.F32        D2, D2, D5
332876:  VSTR            S0, [SP,#0xF8+var_F8]
33287A:  VMOV            R2, S14; float
33287E:  VSTR            S2, [SP,#0xF8+var_F4]
332882:  VMOV            R3, S16; float
332886:  VSTR            S4, [SP,#0xF8+var_F0]
33288A:  BLX             j__ZN12CFireManager17GetNumFiresInAreaEffffff; CFireManager::GetNumFiresInArea(float,float,float,float,float,float)
33288E:  B               loc_332E78
332890:  MOV             R0, R4; jumptable 003323AC case 1928
332892:  MOVS            R1, #2; __int16
332894:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332898:  LDR.W           R0, =(ScriptParams_ptr - 0x3328A0)
33289C:  ADD             R0, PC; ScriptParams_ptr
33289E:  LDR             R0, [R0]; ScriptParams
3328A0:  LDR             R1, [R0]
3328A2:  CMP             R1, #0
3328A4:  BLT.W           loc_3336BA
3328A8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3328B4)
3328AC:  UXTB            R3, R1
3328AE:  LSRS            R1, R1, #8
3328B0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3328B2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3328B4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3328B6:  LDR             R2, [R0,#4]
3328B8:  LDRB            R2, [R2,R1]
3328BA:  CMP             R2, R3
3328BC:  BNE.W           loc_3336BA
3328C0:  MOVW            R2, #0xA2C
3328C4:  LDR             R0, [R0]
3328C6:  MLA.W           R0, R1, R2, R0
3328CA:  B.W             loc_3336BC
3328CE:  MOV             R0, R4; jumptable 003323AC case 1929
3328D0:  MOVS            R1, #1; __int16
3328D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3328D6:  LDR.W           R0, =(ScriptParams_ptr - 0x3328DE)
3328DA:  ADD             R0, PC; ScriptParams_ptr
3328DC:  LDR             R0, [R0]; ScriptParams
3328DE:  LDR             R1, [R0]
3328E0:  CMP             R1, #0
3328E2:  BLT.W           loc_3336CC
3328E6:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3328F2)
3328EA:  UXTB            R3, R1
3328EC:  LSRS            R1, R1, #8
3328EE:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3328F0:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3328F2:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3328F4:  LDR             R2, [R0,#4]
3328F6:  LDRB            R2, [R2,R1]
3328F8:  CMP             R2, R3
3328FA:  BNE.W           loc_3336CC
3328FE:  MOVW            R2, #0xA2C
332902:  LDR             R0, [R0]
332904:  MLA.W           R0, R1, R2, R0
332908:  B.W             loc_3336CE
33290C:  MOV             R0, R4; jumptable 003323AC case 1930
33290E:  MOVS            R1, #2; __int16
332910:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332914:  LDR.W           R0, =(ScriptParams_ptr - 0x33291C)
332918:  ADD             R0, PC; ScriptParams_ptr
33291A:  LDR             R0, [R0]; ScriptParams
33291C:  LDR             R1, [R0]
33291E:  CMP             R1, #0
332920:  BLT.W           loc_3336D4
332924:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x332930)
332928:  UXTB            R3, R1
33292A:  LSRS            R1, R1, #8
33292C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33292E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
332930:  LDR             R0, [R0]; CPools::ms_pVehiclePool
332932:  LDR             R2, [R0,#4]
332934:  LDRB            R2, [R2,R1]
332936:  CMP             R2, R3
332938:  BNE.W           loc_3336D4
33293C:  MOVW            R2, #0xA2C
332940:  LDR             R0, [R0]
332942:  MLA.W           R0, R1, R2, R0
332946:  B.W             loc_3336D6
33294A:  MOV             R0, R4; jumptable 003323AC case 1931
33294C:  MOVS            R1, #1; __int16
33294E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332952:  LDR.W           R0, =(ScriptParams_ptr - 0x33295A)
332956:  ADD             R0, PC; ScriptParams_ptr
332958:  LDR             R0, [R0]; ScriptParams
33295A:  LDR             R1, [R0]
33295C:  CMP             R1, #0
33295E:  BLT.W           loc_33370E
332962:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33296E)
332966:  UXTB            R3, R1
332968:  LSRS            R1, R1, #8
33296A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33296C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33296E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
332970:  LDR             R2, [R0,#4]
332972:  LDRB            R2, [R2,R1]
332974:  CMP             R2, R3
332976:  BNE.W           loc_33370E
33297A:  MOVW            R2, #0xA2C
33297E:  LDR             R0, [R0]
332980:  MLA.W           R0, R1, R2, R0
332984:  B.W             loc_333710
332988:  MOV             R0, R4; jumptable 003323AC case 1932
33298A:  MOVS            R1, #1; __int16
33298C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332990:  LDR.W           R0, =(ScriptParams_ptr - 0x332998)
332994:  ADD             R0, PC; ScriptParams_ptr
332996:  LDR             R0, [R0]; ScriptParams
332998:  LDR             R0, [R0]; this
33299A:  BLX             j__ZN9CShopping10GetNameTagEj; CShopping::GetNameTag(uint)
33299E:  MOV             R5, R0
3329A0:  B               loc_332E96
3329A2:  MOV             R0, R4; jumptable 003323AC case 1935
3329A4:  MOVS            R1, #2; __int16
3329A6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3329AA:  LDR.W           R0, =(ScriptParams_ptr - 0x3329B2)
3329AE:  ADD             R0, PC; ScriptParams_ptr
3329B0:  LDR             R0, [R0]; ScriptParams
3329B2:  LDRD.W          R8, R5, [R0]
3329B6:  MOVS            R0, #dword_14; this
3329B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3329BC:  MOVS            R1, #1; int
3329BE:  MOV             R6, R0
3329C0:  BLX             j__ZN16CTaskComplexJumpC2Ei_0; CTaskComplexJump::CTaskComplexJump(int)
3329C4:  LDR.W           R0, =(_ZTV17CTaskComplexClimb_ptr - 0x3329D4)
3329C8:  CMP             R5, #0
3329CA:  IT NE
3329CC:  MOVNE           R5, #1
3329CE:  MOV             R1, R8
3329D0:  ADD             R0, PC; _ZTV17CTaskComplexClimb_ptr
3329D2:  STRB            R5, [R6,#0x10]
3329D4:  MOV             R2, R6
3329D6:  MOVW            R3, #0x78F
3329DA:  B.W             loc_33398E
3329DE:  MOV             R0, R4; jumptable 003323AC case 1936
3329E0:  MOVS            R1, #1; __int16
3329E2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3329E6:  LDR.W           R0, =(ScriptParams_ptr - 0x3329F2)
3329EA:  MOVS            R1, #0; unsigned int
3329EC:  MOVS            R6, #0
3329EE:  ADD             R0, PC; ScriptParams_ptr
3329F0:  LDR             R0, [R0]; ScriptParams
3329F2:  LDR             R0, [R0]; this
3329F4:  BLX             j__ZN9CShopping3BuyEji; CShopping::Buy(uint,int)
3329F8:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
3329FC:  MOV             R0, R4; jumptable 003323AC case 1938
3329FE:  MOVS            R1, #1; __int16
332A00:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332A04:  LDR.W           R0, =(ScriptParams_ptr - 0x332A14)
332A08:  MOVW            R2, #0x7CC
332A0C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332A16)
332A10:  ADD             R0, PC; ScriptParams_ptr
332A12:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
332A14:  LDR             R0, [R0]; ScriptParams
332A16:  LDR             R1, [R1]; CPools::ms_pPedPool ...
332A18:  LDR             R0, [R0]
332A1A:  LDR             R1, [R1]; CPools::ms_pPedPool
332A1C:  LSRS            R0, R0, #8
332A1E:  LDR             R1, [R1]
332A20:  MLA.W           R0, R0, R2, R1
332A24:  MOVS            R1, #1; bool
332A26:  LDR.W           R0, [R0,#0x440]; this
332A2A:  BLX             j__ZN16CPedIntelligence16FlushImmediatelyEb; CPedIntelligence::FlushImmediately(bool)
332A2E:  B.W             loc_333BB8
332A32:  BLX             j__ZN9CShopping17StoreClothesStateEv; jumptable 003323AC case 1939
332A36:  B.W             loc_333BB8
332A3A:  BLX             j__ZN9CShopping19RestoreClothesStateEv; jumptable 003323AC case 1940
332A3E:  B.W             loc_333BB8
332A42:  MOV             R0, R4; jumptable 003323AC case 1942
332A44:  MOVS            R1, #1; __int16
332A46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332A4A:  LDR.W           R0, =(ScriptParams_ptr - 0x332A52)
332A4E:  ADD             R0, PC; ScriptParams_ptr
332A50:  LDR             R0, [R0]; ScriptParams
332A52:  LDR             R1, [R0]
332A54:  CMP             R1, #0
332A56:  BLT.W           loc_33376A
332A5A:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x332A66)
332A5E:  UXTB            R3, R1
332A60:  LSRS            R1, R1, #8
332A62:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
332A64:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
332A66:  LDR             R0, [R0]; CPools::ms_pObjectPool
332A68:  LDR             R2, [R0,#4]
332A6A:  LDRB            R2, [R2,R1]
332A6C:  CMP             R2, R3
332A6E:  BNE.W           loc_33376A
332A72:  MOV.W           R2, #0x1A4
332A76:  LDR             R0, [R0]
332A78:  MLA.W           R0, R1, R2, R0
332A7C:  B.W             loc_33376C
332A80:  MOV             R0, R4; jumptable 003323AC case 1943
332A82:  MOVS            R1, #2; __int16
332A84:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332A88:  LDR.W           R0, =(ScriptParams_ptr - 0x332A90)
332A8C:  ADD             R0, PC; ScriptParams_ptr
332A8E:  LDR             R0, [R0]; ScriptParams
332A90:  LDR             R1, [R0]
332A92:  CMP             R1, #0
332A94:  BLT.W           loc_333778
332A98:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x332AA4)
332A9C:  UXTB            R3, R1
332A9E:  LSRS            R1, R1, #8
332AA0:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
332AA2:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
332AA4:  LDR             R0, [R0]; CPools::ms_pObjectPool
332AA6:  LDR             R2, [R0,#4]
332AA8:  LDRB            R2, [R2,R1]
332AAA:  CMP             R2, R3
332AAC:  BNE.W           loc_333778
332AB0:  MOV.W           R2, #0x1A4
332AB4:  LDR             R0, [R0]
332AB6:  MLA.W           R0, R1, R2, R0
332ABA:  B.W             loc_33377A
332ABE:  MOV             R0, R4; jumptable 003323AC case 1944
332AC0:  MOVS            R1, #1; __int16
332AC2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332AC6:  LDR.W           R0, =(ScriptParams_ptr - 0x332ACE)
332ACA:  ADD             R0, PC; ScriptParams_ptr
332ACC:  LDR             R0, [R0]; ScriptParams
332ACE:  LDR             R1, [R0]
332AD0:  CMP             R1, #0
332AD2:  BLT.W           loc_33378A
332AD6:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x332AE2)
332ADA:  UXTB            R3, R1
332ADC:  LSRS            R1, R1, #8
332ADE:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
332AE0:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
332AE2:  LDR             R0, [R0]; CPools::ms_pObjectPool
332AE4:  LDR             R2, [R0,#4]
332AE6:  LDRB            R2, [R2,R1]
332AE8:  CMP             R2, R3
332AEA:  BNE.W           loc_33378A
332AEE:  MOV.W           R2, #0x1A4
332AF2:  LDR             R0, [R0]
332AF4:  MLA.W           R0, R1, R2, R0
332AF8:  B.W             loc_33378C
332AFC:  MOV             R0, R4; jumptable 003323AC case 1945
332AFE:  MOVS            R1, #1; __int16
332B00:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332B04:  LDR.W           R0, =(ScriptParams_ptr - 0x332B0C)
332B08:  ADD             R0, PC; ScriptParams_ptr
332B0A:  LDR             R0, [R0]; ScriptParams
332B0C:  LDR             R1, [R0]
332B0E:  CMP             R1, #0
332B10:  BLT.W           loc_3337F0
332B14:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x332B20)
332B18:  UXTB            R3, R1
332B1A:  LSRS            R1, R1, #8
332B1C:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
332B1E:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
332B20:  LDR             R0, [R0]; CPools::ms_pObjectPool
332B22:  LDR             R2, [R0,#4]
332B24:  LDRB            R2, [R2,R1]
332B26:  CMP             R2, R3
332B28:  BNE.W           loc_3337F0
332B2C:  MOV.W           R2, #0x1A4
332B30:  LDR             R0, [R0]
332B32:  MLA.W           R0, R1, R2, R0
332B36:  B.W             loc_3337F2
332B3A:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; jumptable 003323AC case 1949
332B3E:  CBZ             R0, loc_332B4E
332B40:  MOV.W           R0, #0xFFFFFFFF; int
332B44:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
332B48:  MOVS            R1, #0; int
332B4A:  BLX             j__ZN10CPlayerPed14SetWantedLevelEi; CPlayerPed::SetWantedLevel(int)
332B4E:  LDR.W           R0, =(_ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x332B5C)
332B52:  MOVS            R6, #0
332B54:  LDR.W           R1, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x332B5E)
332B58:  ADD             R0, PC; _ZN11CWaterLevel17m_bWaterFogScriptE_ptr
332B5A:  ADD             R1, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
332B5C:  LDR             R0, [R0]; CWaterLevel::m_bWaterFogScript ...
332B5E:  LDR             R1, [R1]; CRopes::PlayerControlsCrane ...
332B60:  STRB            R6, [R0]; CWaterLevel::m_bWaterFogScript
332B62:  MOVS            R0, #1
332B64:  STR             R0, [R1]; CRopes::PlayerControlsCrane
332B66:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332B6A:  LDR.W           R0, =(_ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x332B78); jumptable 003323AC case 1950
332B6E:  MOVS            R6, #0
332B70:  LDR.W           R1, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x332B7A)
332B74:  ADD             R0, PC; _ZN11CWaterLevel17m_bWaterFogScriptE_ptr
332B76:  ADD             R1, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
332B78:  LDR             R0, [R0]; CWaterLevel::m_bWaterFogScript ...
332B7A:  LDR             R1, [R1]; CRopes::PlayerControlsCrane ...
332B7C:  STRB            R6, [R0]; CWaterLevel::m_bWaterFogScript
332B7E:  MOVS            R0, #2
332B80:  STR             R0, [R1]; CRopes::PlayerControlsCrane
332B82:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332B86:  LDR.W           R0, =(_ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x332B96); jumptable 003323AC case 1951
332B8A:  MOVS            R2, #1
332B8C:  LDR.W           R1, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x332B98)
332B90:  MOVS            R6, #0
332B92:  ADD             R0, PC; _ZN11CWaterLevel17m_bWaterFogScriptE_ptr
332B94:  ADD             R1, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
332B96:  LDR             R0, [R0]; CWaterLevel::m_bWaterFogScript ...
332B98:  LDR             R1, [R1]; CRopes::PlayerControlsCrane ...
332B9A:  STRB            R2, [R0]; CWaterLevel::m_bWaterFogScript
332B9C:  STR             R6, [R1]; CRopes::PlayerControlsCrane
332B9E:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332BA2:  MOV             R0, R4; jumptable 003323AC case 1952
332BA4:  MOVS            R1, #4; __int16
332BA6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332BAA:  LDR.W           R0, =(ScriptParams_ptr - 0x332BB4)
332BAE:  MOVS            R1, #4; int
332BB0:  ADD             R0, PC; ScriptParams_ptr
332BB2:  LDR             R0, [R0]; ScriptParams
332BB4:  LDRD.W          R8, R0, [R0]; this
332BB8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
332BBC:  MOV             R6, R0
332BBE:  CMP             R6, #0x3F ; '?'
332BC0:  BHI.W           loc_333BB8
332BC4:  LDR.W           R0, =(ScriptParams_ptr - 0x332BCC)
332BC8:  ADD             R0, PC; ScriptParams_ptr
332BCA:  LDR             R0, [R0]; ScriptParams
332BCC:  LDRD.W          R9, R10, [R0,#(dword_81A910 - 0x81A908)]
332BD0:  MOVS            R0, #dword_1C; this
332BD2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
332BD6:  MOV             R1, R6; int
332BD8:  MOV             R5, R0
332BDA:  BLX             j__ZN23CTaskComplexUseSequenceC2Ei; CTaskComplexUseSequence::CTaskComplexUseSequence(int)
332BDE:  STRD.W          R9, R10, [R5,#0x10]
332BE2:  MOV             R0, R4
332BE4:  MOV             R1, R8
332BE6:  MOV             R2, R5
332BE8:  MOV.W           R3, #0x7A0
332BEC:  B.W             loc_333996
332BF0:  MOV             R0, R4; jumptable 003323AC case 1953
332BF2:  MOVS            R1, #1; __int16
332BF4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332BF8:  LDR.W           R0, =(ScriptParams_ptr - 0x332C06)
332BFC:  MOVS            R6, #0
332BFE:  LDR.W           R1, =(_ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr - 0x332C08)
332C02:  ADD             R0, PC; ScriptParams_ptr
332C04:  ADD             R1, PC; _ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr
332C06:  LDR             R0, [R0]; ScriptParams
332C08:  LDR             R1, [R1]; CPedIntelligence::ms_iDesiredMoveState ...
332C0A:  LDR             R0, [R0]
332C0C:  STR             R0, [R1]; CPedIntelligence::ms_iDesiredMoveState
332C0E:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332C12:  MOV             R0, R4; jumptable 003323AC case 1955
332C14:  MOVS            R1, #4; __int16
332C16:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332C1A:  LDR.W           R0, =(ScriptParams_ptr - 0x332C22)
332C1E:  ADD             R0, PC; ScriptParams_ptr
332C20:  LDR             R0, [R0]; ScriptParams
332C22:  VLDR            S16, [R0,#8]
332C26:  VLDR            S18, [R0,#0xC]
332C2A:  LDRD.W          R8, R0, [R0]
332C2E:  CMP             R0, #0
332C30:  BLT.W           loc_3337F8
332C34:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332C40)
332C38:  UXTB            R3, R0
332C3A:  LSRS            R0, R0, #8
332C3C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
332C3E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
332C40:  LDR             R1, [R1]; CPools::ms_pPedPool
332C42:  LDR             R2, [R1,#4]
332C44:  LDRB            R2, [R2,R0]
332C46:  CMP             R2, R3
332C48:  BNE.W           loc_3337F8
332C4C:  MOVW            R2, #0x7CC
332C50:  LDR             R1, [R1]
332C52:  MLA.W           R6, R0, R2, R1
332C56:  B.W             loc_3337FA
332C5A:  MOV             R0, R4; jumptable 003323AC case 1956
332C5C:  MOVS            R1, #1; __int16
332C5E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332C62:  LDR.W           R0, =(ScriptParams_ptr - 0x332C6A)
332C66:  ADD             R0, PC; ScriptParams_ptr
332C68:  LDR             R0, [R0]; ScriptParams
332C6A:  LDR             R0, [R0]
332C6C:  CMP             R0, #0
332C6E:  BLT.W           loc_33381C
332C72:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332C7E)
332C76:  UXTB            R3, R0
332C78:  LSRS            R0, R0, #8
332C7A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
332C7C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
332C7E:  LDR             R1, [R1]; CPools::ms_pPedPool
332C80:  LDR             R2, [R1,#4]
332C82:  LDRB            R2, [R2,R0]
332C84:  CMP             R2, R3
332C86:  BNE.W           loc_33381C
332C8A:  MOVW            R2, #0x7CC
332C8E:  LDR             R1, [R1]
332C90:  MLA.W           R5, R0, R2, R1
332C94:  B.W             loc_33381E
332C98:  MOV             R0, R4; jumptable 003323AC case 1957
332C9A:  MOVS            R1, #3; __int16
332C9C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332CA0:  LDR.W           R0, =(ScriptParams_ptr - 0x332CAA)
332CA4:  MOVS            R6, #0
332CA6:  ADD             R0, PC; ScriptParams_ptr
332CA8:  LDR             R1, [R0]; ScriptParams ; unsigned int
332CAA:  LDRD.W          R8, R0, [R1]
332CAE:  CMP             R0, #0
332CB0:  LDR.W           R9, [R1,#(dword_81A910 - 0x81A908)]
332CB4:  BLT.W           loc_33385C
332CB8:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332CC4)
332CBC:  UXTB            R3, R0
332CBE:  LSRS            R0, R0, #8
332CC0:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
332CC2:  LDR             R1, [R1]; CPools::ms_pPedPool ...
332CC4:  LDR             R1, [R1]; CPools::ms_pPedPool
332CC6:  LDR             R2, [R1,#4]
332CC8:  LDRB            R2, [R2,R0]
332CCA:  CMP             R2, R3
332CCC:  BNE.W           loc_33385C
332CD0:  MOVW            R2, #0x7CC
332CD4:  LDR             R1, [R1]
332CD6:  MLA.W           R10, R0, R2, R1
332CDA:  B.W             loc_333860
332CDE:  MOV             R0, R4; jumptable 003323AC case 1958
332CE0:  MOVS            R1, #3; __int16
332CE2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332CE6:  LDR.W           R0, =(ScriptParams_ptr - 0x332CEE)
332CEA:  ADD             R0, PC; ScriptParams_ptr
332CEC:  LDR             R0, [R0]; ScriptParams
332CEE:  LDRD.W          R1, R2, [R0]; CVector *
332CF2:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
332CF4:  STRD.W          R1, R2, [SP,#0xF8+var_88]
332CF8:  STR             R0, [SP,#0xF8+var_80]
332CFA:  ADD             R0, SP, #0xF8+var_88; this
332CFC:  BLX             j__ZN11CTagManager13GetNearestTagERK7CVector; CTagManager::GetNearestTag(CVector const&)
332D00:  CMP             R0, #0
332D02:  BEQ.W           loc_333922
332D06:  LDR             R1, [R0,#0x14]
332D08:  ADD.W           R3, R1, #0x30 ; '0'
332D0C:  CMP             R1, #0
332D0E:  IT EQ
332D10:  ADDEQ           R3, R0, #4
332D12:  LDRD.W          R1, R2, [R3]
332D16:  LDR             R0, [R3,#8]
332D18:  B.W             loc_33392C
332D1C:  MOV             R0, R4; jumptable 003323AC case 1959
332D1E:  MOVS            R1, #1; __int16
332D20:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332D24:  LDR.W           R0, =(ScriptParams_ptr - 0x332D2C)
332D28:  ADD             R0, PC; ScriptParams_ptr
332D2A:  LDR             R0, [R0]; ScriptParams
332D2C:  LDR.W           R8, [R0]
332D30:  MOVS            R0, #dword_70; this
332D32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
332D36:  MOVS            R2, #0
332D38:  MOVS            R6, #0
332D3A:  MOVT            R2, #0x4120; float
332D3E:  MOVS            R1, #0; CVector *
332D40:  MOVS            R3, #0; int
332D42:  MOV             R5, R0
332D44:  STR             R6, [SP,#0xF8+var_F8]; CEntity *
332D46:  BLX             j__ZN18CTaskSimpleJetPackC2EPK7CVectorfiP7CEntity; CTaskSimpleJetPack::CTaskSimpleJetPack(CVector const*,float,int,CEntity *)
332D4A:  MOV             R0, R4; this
332D4C:  MOV             R1, R8; int
332D4E:  MOV             R2, R5; CTask *
332D50:  MOVW            R3, #0x7A7; int
332D54:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
332D58:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332D5C:  MOV             R0, R4; jumptable 003323AC case 1960
332D5E:  MOVS            R1, #1; __int16
332D60:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332D64:  LDR.W           R0, =(ScriptParams_ptr - 0x332D72)
332D68:  MOVS            R6, #0
332D6A:  LDR.W           R1, =(_ZN7CObject22bArea51SamSiteDisabledE_ptr - 0x332D74)
332D6E:  ADD             R0, PC; ScriptParams_ptr
332D70:  ADD             R1, PC; _ZN7CObject22bArea51SamSiteDisabledE_ptr
332D72:  LDR             R0, [R0]; ScriptParams
332D74:  LDR             R1, [R1]; CObject::bArea51SamSiteDisabled ...
332D76:  LDR             R0, [R0]
332D78:  CMP             R0, #0
332D7A:  MOV.W           R0, #0
332D7E:  IT EQ
332D80:  MOVEQ           R0, #1
332D82:  STRB            R0, [R1]; CObject::bArea51SamSiteDisabled
332D84:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332D88:  MOV             R0, R4; jumptable 003323AC case 1961
332D8A:  MOVS            R1, #1; __int16
332D8C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332D90:  LDR.W           R0, =(ScriptParams_ptr - 0x332D98)
332D94:  ADD             R0, PC; ScriptParams_ptr
332D96:  LDR             R0, [R0]; ScriptParams
332D98:  LDR             R1, [R0]
332D9A:  CMP             R1, #0
332D9C:  BLT.W           loc_33388C
332DA0:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332DAC)
332DA4:  UXTB            R3, R1
332DA6:  LSRS            R1, R1, #8
332DA8:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
332DAA:  LDR             R0, [R0]; CPools::ms_pPedPool ...
332DAC:  LDR             R0, [R0]; CPools::ms_pPedPool
332DAE:  LDR             R2, [R0,#4]
332DB0:  LDRB            R2, [R2,R1]
332DB2:  CMP             R2, R3
332DB4:  BNE.W           loc_33388C
332DB8:  MOVW            R2, #0x7CC
332DBC:  LDR             R0, [R0]
332DBE:  MLA.W           R0, R1, R2, R0
332DC2:  B.W             loc_33388E
332DC6:  MOV             R0, R4; jumptable 003323AC case 1963
332DC8:  MOVS            R1, #2; __int16
332DCA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332DCE:  LDR.W           R0, =(ScriptParams_ptr - 0x332DD6)
332DD2:  ADD             R0, PC; ScriptParams_ptr
332DD4:  LDR             R0, [R0]; ScriptParams
332DD6:  LDR             R0, [R0]
332DD8:  ADDS            R1, R0, #1
332DDA:  BEQ.W           loc_3334C4
332DDE:  CMP             R0, #0
332DE0:  BLT.W           loc_3334C4
332DE4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x332DF0)
332DE8:  UXTB            R3, R0
332DEA:  LSRS            R0, R0, #8
332DEC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
332DEE:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
332DF0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
332DF2:  LDR             R2, [R1,#4]
332DF4:  LDRB            R2, [R2,R0]
332DF6:  CMP             R2, R3
332DF8:  BNE.W           loc_3334C4
332DFC:  MOVW            R2, #0xA2C
332E00:  LDR             R1, [R1]
332E02:  MLA.W           R0, R0, R2, R1
332E06:  B               loc_3334C6
332E08:  MOV             R0, R4; jumptable 003323AC case 1964
332E0A:  MOVS            R1, #2; __int16
332E0C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332E10:  LDR.W           R0, =(ScriptParams_ptr - 0x332E18)
332E14:  ADD             R0, PC; ScriptParams_ptr
332E16:  LDR             R0, [R0]; ScriptParams
332E18:  LDR             R0, [R0]
332E1A:  ADDS            R1, R0, #1
332E1C:  BEQ.W           loc_333506
332E20:  CMP             R0, #0
332E22:  BLT.W           loc_333506
332E26:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x332E32)
332E2A:  UXTB            R3, R0
332E2C:  LSRS            R0, R0, #8
332E2E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
332E30:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
332E32:  LDR             R1, [R1]; CPools::ms_pVehiclePool
332E34:  LDR             R2, [R1,#4]
332E36:  LDRB            R2, [R2,R0]
332E38:  CMP             R2, R3
332E3A:  BNE.W           loc_333506
332E3E:  MOVW            R2, #0xA2C
332E42:  LDR             R1, [R1]
332E44:  MLA.W           R0, R0, R2, R1
332E48:  B               loc_333508
332E4A:  MOV             R0, R4; jumptable 003323AC case 1967
332E4C:  MOVS            R1, #1; __int16
332E4E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332E52:  LDR.W           R0, =(ScriptParams_ptr - 0x332E62)
332E56:  MOV.W           R2, #0x194; unsigned __int8
332E5A:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x332E64)
332E5E:  ADD             R0, PC; ScriptParams_ptr
332E60:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
332E62:  LDR             R5, [R0]; ScriptParams
332E64:  LDR             R1, [R1]; CWorld::Players ...
332E66:  LDR             R0, [R5]
332E68:  MULS            R0, R2
332E6A:  LDR             R0, [R1,R0]
332E6C:  MOVS            R1, #8; int
332E6E:  LDR.W           R0, [R0,#0x444]
332E72:  LDR             R0, [R0,#0x38]; this
332E74:  BLX             j__ZN11CTheScripts25GetUniqueScriptThingIndexEih; CTheScripts::GetUniqueScriptThingIndex(int,uchar)
332E78:  STR             R0, [R5]
332E7A:  B.W             loc_3339B0
332E7E:  LDR.W           R0, =(_ZN9CShopping13ms_shopLoadedE_ptr - 0x332E8A); jumptable 003323AC case 1968
332E82:  ADD             R5, SP, #0xF8+var_88
332E84:  MOVS            R2, #8; size_t
332E86:  ADD             R0, PC; _ZN9CShopping13ms_shopLoadedE_ptr
332E88:  LDR             R1, [R0]; char *
332E8A:  MOV             R0, R5; char *
332E8C:  BLX             strncpy
332E90:  MOV             R0, R5; char *
332E92:  BLX             j__Z13MakeUpperCasePc; MakeUpperCase(char *)
332E96:  MOV             R0, R4; this
332E98:  MOVS            R1, #2; unsigned __int8
332E9A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
332E9E:  MOV             R1, R5; char *
332EA0:  MOVS            R2, #8; size_t
332EA2:  BLX             strncpy
332EA6:  B.W             loc_333BB8
332EAA:  MOV             R0, R4; jumptable 003323AC case 1969
332EAC:  MOVS            R1, #1; __int16
332EAE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332EB2:  LDR.W           R0, =(ScriptParams_ptr - 0x332EBA)
332EB6:  ADD             R0, PC; ScriptParams_ptr
332EB8:  LDR             R0, [R0]; ScriptParams
332EBA:  LDR             R5, [R0]
332EBC:  CMP.W           R5, #0xFFFFFFFF
332EC0:  BLE.W           loc_33393C
332EC4:  LDR.W           R0, =(AudioEngine_ptr - 0x332ECC)
332EC8:  ADD             R0, PC; AudioEngine_ptr
332ECA:  LDR             R0, [R0]; AudioEngine ; this
332ECC:  BLX             j__ZN12CAudioEngine11GetBeatInfoEv; CAudioEngine::GetBeatInfo(void)
332ED0:  LDR.W           R1, [R0,#0xA0]
332ED4:  CMP             R5, #0
332ED6:  BEQ.W           loc_333AAA
332EDA:  CMP             R1, #0
332EDC:  BEQ.W           loc_333AE0
332EE0:  LDR.W           R1, =(ScriptParams_ptr - 0x332EEC)
332EE4:  ADD.W           R2, R0, R5,LSL#3
332EE8:  ADD             R1, PC; ScriptParams_ptr
332EEA:  LDR             R3, [R2,#0x48]
332EEC:  LDR             R1, [R1]; ScriptParams
332EEE:  STR             R3, [R1]
332EF0:  LDR             R2, [R2,#0x4C]
332EF2:  B.W             loc_333960
332EF6:  MOV             R0, R4; jumptable 003323AC case 1971
332EF8:  MOVS            R1, #2; __int16
332EFA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332EFE:  LDR.W           R0, =(ScriptParams_ptr - 0x332F08)
332F02:  MOVS            R1, #8; int
332F04:  ADD             R0, PC; ScriptParams_ptr
332F06:  LDR             R0, [R0]; ScriptParams
332F08:  LDR             R0, [R0]; this
332F0A:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
332F0E:  CMP             R0, #7
332F10:  BHI.W           loc_333BB8
332F14:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x332F24)
332F18:  MOV.W           R3, #0x2D4
332F1C:  LDR.W           R2, =(ScriptParams_ptr - 0x332F26)
332F20:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
332F22:  ADD             R2, PC; ScriptParams_ptr
332F24:  LDR             R1, [R1]; CPedGroups::ms_groups ...
332F26:  MLA.W           R0, R0, R3, R1
332F2A:  LDR             R1, [R2]; ScriptParams
332F2C:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; int
332F2E:  ADDS            R0, #0x30 ; '0'; this
332F30:  BLX             j__ZN21CPedGroupIntelligence27SetDefaultTaskAllocatorTypeEi; CPedGroupIntelligence::SetDefaultTaskAllocatorType(int)
332F34:  B.W             loc_333BB8
332F38:  MOV             R0, R4; jumptable 003323AC case 1972
332F3A:  MOVS            R1, #2; __int16
332F3C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332F40:  LDR.W           R0, =(ScriptParams_ptr - 0x332F52)
332F44:  MOV.W           R3, #0x194
332F48:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x332F54)
332F4C:  MOVS            R6, #0
332F4E:  ADD             R0, PC; ScriptParams_ptr
332F50:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
332F52:  LDR             R0, [R0]; ScriptParams
332F54:  LDR             R2, [R2]; CWorld::Players ...
332F56:  LDRD.W          R1, R0, [R0]
332F5A:  CMP             R0, #0
332F5C:  MUL.W           R1, R3, R1
332F60:  LDR             R1, [R2,R1]
332F62:  LDR.W           R1, [R1,#0x444]
332F66:  LDRH            R2, [R1,#0x34]
332F68:  ORR.W           R3, R2, #0x100
332F6C:  IT NE
332F6E:  BICNE.W         R3, R2, #0x100
332F72:  STRH            R3, [R1,#0x34]
332F74:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332F78:  MOVS            R6, #0xFF; jumptable 003323AC default case, case 1977
332F7A:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332F7E:  MOV             R0, R4; jumptable 003323AC case 1979
332F80:  MOVS            R1, #2; __int16
332F82:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332F86:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x332F98)
332F8A:  MOVW            R3, #0xA2C
332F8E:  LDR.W           R0, =(ScriptParams_ptr - 0x332F9A)
332F92:  MOVS            R6, #0
332F94:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
332F96:  ADD             R0, PC; ScriptParams_ptr
332F98:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
332F9A:  LDR             R0, [R0]; ScriptParams
332F9C:  LDRD.W          R2, R0, [R0]
332FA0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
332FA2:  LSRS            R2, R2, #8
332FA4:  LDR             R1, [R1]
332FA6:  MLA.W           R1, R2, R3, R1
332FAA:  STRB.W          R0, [R1,#0x3DD]
332FAE:  B.W             loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
332FB2:  MOV             R0, R4; jumptable 003323AC case 1980
332FB4:  MOVS            R1, #2; __int16
332FB6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
332FBA:  LDR.W           R0, =(ScriptParams_ptr - 0x332FC2)
332FBE:  ADD             R0, PC; ScriptParams_ptr
332FC0:  LDR             R0, [R0]; ScriptParams
332FC2:  LDRD.W          R6, R0, [R0]; this
332FC6:  ADDS            R1, R0, #1; unsigned int
332FC8:  BEQ.W           loc_333968
332FCC:  MOVS            R1, #7; int
332FCE:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
332FD2:  MOV             R5, R0
332FD4:  ADDS            R0, R6, #1
332FD6:  BEQ.W           loc_333972
332FDA:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332FE8)
332FDE:  LSRS            R1, R6, #8
332FE0:  MOVW            R2, #0x7CC
332FE4:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
332FE6:  LDR             R0, [R0]; CPools::ms_pPedPool ...
332FE8:  LDR             R0, [R0]; CPools::ms_pPedPool
332FEA:  LDR             R0, [R0]
332FEC:  MLA.W           R0, R1, R2, R0
332FF0:  MOV             R1, R5; int
332FF2:  LDR.W           R0, [R0,#0x440]; this
332FF6:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
332FFA:  B.W             loc_333BB8
332FFE:  MOV             R0, R4; jumptable 003323AC case 1981
333000:  MOVS            R1, #1; __int16
333002:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
333006:  LDR.W           R0, =(ScriptParams_ptr - 0x33300E)
33300A:  ADD             R0, PC; ScriptParams_ptr
33300C:  LDR             R0, [R0]; ScriptParams
33300E:  LDR             R1, [R0]
333010:  CMP             R1, #0
333012:  BLT.W           loc_333BB8
333016:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x333022)
33301A:  UXTB            R3, R1
33301C:  LSRS            R1, R1, #8; CTrain *
33301E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
333020:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
333022:  LDR             R0, [R0]; CPools::ms_pVehiclePool
333024:  LDR             R2, [R0,#4]
333026:  LDRB            R2, [R2,R1]
333028:  CMP             R2, R3
33302A:  BNE.W           loc_333BB8
33302E:  MOVW            R2, #0xA2C
333032:  LDR             R0, [R0]
333034:  MLA.W           R0, R1, R2, R0; this
333038:  CMP             R0, #0
33303A:  IT NE
33303C:  BLXNE           j__ZN6CTrain21RemoveOneMissionTrainEPS_; CTrain::RemoveOneMissionTrain(CTrain*)
333040:  B.W             loc_333BB8
333044:  MOV             R0, R4; jumptable 003323AC case 1982
333046:  MOVS            R1, #1; __int16
333048:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33304C:  LDR.W           R0, =(ScriptParams_ptr - 0x333054)
333050:  ADD             R0, PC; ScriptParams_ptr
333052:  LDR             R0, [R0]; ScriptParams
333054:  LDR             R1, [R0]
333056:  CMP             R1, #0
333058:  BLT.W           loc_333BB8
33305C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x333068)
333060:  UXTB            R3, R1
333062:  LSRS            R1, R1, #8; CTrain *
333064:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
333066:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
333068:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33306A:  LDR             R2, [R0,#4]
33306C:  LDRB            R2, [R2,R1]
33306E:  CMP             R2, R3
333070:  BNE.W           loc_333BB8
333074:  MOVW            R2, #0xA2C
333078:  LDR             R0, [R0]
33307A:  MLA.W           R0, R1, R2, R0; this
33307E:  CMP             R0, #0
333080:  IT NE
333082:  BLXNE           j__ZN6CTrain22ReleaseOneMissionTrainEPS_; CTrain::ReleaseOneMissionTrain(CTrain*)
333086:  B.W             loc_333BB8
33308A:  MOV             R0, R4; jumptable 003323AC case 1983
33308C:  MOVS            R1, #2; __int16
33308E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
333092:  LDR.W           R0, =(ScriptParams_ptr - 0x33309A)
333096:  ADD             R0, PC; ScriptParams_ptr
333098:  LDR             R0, [R0]; ScriptParams
33309A:  LDRB            R1, [R0,#(dword_81A90C - 0x81A908)]; int
33309C:  LDR             R0, [R0]; this
33309E:  BLX             j__ZN6CRadar26SetBlipAlwaysDisplayInZoomEih; CRadar::SetBlipAlwaysDisplayInZoom(int,uchar)
3330A2:  B.W             loc_333BB8
3330A6:  MOV             R0, R4; jumptable 003323AC case 1984
3330A8:  MOVS            R1, #1; __int16
3330AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3330AE:  LDR.W           R0, =(ScriptParams_ptr - 0x3330B6)
3330B2:  ADD             R0, PC; ScriptParams_ptr
3330B4:  LDR             R0, [R0]; ScriptParams
3330B6:  LDR             R0, [R0]; this
3330B8:  BLX             j__ZN17CVehicleRecording20RequestRecordingFileEi; CVehicleRecording::RequestRecordingFile(int)
3330BC:  B.W             loc_333BB8
3330C0:  MOV             R0, R4; jumptable 003323AC case 1985
3330C2:  MOVS            R1, #1; __int16
3330C4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3330C8:  LDR.W           R0, =(ScriptParams_ptr - 0x3330D0)
3330CC:  ADD             R0, PC; ScriptParams_ptr
3330CE:  LDR             R0, [R0]; ScriptParams
3330D0:  LDR             R0, [R0]; this
3330D2:  BLX             j__ZN17CVehicleRecording26HasRecordingFileBeenLoadedEi; CVehicleRecording::HasRecordingFileBeenLoaded(int)
3330D6:  MOV             R1, R0
3330D8:  B.W             loc_333AF8
3330DC:  MOV             R0, R4; jumptable 003323AC case 1987
3330DE:  MOVS            R1, #1; __int16
3330E0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3330E4:  LDR.W           R0, =(ScriptParams_ptr - 0x3330F4)
3330E8:  MOV.W           R2, #0x1A4
3330EC:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3330F6)
3330F0:  ADD             R0, PC; ScriptParams_ptr
3330F2:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3330F4:  LDR             R0, [R0]; ScriptParams
3330F6:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
3330F8:  LDR             R0, [R0]
3330FA:  LDR             R1, [R1]; CPools::ms_pObjectPool
3330FC:  LSRS            R0, R0, #8
3330FE:  LDR             R1, [R1]
333100:  MLA.W           R0, R0, R2, R1
333104:  LDR             R0, [R0,#0x18]
333106:  CMP             R0, #0
333108:  ITTE NE
33310A:  LDRNE           R0, [R0,#4]
33310C:  ADDNE.W         R1, R0, #0x10
333110:  MOVEQ           R1, #0
333112:  MOV             R0, R5
333114:  BLX             j__ZN11CQuaternion3SetERK11RwMatrixTag; CQuaternion::Set(RwMatrixTag const&)
333118:  LDR.W           R0, =(ScriptParams_ptr - 0x333120)
33311C:  ADD             R0, PC; ScriptParams_ptr
33311E:  B               loc_33319E
333120:  MOV             R0, R4; jumptable 003323AC case 1988
333122:  MOVS            R1, #5; __int16
333124:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
333128:  LDR.W           R0, =(ScriptParams_ptr - 0x333130)
33312C:  ADD             R0, PC; ScriptParams_ptr
33312E:  LDR             R0, [R0]; ScriptParams
333130:  LDR             R1, [R0]
333132:  CMP             R1, #0
333134:  BLT.W           loc_3338B8
333138:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x333144)
33313C:  UXTB            R3, R1
33313E:  LSRS            R1, R1, #8
333140:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
333142:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
333144:  LDR             R0, [R0]; CPools::ms_pObjectPool
333146:  LDR             R2, [R0,#4]
333148:  LDRB            R2, [R2,R1]
33314A:  CMP             R2, R3
33314C:  BNE.W           loc_3338B8
333150:  MOV.W           R2, #0x1A4
333154:  LDR             R0, [R0]
333156:  MLA.W           R4, R1, R2, R0
33315A:  B               loc_3338BA
33315C:  MOV             R0, R4; jumptable 003323AC case 1989
33315E:  MOVS            R1, #1; __int16
333160:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
333164:  LDR.W           R0, =(ScriptParams_ptr - 0x333174)
333168:  MOVW            R2, #0xA2C
33316C:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x333176)
333170:  ADD             R0, PC; ScriptParams_ptr
333172:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
333174:  LDR             R0, [R0]; ScriptParams
333176:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
333178:  LDR             R0, [R0]
33317A:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33317C:  LSRS            R0, R0, #8
33317E:  LDR             R1, [R1]
333180:  MLA.W           R0, R0, R2, R1
333184:  LDR             R0, [R0,#0x18]
333186:  CMP             R0, #0
333188:  ITTE NE
33318A:  LDRNE           R0, [R0,#4]
33318C:  ADDNE.W         R1, R0, #0x10
333190:  MOVEQ           R1, #0
333192:  MOV             R0, R5
333194:  BLX             j__ZN11CQuaternion3SetERK11RwMatrixTag; CQuaternion::Set(RwMatrixTag const&)
333198:  LDR.W           R0, =(ScriptParams_ptr - 0x3331A0)
33319C:  ADD             R0, PC; ScriptParams_ptr
33319E:  LDR             R0, [R0]; ScriptParams
3331A0:  MOVS            R1, #4
3331A2:  VLD1.64         {D16-D17}, [R5@128]
3331A6:  VST1.32         {D16-D17}, [R0]
3331AA:  MOV             R0, R4
3331AC:  B.W             loc_333BB4
3331B0:  MOV             R0, R4; jumptable 003323AC case 1990
3331B2:  MOVS            R1, #5; __int16
3331B4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3331B8:  LDR.W           R0, =(ScriptParams_ptr - 0x3331C0)
3331BC:  ADD             R0, PC; ScriptParams_ptr
3331BE:  LDR             R0, [R0]; ScriptParams
3331C0:  LDR             R1, [R0]
3331C2:  CMP             R1, #0
3331C4:  BLT.W           loc_33399C
3331C8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3331D4)
3331CC:  UXTB            R3, R1
3331CE:  LSRS            R1, R1, #8
3331D0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3331D2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3331D4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3331D6:  LDR             R2, [R0,#4]
3331D8:  LDRB            R2, [R2,R1]
3331DA:  CMP             R2, R3
3331DC:  BNE.W           loc_3339DE
3331E0:  MOVW            R2, #0xA2C
3331E4:  LDR             R0, [R0]
3331E6:  MLA.W           R4, R1, R2, R0
3331EA:  LDR.W           R0, =(ScriptParams_ptr - 0x3331F2)
3331EE:  ADD             R0, PC; ScriptParams_ptr
3331F0:  B               loc_3339E4
3331F2:  MOV             R0, R4; jumptable 003323AC case 1991
3331F4:  MOVS            R1, #4; __int16
3331F6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3331FA:  LDR.W           R0, =(ScriptParams_ptr - 0x333202)
3331FE:  ADD             R0, PC; ScriptParams_ptr
333200:  LDR             R0, [R0]; ScriptParams
333202:  LDR             R1, [R0]
333204:  CMP             R1, #0
333206:  BLT.W           loc_3338C2
33320A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x333216)
33320E:  UXTB            R3, R1
333210:  LSRS            R1, R1, #8
333212:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
333214:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
333216:  LDR             R0, [R0]; CPools::ms_pVehiclePool
333218:  LDR             R2, [R0,#4]
33321A:  LDRB            R2, [R2,R1]
33321C:  CMP             R2, R3
33321E:  BNE.W           loc_3338C2
333222:  MOVW            R2, #0xA2C
333226:  LDR             R0, [R0]
333228:  MLA.W           R0, R1, R2, R0
33322C:  B               loc_3338C4
33322E:  MOV             R0, R4; jumptable 003323AC case 1993
333230:  MOVS            R1, #2; __int16
333232:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
333236:  LDR.W           R0, =(ScriptParams_ptr - 0x33323E)
33323A:  ADD             R0, PC; ScriptParams_ptr
33323C:  LDR             R0, [R0]; ScriptParams
33323E:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
333240:  CMP             R1, #0
333242:  BLT.W           loc_3338D4
333246:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x333252)
33324A:  UXTB            R3, R1
33324C:  LSRS            R1, R1, #8
33324E:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
333250:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
333252:  LDR             R0, [R0]; CPools::ms_pObjectPool
333254:  LDR             R2, [R0,#4]
333256:  LDRB            R2, [R2,R1]
333258:  CMP             R2, R3
33325A:  BNE.W           loc_3338D4
33325E:  MOV.W           R2, #0x1A4
333262:  LDR             R0, [R0]
333264:  MLA.W           R5, R1, R2, R0
333268:  B               loc_3338D6
33326A:  ALIGN 4
33326C:  DCD __stack_chk_guard_ptr - 0x332398
333270:  DCD _ZN9CTheZones19NavigationZoneArrayE_ptr - 0x3324AA
333274:  DCD ScriptParams_ptr - 0x3324B0
333278:  DCD _ZN9CTheZones13ZoneInfoArrayE_ptr - 0x3324B4
33327C:  DCD _ZN9CTheZones19NavigationZoneArrayE_ptr - 0x3324F6
333280:  DCD ScriptParams_ptr - 0x3324FC
333284:  DCD _ZN9CTheZones13ZoneInfoArrayE_ptr - 0x332500
333288:  DCD _ZN9CMessages13BriefMessagesE_ptr - 0x332520
33328C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x332540
333290:  DCD ScriptParams_ptr - 0x332542
333294:  DCD ScriptParams_ptr - 0x332580
333298:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x332582
33329C:  DCD ScriptParams_ptr - 0x3325B0
3332A0:  DCD ScriptParams_ptr - 0x3325CE
3332A4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3325E8
3332A8:  DCD ScriptParams_ptr - 0x332660
3332AC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x332678
3332B0:  DCD ScriptParams_ptr - 0x3326A2
3332B4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3326BA
3332B8:  DCD ScriptParams_ptr - 0x3326E4
3332BC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3326FA
3332C0:  DCD ScriptParams_ptr - 0x332724
3332C4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x332738
3332C8:  DCD _ZN5CGame8currAreaE_ptr - 0x33275E
3332CC:  DCD ScriptParams_ptr - 0x332760
3332D0:  DCD ScriptParams_ptr - 0x33277C
3332D4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33277E
3332D8:  DCD ScriptParams_ptr - 0x3327B8
3332DC:  DCD ScriptParams_ptr - 0x3327D4
3332E0:  DCD ScriptParams_ptr - 0x3327EE
3332E4:  DCD ScriptParams_ptr - 0x33280C
3332E8:  DCD _ZN6CWorld7PlayersE_ptr - 0x33280E
3332EC:  DCD ScriptParams_ptr - 0x33283A
3332F0:  DCD gFireManager_ptr - 0x332846
3332F4:  DCD ScriptParams_ptr - 0x3328A0
3332F8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3328B4
3332FC:  DCD ScriptParams_ptr - 0x3328DE
333300:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3328F2
333304:  DCD ScriptParams_ptr - 0x33291C
333308:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x332930
33330C:  DCD ScriptParams_ptr - 0x33295A
333310:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33296E
333314:  DCD ScriptParams_ptr - 0x332998
333318:  DCD ScriptParams_ptr - 0x3329B2
33331C:  DCD _ZTV17CTaskComplexClimb_ptr - 0x3329D4
333320:  DCD ScriptParams_ptr - 0x3329F2
333324:  DCD ScriptParams_ptr - 0x332A14
333328:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x332A16
33332C:  DCD ScriptParams_ptr - 0x332A52
333330:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x332A66
333334:  DCD ScriptParams_ptr - 0x332A90
333338:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x332AA4
33333C:  DCD ScriptParams_ptr - 0x332ACE
333340:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x332AE2
333344:  DCD ScriptParams_ptr - 0x332B0C
333348:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x332B20
33334C:  DCD _ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x332B5C
333350:  DCD _ZN6CRopes19PlayerControlsCraneE_ptr - 0x332B5E
333354:  DCD _ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x332B78
333358:  DCD _ZN6CRopes19PlayerControlsCraneE_ptr - 0x332B7A
33335C:  DCD _ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x332B96
333360:  DCD _ZN6CRopes19PlayerControlsCraneE_ptr - 0x332B98
333364:  DCD ScriptParams_ptr - 0x332BB4
333368:  DCD ScriptParams_ptr - 0x332BCC
33336C:  DCD ScriptParams_ptr - 0x332C06
333370:  DCD _ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr - 0x332C08
333374:  DCD ScriptParams_ptr - 0x332C22
333378:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x332C40
33337C:  DCD ScriptParams_ptr - 0x332C6A
333380:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x332C7E
333384:  DCFS 3.1416
333388:  DCFS 180.0
33338C:  DCFS 0.1
333390:  DCFS 360.0
333394:  DCFS -360.0
333398:  MOV             R0, R4; jumptable 003323AC case 1995
33339A:  MOVS            R1, #2; __int16
33339C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3333A0:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3333B2)
3333A4:  MOVW            R3, #0x7CC
3333A8:  LDR.W           R0, =(ScriptParams_ptr - 0x3333B4)
3333AC:  MOVS            R6, #0
3333AE:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3333B0:  ADD             R0, PC; ScriptParams_ptr
3333B2:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3333B4:  LDR             R0, [R0]; ScriptParams
3333B6:  LDRD.W          R2, R0, [R0]
3333BA:  CMP             R0, #0
3333BC:  LDR             R1, [R1]; CPools::ms_pPedPool
3333BE:  MOV.W           R2, R2,LSR#8
3333C2:  LDR             R1, [R1]
3333C4:  MLA.W           R1, R2, R3, R1
3333C8:  LDR.W           R2, [R1,#0x48C]
3333CC:  ORR.W           R3, R2, #0x20 ; ' '
3333D0:  IT NE
3333D2:  BICNE.W         R3, R2, #0x20 ; ' '
3333D6:  STR.W           R3, [R1,#0x48C]
3333DA:  B               loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
3333DC:  MOV             R0, R4; jumptable 003323AC case 1996
3333DE:  MOVS            R1, #2; __int16
3333E0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3333E4:  LDR.W           R0, =(ScriptParams_ptr - 0x3333F0)
3333E8:  MOVS            R4, #0
3333EA:  MOVS            R6, #0
3333EC:  ADD             R0, PC; ScriptParams_ptr
3333EE:  LDR             R1, [R0]; ScriptParams
3333F0:  LDRD.W          R0, R1, [R1]; int
3333F4:  CMP             R1, #0
3333F6:  IT EQ
3333F8:  MOVEQ           R4, #1
3333FA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3333FE:  STRB.W          R4, [R0,#0x12D]
333402:  B               loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
333404:  MOV             R0, R4; jumptable 003323AC case 1997
333406:  MOVS            R1, #6; __int16
333408:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33340C:  LDR.W           R0, =(ScriptParams_ptr - 0x333414)
333410:  ADD             R0, PC; ScriptParams_ptr
333412:  LDR             R0, [R0]; ScriptParams
333414:  LDRD.W          R8, R1, [R0]; unsigned int
333418:  LDRD.W          R2, R3, [R0,#(dword_81A910 - 0x81A908)]
33341C:  VLDR            S16, [R0,#0x10]
333420:  VLDR            S18, [R0,#0x14]
333424:  ADD             R0, SP, #0xF8+var_88
333426:  STM             R0!, {R1-R3}
333428:  MOVS            R0, #dword_40; this
33342A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33342E:  MOV             R10, R0
333430:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
333434:  MOVS            R0, #word_28; this
333436:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33343A:  MOV             R5, R0
33343C:  LDR.W           R0, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x33344C)
333440:  LDR.W           R1, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x333450)
333444:  ADD.W           R9, SP, #0xF8+var_88
333448:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
33344A:  MOVS            R6, #0
33344C:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
33344E:  MOV             R2, R9; CVector *
333450:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
333452:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
333454:  STRD.W          R6, R6, [SP,#0xF8+var_F4]; bool
333458:  LDR             R3, [R0]; float
33345A:  MOV             R0, R5; this
33345C:  VLDR            S0, [R1]
333460:  MOVS            R1, #4; int
333462:  VSTR            S0, [SP,#0xF8+var_F8]
333466:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
33346A:  MOV             R0, R10; this
33346C:  MOV             R1, R5; CTask *
33346E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
333472:  VCMPE.F32       S18, #0.0
333476:  VLDR            S0, =3.1416
33347A:  VMRS            APSR_nzcv, FPSCR
33347E:  MOV.W           R0, #dword_80; this
333482:  VMUL.F32        S0, S16, S0
333486:  VLDR            S2, =180.0
33348A:  VDIV.F32        S16, S0, S2
33348E:  VLDR            S0, =0.1
333492:  IT LT
333494:  VMOVLT.F32      S18, S0
333498:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33349C:  VMOV            R3, S18; float
3334A0:  MOV             R1, R9; CVector *
3334A2:  VMOV            R2, S16; float
3334A6:  MOV             R5, R0
3334A8:  BLX             j__ZN23CTaskSimpleSlideToCoordC2ERK7CVectorff; CTaskSimpleSlideToCoord::CTaskSimpleSlideToCoord(CVector const&,float,float)
3334AC:  MOV             R0, R10; this
3334AE:  MOV             R1, R5; CTask *
3334B0:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3334B4:  MOV             R0, R4; this
3334B6:  MOV             R1, R8; int
3334B8:  MOV             R2, R10; CTask *
3334BA:  MOVW            R3, #0x7CD; int
3334BE:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
3334C2:  B               loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
3334C4:  MOVS            R0, #0
3334C6:  LDR.W           R1, =(ScriptParams_ptr - 0x3334CE)
3334CA:  ADD             R1, PC; ScriptParams_ptr
3334CC:  LDR             R1, [R1]; ScriptParams
3334CE:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
3334D0:  ADDS            R2, R1, #1
3334D2:  BEQ             loc_33353C
3334D4:  CMP             R1, #0
3334D6:  BLT             loc_33353C
3334D8:  LDR.W           R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3334E4)
3334DC:  UXTB            R6, R1
3334DE:  LSRS            R1, R1, #8
3334E0:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3334E2:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
3334E4:  LDR             R2, [R2]; CPools::ms_pVehiclePool
3334E6:  LDR             R3, [R2,#4]
3334E8:  LDRB            R3, [R3,R1]
3334EA:  CMP             R3, R6
3334EC:  BNE             loc_33353C
3334EE:  MOVW            R3, #0xA2C
3334F2:  LDR             R2, [R2]
3334F4:  MLA.W           R2, R1, R3, R2
3334F8:  CBNZ            R0, loc_333542
3334FA:  LDR.W           R1, [R2,#0x4D4]
3334FE:  CMP             R1, #0
333500:  IT NE
333502:  MOVNE           R1, #1
333504:  B               loc_333AF8
333506:  MOVS            R0, #0
333508:  LDR.W           R1, =(ScriptParams_ptr - 0x333510)
33350C:  ADD             R1, PC; ScriptParams_ptr
33350E:  LDR             R1, [R1]; ScriptParams
333510:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
333512:  ADDS            R2, R1, #1
333514:  BEQ             loc_333556
333516:  CMP             R1, #0
333518:  BLT             loc_333556
33351A:  LDR.W           R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x333526)
33351E:  UXTB            R6, R1
333520:  LSRS            R1, R1, #8
333522:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
333524:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
333526:  LDR             R2, [R2]; CPools::ms_pVehiclePool
333528:  LDR             R3, [R2,#4]
33352A:  LDRB            R3, [R3,R1]
33352C:  CMP             R3, R6
33352E:  BNE             loc_333556
333530:  MOVW            R3, #0xA2C
333534:  LDR             R2, [R2]
333536:  MLA.W           R1, R1, R3, R2
33353A:  B               loc_333558
33353C:  MOVS            R2, #0
33353E:  CMP             R0, #0
333540:  BEQ             loc_3334FA
333542:  LDR.W           R0, [R0,#0x4D0]
333546:  CMP             R2, #0
333548:  BEQ.W           loc_333AF0
33354C:  MOVS            R1, #0
33354E:  CMP             R0, R2
333550:  IT EQ
333552:  MOVEQ           R1, #1
333554:  B               loc_333AF8
333556:  MOVS            R1, #0
333558:  CMP             R0, #0
33355A:  ITT EQ
33355C:  LDREQ.W         R0, [R1,#0x4D4]
333560:  CMPEQ           R0, #0
333562:  BEQ.W           loc_333BB8
333566:  LDR             R1, [R0]
333568:  LDR.W           R1, [R1,#0xFC]
33356C:  BLX             R1
33356E:  B               loc_333BB8
333570:  MOV.W           R9, #0
333574:  MOVS            R0, #dword_4C; this
333576:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33357A:  MOV             R5, R0
33357C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
333580:  LDR.W           R0, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x333598)
333584:  CMP             R6, #0
333586:  LDR.W           R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x33359A)
33358A:  IT LT
33358C:  MOVWLT          R6, #0xC350
333590:  MOV.W           R2, #0x3E8
333594:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
333596:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
333598:  STR             R6, [R5,#0x10]
33359A:  STRD.W          R2, R10, [R5,#0x14]
33359E:  MOV.W           R2, #0x40000000
3335A2:  STRD.W          R2, R11, [R5,#0x1C]
3335A6:  CMP.W           R9, #0
3335AA:  STR             R2, [R5,#0x24]
3335AC:  MOV.W           R2, #6
3335B0:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
3335B2:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorStandard ...
3335B4:  STRH.W          R11, [R5,#0x30]
3335B8:  ADD.W           R1, R1, #8
3335BC:  STRH.W          R11, [R5,#0x3C]
3335C0:  ADD.W           R0, R0, #8
3335C4:  STRD.W          R11, R11, [R5,#0x28]
3335C8:  STRD.W          R11, R11, [R5,#0x34]
3335CC:  STR             R2, [R5,#0x44]
3335CE:  LDRB.W          R2, [R5,#0x48]
3335D2:  STR             R1, [R5]
3335D4:  MOV             R1, R5
3335D6:  STR             R0, [R5,#0x40]
3335D8:  AND.W           R0, R2, #0xF0
3335DC:  ORR.W           R0, R0, #3
3335E0:  STRB.W          R0, [R5,#0x48]
3335E4:  STR.W           R9, [R1,#0xC]!; CEntity **
3335E8:  ITT NE
3335EA:  MOVNE           R0, R9; this
3335EC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3335F0:  MOV             R0, R4
3335F2:  MOV             R1, R8
3335F4:  MOV             R2, R5
3335F6:  MOVW            R3, #0x772
3335FA:  B               loc_333996
3335FC:  MOVS            R5, #0
3335FE:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
333602:  MOV             R2, R0; unsigned int
333604:  ADDW            R0, R5, #0x4EC; this
333608:  MOV             R1, R4; int
33360A:  BLX             j__ZN13CAcquaintance17SetAsAcquaintanceEij; CAcquaintance::SetAsAcquaintance(int,uint)
33360E:  B               loc_333BB8
333610:  MOVS            R5, #0
333612:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
333616:  MOV             R2, R0; unsigned int
333618:  ADDW            R0, R5, #0x4EC; this
33361C:  MOV             R1, R4; int
33361E:  BLX             j__ZN13CAcquaintance19ClearAsAcquaintanceEij; CAcquaintance::ClearAsAcquaintance(int,uint)
333622:  B               loc_333BB8
333624:  MOVS            R0, #0
333626:  ADDW            R0, R0, #0x4EC; this
33362A:  BLX             j__ZN13CAcquaintance18ClearAcquaintancesEi; CAcquaintance::ClearAcquaintances(int)
33362E:  B               loc_333BB8
333630:  MOVS            R0, #0; this
333632:  BLX             j__ZN11CAutomobile11GetCarPitchEv; CAutomobile::GetCarPitch(void)
333636:  VMOV            S2, R0
33363A:  VLDR            S0, =180.0
33363E:  LDR.W           R0, =(ScriptParams_ptr - 0x33364E)
333642:  VMUL.F32        S0, S2, S0
333646:  VLDR            S2, =3.1416
33364A:  ADD             R0, PC; ScriptParams_ptr
33364C:  LDR             R0, [R0]; ScriptParams
33364E:  VDIV.F32        S0, S0, S2
333652:  VCMPE.F32       S0, #0.0
333656:  VLDR            S2, =360.0
33365A:  VMRS            APSR_nzcv, FPSCR
33365E:  VADD.F32        S4, S0, S2
333662:  IT LT
333664:  VMOVLT.F32      S0, S4
333668:  VLDR            S4, =-360.0
33366C:  VCMPE.F32       S0, S2
333670:  VMRS            APSR_nzcv, FPSCR
333674:  VADD.F32        S4, S0, S4
333678:  IT GT
33367A:  VMOVGT.F32      S0, S4
33367E:  VSTR            S0, [R0]
333682:  B               loc_3339B0
333684:  MOVS            R6, #0
333686:  LDR.W           R1, =(ScriptParams_ptr - 0x33368E)
33368A:  ADD             R1, PC; ScriptParams_ptr
33368C:  LDR             R1, [R1]; ScriptParams
33368E:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
333690:  CMP             R1, #0
333692:  BLT.W           loc_3338F6
333696:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3336A2)
33369A:  UXTB            R5, R1
33369C:  LSRS            R1, R1, #8
33369E:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
3336A0:  LDR             R2, [R2]; CPools::ms_pPedPool ...
3336A2:  LDR             R2, [R2]; CPools::ms_pPedPool
3336A4:  LDR             R3, [R2,#4]
3336A6:  LDRB            R3, [R3,R1]
3336A8:  CMP             R3, R5
3336AA:  BNE.W           loc_3338F6
3336AE:  MOVW            R3, #0x7CC
3336B2:  LDR             R2, [R2]
3336B4:  MLA.W           R4, R1, R3, R2
3336B8:  B               loc_3338F8
3336BA:  MOVS            R0, #0; this
3336BC:  LDR.W           R1, =(ScriptParams_ptr - 0x3336C4)
3336C0:  ADD             R1, PC; ScriptParams_ptr
3336C2:  LDR             R1, [R1]; ScriptParams
3336C4:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; int
3336C6:  BLX             j__ZN8CVehicle9InitWinchEi; CVehicle::InitWinch(int)
3336CA:  B               loc_333BB8
3336CC:  MOVS            R0, #0; this
3336CE:  BLX             j__ZN8CVehicle30ReleasePickedUpEntityWithWinchEv; CVehicle::ReleasePickedUpEntityWithWinch(void)
3336D2:  B               loc_333BB8
3336D4:  MOVS            R0, #0; this
3336D6:  LDR.W           R1, =(ScriptParams_ptr - 0x3336DE)
3336DA:  ADD             R1, PC; ScriptParams_ptr
3336DC:  LDR             R1, [R1]; ScriptParams
3336DE:  LDRB            R1, [R1,#(dword_81A90C - 0x81A908)]; CTrain *
3336E0:  BLX             j__ZN6CTrain12FindCarriageEPS_h; CTrain::FindCarriage(CTrain*,uchar)
3336E4:  CMP             R0, #0
3336E6:  BEQ.W           loc_3339A4
3336EA:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3336F2)
3336EE:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3336F0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3336F2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3336F4:  LDRD.W          R2, R1, [R1]
3336F8:  SUBS            R0, R0, R2
3336FA:  MOV             R2, #0xBFE6D523
333702:  ASRS            R0, R0, #2
333704:  MULS            R0, R2
333706:  LDRB            R1, [R1,R0]
333708:  ORR.W           R0, R1, R0,LSL#8
33370C:  B               loc_3339A8
33370E:  MOVS            R0, #0; this
333710:  LDR.W           R1, =(ScriptParams_ptr - 0x33371C)
333714:  MOV.W           R2, #0xFFFFFFFF
333718:  ADD             R1, PC; ScriptParams_ptr
33371A:  LDR             R1, [R1]; ScriptParams
33371C:  STRD.W          R2, R2, [R1]
333720:  STR             R2, [R1,#(dword_81A910 - 0x81A908)]
333722:  BLX             j__ZN8CVehicle28QueryPickedUpEntityWithWinchEv; CVehicle::QueryPickedUpEntityWithWinch(void)
333726:  CMP             R0, #0
333728:  BEQ.W           loc_333BB0
33372C:  LDRB.W          R1, [R0,#0x3A]
333730:  AND.W           R1, R1, #7
333734:  CMP             R1, #4
333736:  BEQ.W           loc_333B00
33373A:  CMP             R1, #3
33373C:  BEQ.W           loc_333B20
333740:  CMP             R1, #2
333742:  BNE.W           loc_333BB0
333746:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33374E)
33374A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33374C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33374E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
333750:  LDRD.W          R2, R1, [R1]
333754:  SUBS            R0, R0, R2
333756:  MOV             R2, #0xBFE6D523
33375E:  ASRS            R0, R0, #2
333760:  MULS            R0, R2
333762:  LDR.W           R2, =(ScriptParams_ptr - 0x33376A)
333766:  ADD             R2, PC; ScriptParams_ptr
333768:  B               loc_3337E4
33376A:  MOVS            R0, #0; this
33376C:  BLX             j__ZN7CObject13GetRopeHeightEv; CObject::GetRopeHeight(void)
333770:  LDR.W           R1, =(ScriptParams_ptr - 0x333778)
333774:  ADD             R1, PC; ScriptParams_ptr
333776:  B               loc_3339AC
333778:  MOVS            R0, #0; this
33377A:  LDR.W           R1, =(ScriptParams_ptr - 0x333782)
33377E:  ADD             R1, PC; ScriptParams_ptr
333780:  LDR             R1, [R1]; ScriptParams
333782:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; float
333784:  BLX             j__ZN7CObject13SetRopeHeightEf; CObject::SetRopeHeight(float)
333788:  B               loc_333BB8
33378A:  MOVS            R0, #0; this
33378C:  LDR.W           R1, =(ScriptParams_ptr - 0x333798)
333790:  MOV.W           R2, #0xFFFFFFFF
333794:  ADD             R1, PC; ScriptParams_ptr
333796:  LDR             R1, [R1]; ScriptParams
333798:  STRD.W          R2, R2, [R1]
33379C:  STR             R2, [R1,#(dword_81A910 - 0x81A908)]
33379E:  BLX             j__ZN7CObject24GetObjectCarriedWithRopeEv; CObject::GetObjectCarriedWithRope(void)
3337A2:  CMP             R0, #0
3337A4:  BEQ.W           loc_333BB0
3337A8:  LDRB.W          R1, [R0,#0x3A]
3337AC:  AND.W           R1, R1, #7
3337B0:  CMP             R1, #4
3337B2:  BEQ.W           loc_333B40
3337B6:  CMP             R1, #3
3337B8:  BEQ.W           loc_333B6A
3337BC:  CMP             R1, #2
3337BE:  BNE.W           loc_333BB0
3337C2:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3337CA)
3337C6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3337C8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3337CA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3337CC:  LDRD.W          R2, R1, [R1]
3337D0:  SUBS            R0, R0, R2
3337D2:  MOV             R2, #0xBFE6D523
3337DA:  ASRS            R0, R0, #2
3337DC:  MULS            R0, R2
3337DE:  LDR.W           R2, =(ScriptParams_ptr - 0x3337E6)
3337E2:  ADD             R2, PC; ScriptParams_ptr
3337E4:  LDR             R2, [R2]; ScriptParams
3337E6:  LDRB            R1, [R1,R0]
3337E8:  ORR.W           R0, R1, R0,LSL#8
3337EC:  STR             R0, [R2]
3337EE:  B               loc_333BB0
3337F0:  MOVS            R0, #0; this
3337F2:  BLX             j__ZN7CObject28ReleaseObjectCarriedWithRopeEv; CObject::ReleaseObjectCarriedWithRope(void)
3337F6:  B               loc_333BB8
3337F8:  MOVS            R6, #0
3337FA:  MOVS            R0, #off_18; this
3337FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
333800:  VMOV            R2, S16; float
333804:  MOV             R1, R6; CEntity *
333806:  VMOV            R3, S18; float
33380A:  MOV             R5, R0
33380C:  BLX             j__ZN28CTaskComplexSeekEntityAimingC2EP7CEntityff; CTaskComplexSeekEntityAiming::CTaskComplexSeekEntityAiming(CEntity *,float,float)
333810:  MOV             R0, R4
333812:  MOV             R1, R8
333814:  MOV             R2, R5
333816:  MOVW            R3, #0x7A3
33381A:  B               loc_333996
33381C:  MOVS            R5, #0
33381E:  MOV             R0, R5; this
333820:  MOV.W           R1, #(elf_hash_bucket+0x51C); CPed *
333824:  BLX             j__ZN22CPedScriptedTaskRecord9GetStatusEPK4CPedi; CPedScriptedTaskRecord::GetStatus(CPed const*,int)
333828:  CMP             R0, #0
33382A:  BEQ.W           loc_3339B6
33382E:  LDR.W           R0, [R5,#0x440]
333832:  LDR             R0, [R0,#0x10]
333834:  LDR             R1, [R0]
333836:  LDR             R6, [R0,#0x10]
333838:  LDR             R1, [R1,#0xC]
33383A:  BLX             R1
33383C:  MOV             R5, R0
33383E:  CMP             R5, #0
333840:  BEQ.W           loc_3339BA
333844:  LDR             R0, [R5]
333846:  LDR             R1, [R0,#0x14]
333848:  MOV             R0, R5
33384A:  BLX             R1
33384C:  MOVW            R1, #0x113
333850:  CMP             R0, R1
333852:  ITE EQ
333854:  LDREQ           R0, [R5,#0x10]
333856:  MOVNE.W         R0, #0xFFFFFFFF
33385A:  B               loc_3339BE
33385C:  MOV.W           R10, #0
333860:  MOVS            R0, #dword_38; this
333862:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
333866:  MOV             R5, R0
333868:  MOVS            R0, #1
33386A:  STRD.W          R6, R6, [SP,#0xF8+var_F8]; unsigned int
33386E:  MOV             R1, R10; CPed *
333870:  STR             R0, [SP,#0xF8+var_F0]; int
333872:  MOV             R0, R5; this
333874:  MOV             R2, R9; int
333876:  MOVS            R3, #0; unsigned int
333878:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
33387C:  MOV             R0, R4; this
33387E:  MOV             R1, R8; int
333880:  MOV             R2, R5; CTask *
333882:  MOVW            R3, #0x7A5; int
333886:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33388A:  B               loc_333BBA; jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
33388C:  MOVS            R0, #0; this
33388E:  LDR.W           R1, =(ScriptParams_ptr - 0x33389A)
333892:  MOV.W           R2, #0xFFFFFFFF; int *
333896:  ADD             R1, PC; ScriptParams_ptr
333898:  LDR             R1, [R1]; ScriptParams
33389A:  STR             R2, [R1]
33389C:  ADD             R1, SP, #0xF8+var_8C; CEntity *
33389E:  BLX             j__ZN11CTheScripts28IsEntityWithinAnySearchLightEP7CEntityPi; CTheScripts::IsEntityWithinAnySearchLight(CEntity *,int *)
3338A2:  CMP             R0, #0
3338A4:  BEQ.W           loc_3339CE
3338A8:  LDR.W           R0, =(ScriptParams_ptr - 0x3338B4)
3338AC:  MOVS            R5, #1
3338AE:  LDR             R1, [SP,#0xF8+var_8C]
3338B0:  ADD             R0, PC; ScriptParams_ptr
3338B2:  LDR             R0, [R0]; ScriptParams
3338B4:  STR             R1, [R0]
3338B6:  B               loc_3339D0
3338B8:  MOVS            R4, #0
3338BA:  LDR.W           R0, =(ScriptParams_ptr - 0x3338C2)
3338BE:  ADD             R0, PC; ScriptParams_ptr
3338C0:  B               loc_3339E4
3338C2:  MOVS            R0, #0
3338C4:  LDR             R1, =(ScriptParams_ptr - 0x3338CA)
3338C6:  ADD             R1, PC; ScriptParams_ptr
3338C8:  LDR             R3, [R1]; ScriptParams
3338CA:  ADDS            R3, #4
3338CC:  LDM             R3, {R1-R3}
3338CE:  BLX             j__ZN6CTrain19SetNewTrainPositionEPS_7CVector; CTrain::SetNewTrainPosition(CTrain*,CVector)
3338D2:  B               loc_333BB8
3338D4:  MOVS            R5, #0
3338D6:  MOVS            R0, #dword_34; this
3338D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3338DC:  MOV             R1, R5
3338DE:  MOVS            R2, #0x51 ; 'Q'
3338E0:  MOV             R6, R0
3338E2:  BLX             j__ZN26CTaskComplexGoPickUpEntityC2EP7CEntity12AssocGroupId; CTaskComplexGoPickUpEntity::CTaskComplexGoPickUpEntity(CEntity *,AssocGroupId)
3338E6:  LDR             R0, =(ScriptParams_ptr - 0x3338F2)
3338E8:  MOV             R2, R6
3338EA:  MOVW            R3, #0x7C9
3338EE:  ADD             R0, PC; ScriptParams_ptr
3338F0:  LDR             R0, [R0]; ScriptParams
3338F2:  LDR             R1, [R0]
3338F4:  B               loc_333994
3338F6:  MOVS            R4, #0
3338F8:  LDR.W           R1, =(ScriptParams_ptr - 0x333900)
3338FC:  ADD             R1, PC; ScriptParams_ptr
3338FE:  LDR             R1, [R1]; ScriptParams
333900:  LDR             R1, [R1,#(dword_81A910 - 0x81A908)]
333902:  CMP             R1, #0
333904:  BLT.W           loc_333A52
333908:  LDR             R2, [R0,#4]
33390A:  UXTB            R3, R1
33390C:  LSRS            R1, R1, #8
33390E:  LDRB            R2, [R2,R1]
333910:  CMP             R2, R3
333912:  BNE.W           loc_333A50
333916:  MOVW            R2, #0xA2C
33391A:  LDR             R0, [R0]
33391C:  MLA.W           R4, R1, R2, R0
333920:  B               loc_333A52
333922:  MOVS            R0, #0xC57A0000
333928:  MOV             R1, R0
33392A:  MOV             R2, R0
33392C:  LDR.W           R3, =(ScriptParams_ptr - 0x333934)
333930:  ADD             R3, PC; ScriptParams_ptr
333932:  LDR             R3, [R3]; ScriptParams
333934:  STRD.W          R1, R2, [R3]
333938:  STR             R0, [R3,#(dword_81A910 - 0x81A908)]
33393A:  B               loc_333BB0
33393C:  LDR             R0, =(AudioEngine_ptr - 0x333942)
33393E:  ADD             R0, PC; AudioEngine_ptr
333940:  LDR             R0, [R0]; AudioEngine ; this
333942:  BLX             j__ZN12CAudioEngine11GetBeatInfoEv; CAudioEngine::GetBeatInfo(void)
333946:  LDR.W           R1, [R0,#0xA0]
33394A:  CMP             R1, #0
33394C:  BEQ.W           loc_333AE0
333950:  LDR             R1, =(ScriptParams_ptr - 0x33395A)
333952:  ADD.W           R2, R0, R5,LSL#3
333956:  ADD             R1, PC; ScriptParams_ptr
333958:  LDR             R3, [R2,#0x50]
33395A:  LDR             R1, [R1]; ScriptParams
33395C:  STR             R3, [R1]
33395E:  LDR             R2, [R2,#0x54]
333960:  STR             R2, [R1,#(dword_81A90C - 0x81A908)]
333962:  LDR.W           R1, [R0,#0xA8]
333966:  B               loc_333BA8
333968:  MOV.W           R5, #0xFFFFFFFF
33396C:  ADDS            R0, R6, #1
33396E:  BNE.W           loc_332FDA
333972:  MOVS            R0, #(byte_9+3); this
333974:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
333978:  MOV             R6, R0
33397A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
33397E:  LDR             R0, =(_ZTV31CTaskSimpleSetCharDecisionMaker_ptr - 0x33398C)
333980:  MOV.W           R1, #0xFFFFFFFF; int
333984:  STR             R5, [R6,#8]
333986:  MOV             R2, R6; CTask *
333988:  ADD             R0, PC; _ZTV31CTaskSimpleSetCharDecisionMaker_ptr
33398A:  MOVW            R3, #0x7BC; int
33398E:  LDR             R0, [R0]; `vtable for'CTaskComplexClimb
333990:  ADDS            R0, #8
333992:  STR             R0, [R6]
333994:  MOV             R0, R4; this
333996:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33399A:  B               loc_333BB8
33399C:  LDR             R0, =(ScriptParams_ptr - 0x3339A4)
33399E:  MOVS            R4, #0
3339A0:  ADD             R0, PC; ScriptParams_ptr
3339A2:  B               loc_3339E4
3339A4:  MOV.W           R0, #0xFFFFFFFF
3339A8:  LDR             R1, =(ScriptParams_ptr - 0x3339AE)
3339AA:  ADD             R1, PC; ScriptParams_ptr
3339AC:  LDR             R1, [R1]; ScriptParams
3339AE:  STR             R0, [R1]
3339B0:  MOV             R0, R4
3339B2:  MOVS            R1, #1
3339B4:  B               loc_333BB4
3339B6:  MOV.W           R6, #0xFFFFFFFF
3339BA:  MOV.W           R0, #0xFFFFFFFF
3339BE:  LDR             R1, =(ScriptParams_ptr - 0x3339C4)
3339C0:  ADD             R1, PC; ScriptParams_ptr
3339C2:  LDR             R1, [R1]; ScriptParams
3339C4:  STRD.W          R6, R0, [R1]
3339C8:  MOV             R0, R4
3339CA:  MOVS            R1, #2
3339CC:  B               loc_333BB4
3339CE:  MOVS            R5, #0
3339D0:  MOV             R0, R4; this
3339D2:  MOVS            R1, #1; __int16
3339D4:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
3339D8:  MOV             R0, R4
3339DA:  MOV             R1, R5
3339DC:  B               loc_333AFA
3339DE:  LDR             R0, =(ScriptParams_ptr - 0x3339E6)
3339E0:  MOVS            R4, #0
3339E2:  ADD             R0, PC; ScriptParams_ptr
3339E4:  LDR             R0, [R0]; ScriptParams
3339E6:  ADD.W           R9, SP, #0xF8+var_E8
3339EA:  ADDS            R0, #4
3339EC:  MOV             R1, R9
3339EE:  VLD1.32         {D16-D17}, [R0]
3339F2:  MOV             R0, R5
3339F4:  VST1.64         {D16-D17}, [R5@128]
3339F8:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
3339FC:  LDR             R0, [R4,#0x14]
3339FE:  ADD             R5, SP, #0xF8+var_88
333A00:  MOVS            R2, #0
333A02:  ADD.W           R1, R0, #0x30 ; '0'
333A06:  CMP             R0, #0
333A08:  IT EQ
333A0A:  ADDEQ           R1, R4, #4
333A0C:  MOV             R0, R5
333A0E:  LDR             R6, [R1]
333A10:  LDR.W           R10, [R1,#4]
333A14:  LDR.W           R8, [R1,#8]
333A18:  MOV             R1, R9
333A1A:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
333A1E:  MOV             R0, R4; this
333A20:  MOV             R1, R5; CMatrix *
333A22:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
333A26:  MOV             R0, R5; this
333A28:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
333A2C:  LDR             R0, [R4,#0x14]
333A2E:  CMP             R0, #0
333A30:  BEQ             loc_333A40
333A32:  STR             R6, [R0,#0x30]
333A34:  LDR             R0, [R4,#0x14]
333A36:  STR.W           R10, [R0,#0x34]
333A3A:  LDR             R0, [R4,#0x14]
333A3C:  ADDS            R0, #0x38 ; '8'
333A3E:  B               loc_333A4A
333A40:  ADD.W           R0, R4, #0xC
333A44:  STR             R6, [R4,#4]
333A46:  STR.W           R10, [R4,#8]
333A4A:  STR.W           R8, [R0]
333A4E:  B               loc_333BB8
333A50:  MOVS            R4, #0
333A52:  LDR             R0, =(ScriptParams_ptr - 0x333A60)
333A54:  ADD.W           R5, R6, #0x420
333A58:  LDRB.W          R1, [R6,#0x3BE]
333A5C:  ADD             R0, PC; ScriptParams_ptr
333A5E:  LDR             R0, [R0]; ScriptParams
333A60:  LDR.W           R8, [R0,#(dword_81A918 - 0x81A908)]
333A64:  VLDR            S16, [R0,#0xC]
333A68:  SUB.W           R0, R1, #0x39 ; '9'
333A6C:  UXTB            R0, R0
333A6E:  CMP             R0, #2
333A70:  ITT CS
333A72:  MOVCS           R0, #0x33 ; '3'
333A74:  STRBCS.W        R0, [R6,#0x3BE]
333A78:  LDR.W           R0, [R6,#0x420]; this
333A7C:  CMP             R0, #0
333A7E:  ITT NE
333A80:  MOVNE           R1, R5; CEntity **
333A82:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
333A86:  MOV             R0, R4; this
333A88:  MOV             R1, R5; CEntity **
333A8A:  STR.W           R4, [R6,#0x420]
333A8E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
333A92:  VCVT.U32.F32    S0, S16
333A96:  VMOV            R0, S0
333A9A:  STRB.W          R0, [R6,#0x3DC]
333A9E:  MOVS            R0, #0x64 ; 'd'
333AA0:  STRB.W          R0, [R6,#0x3D4]
333AA4:  STR.W           R8, [R6,#0x9C4]
333AA8:  B               loc_333BB8
333AAA:  CBZ             R1, loc_333AE0
333AAC:  LDR             R2, [R0,#0x50]
333AAE:  LDR.W           R1, [R0,#0xA8]
333AB2:  CMP             R2, #0
333AB4:  BEQ             loc_333B96
333AB6:  CMP             R1, #0
333AB8:  BEQ             loc_333B94
333ABA:  LDR             R3, [R0,#0x48]
333ABC:  MOV             R5, R2
333ABE:  CMP             R3, #0
333AC0:  MOV             R6, R3
333AC2:  IT MI
333AC4:  NEGMI           R6, R3
333AC6:  CMP             R2, #0
333AC8:  IT MI
333ACA:  NEGMI           R5, R2
333ACC:  CMP             R5, R6
333ACE:  BLE             loc_333B9C
333AD0:  LDR             R2, =(ScriptParams_ptr - 0x333ADA)
333AD2:  SUBS            R1, #1
333AD4:  LDR             R0, [R0,#0x4C]
333AD6:  ADD             R2, PC; ScriptParams_ptr
333AD8:  LDR             R2, [R2]; ScriptParams
333ADA:  STRD.W          R3, R0, [R2]
333ADE:  B               loc_333BA8
333AE0:  LDR             R0, =(ScriptParams_ptr - 0x333AEA)
333AE2:  MOV.W           R1, #0xFFFFFFFF
333AE6:  ADD             R0, PC; ScriptParams_ptr
333AE8:  LDR             R0, [R0]; ScriptParams
333AEA:  STRD.W          R1, R1, [R0]
333AEE:  B               loc_333BA8
333AF0:  CMP             R0, #0
333AF2:  IT NE
333AF4:  MOVNE           R0, #1
333AF6:  MOV             R1, R0; unsigned __int8
333AF8:  MOV             R0, R4; this
333AFA:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
333AFE:  B               loc_333BB8
333B00:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x333B06)
333B02:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
333B04:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
333B06:  LDR             R1, [R1]; CPools::ms_pObjectPool
333B08:  LDRD.W          R2, R1, [R1]
333B0C:  SUBS            R0, R0, R2
333B0E:  MOV             R2, #0xD8FD8FD9
333B16:  ASRS            R0, R0, #2
333B18:  MULS            R0, R2
333B1A:  LDR             R2, =(ScriptParams_ptr - 0x333B20)
333B1C:  ADD             R2, PC; ScriptParams_ptr
333B1E:  B               loc_333B5E
333B20:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x333B26)
333B22:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
333B24:  LDR             R1, [R1]; CPools::ms_pPedPool ...
333B26:  LDR             R1, [R1]; CPools::ms_pPedPool
333B28:  LDRD.W          R2, R1, [R1]
333B2C:  SUBS            R0, R0, R2
333B2E:  MOV             R2, #0xBED87F3B
333B36:  ASRS            R0, R0, #2
333B38:  MULS            R0, R2
333B3A:  LDR             R2, =(ScriptParams_ptr - 0x333B40)
333B3C:  ADD             R2, PC; ScriptParams_ptr
333B3E:  B               loc_333B88
333B40:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x333B46)
333B42:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
333B44:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
333B46:  LDR             R1, [R1]; CPools::ms_pObjectPool
333B48:  LDRD.W          R2, R1, [R1]
333B4C:  SUBS            R0, R0, R2
333B4E:  MOV             R2, #0xD8FD8FD9
333B56:  ASRS            R0, R0, #2
333B58:  MULS            R0, R2
333B5A:  LDR             R2, =(ScriptParams_ptr - 0x333B60)
333B5C:  ADD             R2, PC; ScriptParams_ptr
333B5E:  LDR             R2, [R2]; ScriptParams
333B60:  LDRB            R1, [R1,R0]
333B62:  ORR.W           R0, R1, R0,LSL#8
333B66:  STR             R0, [R2,#(dword_81A910 - 0x81A908)]
333B68:  B               loc_333BB0
333B6A:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x333B70)
333B6C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
333B6E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
333B70:  LDR             R1, [R1]; CPools::ms_pPedPool
333B72:  LDRD.W          R2, R1, [R1]
333B76:  SUBS            R0, R0, R2
333B78:  MOV             R2, #0xBED87F3B
333B80:  ASRS            R0, R0, #2
333B82:  MULS            R0, R2
333B84:  LDR             R2, =(ScriptParams_ptr - 0x333B8A)
333B86:  ADD             R2, PC; ScriptParams_ptr
333B88:  LDR             R2, [R2]; ScriptParams
333B8A:  LDRB            R1, [R1,R0]
333B8C:  ORR.W           R0, R1, R0,LSL#8
333B90:  STR             R0, [R2,#(dword_81A90C - 0x81A908)]
333B92:  B               loc_333BB0
333B94:  MOVS            R1, #0
333B96:  LDR             R3, =(ScriptParams_ptr - 0x333B9C)
333B98:  ADD             R3, PC; ScriptParams_ptr
333B9A:  B               loc_333BA0
333B9C:  LDR             R3, =(ScriptParams_ptr - 0x333BA2)
333B9E:  ADD             R3, PC; ScriptParams_ptr
333BA0:  LDR             R3, [R3]; ScriptParams
333BA2:  LDR             R0, [R0,#0x54]
333BA4:  STRD.W          R2, R0, [R3]
333BA8:  LDR             R0, =(ScriptParams_ptr - 0x333BAE)
333BAA:  ADD             R0, PC; ScriptParams_ptr
333BAC:  LDR             R0, [R0]; ScriptParams
333BAE:  STR             R1, [R0,#(dword_81A910 - 0x81A908)]
333BB0:  MOV             R0, R4; this
333BB2:  MOVS            R1, #3; __int16
333BB4:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
333BB8:  MOVS            R6, #0
333BBA:  LDR             R0, =(__stack_chk_guard_ptr - 0x333BC2); jumptable 003323AC cases 1902,1907-1909,1913,1919,1925,1927,1933,1934,1937,1941,1946-1948,1954,1962,1965,1966,1970,1973-1976,1978,1986,1992,1994,1998,1999
333BBC:  LDR             R1, [SP,#0xF8+var_34]
333BBE:  ADD             R0, PC; __stack_chk_guard_ptr
333BC0:  LDR             R0, [R0]; __stack_chk_guard
333BC2:  LDR             R0, [R0]
333BC4:  SUBS            R0, R0, R1
333BC6:  ITTTT EQ
333BC8:  SXTBEQ          R0, R6
333BCA:  SUBEQ.W         R4, R7, #-var_30
333BCE:  MOVEQ           SP, R4
333BD0:  VPOPEQ          {D8-D9}
333BD4:  ITTT EQ
333BD6:  ADDEQ           SP, SP, #4
333BD8:  POPEQ.W         {R8-R11}
333BDC:  POPEQ           {R4-R7,PC}
333BDE:  BLX             __stack_chk_fail
