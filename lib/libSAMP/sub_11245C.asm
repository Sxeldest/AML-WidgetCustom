; =========================================================
; Game Engine Function: sub_11245C
; Address            : 0x11245C - 0x112810
; =========================================================

11245C:  PUSH            {R4-R7,LR}
11245E:  ADD             R7, SP, #0xC
112460:  PUSH.W          {R8-R11}
112464:  SUB             SP, SP, #0x2C
112466:  MOV             R4, R0
112468:  LDR             R0, =(_ZTVN7sigslot10connectionE - 0x112474); `vtable for'sigslot::connection ...
11246A:  MOVS            R6, #0
11246C:  MOV.W           R1, #0x7F0; n
112470:  ADD             R0, PC; `vtable for'sigslot::connection
112472:  STRD.W          R6, R6, [R4,#0x64]
112476:  ADD.W           R5, R0, #8
11247A:  ADD.W           R0, R4, #0x70 ; 'p'; int
11247E:  STR             R5, [R4,#0x6C]
112480:  STR             R5, [R4,#0x60]
112482:  STRD.W          R6, R6, [R4,#0x40]
112486:  STRD.W          R5, R6, [R4,#0x48]
11248A:  STRD.W          R6, R5, [R4,#0x50]
11248E:  STRD.W          R6, R6, [R4,#0x58]
112492:  STRD.W          R6, R5, [R4,#0x20]
112496:  STRD.W          R6, R6, [R4,#0x28]
11249A:  STRD.W          R5, R6, [R4,#0x30]
11249E:  STRD.W          R6, R5, [R4,#0x38]
1124A2:  STRD.W          R5, R6, [R4]
1124A6:  STRD.W          R6, R5, [R4,#8]
1124AA:  STRD.W          R6, R6, [R4,#0x10]
1124AE:  STRD.W          R5, R6, [R4,#0x18]
1124B2:  BLX             sub_22178C
1124B6:  LDR             R0, =(off_234B18 - 0x1124C6)
1124B8:  ADD.W           R10, SP, #0x48+var_2C
1124BC:  LDR             R3, =(unk_B4C34 - 0x1124CC)
1124BE:  SUB.W           R8, R7, #-var_39
1124C2:  ADD             R0, PC; off_234B18
1124C4:  STR.W           R8, [SP,#0x48+var_28]
1124C8:  ADD             R3, PC; unk_B4C34
1124CA:  LDR.W           R9, [R0]; dword_3142F8
1124CE:  MOVS            R0, #2
1124D0:  STRB.W          R0, [R7,#var_39]
1124D4:  ADD             R0, SP, #0x48+var_28
1124D6:  STRD.W          R0, R10, [SP,#0x48+var_48]
1124DA:  ADD             R0, SP, #0x48+var_24
1124DC:  MOV             R1, R9
1124DE:  MOV             R2, R8
1124E0:  BL              sub_11324C
1124E4:  LDR             R0, [SP,#0x48+var_24]
1124E6:  LDR             R1, =(sub_1129F4+1 - 0x1124EE)
1124E8:  STR             R6, [SP,#0x48+var_20]
1124EA:  ADD             R1, PC; sub_1129F4
1124EC:  STRD.W          R4, R1, [SP,#0x48+var_28]
1124F0:  ADD             R6, SP, #0x48+var_28
1124F2:  ADD.W           R1, R0, #0x14
1124F6:  ADD             R0, SP, #0x48+var_38
1124F8:  ADD             R2, SP, #0x48+var_24
1124FA:  MOV             R3, R6
1124FC:  BL              sub_1128A0
112500:  LDRD.W          R0, R1, [SP,#0x48+var_34]
112504:  STR             R0, [R4,#4]
112506:  LDR             R0, [R4,#8]; this
112508:  STR             R1, [R4,#8]
11250A:  MOVS            R1, #0
11250C:  STRD.W          R1, R1, [SP,#0x48+var_34]
112510:  CBZ             R0, loc_112520
112512:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112516:  LDR             R0, [SP,#0x48+var_30]; this
112518:  STR             R5, [SP,#0x48+var_38]
11251A:  CBZ             R0, loc_112520
11251C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112520:  LDR             R3, =(unk_B4C34 - 0x11252C)
112522:  MOVS            R0, #4
112524:  STRB.W          R0, [R7,#var_39]
112528:  ADD             R3, PC; unk_B4C34
11252A:  STR.W           R8, [SP,#0x48+var_28]
11252E:  ADD             R0, SP, #0x48+var_24
112530:  MOV             R1, R9
112532:  MOV             R2, R8
112534:  STRD.W          R6, R10, [SP,#0x48+var_48]
112538:  BL              sub_11324C
11253C:  LDR             R0, [SP,#0x48+var_24]
11253E:  MOVS            R6, #0
112540:  LDR             R1, =(sub_112A38+1 - 0x112548)
112542:  STR             R6, [SP,#0x48+var_20]
112544:  ADD             R1, PC; sub_112A38
112546:  STRD.W          R4, R1, [SP,#0x48+var_28]
11254A:  ADD.W           R11, SP, #0x48+var_28
11254E:  ADD.W           R1, R0, #0x14
112552:  ADD             R0, SP, #0x48+var_38
112554:  ADD             R2, SP, #0x48+var_24
112556:  MOV             R3, R11
112558:  BL              sub_1128A0
11255C:  LDRD.W          R0, R1, [SP,#0x48+var_34]
112560:  STR             R0, [R4,#0x10]
112562:  LDR             R0, [R4,#0x14]; this
112564:  STR             R1, [R4,#0x14]
112566:  STRD.W          R6, R6, [SP,#0x48+var_34]
11256A:  CBZ             R0, loc_11257A
11256C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112570:  LDR             R0, [SP,#0x48+var_30]; this
112572:  STR             R5, [SP,#0x48+var_38]
112574:  CBZ             R0, loc_11257A
112576:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11257A:  LDR             R3, =(unk_B4C34 - 0x112586)
11257C:  MOVS            R0, #5
11257E:  STRB.W          R0, [R7,#var_39]
112582:  ADD             R3, PC; unk_B4C34
112584:  STR.W           R8, [SP,#0x48+var_28]
112588:  ADD             R0, SP, #0x48+var_24
11258A:  MOV             R1, R9
11258C:  MOV             R2, R8
11258E:  STRD.W          R11, R10, [SP,#0x48+var_48]
112592:  BL              sub_11324C
112596:  LDR             R0, [SP,#0x48+var_24]
112598:  MOVS            R6, #0
11259A:  LDR             R1, =(sub_112B20+1 - 0x1125A2)
11259C:  STR             R6, [SP,#0x48+var_20]
11259E:  ADD             R1, PC; sub_112B20
1125A0:  STRD.W          R4, R1, [SP,#0x48+var_28]
1125A4:  ADD.W           R11, SP, #0x48+var_28
1125A8:  ADD.W           R1, R0, #0x14
1125AC:  ADD             R0, SP, #0x48+var_38
1125AE:  ADD             R2, SP, #0x48+var_24
1125B0:  MOV             R3, R11
1125B2:  BL              sub_1128A0
1125B6:  LDRD.W          R0, R1, [SP,#0x48+var_34]
1125BA:  STR             R0, [R4,#0x1C]
1125BC:  LDR             R0, [R4,#0x20]; this
1125BE:  STR             R1, [R4,#0x20]
1125C0:  STRD.W          R6, R6, [SP,#0x48+var_34]
1125C4:  CBZ             R0, loc_1125D4
1125C6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1125CA:  LDR             R0, [SP,#0x48+var_30]; this
1125CC:  STR             R5, [SP,#0x48+var_38]
1125CE:  CBZ             R0, loc_1125D4
1125D0:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1125D4:  LDR             R3, =(unk_B4C34 - 0x1125E0)
1125D6:  MOVS            R0, #6
1125D8:  STRB.W          R0, [R7,#var_39]
1125DC:  ADD             R3, PC; unk_B4C34
1125DE:  STR.W           R8, [SP,#0x48+var_28]
1125E2:  ADD             R0, SP, #0x48+var_24
1125E4:  MOV             R1, R9
1125E6:  MOV             R2, R8
1125E8:  STRD.W          R11, R10, [SP,#0x48+var_48]
1125EC:  BL              sub_11324C
1125F0:  LDR             R0, [SP,#0x48+var_24]
1125F2:  MOVS            R6, #0
1125F4:  LDR             R1, =(sub_112B40+1 - 0x1125FC)
1125F6:  STR             R6, [SP,#0x48+var_20]
1125F8:  ADD             R1, PC; sub_112B40
1125FA:  STRD.W          R4, R1, [SP,#0x48+var_28]
1125FE:  ADD.W           R11, SP, #0x48+var_28
112602:  ADD.W           R1, R0, #0x14
112606:  ADD             R0, SP, #0x48+var_38
112608:  ADD             R2, SP, #0x48+var_24
11260A:  MOV             R3, R11
11260C:  BL              sub_1128A0
112610:  LDRD.W          R0, R1, [SP,#0x48+var_34]
112614:  STR             R0, [R4,#0x28]
112616:  LDR             R0, [R4,#0x2C]; this
112618:  STR             R1, [R4,#0x2C]
11261A:  STRD.W          R6, R6, [SP,#0x48+var_34]
11261E:  CBZ             R0, loc_11262E
112620:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112624:  LDR             R0, [SP,#0x48+var_30]; this
112626:  STR             R5, [SP,#0x48+var_38]
112628:  CBZ             R0, loc_11262E
11262A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11262E:  LDR             R3, =(unk_B4C34 - 0x11263A)
112630:  MOVS            R0, #7
112632:  STRB.W          R0, [R7,#var_39]
112636:  ADD             R3, PC; unk_B4C34
112638:  STR.W           R8, [SP,#0x48+var_28]
11263C:  ADD             R0, SP, #0x48+var_24
11263E:  MOV             R1, R9
112640:  MOV             R2, R8
112642:  STRD.W          R11, R10, [SP,#0x48+var_48]
112646:  BL              sub_11324C
11264A:  LDR             R0, [SP,#0x48+var_24]
11264C:  MOVS            R6, #0
11264E:  LDR             R1, =(sub_112B70+1 - 0x112656)
112650:  STR             R6, [SP,#0x48+var_20]
112652:  ADD             R1, PC; sub_112B70
112654:  STRD.W          R4, R1, [SP,#0x48+var_28]
112658:  ADD.W           R11, SP, #0x48+var_28
11265C:  ADD.W           R1, R0, #0x14
112660:  ADD             R0, SP, #0x48+var_38
112662:  ADD             R2, SP, #0x48+var_24
112664:  MOV             R3, R11
112666:  BL              sub_1128A0
11266A:  LDRD.W          R0, R1, [SP,#0x48+var_34]
11266E:  STR             R0, [R4,#0x34]
112670:  LDR             R0, [R4,#0x38]; this
112672:  STR             R1, [R4,#0x38]
112674:  STRD.W          R6, R6, [SP,#0x48+var_34]
112678:  CBZ             R0, loc_112688
11267A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11267E:  LDR             R0, [SP,#0x48+var_30]; this
112680:  STR             R5, [SP,#0x48+var_38]
112682:  CBZ             R0, loc_112688
112684:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112688:  LDR             R3, =(unk_B4C34 - 0x112694)
11268A:  MOVS            R0, #0x28 ; '('
11268C:  STRB.W          R0, [R7,#var_39]
112690:  ADD             R3, PC; unk_B4C34
112692:  STR.W           R8, [SP,#0x48+var_28]
112696:  ADD             R0, SP, #0x48+var_24
112698:  MOV             R1, R9
11269A:  MOV             R2, R8
11269C:  STRD.W          R11, R10, [SP,#0x48+var_48]
1126A0:  BL              sub_11324C
1126A4:  LDR             R0, [SP,#0x48+var_24]
1126A6:  MOVS            R6, #0
1126A8:  LDR             R1, =(sub_112BB0+1 - 0x1126B0)
1126AA:  STR             R6, [SP,#0x48+var_20]
1126AC:  ADD             R1, PC; sub_112BB0
1126AE:  STRD.W          R4, R1, [SP,#0x48+var_28]
1126B2:  ADD.W           R11, SP, #0x48+var_28
1126B6:  ADD.W           R1, R0, #0x14
1126BA:  ADD             R0, SP, #0x48+var_38
1126BC:  ADD             R2, SP, #0x48+var_24
1126BE:  MOV             R3, R11
1126C0:  BL              sub_1128A0
1126C4:  LDRD.W          R0, R1, [SP,#0x48+var_34]
1126C8:  STR             R0, [R4,#0x40]
1126CA:  LDR             R0, [R4,#0x44]; this
1126CC:  STR             R1, [R4,#0x44]
1126CE:  STRD.W          R6, R6, [SP,#0x48+var_34]
1126D2:  CBZ             R0, loc_1126E2
1126D4:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1126D8:  LDR             R0, [SP,#0x48+var_30]; this
1126DA:  STR             R5, [SP,#0x48+var_38]
1126DC:  CBZ             R0, loc_1126E2
1126DE:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1126E2:  LDR             R3, =(unk_B4C34 - 0x1126EE)
1126E4:  MOVS            R0, #0x63 ; 'c'
1126E6:  STRB.W          R0, [R7,#var_39]
1126EA:  ADD             R3, PC; unk_B4C34
1126EC:  STR.W           R8, [SP,#0x48+var_28]
1126F0:  ADD             R0, SP, #0x48+var_24
1126F2:  MOV             R1, R9
1126F4:  MOV             R2, R8
1126F6:  STRD.W          R11, R10, [SP,#0x48+var_48]
1126FA:  BL              sub_11324C
1126FE:  LDR             R0, [SP,#0x48+var_24]
112700:  MOVS            R6, #0
112702:  LDR             R1, =(sub_112BE0+1 - 0x11270A)
112704:  STR             R6, [SP,#0x48+var_20]
112706:  ADD             R1, PC; sub_112BE0
112708:  STRD.W          R4, R1, [SP,#0x48+var_28]
11270C:  ADD.W           R11, SP, #0x48+var_28
112710:  ADD.W           R1, R0, #0x14
112714:  ADD             R0, SP, #0x48+var_38
112716:  ADD             R2, SP, #0x48+var_24
112718:  MOV             R3, R11
11271A:  BL              sub_1128A0
11271E:  LDRD.W          R0, R1, [SP,#0x48+var_34]
112722:  STR             R0, [R4,#0x4C]
112724:  LDR             R0, [R4,#0x50]; this
112726:  STR             R1, [R4,#0x50]
112728:  STRD.W          R6, R6, [SP,#0x48+var_34]
11272C:  CBZ             R0, loc_11273C
11272E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112732:  LDR             R0, [SP,#0x48+var_30]; this
112734:  STR             R5, [SP,#0x48+var_38]
112736:  CBZ             R0, loc_11273C
112738:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11273C:  LDR             R3, =(unk_B4C34 - 0x112748)
11273E:  MOVS            R0, #0x64 ; 'd'
112740:  STRB.W          R0, [R7,#var_39]
112744:  ADD             R3, PC; unk_B4C34
112746:  STR.W           R8, [SP,#0x48+var_28]
11274A:  ADD             R0, SP, #0x48+var_24
11274C:  MOV             R1, R9
11274E:  MOV             R2, R8
112750:  STRD.W          R11, R10, [SP,#0x48+var_48]
112754:  BL              sub_11324C
112758:  LDR             R0, [SP,#0x48+var_24]
11275A:  MOVS            R6, #0
11275C:  LDR             R1, =(sub_112BE8+1 - 0x112764)
11275E:  STR             R6, [SP,#0x48+var_20]
112760:  ADD             R1, PC; sub_112BE8
112762:  STRD.W          R4, R1, [SP,#0x48+var_28]
112766:  ADD.W           R1, R0, #0x14
11276A:  ADD             R0, SP, #0x48+var_38
11276C:  ADD             R2, SP, #0x48+var_24
11276E:  ADD             R3, SP, #0x48+var_28
112770:  BL              sub_1128A0
112774:  LDRD.W          R0, R1, [SP,#0x48+var_34]
112778:  STR             R0, [R4,#0x58]
11277A:  LDR             R0, [R4,#0x5C]; this
11277C:  STR             R1, [R4,#0x5C]
11277E:  STRD.W          R6, R6, [SP,#0x48+var_34]
112782:  CBZ             R0, loc_112792
112784:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112788:  LDR             R0, [SP,#0x48+var_30]; this
11278A:  STR             R5, [SP,#0x48+var_38]
11278C:  CBZ             R0, loc_112792
11278E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112792:  LDR             R3, =(sub_112D48+1 - 0x11279E)
112794:  ADD             R0, SP, #0x48+var_38
112796:  LDR             R1, =(off_234A84 - 0x1127A2)
112798:  MOVS            R6, #0
11279A:  ADD             R3, PC; sub_112D48
11279C:  STR             R6, [SP,#0x48+var_20]
11279E:  ADD             R1, PC; off_234A84
1127A0:  ADD             R2, SP, #0x48+var_24
1127A2:  STRD.W          R4, R3, [SP,#0x48+var_28]
1127A6:  LDR             R1, [R1]; dword_2473B0
1127A8:  ADD             R3, SP, #0x48+var_28
1127AA:  BL              sub_112BF4
1127AE:  LDRD.W          R0, R1, [SP,#0x48+var_34]
1127B2:  STR             R0, [R4,#0x64]
1127B4:  LDR             R0, [R4,#0x68]; this
1127B6:  STR             R1, [R4,#0x68]
1127B8:  STRD.W          R6, R6, [SP,#0x48+var_34]
1127BC:  CBZ             R0, loc_1127CC
1127BE:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1127C2:  LDR             R0, [SP,#0x48+var_30]; this
1127C4:  STR             R5, [SP,#0x48+var_38]
1127C6:  CBZ             R0, loc_1127CC
1127C8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1127CC:  LDR             R3, =(sub_1130B8+1 - 0x1127D8)
1127CE:  ADD             R0, SP, #0x48+var_38
1127D0:  LDR             R1, =(off_234AA4 - 0x1127DC)
1127D2:  MOVS            R6, #0
1127D4:  ADD             R3, PC; sub_1130B8
1127D6:  STR             R6, [SP,#0x48+var_20]
1127D8:  ADD             R1, PC; off_234AA4
1127DA:  ADD             R2, SP, #0x48+var_24
1127DC:  STRD.W          R4, R3, [SP,#0x48+var_28]
1127E0:  LDR             R1, [R1]; dword_2473C8
1127E2:  ADD             R3, SP, #0x48+var_28
1127E4:  BL              sub_112F64
1127E8:  LDRD.W          R0, R1, [SP,#0x48+var_34]
1127EC:  STR             R0, [R4,#0x70]
1127EE:  LDR             R0, [R4,#0x74]; this
1127F0:  STR             R1, [R4,#0x74]
1127F2:  STRD.W          R6, R6, [SP,#0x48+var_34]
1127F6:  CBZ             R0, loc_112806
1127F8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1127FC:  LDR             R0, [SP,#0x48+var_30]; this
1127FE:  STR             R5, [SP,#0x48+var_38]
112800:  CBZ             R0, loc_112806
112802:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112806:  MOV             R0, R4
112808:  ADD             SP, SP, #0x2C ; ','
11280A:  POP.W           {R8-R11}
11280E:  POP             {R4-R7,PC}
