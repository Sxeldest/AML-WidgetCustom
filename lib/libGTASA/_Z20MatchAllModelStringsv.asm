; =========================================================
; Game Engine Function: _Z20MatchAllModelStringsv
; Address            : 0x467404 - 0x467FD6
; =========================================================

467404:  PUSH            {R4-R7,LR}
467406:  ADD             R7, SP, #0xC
467408:  PUSH.W          {R8}
46740C:  LDR.W           R1, =(MI_FIRE_HYDRANT_ptr - 0x467418)
467410:  LDR.W           R0, =(aFireHydrant_0 - 0x46741A); "fire_hydrant"
467414:  ADD             R1, PC; MI_FIRE_HYDRANT_ptr
467416:  ADD             R0, PC; "fire_hydrant"
467418:  LDR             R1, [R1]; MI_FIRE_HYDRANT ; char *
46741A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46741E:  LDR.W           R1, =(MI_PHONESIGN_ptr - 0x46742A)
467422:  LDR.W           R0, =(aPhonesign - 0x46742C); "phonesign"
467426:  ADD             R1, PC; MI_PHONESIGN_ptr
467428:  ADD             R0, PC; "phonesign"
46742A:  LDR             R1, [R1]; MI_PHONESIGN ; char *
46742C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467430:  LDR.W           R1, =(MI_NOPARKINGSIGN1_ptr - 0x46743C)
467434:  LDR.W           R0, =(aNoparkingsign1 - 0x46743E); "noparkingsign1"
467438:  ADD             R1, PC; MI_NOPARKINGSIGN1_ptr
46743A:  ADD             R0, PC; "noparkingsign1"
46743C:  LDR             R1, [R1]; MI_NOPARKINGSIGN1 ; char *
46743E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467442:  LDR.W           R1, =(MI_BUSSIGN1_ptr - 0x46744E)
467446:  LDR.W           R0, =(aBussign1 - 0x467450); "bussign1"
46744A:  ADD             R1, PC; MI_BUSSIGN1_ptr
46744C:  ADD             R0, PC; "bussign1"
46744E:  LDR             R1, [R1]; MI_BUSSIGN1 ; char *
467450:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467454:  LDR.W           R1, =(MI_ROADWORKBARRIER1_ptr - 0x467460)
467458:  LDR.W           R0, =(aDynRoadbarrier - 0x467462); "DYN_ROADBARRIER_6"
46745C:  ADD             R1, PC; MI_ROADWORKBARRIER1_ptr
46745E:  ADD             R0, PC; "DYN_ROADBARRIER_6"
467460:  LDR             R1, [R1]; MI_ROADWORKBARRIER1 ; char *
467462:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467466:  LDR.W           R1, =(MI_ROADBLOCKFUCKEDCAR1_ptr - 0x467472)
46746A:  LDR.W           R0, =(aLaFuckcar1 - 0x467474); "la_fuckcar1"
46746E:  ADD             R1, PC; MI_ROADBLOCKFUCKEDCAR1_ptr
467470:  ADD             R0, PC; "la_fuckcar1"
467472:  LDR             R1, [R1]; MI_ROADBLOCKFUCKEDCAR1 ; char *
467474:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467478:  LDR.W           R1, =(MI_ROADBLOCKFUCKEDCAR2_ptr - 0x467484)
46747C:  LDR.W           R0, =(aLaFuckcar2 - 0x467486); "la_fuckcar2"
467480:  ADD             R1, PC; MI_ROADBLOCKFUCKEDCAR2_ptr
467482:  ADD             R0, PC; "la_fuckcar2"
467484:  LDR             R1, [R1]; MI_ROADBLOCKFUCKEDCAR2 ; char *
467486:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46748A:  LDR.W           R1, =(MI_DUMP1_ptr - 0x467496)
46748E:  LDR.W           R0, =(aDump1 - 0x467498); "dump1"
467492:  ADD             R1, PC; MI_DUMP1_ptr
467494:  ADD             R0, PC; "dump1"
467496:  LDR             R1, [R1]; MI_DUMP1 ; char *
467498:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46749C:  LDR.W           R1, =(MI_TRAFFICCONE_ptr - 0x4674A8)
4674A0:  LDR.W           R0, =(aTrafficcone - 0x4674AA); "trafficcone"
4674A4:  ADD             R1, PC; MI_TRAFFICCONE_ptr
4674A6:  ADD             R0, PC; "trafficcone"
4674A8:  LDR             R1, [R1]; MI_TRAFFICCONE ; char *
4674AA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4674AE:  LDR.W           R1, =(MI_NEWSSTAND_ptr - 0x4674BA)
4674B2:  LDR.W           R0, =(aNewsstand1 - 0x4674BC); "newsstand1"
4674B6:  ADD             R1, PC; MI_NEWSSTAND_ptr
4674B8:  ADD             R0, PC; "newsstand1"
4674BA:  LDR             R1, [R1]; MI_NEWSSTAND ; char *
4674BC:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4674C0:  LDR.W           R1, =(MI_POSTBOX1_ptr - 0x4674CC)
4674C4:  LDR.W           R0, =(aPostbox1 - 0x4674CE); "postbox1"
4674C8:  ADD             R1, PC; MI_POSTBOX1_ptr
4674CA:  ADD             R0, PC; "postbox1"
4674CC:  LDR             R1, [R1]; MI_POSTBOX1 ; char *
4674CE:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4674D2:  LDR.W           R1, =(MI_BIN_ptr - 0x4674DE)
4674D6:  LDR.W           R0, =(aBin1 - 0x4674E0); "bin1"
4674DA:  ADD             R1, PC; MI_BIN_ptr
4674DC:  ADD             R0, PC; "bin1"
4674DE:  LDR             R1, [R1]; MI_BIN ; char *
4674E0:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4674E4:  LDR.W           R1, =(MI_WASTEBIN_ptr - 0x4674F0)
4674E8:  LDR.W           R0, =(aWastebin - 0x4674F2); "wastebin"
4674EC:  ADD             R1, PC; MI_WASTEBIN_ptr
4674EE:  ADD             R0, PC; "wastebin"
4674F0:  LDR             R1, [R1]; MI_WASTEBIN ; char *
4674F2:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4674F6:  LDR.W           R1, =(MI_PHONEBOOTH1_ptr - 0x467502)
4674FA:  LDR.W           R0, =(aPhonebooth1 - 0x467504); "phonebooth1"
4674FE:  ADD             R1, PC; MI_PHONEBOOTH1_ptr
467500:  ADD             R0, PC; "phonebooth1"
467502:  LDR             R1, [R1]; MI_PHONEBOOTH1 ; char *
467504:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467508:  LDR.W           R1, =(MI_PARKINGMETER_ptr - 0x467514)
46750C:  LDR.W           R0, =(aParkingmeter - 0x467516); "parkingmeter"
467510:  ADD             R1, PC; MI_PARKINGMETER_ptr
467512:  ADD             R0, PC; "parkingmeter"
467514:  LDR             R1, [R1]; MI_PARKINGMETER ; char *
467516:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46751A:  LDR.W           R1, =(MI_PARKINGMETER2_ptr - 0x467526)
46751E:  LDR.W           R0, =(aParkingmeterg - 0x467528); "parkingmeterg"
467522:  ADD             R1, PC; MI_PARKINGMETER2_ptr
467524:  ADD             R0, PC; "parkingmeterg"
467526:  LDR             R1, [R1]; MI_PARKINGMETER2 ; char *
467528:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46752C:  LDR.W           R1, =(MI_MALLFAN_ptr - 0x467538)
467530:  LDR.W           R0, =(aMallFans - 0x46753A); "mall_fans"
467534:  ADD             R1, PC; MI_MALLFAN_ptr
467536:  ADD             R0, PC; "mall_fans"
467538:  LDR             R1, [R1]; MI_MALLFAN ; char *
46753A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46753E:  LDR.W           R1, =(MI_HOTELFAN_NIGHT_ptr - 0x46754A)
467542:  LDR.W           R0, =(aHtlFanRotateNt - 0x46754C); "htl_fan_rotate_nt"
467546:  ADD             R1, PC; MI_HOTELFAN_NIGHT_ptr
467548:  ADD             R0, PC; "htl_fan_rotate_nt"
46754A:  LDR             R1, [R1]; MI_HOTELFAN_NIGHT ; char *
46754C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467550:  LDR.W           R1, =(MI_HOTELFAN_DAY_ptr - 0x46755C)
467554:  LDR.W           R0, =(aHtlFanRotateDy - 0x46755E); "htl_fan_rotate_dy"
467558:  ADD             R1, PC; MI_HOTELFAN_DAY_ptr
46755A:  ADD             R0, PC; "htl_fan_rotate_dy"
46755C:  LDR             R1, [R1]; MI_HOTELFAN_DAY ; char *
46755E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467562:  LDR.W           R1, =(MI_HOTROOMFAN_ptr - 0x46756E)
467566:  LDR.W           R0, =(aHotroomfan - 0x467570); "hotroomfan"
46756A:  ADD             R1, PC; MI_HOTROOMFAN_ptr
46756C:  ADD             R0, PC; "hotroomfan"
46756E:  LDR             R1, [R1]; MI_HOTROOMFAN ; char *
467570:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467574:  LDR.W           R0, =(MI_TRAFFICLIGHTS_ptr - 0x467580)
467578:  LDR.W           R8, =(aTrafficlight1 - 0x467582); "trafficlight1"
46757C:  ADD             R0, PC; MI_TRAFFICLIGHTS_ptr
46757E:  ADD             R8, PC; "trafficlight1"
467580:  LDR             R1, [R0]; MI_TRAFFICLIGHTS ; char *
467582:  MOV             R0, R8; this
467584:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467588:  LDR.W           R1, =(MI_TRAFFICLIGHTS_VERTICAL_ptr - 0x467594)
46758C:  LDR.W           R0, =(aMtraffic4 - 0x467596); "MTraffic4"
467590:  ADD             R1, PC; MI_TRAFFICLIGHTS_VERTICAL_ptr
467592:  ADD             R0, PC; "MTraffic4"
467594:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_VERTICAL ; char *
467596:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46759A:  LDR.W           R1, =(MI_TRAFFICLIGHTS_MIAMI_ptr - 0x4675A6)
46759E:  LDR.W           R0, =(aMtraffic1 - 0x4675A8); "MTraffic1"
4675A2:  ADD             R1, PC; MI_TRAFFICLIGHTS_MIAMI_ptr
4675A4:  ADD             R0, PC; "MTraffic1"
4675A6:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_MIAMI ; char *
4675A8:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4675AC:  LDR.W           R1, =(MI_TRAFFICLIGHTS_VEGAS_ptr - 0x4675B8)
4675B0:  LDR.W           R0, =(aVgsstriptlight - 0x4675BA); "vgsstriptlights1"
4675B4:  ADD             R1, PC; MI_TRAFFICLIGHTS_VEGAS_ptr
4675B6:  ADD             R0, PC; "vgsstriptlights1"
4675B8:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_VEGAS ; char *
4675BA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4675BE:  LDR.W           R1, =(MI_TRAFFICLIGHTS_TWOVERTICAL_ptr - 0x4675CA)
4675C2:  LDR.W           R0, =(aMtraffic2 - 0x4675CC); "MTraffic2"
4675C6:  ADD             R1, PC; MI_TRAFFICLIGHTS_TWOVERTICAL_ptr
4675C8:  ADD             R0, PC; "MTraffic2"
4675CA:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_TWOVERTICAL ; char *
4675CC:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4675D0:  LDR.W           R0, =(MI_SINGLESTREETLIGHTS1_ptr - 0x4675DC)
4675D4:  LDR.W           R4, =(aLamppost1 - 0x4675DE); "lamppost1"
4675D8:  ADD             R0, PC; MI_SINGLESTREETLIGHTS1_ptr
4675DA:  ADD             R4, PC; "lamppost1"
4675DC:  LDR             R1, [R0]; MI_SINGLESTREETLIGHTS1 ; char *
4675DE:  MOV             R0, R4; this
4675E0:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4675E4:  LDR.W           R1, =(MI_SINGLESTREETLIGHTS2_ptr - 0x4675F0)
4675E8:  LDR.W           R0, =(aLamppost2 - 0x4675F2); "lamppost2"
4675EC:  ADD             R1, PC; MI_SINGLESTREETLIGHTS2_ptr
4675EE:  ADD             R0, PC; "lamppost2"
4675F0:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS2 ; char *
4675F2:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4675F6:  LDR.W           R1, =(MI_SINGLESTREETLIGHTS3_ptr - 0x467602)
4675FA:  LDR.W           R0, =(aLamppost3 - 0x467604); "lamppost3"
4675FE:  ADD             R1, PC; MI_SINGLESTREETLIGHTS3_ptr
467600:  ADD             R0, PC; "lamppost3"
467602:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS3 ; char *
467604:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467608:  LDR.W           R1, =(MI_DOUBLESTREETLIGHTS_ptr - 0x467614)
46760C:  LDR.W           R0, =(aDoublestreetlg - 0x467616); "doublestreetlght1"
467610:  ADD             R1, PC; MI_DOUBLESTREETLIGHTS_ptr
467612:  ADD             R0, PC; "doublestreetlght1"
467614:  LDR             R1, [R1]; MI_DOUBLESTREETLIGHTS ; char *
467616:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46761A:  LDR.W           R1, =(MI_STREETLAMP1_ptr - 0x467626)
46761E:  LDR.W           R0, =(aStreetlamp1 - 0x467628); "Streetlamp1"
467622:  ADD             R1, PC; MI_STREETLAMP1_ptr
467624:  ADD             R0, PC; "Streetlamp1"
467626:  LDR             R1, [R1]; MI_STREETLAMP1 ; char *
467628:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46762C:  LDR.W           R1, =(MI_STREETLAMP2_ptr - 0x467638)
467630:  LDR.W           R0, =(aStreetlamp2 - 0x46763A); "Streetlamp2"
467634:  ADD             R1, PC; MI_STREETLAMP2_ptr
467636:  ADD             R0, PC; "Streetlamp2"
467638:  LDR             R1, [R1]; MI_STREETLAMP2 ; char *
46763A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46763E:  LDR.W           R1, =(MODELID_CRANE_1_ptr - 0x46764A)
467642:  LDR.W           R0, =(aDocCraneCab0 - 0x46764C); "doc_crane_cab0"
467646:  ADD             R1, PC; MODELID_CRANE_1_ptr
467648:  ADD             R0, PC; "doc_crane_cab0"
46764A:  LDR             R1, [R1]; MODELID_CRANE_1 ; char *
46764C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467650:  LDR.W           R1, =(MODELID_CRANE_2_ptr - 0x46765C)
467654:  LDR.W           R0, =(aDocCraneCab01 - 0x46765E); "doc_crane_cab01"
467658:  ADD             R1, PC; MODELID_CRANE_2_ptr
46765A:  ADD             R0, PC; "doc_crane_cab01"
46765C:  LDR             R1, [R1]; MODELID_CRANE_2 ; char *
46765E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467662:  LDR.W           R1, =(MODELID_CRANE_3_ptr - 0x46766E)
467666:  LDR.W           R0, =(aDocCraneCab02 - 0x467670); "doc_crane_cab02"
46766A:  ADD             R1, PC; MODELID_CRANE_3_ptr
46766C:  ADD             R0, PC; "doc_crane_cab02"
46766E:  LDR             R1, [R1]; MODELID_CRANE_3 ; char *
467670:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467674:  LDR.W           R1, =(MODELID_CRANE_4_ptr - 0x467680)
467678:  LDR.W           R0, =(aDocCraneCab03 - 0x467682); "doc_crane_cab03"
46767C:  ADD             R1, PC; MODELID_CRANE_4_ptr
46767E:  ADD             R0, PC; "doc_crane_cab03"
467680:  LDR             R1, [R1]; MODELID_CRANE_4 ; char *
467682:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467686:  LDR.W           R1, =(MODELID_CRANE_5_ptr - 0x467692)
46768A:  LDR.W           R0, =(aBoatcranelg0 - 0x467694); "boatcranelg0"
46768E:  ADD             R1, PC; MODELID_CRANE_5_ptr
467690:  ADD             R0, PC; "boatcranelg0"
467692:  LDR             R1, [R1]; MODELID_CRANE_5 ; char *
467694:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467698:  LDR.W           R1, =(MODELID_CRANE_6_ptr - 0x4676A4)
46769C:  LDR.W           R0, =(aLodnetopa0 - 0x4676A6); "LODnetopa0"
4676A0:  ADD             R1, PC; MODELID_CRANE_6_ptr
4676A2:  ADD             R0, PC; "LODnetopa0"
4676A4:  LDR             R1, [R1]; MODELID_CRANE_6 ; char *
4676A6:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4676AA:  LDR.W           R1, =(MI_COLLECTABLE1_ptr - 0x4676B6)
4676AE:  LDR.W           R0, =(aPackage1 - 0x4676B8); "package1"
4676B2:  ADD             R1, PC; MI_COLLECTABLE1_ptr
4676B4:  ADD             R0, PC; "package1"
4676B6:  LDR             R1, [R1]; MI_COLLECTABLE1 ; char *
4676B8:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4676BC:  LDR.W           R0, =(MI_MONEY_ptr - 0x4676C8)
4676C0:  LDR.W           R5, =(aMoney - 0x4676CA); "Money"
4676C4:  ADD             R0, PC; MI_MONEY_ptr
4676C6:  ADD             R5, PC; "Money"
4676C8:  LDR             R6, [R0]; MI_MONEY
4676CA:  MOV             R0, R5; this
4676CC:  MOV             R1, R6; char *
4676CE:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4676D2:  LDR.W           R1, =(MI_CARMINE_ptr - 0x4676DE)
4676D6:  LDR.W           R0, =(aBarrel1 - 0x4676E0); "barrel1"
4676DA:  ADD             R1, PC; MI_CARMINE_ptr
4676DC:  ADD             R0, PC; "barrel1"
4676DE:  LDR             R1, [R1]; MI_CARMINE ; char *
4676E0:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4676E4:  LDR.W           R1, =(MI_NAUTICALMINE_ptr - 0x4676F0)
4676E8:  LDR.W           R0, =(aBarrel2 - 0x4676F2); "barrel2"
4676EC:  ADD             R1, PC; MI_NAUTICALMINE_ptr
4676EE:  ADD             R0, PC; "barrel2"
4676F0:  LDR             R1, [R1]; MI_NAUTICALMINE ; char *
4676F2:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4676F6:  LDR.W           R1, =(MI_TELLY_ptr - 0x467702)
4676FA:  LDR.W           R0, =(aDynTv2 - 0x467704); "DYN_TV_2"
4676FE:  ADD             R1, PC; MI_TELLY_ptr
467700:  ADD             R0, PC; "DYN_TV_2"
467702:  LDR             R1, [R1]; MI_TELLY ; char *
467704:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467708:  LDR.W           R1, =(MI_BRIEFCASE_ptr - 0x467714)
46770C:  LDR.W           R0, =(aBriefcase - 0x467716); "briefcase"
467710:  ADD             R1, PC; MI_BRIEFCASE_ptr
467712:  ADD             R0, PC; "briefcase"
467714:  LDR             R1, [R1]; MI_BRIEFCASE ; char *
467716:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46771A:  LDR.W           R1, =(MI_GLASS1_ptr - 0x467726)
46771E:  LDR.W           R0, =(aWglasssmash - 0x467728); "wglasssmash"
467722:  ADD             R1, PC; MI_GLASS1_ptr
467724:  ADD             R0, PC; "wglasssmash"
467726:  LDR             R1, [R1]; MI_GLASS1 ; char *
467728:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46772C:  LDR.W           R1, =(MI_GLASS8_ptr - 0x467738)
467730:  LDR.W           R0, =(aGlassfxComposh - 0x46773A); "glassfx_composh"
467734:  ADD             R1, PC; MI_GLASS8_ptr
467736:  ADD             R0, PC; "glassfx_composh"
467738:  LDR             R1, [R1]; MI_GLASS8 ; char *
46773A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46773E:  LDR.W           R1, =(MI_PICKUP_ADRENALINE_ptr - 0x46774A)
467742:  LDR.W           R0, =(aAdrenaline - 0x46774C); "adrenaline"
467746:  ADD             R1, PC; MI_PICKUP_ADRENALINE_ptr
467748:  ADD             R0, PC; "adrenaline"
46774A:  LDR             R1, [R1]; MI_PICKUP_ADRENALINE ; char *
46774C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467750:  LDR.W           R1, =(MI_PICKUP_BODYARMOUR_ptr - 0x46775C)
467754:  LDR.W           R0, =(aBodyarmour - 0x46775E); "bodyarmour"
467758:  ADD             R1, PC; MI_PICKUP_BODYARMOUR_ptr
46775A:  ADD             R0, PC; "bodyarmour"
46775C:  LDR             R1, [R1]; MI_PICKUP_BODYARMOUR ; char *
46775E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467762:  LDR.W           R1, =(MI_PICKUP_INFO_ptr - 0x46776E)
467766:  LDR.W           R0, =(aInvalidAfterPn+0x36 - 0x467770); "info"
46776A:  ADD             R1, PC; MI_PICKUP_INFO_ptr
46776C:  ADD             R0, PC; "info" ; this
46776E:  LDR             R1, [R1]; MI_PICKUP_INFO ; char *
467770:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467774:  LDR.W           R1, =(MI_PICKUP_HEALTH_ptr - 0x467780)
467778:  LDR.W           R0, =(aHealth_0 - 0x467782); "health"
46777C:  ADD             R1, PC; MI_PICKUP_HEALTH_ptr
46777E:  ADD             R0, PC; "health"
467780:  LDR             R1, [R1]; MI_PICKUP_HEALTH ; char *
467782:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467786:  LDR.W           R1, =(MI_PICKUP_BONUS_ptr - 0x467792)
46778A:  LDR.W           R0, =(aBonus - 0x467794); "bonus"
46778E:  ADD             R1, PC; MI_PICKUP_BONUS_ptr
467790:  ADD             R0, PC; "bonus"
467792:  LDR             R1, [R1]; MI_PICKUP_BONUS ; char *
467794:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467798:  LDR.W           R1, =(MI_PICKUP_BRIBE_ptr - 0x4677A4)
46779C:  LDR.W           R0, =(aBribe - 0x4677A6); "bribe"
4677A0:  ADD             R1, PC; MI_PICKUP_BRIBE_ptr
4677A2:  ADD             R0, PC; "bribe"
4677A4:  LDR             R1, [R1]; MI_PICKUP_BRIBE ; char *
4677A6:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4677AA:  LDR.W           R1, =(MI_PICKUP_KILLFRENZY_ptr - 0x4677B6)
4677AE:  LDR.W           R0, =(aKillfrenzy - 0x4677B8); "killfrenzy"
4677B2:  ADD             R1, PC; MI_PICKUP_KILLFRENZY_ptr
4677B4:  ADD             R0, PC; "killfrenzy"
4677B6:  LDR             R1, [R1]; MI_PICKUP_KILLFRENZY ; char *
4677B8:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4677BC:  LDR.W           R1, =(MI_PICKUP_CAMERA_ptr - 0x4677C8)
4677C0:  LDR.W           R0, =(aCamerapickup - 0x4677CA); "camerapickup"
4677C4:  ADD             R1, PC; MI_PICKUP_CAMERA_ptr
4677C6:  ADD             R0, PC; "camerapickup"
4677C8:  LDR             R1, [R1]; MI_PICKUP_CAMERA ; char *
4677CA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4677CE:  LDR.W           R1, =(MI_PICKUP_PARACHUTE_ptr - 0x4677DA)
4677D2:  LDR.W           R0, =(aGunPara - 0x4677DC); "gun_para"
4677D6:  ADD             R1, PC; MI_PICKUP_PARACHUTE_ptr
4677D8:  ADD             R0, PC; "gun_para"
4677DA:  LDR             R1, [R1]; MI_PICKUP_PARACHUTE ; char *
4677DC:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4677E0:  LDR.W           R1, =(MI_PARACHUTE_BACKPACK_ptr - 0x4677EC)
4677E4:  LDR.W           R0, =(aParaPack - 0x4677EE); "para_pack"
4677E8:  ADD             R1, PC; MI_PARACHUTE_BACKPACK_ptr
4677EA:  ADD             R0, PC; "para_pack"
4677EC:  LDR             R1, [R1]; MI_PARACHUTE_BACKPACK ; char *
4677EE:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4677F2:  LDR.W           R1, =(MI_PICKUP_REVENUE_ptr - 0x4677FE)
4677F6:  LDR.W           R0, =(aBigdollar - 0x467800); "bigdollar"
4677FA:  ADD             R1, PC; MI_PICKUP_REVENUE_ptr
4677FC:  ADD             R0, PC; "bigdollar"
4677FE:  LDR             R1, [R1]; MI_PICKUP_REVENUE ; char *
467800:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467804:  LDR.W           R1, =(MI_PICKUP_SAVEGAME_ptr - 0x467810)
467808:  LDR.W           R0, =(aPickupsave - 0x467812); "pickupsave"
46780C:  ADD             R1, PC; MI_PICKUP_SAVEGAME_ptr
46780E:  ADD             R0, PC; "pickupsave"
467810:  LDR             R1, [R1]; MI_PICKUP_SAVEGAME ; char *
467812:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467816:  LDR.W           R1, =(MI_PICKUP_PROPERTY_ptr - 0x467822)
46781A:  LDR.W           R0, =(aPropertyLocked - 0x467824); "property_locked"
46781E:  ADD             R1, PC; MI_PICKUP_PROPERTY_ptr
467820:  ADD             R0, PC; "property_locked"
467822:  LDR             R1, [R1]; MI_PICKUP_PROPERTY ; char *
467824:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467828:  LDR.W           R1, =(MI_PICKUP_PROPERTY_FORSALE_ptr - 0x467834)
46782C:  LDR.W           R0, =(aPropertyFsale - 0x467836); "property_fsale"
467830:  ADD             R1, PC; MI_PICKUP_PROPERTY_FORSALE_ptr
467832:  ADD             R0, PC; "property_fsale"
467834:  LDR             R1, [R1]; MI_PICKUP_PROPERTY_FORSALE ; char *
467836:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46783A:  LDR.W           R1, =(MI_PICKUP_CLOTHES_ptr - 0x467846)
46783E:  LDR.W           R0, =(aClothesp - 0x467848); "clothesp"
467842:  ADD             R1, PC; MI_PICKUP_CLOTHES_ptr
467844:  ADD             R0, PC; "clothesp"
467846:  LDR             R1, [R1]; MI_PICKUP_CLOTHES ; char *
467848:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46784C:  LDR.W           R1, =(MI_PICKUP_2P_KILLFRENZY_ptr - 0x467858)
467850:  LDR.W           R0, =(aKillfrenzy2ply - 0x46785A); "killfrenzy2plyr"
467854:  ADD             R1, PC; MI_PICKUP_2P_KILLFRENZY_ptr
467856:  ADD             R0, PC; "killfrenzy2plyr"
467858:  LDR             R1, [R1]; MI_PICKUP_2P_KILLFRENZY ; char *
46785A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46785E:  LDR.W           R1, =(MI_PICKUP_2P_COOP_ptr - 0x46786A)
467862:  LDR.W           R0, =(a2player - 0x46786C); "2player"
467866:  ADD             R1, PC; MI_PICKUP_2P_COOP_ptr
467868:  ADD             R0, PC; "2player"
46786A:  LDR             R1, [R1]; MI_PICKUP_2P_COOP ; char *
46786C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467870:  LDR.W           R1, =(MI_BOLLARDLIGHT_ptr - 0x46787C)
467874:  LDR.W           R0, =(aBollardlight - 0x46787E); "bollardlight"
467878:  ADD             R1, PC; MI_BOLLARDLIGHT_ptr
46787A:  ADD             R0, PC; "bollardlight"
46787C:  LDR             R1, [R1]; MI_BOLLARDLIGHT ; char *
46787E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467882:  LDR.W           R1, =(MI_FENCE_ptr - 0x46788E)
467886:  LDR.W           R0, =(aBarBarrier10 - 0x467890); "bar_barrier10"
46788A:  ADD             R1, PC; MI_FENCE_ptr
46788C:  ADD             R0, PC; "bar_barrier10"
46788E:  LDR             R1, [R1]; MI_FENCE ; char *
467890:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467894:  LDR.W           R1, =(MI_FENCE2_ptr - 0x4678A0)
467898:  LDR.W           R0, =(aBarBarrier12 - 0x4678A2); "bar_barrier12"
46789C:  ADD             R1, PC; MI_FENCE2_ptr
46789E:  ADD             R0, PC; "bar_barrier12"
4678A0:  LDR             R1, [R1]; MI_FENCE2 ; char *
4678A2:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4678A6:  LDR.W           R1, =(MI_BUOY_ptr - 0x4678B2)
4678AA:  LDR.W           R0, =(aBouy - 0x4678B4); "bouy"
4678AE:  ADD             R1, PC; MI_BUOY_ptr
4678B0:  ADD             R0, PC; "bouy"
4678B2:  LDR             R1, [R1]; MI_BUOY ; char *
4678B4:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4678B8:  LDR.W           R1, =(MI_PARKTABLE_ptr - 0x4678C4)
4678BC:  LDR.W           R0, =(aParktable1 - 0x4678C6); "parktable1"
4678C0:  ADD             R1, PC; MI_PARKTABLE_ptr
4678C2:  ADD             R0, PC; "parktable1"
4678C4:  LDR             R1, [R1]; MI_PARKTABLE ; char *
4678C6:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4678CA:  LDR.W           R1, =(MI_OYSTER_ptr - 0x4678D6)
4678CE:  LDR.W           R0, =(aCjOyster - 0x4678D8); "CJ_OYSTER"
4678D2:  ADD             R1, PC; MI_OYSTER_ptr
4678D4:  ADD             R0, PC; "CJ_OYSTER"
4678D6:  LDR             R1, [R1]; MI_OYSTER ; char *
4678D8:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4678DC:  LDR.W           R1, =(MI_HORSESHOE_ptr - 0x4678E8)
4678E0:  LDR.W           R0, =(aCjHorseShoe - 0x4678EA); "cj_horse_Shoe"
4678E4:  ADD             R1, PC; MI_HORSESHOE_ptr
4678E6:  ADD             R0, PC; "cj_horse_Shoe"
4678E8:  LDR             R1, [R1]; MI_HORSESHOE ; char *
4678EA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4678EE:  LDR.W           R1, =(MI_OFFROAD_WHEEL_ptr - 0x4678FA)
4678F2:  LDR.W           R0, =(aWheelOr1 - 0x4678FC); "wheel_or1"
4678F6:  ADD             R1, PC; MI_OFFROAD_WHEEL_ptr
4678F8:  ADD             R0, PC; "wheel_or1"
4678FA:  LDR             R1, [R1]; MI_OFFROAD_WHEEL ; char *
4678FC:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467900:  LDR.W           R1, =(MI_NITRO_BOTTLE_SMALL_ptr - 0x46790C)
467904:  LDR.W           R0, =(aNtoBS - 0x46790E); "nto_b_s"
467908:  ADD             R1, PC; MI_NITRO_BOTTLE_SMALL_ptr
46790A:  ADD             R0, PC; "nto_b_s"
46790C:  LDR             R1, [R1]; MI_NITRO_BOTTLE_SMALL ; char *
46790E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467912:  LDR.W           R1, =(MI_NITRO_BOTTLE_LARGE_ptr - 0x46791E)
467916:  LDR.W           R0, =(aNtoBL - 0x467920); "nto_b_l"
46791A:  ADD             R1, PC; MI_NITRO_BOTTLE_LARGE_ptr
46791C:  ADD             R0, PC; "nto_b_l"
46791E:  LDR             R1, [R1]; MI_NITRO_BOTTLE_LARGE ; char *
467920:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467924:  LDR.W           R1, =(MI_NITRO_BOTTLE_DOUBLE_ptr - 0x467930)
467928:  LDR.W           R0, =(aNtoBTw - 0x467932); "nto_b_tw"
46792C:  ADD             R1, PC; MI_NITRO_BOTTLE_DOUBLE_ptr
46792E:  ADD             R0, PC; "nto_b_tw"
467930:  LDR             R1, [R1]; MI_NITRO_BOTTLE_DOUBLE ; char *
467932:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467936:  LDR.W           R0, =(MI_LAMPPOST1_ptr - 0x46793E)
46793A:  ADD             R0, PC; MI_LAMPPOST1_ptr
46793C:  LDR             R1, [R0]; MI_LAMPPOST1 ; char *
46793E:  MOV             R0, R4; this
467940:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467944:  LDR.W           R1, =(MI_VEG_PALM01_ptr - 0x467950)
467948:  LDR.W           R0, =(aVegPalm04 - 0x467952); "veg_palm04"
46794C:  ADD             R1, PC; MI_VEG_PALM01_ptr
46794E:  ADD             R0, PC; "veg_palm04"
467950:  LDR             R1, [R1]; MI_VEG_PALM01 ; char *
467952:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467956:  LDR.W           R1, =(MI_VEG_PALM02_ptr - 0x467962)
46795A:  LDR.W           R0, =(aVegPalwee02 - 0x467964); "veg_palwee02"
46795E:  ADD             R1, PC; MI_VEG_PALM02_ptr
467960:  ADD             R0, PC; "veg_palwee02"
467962:  LDR             R1, [R1]; MI_VEG_PALM02 ; char *
467964:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467968:  LDR.W           R1, =(MI_VEG_PALM03_ptr - 0x467974)
46796C:  LDR.W           R0, =(aVegPalmkbb11 - 0x467976); "veg_palmkbb11"
467970:  ADD             R1, PC; MI_VEG_PALM03_ptr
467972:  ADD             R0, PC; "veg_palmkbb11"
467974:  LDR             R1, [R1]; MI_VEG_PALM03 ; char *
467976:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46797A:  LDR.W           R1, =(MI_VEG_PALM04_ptr - 0x467986)
46797E:  LDR.W           R0, =(aVegPalmkb4 - 0x467988); "veg_palmkb4"
467982:  ADD             R1, PC; MI_VEG_PALM04_ptr
467984:  ADD             R0, PC; "veg_palmkb4"
467986:  LDR             R1, [R1]; MI_VEG_PALM04 ; char *
467988:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46798C:  LDR.W           R1, =(MI_VEG_PALM05_ptr - 0x467998)
467990:  LDR.W           R0, =(aVegPalm02 - 0x46799A); "veg_palm02"
467994:  ADD             R1, PC; MI_VEG_PALM05_ptr
467996:  ADD             R0, PC; "veg_palm02"
467998:  LDR             R1, [R1]; MI_VEG_PALM05 ; char *
46799A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
46799E:  LDR.W           R1, =(MI_VEG_PALM06_ptr - 0x4679AA)
4679A2:  LDR.W           R0, =(aVegPalmkb3 - 0x4679AC); "veg_palmkb3"
4679A6:  ADD             R1, PC; MI_VEG_PALM06_ptr
4679A8:  ADD             R0, PC; "veg_palmkb3"
4679AA:  LDR             R1, [R1]; MI_VEG_PALM06 ; char *
4679AC:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4679B0:  LDR.W           R1, =(MI_VEG_PALM07_ptr - 0x4679BC)
4679B4:  LDR.W           R0, =(aVegPalmbig14 - 0x4679BE); "veg_palmbig14"
4679B8:  ADD             R1, PC; MI_VEG_PALM07_ptr
4679BA:  ADD             R0, PC; "veg_palmbig14"
4679BC:  LDR             R1, [R1]; MI_VEG_PALM07 ; char *
4679BE:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4679C2:  LDR.W           R1, =(MI_VEG_PALM08_ptr - 0x4679CE)
4679C6:  LDR.W           R0, =(aVegPalm01 - 0x4679D0); "veg_palm01"
4679CA:  ADD             R1, PC; MI_VEG_PALM08_ptr
4679CC:  ADD             R0, PC; "veg_palm01"
4679CE:  LDR             R1, [R1]; MI_VEG_PALM08 ; char *
4679D0:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4679D4:  LDR.W           R1, =(MI_MLAMPPOST_ptr - 0x4679E0)
4679D8:  LDR.W           R0, =(aMlamppost - 0x4679E2); "mlamppost"
4679DC:  ADD             R1, PC; MI_MLAMPPOST_ptr
4679DE:  ADD             R0, PC; "mlamppost"
4679E0:  LDR             R1, [R1]; MI_MLAMPPOST ; char *
4679E2:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4679E6:  LDR.W           R1, =(MI_BARRIER1_ptr - 0x4679F2)
4679EA:  LDR.W           R0, =(aRoadworkbarrie - 0x4679F4); "roadworkbarrier1"
4679EE:  ADD             R1, PC; MI_BARRIER1_ptr
4679F0:  ADD             R0, PC; "roadworkbarrier1"
4679F2:  LDR             R1, [R1]; MI_BARRIER1 ; char *
4679F4:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
4679F8:  LDR.W           R1, =(MI_LITTLEHA_POLICE_ptr - 0x467A04)
4679FC:  LDR.W           R0, =(aLittlehaPolice - 0x467A06); "littleha_police"
467A00:  ADD             R1, PC; MI_LITTLEHA_POLICE_ptr
467A02:  ADD             R0, PC; "littleha_police"
467A04:  LDR             R1, [R1]; MI_LITTLEHA_POLICE ; char *
467A06:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A0A:  LDR.W           R1, =(MI_TELPOLE02_ptr - 0x467A16)
467A0E:  LDR.W           R0, =(aTelgrphpole02 - 0x467A18); "telgrphpole02"
467A12:  ADD             R1, PC; MI_TELPOLE02_ptr
467A14:  ADD             R0, PC; "telgrphpole02"
467A16:  LDR             R1, [R1]; MI_TELPOLE02 ; char *
467A18:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A1C:  LDR.W           R0, =(MI_TRAFFICLIGHT01_ptr - 0x467A24)
467A20:  ADD             R0, PC; MI_TRAFFICLIGHT01_ptr
467A22:  LDR             R1, [R0]; MI_TRAFFICLIGHT01 ; char *
467A24:  MOV             R0, R8; this
467A26:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A2A:  LDR.W           R1, =(MI_PARKBENCH_ptr - 0x467A36)
467A2E:  LDR.W           R0, =(aParkbench1 - 0x467A38); "parkbench1"
467A32:  ADD             R1, PC; MI_PARKBENCH_ptr
467A34:  ADD             R0, PC; "parkbench1"
467A36:  LDR             R1, [R1]; MI_PARKBENCH ; char *
467A38:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A3C:  MOV             R0, R5; this
467A3E:  MOV             R1, R6; char *
467A40:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A44:  LDR.W           R1, =(MI_LIGHTBEAM_ptr - 0x467A50)
467A48:  LDR.W           R0, =(aOdLightbeam - 0x467A52); "od_lightbeam"
467A4C:  ADD             R1, PC; MI_LIGHTBEAM_ptr
467A4E:  ADD             R0, PC; "od_lightbeam"
467A50:  LDR             R1, [R1]; MI_LIGHTBEAM ; char *
467A52:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A56:  LDR.W           R1, =(MI_AIRPORTRADAR_ptr - 0x467A62)
467A5A:  LDR.W           R0, =(aApRadar101 - 0x467A64); "ap_radar1_01"
467A5E:  ADD             R1, PC; MI_AIRPORTRADAR_ptr
467A60:  ADD             R0, PC; "ap_radar1_01"
467A62:  LDR             R1, [R1]; MI_AIRPORTRADAR ; char *
467A64:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A68:  LDR.W           R1, =(MI_RCBOMB_ptr - 0x467A74)
467A6C:  LDR.W           R0, =(aRcbomb - 0x467A76); "rcbomb"
467A70:  ADD             R1, PC; MI_RCBOMB_ptr
467A72:  ADD             R0, PC; "rcbomb"
467A74:  LDR             R1, [R1]; MI_RCBOMB ; char *
467A76:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A7A:  LDR.W           R1, =(MI_BEACHBALL_ptr - 0x467A86)
467A7E:  LDR.W           R0, =(aBeachball - 0x467A88); "beachball"
467A82:  ADD             R1, PC; MI_BEACHBALL_ptr
467A84:  ADD             R0, PC; "beachball"
467A86:  LDR             R1, [R1]; MI_BEACHBALL ; char *
467A88:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A8C:  LDR.W           R1, =(MI_SANDCASTLE1_ptr - 0x467A98)
467A90:  LDR.W           R0, =(aSandcastle1 - 0x467A9A); "sandcastle1"
467A94:  ADD             R1, PC; MI_SANDCASTLE1_ptr
467A96:  ADD             R0, PC; "sandcastle1"
467A98:  LDR             R1, [R1]; MI_SANDCASTLE1 ; char *
467A9A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467A9E:  LDR.W           R1, =(MI_SANDCASTLE2_ptr - 0x467AAA)
467AA2:  LDR.W           R0, =(aSandcastle2 - 0x467AAC); "sandcastle2"
467AA6:  ADD             R1, PC; MI_SANDCASTLE2_ptr
467AA8:  ADD             R0, PC; "sandcastle2"
467AAA:  LDR             R1, [R1]; MI_SANDCASTLE2 ; char *
467AAC:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467AB0:  LDR.W           R1, =(MI_JELLYFISH_ptr - 0x467ABC)
467AB4:  LDR.W           R0, =(aJellyfish - 0x467ABE); "jellyfish"
467AB8:  ADD             R1, PC; MI_JELLYFISH_ptr
467ABA:  ADD             R0, PC; "jellyfish"
467ABC:  LDR             R1, [R1]; MI_JELLYFISH ; char *
467ABE:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467AC2:  LDR.W           R1, =(MI_JELLYFISH01_ptr - 0x467ACE)
467AC6:  LDR.W           R0, =(aJellyfish01 - 0x467AD0); "jellyfish01"
467ACA:  ADD             R1, PC; MI_JELLYFISH01_ptr
467ACC:  ADD             R0, PC; "jellyfish01"
467ACE:  LDR             R1, [R1]; MI_JELLYFISH01 ; char *
467AD0:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467AD4:  LDR.W           R1, =(MI_FISH1SINGLE_ptr - 0x467AE0)
467AD8:  LDR.W           R0, =(aFish1single - 0x467AE2); "fish1single"
467ADC:  ADD             R1, PC; MI_FISH1SINGLE_ptr
467ADE:  ADD             R0, PC; "fish1single"
467AE0:  LDR             R1, [R1]; MI_FISH1SINGLE ; char *
467AE2:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467AE6:  LDR.W           R1, =(MI_FISH1S_ptr - 0x467AF2)
467AEA:  LDR.W           R0, =(aFish1s - 0x467AF4); "fish1s"
467AEE:  ADD             R1, PC; MI_FISH1S_ptr
467AF0:  ADD             R0, PC; "fish1s"
467AF2:  LDR             R1, [R1]; MI_FISH1S ; char *
467AF4:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467AF8:  LDR.W           R1, =(MI_FISH2SINGLE_ptr - 0x467B04)
467AFC:  LDR.W           R0, =(aFish2single - 0x467B06); "fish2single"
467B00:  ADD             R1, PC; MI_FISH2SINGLE_ptr
467B02:  ADD             R0, PC; "fish2single"
467B04:  LDR             R1, [R1]; MI_FISH2SINGLE ; char *
467B06:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B0A:  LDR.W           R1, =(MI_FISH2S_ptr - 0x467B16)
467B0E:  LDR.W           R0, =(aFish2s - 0x467B18); "fish2s"
467B12:  ADD             R1, PC; MI_FISH2S_ptr
467B14:  ADD             R0, PC; "fish2s"
467B16:  LDR             R1, [R1]; MI_FISH2S ; char *
467B18:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B1C:  LDR.W           R1, =(MI_FISH3SINGLE_ptr - 0x467B28)
467B20:  LDR.W           R0, =(aFish3single - 0x467B2A); "fish3single"
467B24:  ADD             R1, PC; MI_FISH3SINGLE_ptr
467B26:  ADD             R0, PC; "fish3single"
467B28:  LDR             R1, [R1]; MI_FISH3SINGLE ; char *
467B2A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B2E:  LDR.W           R1, =(MI_FISH3S_ptr - 0x467B3A)
467B32:  LDR.W           R0, =(aFish3s - 0x467B3C); "fish3s"
467B36:  ADD             R1, PC; MI_FISH3S_ptr
467B38:  ADD             R0, PC; "fish3s"
467B3A:  LDR             R1, [R1]; MI_FISH3S ; char *
467B3C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B40:  LDR.W           R1, =(MI_TURTLE_ptr - 0x467B4C)
467B44:  LDR.W           R0, =(aTurtle - 0x467B4E); "turtle"
467B48:  ADD             R1, PC; MI_TURTLE_ptr
467B4A:  ADD             R0, PC; "turtle"
467B4C:  LDR             R1, [R1]; MI_TURTLE ; char *
467B4E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B52:  LDR.W           R1, =(MI_DOLPHIN_ptr - 0x467B5E)
467B56:  LDR.W           R0, =(aDolphin - 0x467B60); "dolphin"
467B5A:  ADD             R1, PC; MI_DOLPHIN_ptr
467B5C:  ADD             R0, PC; "dolphin"
467B5E:  LDR             R1, [R1]; MI_DOLPHIN ; char *
467B60:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B64:  LDR.W           R1, =(MI_SHARK_ptr - 0x467B70)
467B68:  LDR.W           R0, =(aShark - 0x467B72); "shark"
467B6C:  ADD             R1, PC; MI_SHARK_ptr
467B6E:  ADD             R0, PC; "shark"
467B70:  LDR             R1, [R1]; MI_SHARK ; char *
467B72:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B76:  LDR.W           R1, =(MI_SUBMARINE_ptr - 0x467B82)
467B7A:  LDR.W           R0, =(aSubmarine - 0x467B84); "submarine"
467B7E:  ADD             R1, PC; MI_SUBMARINE_ptr
467B80:  ADD             R0, PC; "submarine"
467B82:  LDR             R1, [R1]; MI_SUBMARINE ; char *
467B84:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B88:  LDR.W           R1, =(MI_ESCALATORSTEP_ptr - 0x467B94)
467B8C:  LDR.W           R0, =(aEscStep - 0x467B96); "Esc_step"
467B90:  ADD             R1, PC; MI_ESCALATORSTEP_ptr
467B92:  ADD             R0, PC; "Esc_step"
467B94:  LDR             R1, [R1]; MI_ESCALATORSTEP ; char *
467B96:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467B9A:  LDR.W           R1, =(MI_ESCALATORSTEP8_ptr - 0x467BA6)
467B9E:  LDR.W           R0, =(aEscStep8 - 0x467BA8); "Esc_step8"
467BA2:  ADD             R1, PC; MI_ESCALATORSTEP8_ptr
467BA4:  ADD             R0, PC; "Esc_step8"
467BA6:  LDR             R1, [R1]; MI_ESCALATORSTEP8 ; char *
467BA8:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467BAC:  LDR.W           R1, =(MI_LOUNGE_WOOD_UP_ptr - 0x467BB8)
467BB0:  LDR.W           R0, =(aLoungeWoodUp - 0x467BBA); "lounge_wood_up"
467BB4:  ADD             R1, PC; MI_LOUNGE_WOOD_UP_ptr
467BB6:  ADD             R0, PC; "lounge_wood_up"
467BB8:  LDR             R1, [R1]; MI_LOUNGE_WOOD_UP ; char *
467BBA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467BBE:  LDR.W           R1, =(MI_LOUNGE_TOWEL_UP_ptr - 0x467BCA)
467BC2:  LDR.W           R0, =(aLoungeTowelUp - 0x467BCC); "lounge_towel_up"
467BC6:  ADD             R1, PC; MI_LOUNGE_TOWEL_UP_ptr
467BC8:  ADD             R0, PC; "lounge_towel_up"
467BCA:  LDR             R1, [R1]; MI_LOUNGE_TOWEL_UP ; char *
467BCC:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467BD0:  LDR.W           R1, =(MI_LOUNGE_WOOD_DN_ptr - 0x467BDC)
467BD4:  LDR.W           R0, =(aLoungeWoodDn - 0x467BDE); "lounge_wood_dn"
467BD8:  ADD             R1, PC; MI_LOUNGE_WOOD_DN_ptr
467BDA:  ADD             R0, PC; "lounge_wood_dn"
467BDC:  LDR             R1, [R1]; MI_LOUNGE_WOOD_DN ; char *
467BDE:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467BE2:  LDR.W           R1, =(MI_LOTION_ptr - 0x467BEE)
467BE6:  LDR.W           R0, =(aLotion - 0x467BF0); "lotion"
467BEA:  ADD             R1, PC; MI_LOTION_ptr
467BEC:  ADD             R0, PC; "lotion"
467BEE:  LDR             R1, [R1]; MI_LOTION ; char *
467BF0:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467BF4:  LDR.W           R1, =(MI_BEACHTOWEL01_ptr - 0x467C00)
467BF8:  LDR.W           R0, =(aBeachtowel01 - 0x467C02); "beachtowel01"
467BFC:  ADD             R1, PC; MI_BEACHTOWEL01_ptr
467BFE:  ADD             R0, PC; "beachtowel01"
467C00:  LDR             R1, [R1]; MI_BEACHTOWEL01 ; char *
467C02:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C06:  LDR.W           R1, =(MI_BEACHTOWEL02_ptr - 0x467C12)
467C0A:  LDR.W           R0, =(aBeachtowel02 - 0x467C14); "beachtowel02"
467C0E:  ADD             R1, PC; MI_BEACHTOWEL02_ptr
467C10:  ADD             R0, PC; "beachtowel02"
467C12:  LDR             R1, [R1]; MI_BEACHTOWEL02 ; char *
467C14:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C18:  LDR.W           R1, =(MI_BEACHTOWEL03_ptr - 0x467C24)
467C1C:  LDR.W           R0, =(aBeachtowel03 - 0x467C26); "beachtowel03"
467C20:  ADD             R1, PC; MI_BEACHTOWEL03_ptr
467C22:  ADD             R0, PC; "beachtowel03"
467C24:  LDR             R1, [R1]; MI_BEACHTOWEL03 ; char *
467C26:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C2A:  LDR.W           R1, =(MI_BEACHTOWEL04_ptr - 0x467C36)
467C2E:  LDR.W           R0, =(aBeachtowel04 - 0x467C38); "beachtowel04"
467C32:  ADD             R1, PC; MI_BEACHTOWEL04_ptr
467C34:  ADD             R0, PC; "beachtowel04"
467C36:  LDR             R1, [R1]; MI_BEACHTOWEL04 ; char *
467C38:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C3C:  LDR.W           R1, =(MI_BLIMP_NIGHT_ptr - 0x467C48)
467C40:  LDR.W           R0, =(aBlimpNight - 0x467C4A); "blimp_night"
467C44:  ADD             R1, PC; MI_BLIMP_NIGHT_ptr
467C46:  ADD             R0, PC; "blimp_night"
467C48:  LDR             R1, [R1]; MI_BLIMP_NIGHT ; char *
467C4A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C4E:  LDR.W           R1, =(MI_BLIMP_DAY_ptr - 0x467C5A)
467C52:  LDR.W           R0, =(aBlimpDay - 0x467C5C); "blimp_day"
467C56:  ADD             R1, PC; MI_BLIMP_DAY_ptr
467C58:  ADD             R0, PC; "blimp_day"
467C5A:  LDR             R1, [R1]; MI_BLIMP_DAY ; char *
467C5C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C60:  LDR.W           R1, =(MI_YT_MAIN_BODY_ptr - 0x467C6C)
467C64:  LDR.W           R0, =(aYtMainBody - 0x467C6E); "yt_main_body"
467C68:  ADD             R1, PC; MI_YT_MAIN_BODY_ptr
467C6A:  ADD             R0, PC; "yt_main_body"
467C6C:  LDR             R1, [R1]; MI_YT_MAIN_BODY ; char *
467C6E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C72:  LDR.W           R1, =(MI_YT_MAIN_BODY2_ptr - 0x467C7E)
467C76:  LDR.W           R0, =(aYtMainBody2 - 0x467C80); "yt_main_body2"
467C7A:  ADD             R1, PC; MI_YT_MAIN_BODY2_ptr
467C7C:  ADD             R0, PC; "yt_main_body2"
467C7E:  LDR             R1, [R1]; MI_YT_MAIN_BODY2 ; char *
467C80:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C84:  LDR.W           R1, =(MI_SAMSITE_ptr - 0x467C90)
467C88:  LDR.W           R0, =(aMilSamsite - 0x467C92); "mil_samsite"
467C8C:  ADD             R1, PC; MI_SAMSITE_ptr
467C8E:  ADD             R0, PC; "mil_samsite"
467C90:  LDR             R1, [R1]; MI_SAMSITE ; char *
467C92:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467C96:  LDR.W           R1, =(MI_SAMSITE2_ptr - 0x467CA2)
467C9A:  LDR.W           R0, =(aSamsiteSfxrf - 0x467CA4); "samsite_SFXRF"
467C9E:  ADD             R1, PC; MI_SAMSITE2_ptr
467CA0:  ADD             R0, PC; "samsite_SFXRF"
467CA2:  LDR             R1, [R1]; MI_SAMSITE2 ; char *
467CA4:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467CA8:  LDR.W           R1, =(MI_TRAINCROSSING_ptr - 0x467CB4)
467CAC:  LDR.W           R0, =(aTraincross2 - 0x467CB6); "traincross2"
467CB0:  ADD             R1, PC; MI_TRAINCROSSING_ptr
467CB2:  ADD             R0, PC; "traincross2"
467CB4:  LDR             R1, [R1]; MI_TRAINCROSSING ; char *
467CB6:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467CBA:  LDR.W           R1, =(MI_TRAINCROSSING1_ptr - 0x467CC6)
467CBE:  LDR.W           R0, =(aTraincross1 - 0x467CC8); "traincross1"
467CC2:  ADD             R1, PC; MI_TRAINCROSSING1_ptr
467CC4:  ADD             R0, PC; "traincross1"
467CC6:  LDR             R1, [R1]; MI_TRAINCROSSING1 ; char *
467CC8:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467CCC:  LDR.W           R1, =(MI_MAGNOCRANE_ptr - 0x467CD8)
467CD0:  LDR.W           R0, =(aMagnocrane03 - 0x467CDA); "MagnoCrane_03"
467CD4:  ADD             R1, PC; MI_MAGNOCRANE_ptr
467CD6:  ADD             R0, PC; "MagnoCrane_03"
467CD8:  LDR             R1, [R1]; MI_MAGNOCRANE ; char *
467CDA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467CDE:  LDR.W           R1, =(MI_CRANETROLLEY_ptr - 0x467CEA)
467CE2:  LDR.W           R0, =(aTwrcraneM02 - 0x467CEC); "TwrCrane_M_02"
467CE6:  ADD             R1, PC; MI_CRANETROLLEY_ptr
467CE8:  ADD             R0, PC; "TwrCrane_M_02"
467CEA:  LDR             R1, [R1]; MI_CRANETROLLEY ; char *
467CEC:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467CF0:  LDR.W           R1, =(MI_QUARRYCRANE_ARM_ptr - 0x467CFC)
467CF4:  LDR.W           R0, =(aQuarryCranearm - 0x467CFE); "quarry_cranearm"
467CF8:  ADD             R1, PC; MI_QUARRYCRANE_ARM_ptr
467CFA:  ADD             R0, PC; "quarry_cranearm"
467CFC:  LDR             R1, [R1]; MI_QUARRYCRANE_ARM ; char *
467CFE:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D02:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE1_ptr - 0x467D0E)
467D06:  LDR.W           R0, =(aKmbContainerRe - 0x467D10); "kmb_container_red"
467D0A:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE1_ptr
467D0C:  ADD             R0, PC; "kmb_container_red"
467D0E:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE1 ; char *
467D10:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D14:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE2_ptr - 0x467D20)
467D18:  LDR.W           R0, =(aKmbContainerYe - 0x467D22); "kmb_container_yel"
467D1C:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE2_ptr
467D1E:  ADD             R0, PC; "kmb_container_yel"
467D20:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE2 ; char *
467D22:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D26:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE3_ptr - 0x467D32)
467D2A:  LDR.W           R0, =(aKmbContainerBl - 0x467D34); "kmb_container_blue"
467D2E:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE3_ptr
467D30:  ADD             R0, PC; "kmb_container_blue"
467D32:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE3 ; char *
467D34:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D38:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE4_ptr - 0x467D44)
467D3C:  LDR.W           R0, =(aBarrel4 - 0x467D46); "barrel4"
467D40:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE4_ptr
467D42:  ADD             R0, PC; "barrel4"
467D44:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE4 ; char *
467D46:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D4A:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE5_ptr - 0x467D56)
467D4E:  LDR.W           R0, =(aKmbContainerOp - 0x467D58); "kmb_container_open"
467D52:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE5_ptr
467D54:  ADD             R0, PC; "kmb_container_open"
467D56:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE5 ; char *
467D58:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D5C:  LDR.W           R1, =(MI_OBJECTFORBUILDINGSITECRANE1_ptr - 0x467D68)
467D60:  LDR.W           R0, =(aBlockpallet - 0x467D6A); "blockpallet"
467D64:  ADD             R1, PC; MI_OBJECTFORBUILDINGSITECRANE1_ptr
467D66:  ADD             R0, PC; "blockpallet"
467D68:  LDR             R1, [R1]; MI_OBJECTFORBUILDINGSITECRANE1 ; char *
467D6A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D6E:  LDR.W           R1, =(MI_MAGNOCRANE_HOOK_ptr - 0x467D7A)
467D72:  LDR.W           R0, =(aMagnocrane5Sfs - 0x467D7C); "magnocrane5_SFS"
467D76:  ADD             R1, PC; MI_MAGNOCRANE_HOOK_ptr
467D78:  ADD             R0, PC; "magnocrane5_SFS"
467D7A:  LDR             R1, [R1]; MI_MAGNOCRANE_HOOK ; char *
467D7C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D80:  LDR.W           R1, =(MI_HARVESTERBODYPART1_ptr - 0x467D8C)
467D84:  LDR.W           R0, =(aKmbDeadarm - 0x467D8E); "kmb_deadarm"
467D88:  ADD             R1, PC; MI_HARVESTERBODYPART1_ptr
467D8A:  ADD             R0, PC; "kmb_deadarm"
467D8C:  LDR             R1, [R1]; MI_HARVESTERBODYPART1 ; char *
467D8E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467D92:  LDR.W           R1, =(MI_HARVESTERBODYPART2_ptr - 0x467D9E)
467D96:  LDR.W           R0, =(aKmbDeadleg - 0x467DA0); "kmb_deadleg"
467D9A:  ADD             R1, PC; MI_HARVESTERBODYPART2_ptr
467D9C:  ADD             R0, PC; "kmb_deadleg"
467D9E:  LDR             R1, [R1]; MI_HARVESTERBODYPART2 ; char *
467DA0:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467DA4:  LDR.W           R1, =(MI_HARVESTERBODYPART3_ptr - 0x467DB0)
467DA8:  LDR.W           R0, =(aKmbDeadhead - 0x467DB2); "kmb_deadhead"
467DAC:  ADD             R1, PC; MI_HARVESTERBODYPART3_ptr
467DAE:  ADD             R0, PC; "kmb_deadhead"
467DB0:  LDR             R1, [R1]; MI_HARVESTERBODYPART3 ; char *
467DB2:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467DB6:  LDR.W           R1, =(MI_HARVESTERBODYPART4_ptr - 0x467DC2)
467DBA:  LDR.W           R0, =(aKmbDeadtorso - 0x467DC4); "kmb_deadtorso"
467DBE:  ADD             R1, PC; MI_HARVESTERBODYPART4_ptr
467DC0:  ADD             R0, PC; "kmb_deadtorso"
467DC2:  LDR             R1, [R1]; MI_HARVESTERBODYPART4 ; char *
467DC4:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467DC8:  LDR.W           R1, =(MI_GRASSHOUSE_ptr - 0x467DD4)
467DCC:  LDR.W           R0, =(aGrasshouse - 0x467DD6); "grasshouse"
467DD0:  ADD             R1, PC; MI_GRASSHOUSE_ptr
467DD2:  ADD             R0, PC; "grasshouse"
467DD4:  LDR             R1, [R1]; MI_GRASSHOUSE ; char *
467DD6:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467DDA:  LDR.W           R1, =(MI_GASSTATION_ptr - 0x467DE6)
467DDE:  LDR.W           R0, =(aSwGas01 - 0x467DE8); "sw_gas01"
467DE2:  ADD             R1, PC; MI_GASSTATION_ptr
467DE4:  ADD             R0, PC; "sw_gas01"
467DE6:  LDR             R1, [R1]; MI_GASSTATION ; char *
467DE8:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467DEC:  LDR.W           R1, =(MI_GRASSPLANT_ptr - 0x467DF8)
467DF0:  LDR.W           R0, =(aGrassplant - 0x467DFA); "grassplant"
467DF4:  ADD             R1, PC; MI_GRASSPLANT_ptr
467DF6:  ADD             R0, PC; "grassplant"
467DF8:  LDR             R1, [R1]; MI_GRASSPLANT ; char *
467DFA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467DFE:  LDR.W           R1, =(MI_CRANE_MAGNET_ptr - 0x467E0A)
467E02:  LDR.W           R0, =(aIndusMagnet - 0x467E0C); "INDUS_MAGNET"
467E06:  ADD             R1, PC; MI_CRANE_MAGNET_ptr
467E08:  ADD             R0, PC; "INDUS_MAGNET"
467E0A:  LDR             R1, [R1]; MI_CRANE_MAGNET ; char *
467E0C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467E10:  LDR.W           R1, =(MI_CRANE_HARNESS_ptr - 0x467E1C)
467E14:  LDR.W           R0, =(aCjPlayerHarnes - 0x467E1E); "CJ_PLAYER_HARNESS"
467E18:  ADD             R1, PC; MI_CRANE_HARNESS_ptr
467E1A:  ADD             R0, PC; "CJ_PLAYER_HARNESS"
467E1C:  LDR             R1, [R1]; MI_CRANE_HARNESS ; char *
467E1E:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467E22:  LDR.W           R1, =(MI_QUARY_ROCK1_ptr - 0x467E2E)
467E26:  LDR.W           R0, =(aDynQuarryrock0 - 0x467E30); "dyn_quarryrock01"
467E2A:  ADD             R1, PC; MI_QUARY_ROCK1_ptr
467E2C:  ADD             R0, PC; "dyn_quarryrock01"
467E2E:  LDR             R1, [R1]; MI_QUARY_ROCK1 ; char *
467E30:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467E34:  LDR.W           R1, =(MI_QUARY_ROCK2_ptr - 0x467E40)
467E38:  LDR.W           R0, =(aDynQuarryrock0_0 - 0x467E42); "dyn_quarryrock02"
467E3C:  ADD             R1, PC; MI_QUARY_ROCK2_ptr
467E3E:  ADD             R0, PC; "dyn_quarryrock02"
467E40:  LDR             R1, [R1]; MI_QUARY_ROCK2 ; char *
467E42:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467E46:  LDR.W           R1, =(MI_QUARY_ROCK3_ptr - 0x467E52)
467E4A:  LDR.W           R0, =(aDynQuarryrock0_1 - 0x467E54); "dyn_quarryrock03"
467E4E:  ADD             R1, PC; MI_QUARY_ROCK3_ptr
467E50:  ADD             R0, PC; "dyn_quarryrock03"
467E52:  LDR             R1, [R1]; MI_QUARY_ROCK3 ; char *
467E54:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467E58:  LDR.W           R1, =(MI_ATM_ptr - 0x467E64)
467E5C:  LDR.W           R0, =(aKmbAtm3 - 0x467E66); "KMB_ATM3"
467E60:  ADD             R1, PC; MI_ATM_ptr
467E62:  ADD             R0, PC; "KMB_ATM3"
467E64:  LDR             R1, [R1]; MI_ATM ; char *
467E66:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467E6A:  LDR.W           R1, =(MI_DEAD_TIED_COP_ptr - 0x467E76)
467E6E:  LDR.W           R0, =(aDeadTiedCop - 0x467E78); "dead_tied_cop"
467E72:  ADD             R1, PC; MI_DEAD_TIED_COP_ptr
467E74:  ADD             R0, PC; "dead_tied_cop"
467E76:  LDR             R1, [R1]; MI_DEAD_TIED_COP ; char *
467E78:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467E7C:  LDR.W           R1, =(MI_WINDSOCK_ptr - 0x467E88)
467E80:  LDR.W           R0, =(aBonyrdWindsock - 0x467E8A); "bonyrd_windsock"
467E84:  ADD             R1, PC; MI_WINDSOCK_ptr
467E86:  ADD             R0, PC; "bonyrd_windsock"
467E88:  LDR             R1, [R1]; MI_WINDSOCK ; char *
467E8A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467E8E:  LDR.W           R1, =(MI_WRECKING_BALL_ptr - 0x467E9A)
467E92:  LDR.W           R0, =(aDynWrekingBall - 0x467E9C); "DYN_WREKING_BALL"
467E96:  ADD             R1, PC; MI_WRECKING_BALL_ptr
467E98:  ADD             R0, PC; "DYN_WREKING_BALL"
467E9A:  LDR             R1, [R1]; MI_WRECKING_BALL ; char *
467E9C:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467EA0:  LDR.W           R1, =(MI_FREEFALL_BOMB_ptr - 0x467EAC)
467EA4:  LDR.W           R0, =(aWidgetVehicleB+0xF - 0x467EAE); "bomb"
467EA8:  ADD             R1, PC; MI_FREEFALL_BOMB_ptr
467EAA:  ADD             R0, PC; "bomb" ; this
467EAC:  LDR             R1, [R1]; MI_FREEFALL_BOMB ; char *
467EAE:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467EB2:  LDR.W           R1, =(MI_MINI_MAGNET_ptr - 0x467EBE)
467EB6:  LDR.W           R0, =(aMiniMagnet - 0x467EC0); "mini_magnet"
467EBA:  ADD             R1, PC; MI_MINI_MAGNET_ptr
467EBC:  ADD             R0, PC; "mini_magnet"
467EBE:  LDR             R1, [R1]; MI_MINI_MAGNET ; char *
467EC0:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467EC4:  LDR.W           R1, =(MI_HANGING_CARCASS_ptr - 0x467ED0)
467EC8:  LDR.W           R0, =(aAbCarcass - 0x467ED2); "ab_carcass"
467ECC:  ADD             R1, PC; MI_HANGING_CARCASS_ptr
467ECE:  ADD             R0, PC; "ab_carcass"
467ED0:  LDR             R1, [R1]; MI_HANGING_CARCASS ; char *
467ED2:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467ED6:  LDR.W           R1, =(MI_WONG_DISH_ptr - 0x467EE2)
467EDA:  LDR.W           R0, =(aWongDish - 0x467EE4); "wong_dish"
467EDE:  ADD             R1, PC; MI_WONG_DISH_ptr
467EE0:  ADD             R0, PC; "wong_dish"
467EE2:  LDR             R1, [R1]; MI_WONG_DISH ; char *
467EE4:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467EE8:  LDR.W           R1, =(MI_GANG_DRINK_ptr - 0x467EF4)
467EEC:  LDR.W           R0, =(aCjBearBottle - 0x467EF6); "CJ_BEAR_BOTTLE"
467EF0:  ADD             R1, PC; MI_GANG_DRINK_ptr
467EF2:  ADD             R0, PC; "CJ_BEAR_BOTTLE"
467EF4:  LDR             R1, [R1]; MI_GANG_DRINK ; char *
467EF6:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467EFA:  LDR.W           R0, =(MI_GANG_SMOKE_ptr - 0x467F02)
467EFE:  ADD             R0, PC; MI_GANG_SMOKE_ptr
467F00:  LDR             R1, [R0]; MI_GANG_SMOKE ; char *
467F02:  ADR.W           R0, aCjCiggy; "CJ_CIGGY"
467F06:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F0A:  LDR.W           R0, =(MI_TRAFFICLIGHTS_3_ptr - 0x467F12)
467F0E:  ADD             R0, PC; MI_TRAFFICLIGHTS_3_ptr
467F10:  LDR             R1, [R0]; MI_TRAFFICLIGHTS_3 ; char *
467F12:  ADR.W           R0, aCjTrafficLight; "CJ_TRAFFIC_LIGHT3"
467F16:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F1A:  LDR.W           R0, =(MI_TRAFFICLIGHTS_4_ptr - 0x467F22)
467F1E:  ADD             R0, PC; MI_TRAFFICLIGHTS_4_ptr
467F20:  LDR             R1, [R0]; MI_TRAFFICLIGHTS_4 ; char *
467F22:  ADR.W           R0, aCjTrafficLight_0; "CJ_TRAFFIC_LIGHT4"
467F26:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F2A:  LDR.W           R0, =(MI_TRAFFICLIGHTS_5_ptr - 0x467F32)
467F2E:  ADD             R0, PC; MI_TRAFFICLIGHTS_5_ptr
467F30:  LDR             R1, [R0]; MI_TRAFFICLIGHTS_5 ; char *
467F32:  ADR.W           R0, aCjTrafficLight_1; "CJ_TRAFFIC_LIGHT5"
467F36:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F3A:  LDR.W           R0, =(MI_TRAFFICLIGHTS_GAY_ptr - 0x467F42)
467F3E:  ADD             R0, PC; MI_TRAFFICLIGHTS_GAY_ptr
467F40:  LDR             R1, [R0]; MI_TRAFFICLIGHTS_GAY ; char *
467F42:  ADR.W           R0, aGayTrafficLigh; "GAY_TRAFFIC_LIGHT"
467F46:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F4A:  LDR.W           R0, =(MI_IMY_SHASH_WALL_ptr - 0x467F52)
467F4E:  ADD             R0, PC; MI_IMY_SHASH_WALL_ptr
467F50:  LDR             R1, [R0]; MI_IMY_SHASH_WALL ; char *
467F52:  ADR.W           R0, aImyShashWall; "imy_shash_wall"
467F56:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F5A:  LDR.W           R0, =(MI_FLARE_ptr - 0x467F62)
467F5E:  ADD             R0, PC; MI_FLARE_ptr
467F60:  LDR             R1, [R0]; MI_FLARE ; char *
467F62:  ADR.W           R0, aFlare; "flare"
467F66:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F6A:  LDR.W           R1, =(MI_HYDRAULICS_ptr - 0x467F76)
467F6E:  LDR.W           R0, =(aHydralics - 0x467F78); "hydralics"
467F72:  ADD             R1, PC; MI_HYDRAULICS_ptr
467F74:  ADD             R0, PC; "hydralics"
467F76:  LDR             R1, [R1]; MI_HYDRAULICS ; char *
467F78:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F7C:  LDR.W           R1, =(MI_STEREO_UPGRADE_ptr - 0x467F88)
467F80:  LDR.W           R0, =(aWideStereo+5 - 0x467F8A); "stereo"
467F84:  ADD             R1, PC; MI_STEREO_UPGRADE_ptr
467F86:  ADD             R0, PC; this
467F88:  LDR             R1, [R1]; MI_STEREO_UPGRADE ; char *
467F8A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F8E:  LDR.W           R0, =(MI_BASKETBALL_ptr - 0x467F96)
467F92:  ADD             R0, PC; MI_BASKETBALL_ptr
467F94:  LDR             R1, [R0]; MI_BASKETBALL ; char *
467F96:  ADR.W           R0, aBballCol; "BBALL_COL"
467F9A:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467F9E:  LDR.W           R0, =(MI_POOL_CUE_BALL_ptr - 0x467FA6)
467FA2:  ADD             R0, PC; MI_POOL_CUE_BALL_ptr
467FA4:  LDR             R1, [R0]; MI_POOL_CUE_BALL ; char *
467FA6:  ADR.W           R0, aKPoolballcue; "k_poolballcue"
467FAA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467FAE:  LDR.W           R0, =(MI_PUNCHBAG_ptr - 0x467FB6)
467FB2:  ADD             R0, PC; MI_PUNCHBAG_ptr
467FB4:  LDR             R1, [R0]; MI_PUNCHBAG ; char *
467FB6:  ADR.W           R0, aPunchbagnu; "punchbagnu"
467FBA:  BLX             j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; CModelInfo::GetModelInfoUInt16(char const*,ushort *)
467FBE:  LDR.W           R0, =(MI_IMY_GRAY_CRATE_ptr - 0x467FC6)
467FC2:  ADD             R0, PC; MI_IMY_GRAY_CRATE_ptr
467FC4:  LDR             R1, [R0]; MI_IMY_GRAY_CRATE ; char *
467FC6:  ADR.W           R0, aImyBbox; "imy_bbox"
467FCA:  POP.W           {R8}
467FCE:  POP.W           {R4-R7,LR}
467FD2:  B.W             j_j__ZN10CModelInfo18GetModelInfoUInt16EPKcPt; j_CModelInfo::GetModelInfoUInt16(char const*,ushort *)
