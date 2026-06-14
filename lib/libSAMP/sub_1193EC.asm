; =========================================================
; Game Engine Function: sub_1193EC
; Address            : 0x1193EC - 0x119ADA
; =========================================================

1193EC:  PUSH            {R4-R7,LR}
1193EE:  ADD             R7, SP, #0xC
1193F0:  PUSH.W          {R8-R11}
1193F4:  SUB             SP, SP, #0x14C
1193F6:  MOVS            R1, #0x50 ; 'P'; n
1193F8:  MOV             R8, R0
1193FA:  BLX             sub_22178C
1193FE:  LDR             R0, =(off_234B30 - 0x119404)
119400:  ADD             R0, PC; off_234B30
119402:  LDR             R0, [R0]; dword_238E8C
119404:  LDR             R0, [R0]
119406:  CMP             R0, #2
119408:  BNE.W           loc_119AD0
11940C:  LDR             R1, =(aAxl - 0x119418); "AXL" ...
11940E:  ADD.W           R4, R8, #0x40 ; '@'
119412:  LDR             R2, =(aEnableModloade - 0x11941A); "Enable modloader for models" ...
119414:  ADD             R1, PC; "AXL"
119416:  ADD             R2, PC; "Enable modloader for models"
119418:  MOVS            R0, #3; prio
11941A:  STR             R4, [SP,#0x168+var_168]
11941C:  BLX             __android_log_print
119420:  MOV             R0, #unk_73A5C; unsigned int
119428:  BLX             j__Znwj; operator new(uint)
11942C:  MOV             R5, R0
11942E:  ADD.W           R0, R8, #0x24 ; '$'
119432:  STR             R0, [SP,#0x168+var_148]
119434:  ADD.W           R0, R8, #0x20 ; ' '
119438:  STR             R0, [SP,#0x168+var_164]
11943A:  ADD.W           R0, R8, #0x1C
11943E:  STR             R0, [SP,#0x168+var_160]
119440:  ADD.W           R0, R8, #0x18
119444:  STR             R0, [SP,#0x168+var_158]
119446:  ADD.W           R0, R8, #0x10
11944A:  STR             R0, [SP,#0x168+var_154]
11944C:  ADD.W           R0, R8, #0xC
119450:  MOVW            R1, #:lower16:unk_73A5C
119454:  STR             R0, [SP,#0x168+var_150]
119456:  ADD.W           R0, R8, #8
11945A:  STR             R0, [SP,#0x168+var_14C]
11945C:  MOVT            R1, #:upper16:unk_73A5C; n
119460:  MOV             R0, R5; int
119462:  ADD.W           R9, R8, #0x14
119466:  ADD.W           R11, R8, #4
11946A:  BLX             sub_22178C
11946E:  MOVW            R0, #:lower16:(aPthreadCondTim+0x11); "dwait"
119472:  MOVW            R1, #:lower16:stru_4D18C.r_info
119476:  MOVT            R0, #:upper16:(aPthreadCondTim+0x11); "dwait"
11947A:  MOVT            R1, #:upper16:stru_4D18C.r_info
11947E:  MOVS            R2, #0
119480:  ADDS            R3, R5, R1
119482:  STR             R2, [R5,R1]
119484:  ADDS            R1, #6
119486:  SUBS            R0, #6
119488:  STRB            R2, [R3,#4]
11948A:  BNE             loc_119480
11948C:  LDR             R1, [R4]
11948E:  STR             R5, [R4]
119490:  CBZ             R1, loc_119498
119492:  MOV             R0, R4
119494:  BL              sub_11A8A4
119498:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_0NS_9allocatorIS4_EEFvPKciEEE - 0x1194A2); `vtable for'std::__function::__func<modloader::models::models(void)::$_0,std::allocator<modloader::models::models(void)::$_0>,void ()(char const*,int)> ...
11949A:  ADD             R4, SP, #0x168+var_68
11949C:  STR             R4, [SP,#0x168+var_58]
11949E:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_0,std::allocator<modloader::models::models(void)::$_0>,void ()(char const*,int)>
1194A0:  STR.W           R8, [SP,#0x168+var_64]
1194A4:  ADDS            R0, #8
1194A6:  STR             R0, [SP,#0x168+var_68]
1194A8:  BL              sub_11A8E8
1194AC:  LDR             R0, =(unk_263530 - 0x1194B2)
1194AE:  ADD             R0, PC; unk_263530
1194B0:  LDR             R6, [R0,#(dword_263540 - 0x263530)]
1194B2:  CBNZ            R6, loc_1194E4
1194B4:  ADD             R5, SP, #0x168+var_68
1194B6:  ADD             R0, SP, #0x168+var_38
1194B8:  MOV             R1, R5
1194BA:  BL              sub_11A940
1194BE:  BL              sub_11A8E8
1194C2:  LDR             R0, =(unk_263530 - 0x1194C8)
1194C4:  ADD             R0, PC; unk_263530
1194C6:  ADD             R5, SP, #0x168+var_38
1194C8:  MOV             R1, R5
1194CA:  BL              sub_11A96C
1194CE:  LDR             R0, [SP,#0x168+var_28]
1194D0:  CMP             R5, R0
1194D2:  BEQ             loc_1194DA
1194D4:  CBZ             R0, loc_1194E4
1194D6:  MOVS            R1, #5
1194D8:  B               loc_1194DC
1194DA:  MOVS            R1, #4
1194DC:  LDR             R2, [R0]
1194DE:  LDR.W           R1, [R2,R1,LSL#2]
1194E2:  BLX             R1
1194E4:  LDR             R0, [SP,#0x168+var_58]
1194E6:  CMP             R4, R0
1194E8:  BEQ             loc_1194F0
1194EA:  CBZ             R0, loc_1194FA
1194EC:  MOVS            R1, #5
1194EE:  B               loc_1194F2
1194F0:  MOVS            R1, #4
1194F2:  LDR             R2, [R0]
1194F4:  LDR.W           R1, [R2,R1,LSL#2]
1194F8:  BLX             R1
1194FA:  STR.W           R9, [SP,#0x168+var_15C]
1194FE:  LDR             R4, =(off_23494C - 0x119504)
119500:  ADD             R4, PC; off_23494C
119502:  CBZ             R6, loc_119514
119504:  LDR             R1, =(aAxl - 0x11950C); "AXL" ...
119506:  LDR             R2, =(aModloaderCanTH - 0x11950E); "modloader: Can't hook load_cd_directory"... ...
119508:  ADD             R1, PC; "AXL"
11950A:  ADD             R2, PC; "modloader: Can't hook load_cd_directory"...
11950C:  MOVS            R0, #5; prio
11950E:  BLX             __android_log_print
119512:  B               loc_119530
119514:  LDR             R0, [R4]; dword_23DF24
119516:  MOV             R2, #0x66E72C
11951E:  LDR             R0, [R0]
119520:  LDR             R1, =(sub_119C28+1 - 0x119528)
119522:  ADD             R0, R2
119524:  ADD             R1, PC; sub_119C28
119526:  ADD.W           R0, R0, #0x140
11952A:  MOV             R2, R8
11952C:  BL              sub_164196
119530:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_1NS_9allocatorIS4_EEFvP14CStreamingInfojjEEE - 0x11953C); `vtable for'std::__function::__func<modloader::models::models(void)::$_1,std::allocator<modloader::models::models(void)::$_1>,void ()(CStreamingInfo *,uint,uint)> ...
119532:  MOV             R9, R4
119534:  ADD             R4, SP, #0x168+var_80
119536:  STR             R4, [SP,#0x168+var_70]
119538:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_1,std::allocator<modloader::models::models(void)::$_1>,void ()(CStreamingInfo *,uint,uint)>
11953A:  STR.W           R8, [SP,#0x168+var_7C]
11953E:  ADDS            R0, #8
119540:  STR             R0, [SP,#0x168+var_80]
119542:  BL              sub_11AA44
119546:  LDR             R0, =(unk_263550 - 0x11954C)
119548:  ADD             R0, PC; unk_263550
11954A:  LDR             R6, [R0,#(dword_263560 - 0x263550)]
11954C:  CBNZ            R6, loc_11957E
11954E:  ADD             R5, SP, #0x168+var_80
119550:  ADD             R0, SP, #0x168+var_38
119552:  MOV             R1, R5
119554:  BL              sub_11AA9C
119558:  BL              sub_11AA44
11955C:  LDR             R0, =(unk_263550 - 0x119562)
11955E:  ADD             R0, PC; unk_263550
119560:  ADD             R5, SP, #0x168+var_38
119562:  MOV             R1, R5
119564:  BL              sub_11AAC8
119568:  LDR             R0, [SP,#0x168+var_28]
11956A:  CMP             R5, R0
11956C:  BEQ             loc_119574
11956E:  CBZ             R0, loc_11957E
119570:  MOVS            R1, #5
119572:  B               loc_119576
119574:  MOVS            R1, #4
119576:  LDR             R2, [R0]
119578:  LDR.W           R1, [R2,R1,LSL#2]
11957C:  BLX             R1
11957E:  LDR             R0, [SP,#0x168+var_70]
119580:  CMP             R4, R0
119582:  BEQ             loc_11958A
119584:  CBZ             R0, loc_119594
119586:  MOVS            R1, #5
119588:  B               loc_11958C
11958A:  MOVS            R1, #4
11958C:  LDR             R2, [R0]
11958E:  LDR.W           R1, [R2,R1,LSL#2]
119592:  BLX             R1
119594:  MOVS            R4, #0x6700D0
11959A:  CBZ             R6, loc_1195AC
11959C:  LDR             R1, =(aAxl - 0x1195A4); "AXL" ...
11959E:  LDR             R2, =(aModloaderCanTH_0 - 0x1195A6); "modloader: Can't hook set_cd_posn_and_s"... ...
1195A0:  ADD             R1, PC; "AXL"
1195A2:  ADD             R2, PC; "modloader: Can't hook set_cd_posn_and_s"...
1195A4:  MOVS            R0, #5; prio
1195A6:  BLX             __android_log_print
1195AA:  B               loc_1195C2
1195AC:  LDR.W           R0, [R9]; dword_23DF24
1195B0:  LDR             R0, [R0]
1195B2:  LDR             R1, =(sub_119C48+1 - 0x1195BA)
1195B4:  ADD             R0, R4
1195B6:  ADD             R1, PC; sub_119C48
1195B8:  ADD.W           R0, R0, #0x450
1195BC:  MOV             R2, R11
1195BE:  BL              sub_164196
1195C2:  LDR.W           R0, [R9]; dword_23DF24
1195C6:  STR             R0, [SP,#0x168+var_144]
1195C8:  LDR.W           R10, [R0]
1195CC:  LDR             R1, =(sub_119C74+1 - 0x1195D2)
1195CE:  ADD             R1, PC; sub_119C74
1195D0:  ADD             R0, SP, #0x168+var_98
1195D2:  MOVS            R2, #0
1195D4:  MOV             R3, R8
1195D6:  BL              sub_119C88
1195DA:  ADD             R5, SP, #0x168+var_50
1195DC:  ADD.W           R11, SP, #0x168+var_98
1195E0:  MOV             R0, R5
1195E2:  MOV             R1, R11
1195E4:  BL              sub_10CD74
1195E8:  BL              sub_11ABD0
1195EC:  LDR             R0, =(unk_263570 - 0x1195F2)
1195EE:  ADD             R0, PC; unk_263570
1195F0:  LDR.W           R9, [R0,#(dword_263580 - 0x263570)]
1195F4:  CMP.W           R9, #0
1195F8:  BNE             loc_11962A
1195FA:  ADD             R6, SP, #0x168+var_50
1195FC:  ADD             R0, SP, #0x168+var_38
1195FE:  MOV             R1, R6
119600:  BL              sub_10CD74
119604:  BL              sub_11ABD0
119608:  LDR             R0, =(unk_263570 - 0x11960E)
11960A:  ADD             R0, PC; unk_263570
11960C:  ADD             R6, SP, #0x168+var_38
11960E:  MOV             R1, R6
119610:  BL              sub_10CDA0
119614:  LDR             R0, [SP,#0x168+var_28]
119616:  CMP             R6, R0
119618:  BEQ             loc_119620
11961A:  CBZ             R0, loc_11962A
11961C:  MOVS            R1, #5
11961E:  B               loc_119622
119620:  MOVS            R1, #4
119622:  LDR             R2, [R0]
119624:  LDR.W           R1, [R2,R1,LSL#2]
119628:  BLX             R1
11962A:  LDR             R0, [SP,#0x168+var_40]
11962C:  CMP             R5, R0
11962E:  BEQ             loc_119636
119630:  CBZ             R0, loc_119640
119632:  MOVS            R1, #5
119634:  B               loc_119638
119636:  MOVS            R1, #4
119638:  LDR             R2, [R0]
11963A:  LDR.W           R1, [R2,R1,LSL#2]
11963E:  BLX             R1
119640:  CMP.W           R9, #0
119644:  BNE             loc_119654
119646:  LDR             R1, =(sub_11ABAC+1 - 0x119650)
119648:  ADD.W           R0, R10, R4
11964C:  ADD             R1, PC; sub_11ABAC
11964E:  LDR             R2, [SP,#0x168+var_148]
119650:  BL              sub_164196
119654:  LDR             R0, [SP,#0x168+var_88]
119656:  CMP             R11, R0
119658:  BEQ             loc_119660
11965A:  CBZ             R0, loc_11966A
11965C:  MOVS            R1, #5
11965E:  B               loc_119662
119660:  MOVS            R1, #4
119662:  LDR             R2, [R0]
119664:  LDR.W           R1, [R2,R1,LSL#2]
119668:  BLX             R1
11966A:  CMP.W           R9, #0
11966E:  MOV             R9, R4
119670:  BEQ             loc_119680
119672:  LDR             R1, =(aAxl - 0x11967A); "AXL" ...
119674:  LDR             R2, =(aModloaderCanTH_1 - 0x11967C); "modloader: Can't hook init2, because wr"... ...
119676:  ADD             R1, PC; "AXL"
119678:  ADD             R2, PC; "modloader: Can't hook init2, because wr"...
11967A:  MOVS            R0, #5; prio
11967C:  BLX             __android_log_print
119680:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_2NS_9allocatorIS4_EEFvP21CModelInfoAcceleratorPP14CBaseModelInfoPiPcEEE - 0x11968A); `vtable for'std::__function::__func<modloader::models::models(void)::$_2,std::allocator<modloader::models::models(void)::$_2>,void ()(CModelInfoAccelerator *,CBaseModelInfo **,int *,char *)> ...
119682:  ADD             R4, SP, #0x168+var_B0
119684:  STR             R4, [SP,#0x168+var_A0]
119686:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_2,std::allocator<modloader::models::models(void)::$_2>,void ()(CModelInfoAccelerator *,CBaseModelInfo **,int *,char *)>
119688:  STR.W           R8, [SP,#0x168+var_AC]
11968C:  ADDS            R0, #8
11968E:  STR             R0, [SP,#0x168+var_B0]
119690:  BL              sub_11ACF8
119694:  LDR             R0, =(unk_263590 - 0x11969A)
119696:  ADD             R0, PC; unk_263590
119698:  LDR             R6, [R0,#(dword_2635A0 - 0x263590)]
11969A:  CBNZ            R6, loc_1196CC
11969C:  ADD             R5, SP, #0x168+var_B0
11969E:  ADD             R0, SP, #0x168+var_38
1196A0:  MOV             R1, R5
1196A2:  BL              sub_11AD50
1196A6:  BL              sub_11ACF8
1196AA:  LDR             R0, =(unk_263590 - 0x1196B0)
1196AC:  ADD             R0, PC; unk_263590
1196AE:  ADD             R5, SP, #0x168+var_38
1196B0:  MOV             R1, R5
1196B2:  BL              sub_11AD7C
1196B6:  LDR             R0, [SP,#0x168+var_28]
1196B8:  CMP             R5, R0
1196BA:  BEQ             loc_1196C2
1196BC:  CBZ             R0, loc_1196CC
1196BE:  MOVS            R1, #5
1196C0:  B               loc_1196C4
1196C2:  MOVS            R1, #4
1196C4:  LDR             R2, [R0]
1196C6:  LDR.W           R1, [R2,R1,LSL#2]
1196CA:  BLX             R1
1196CC:  LDR             R0, [SP,#0x168+var_A0]
1196CE:  CMP             R4, R0
1196D0:  BEQ             loc_1196D8
1196D2:  CBZ             R0, loc_1196E2
1196D4:  MOVS            R1, #5
1196D6:  B               loc_1196DA
1196D8:  MOVS            R1, #4
1196DA:  LDR             R2, [R0]
1196DC:  LDR.W           R1, [R2,R1,LSL#2]
1196E0:  BLX             R1
1196E2:  CBZ             R6, loc_1196F4
1196E4:  LDR             R1, =(aAxl - 0x1196EC); "AXL" ...
1196E6:  LDR             R2, =(aModloaderCanTH_2 - 0x1196EE); "modloader: Can't hook get_entry, becaus"... ...
1196E8:  ADD             R1, PC; "AXL"
1196EA:  ADD             R2, PC; "modloader: Can't hook get_entry, becaus"...
1196EC:  MOVS            R0, #5; prio
1196EE:  BLX             __android_log_print
1196F2:  B               loc_119708
1196F4:  LDR             R0, [SP,#0x168+var_144]
1196F6:  LDR             R0, [R0]
1196F8:  LDR             R1, =(sub_119CC4+1 - 0x119700)
1196FA:  ADD             R0, R9
1196FC:  ADD             R1, PC; sub_119CC4
1196FE:  ADD.W           R0, R0, #0x3000
119702:  LDR             R2, [SP,#0x168+var_14C]
119704:  BL              sub_164196
119708:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_3NS_9allocatorIS4_EEFiPcEEE - 0x119712); `vtable for'std::__function::__func<modloader::models::models(void)::$_3,std::allocator<modloader::models::models(void)::$_3>,int ()(char *)> ...
11970A:  ADD             R4, SP, #0x168+var_C8
11970C:  STR             R4, [SP,#0x168+var_B8]
11970E:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_3,std::allocator<modloader::models::models(void)::$_3>,int ()(char *)>
119710:  STR.W           R8, [SP,#0x168+var_C4]
119714:  ADDS            R0, #8
119716:  STR             R0, [SP,#0x168+var_C8]
119718:  BL              sub_11AE8C
11971C:  LDR             R0, =(unk_2635B0 - 0x119722)
11971E:  ADD             R0, PC; unk_2635B0
119720:  LDR             R6, [R0,#(dword_2635C0 - 0x2635B0)]
119722:  CBNZ            R6, loc_119754
119724:  ADD             R5, SP, #0x168+var_C8
119726:  ADD             R0, SP, #0x168+var_38
119728:  MOV             R1, R5
11972A:  BL              sub_11AEE4
11972E:  BL              sub_11AE8C
119732:  LDR             R0, =(unk_2635B0 - 0x119738)
119734:  ADD             R0, PC; unk_2635B0
119736:  ADD             R5, SP, #0x168+var_38
119738:  MOV             R1, R5
11973A:  BL              sub_11AF10
11973E:  LDR             R0, [SP,#0x168+var_28]
119740:  CMP             R5, R0
119742:  BEQ             loc_11974A
119744:  CBZ             R0, loc_119754
119746:  MOVS            R1, #5
119748:  B               loc_11974C
11974A:  MOVS            R1, #4
11974C:  LDR             R2, [R0]
11974E:  LDR.W           R1, [R2,R1,LSL#2]
119752:  BLX             R1
119754:  LDR             R0, [SP,#0x168+var_B8]
119756:  CMP             R4, R0
119758:  BEQ             loc_1197E0
11975A:  CMP             R0, #0
11975C:  BEQ             loc_1197EA
11975E:  MOVS            R1, #5
119760:  B               loc_1197E2
119762:  ALIGN 4
119764:  DCD off_234B30 - 0x119404
119768:  DCD aAxl - 0x119418
11976C:  DCD aEnableModloade - 0x11941A
119770:  DCD _ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_0NS_9allocatorIS4_EEFvPKciEEE - 0x1194A2
119774:  DCD unk_263530 - 0x1194B2
119778:  DCD unk_263530 - 0x1194C8
11977C:  DCD off_23494C - 0x119504
119780:  DCD aAxl - 0x11950C
119784:  DCD aModloaderCanTH - 0x11950E
119788:  DCD sub_119C28+1 - 0x119528
11978C:  DCD _ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_1NS_9allocatorIS4_EEFvP14CStreamingInfojjEEE - 0x11953C
119790:  DCD unk_263550 - 0x11954C
119794:  DCD unk_263550 - 0x119562
119798:  DCD aAxl - 0x1195A4
11979C:  DCD aModloaderCanTH_0 - 0x1195A6
1197A0:  DCD sub_119C48+1 - 0x1195BA
1197A4:  DCD sub_119C74+1 - 0x1195D2
1197A8:  DCD unk_263570 - 0x1195F2
1197AC:  DCD unk_263570 - 0x11960E
1197B0:  DCD sub_11ABAC+1 - 0x119650
1197B4:  DCD aAxl - 0x11967A
1197B8:  DCD aModloaderCanTH_1 - 0x11967C
1197BC:  DCD _ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_2NS_9allocatorIS4_EEFvP21CModelInfoAcceleratorPP14CBaseModelInfoPiPcEEE - 0x11968A
1197C0:  DCD unk_263590 - 0x11969A
1197C4:  DCD unk_263590 - 0x1196B0
1197C8:  DCD aAxl - 0x1196EC
1197CC:  DCD aModloaderCanTH_2 - 0x1196EE
1197D0:  DCD sub_119CC4+1 - 0x119700
1197D4:  DCD _ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_3NS_9allocatorIS4_EEFiPcEEE - 0x119712
1197D8:  DCD unk_2635B0 - 0x119722
1197DC:  DCD unk_2635B0 - 0x119738
1197E0:  MOVS            R1, #4
1197E2:  LDR             R2, [R0]
1197E4:  LDR.W           R1, [R2,R1,LSL#2]
1197E8:  BLX             R1
1197EA:  CBZ             R6, loc_1197FC
1197EC:  LDR             R1, =(aAxl - 0x1197F4); "AXL" ...
1197EE:  LDR             R2, =(aModloaderCanTH_3 - 0x1197F6); "modloader: Can't hook find_col_slot, be"... ...
1197F0:  ADD             R1, PC; "AXL"
1197F2:  ADD             R2, PC; "modloader: Can't hook find_col_slot, be"...
1197F4:  MOVS            R0, #5; prio
1197F6:  BLX             __android_log_print
1197FA:  B               loc_119814
1197FC:  LDR             R0, [SP,#0x168+var_144]
1197FE:  MOV             R2, #0x66E72C
119806:  LDR             R0, [R0]
119808:  LDR             R1, =(sub_119CF8+1 - 0x119810)
11980A:  ADD             R0, R2
11980C:  ADD             R1, PC; sub_119CF8
11980E:  LDR             R2, [SP,#0x168+var_150]
119810:  BL              sub_164196
119814:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_4NS_9allocatorIS4_EEFiPcEEE - 0x11981E); `vtable for'std::__function::__func<modloader::models::models(void)::$_4,std::allocator<modloader::models::models(void)::$_4>,int ()(char *)> ...
119816:  ADD             R4, SP, #0x168+var_E0
119818:  STR             R4, [SP,#0x168+var_D0]
11981A:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_4,std::allocator<modloader::models::models(void)::$_4>,int ()(char *)>
11981C:  STR.W           R8, [SP,#0x168+var_DC]
119820:  ADDS            R0, #8
119822:  STR             R0, [SP,#0x168+var_E0]
119824:  BL              sub_11AFD8
119828:  LDR             R0, =(unk_2635D0 - 0x11982E)
11982A:  ADD             R0, PC; unk_2635D0
11982C:  LDR             R6, [R0,#(dword_2635E0 - 0x2635D0)]
11982E:  CBNZ            R6, loc_119860
119830:  ADD             R5, SP, #0x168+var_E0
119832:  ADD             R0, SP, #0x168+var_38
119834:  MOV             R1, R5
119836:  BL              sub_11AEE4
11983A:  BL              sub_11AFD8
11983E:  LDR             R0, =(unk_2635D0 - 0x119844)
119840:  ADD             R0, PC; unk_2635D0
119842:  ADD             R5, SP, #0x168+var_38
119844:  MOV             R1, R5
119846:  BL              sub_11AF10
11984A:  LDR             R0, [SP,#0x168+var_28]
11984C:  CMP             R5, R0
11984E:  BEQ             loc_119856
119850:  CBZ             R0, loc_119860
119852:  MOVS            R1, #5
119854:  B               loc_119858
119856:  MOVS            R1, #4
119858:  LDR             R2, [R0]
11985A:  LDR.W           R1, [R2,R1,LSL#2]
11985E:  BLX             R1
119860:  LDR             R0, [SP,#0x168+var_D0]
119862:  CMP             R4, R0
119864:  BEQ             loc_11986C
119866:  CBZ             R0, loc_119876
119868:  MOVS            R1, #5
11986A:  B               loc_11986E
11986C:  MOVS            R1, #4
11986E:  LDR             R2, [R0]
119870:  LDR.W           R1, [R2,R1,LSL#2]
119874:  BLX             R1
119876:  CBZ             R6, loc_119888
119878:  LDR             R1, =(aAxl - 0x119880); "AXL" ...
11987A:  LDR             R2, =(aModloaderCanTH_4 - 0x119882); "modloader: Can't hook find_ipl_slot, be"... ...
11987C:  ADD             R1, PC; "AXL"
11987E:  ADD             R2, PC; "modloader: Can't hook find_ipl_slot, be"...
119880:  MOVS            R0, #5; prio
119882:  BLX             __android_log_print
119886:  B               loc_1198A4
119888:  LDR             R0, [SP,#0x168+var_144]
11988A:  MOV             R2, #0x674840
119892:  LDR             R0, [R0]
119894:  LDR             R1, =(sub_119D24+1 - 0x11989C)
119896:  ADD             R0, R2
119898:  ADD             R1, PC; sub_119D24
11989A:  ADD.W           R0, R0, #0xB10
11989E:  LDR             R2, [SP,#0x168+var_154]
1198A0:  BL              sub_164196
1198A4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_5NS_9allocatorIS4_EEFiPcEEE - 0x1198AE); `vtable for'std::__function::__func<modloader::models::models(void)::$_5,std::allocator<modloader::models::models(void)::$_5>,int ()(char *)> ...
1198A6:  ADD             R4, SP, #0x168+var_F8
1198A8:  STR             R4, [SP,#0x168+var_E8]
1198AA:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_5,std::allocator<modloader::models::models(void)::$_5>,int ()(char *)>
1198AC:  STR.W           R8, [SP,#0x168+var_F4]
1198B0:  ADDS            R0, #8
1198B2:  STR             R0, [SP,#0x168+var_F8]
1198B4:  BL              sub_11B0AC
1198B8:  LDR             R0, =(unk_2635F0 - 0x1198BE)
1198BA:  ADD             R0, PC; unk_2635F0
1198BC:  LDR             R6, [R0,#(dword_263600 - 0x2635F0)]
1198BE:  CBNZ            R6, loc_1198F0
1198C0:  ADD             R5, SP, #0x168+var_F8
1198C2:  ADD             R0, SP, #0x168+var_38
1198C4:  MOV             R1, R5
1198C6:  BL              sub_11AEE4
1198CA:  BL              sub_11B0AC
1198CE:  LDR             R0, =(unk_2635F0 - 0x1198D4)
1198D0:  ADD             R0, PC; unk_2635F0
1198D2:  ADD             R5, SP, #0x168+var_38
1198D4:  MOV             R1, R5
1198D6:  BL              sub_11AF10
1198DA:  LDR             R0, [SP,#0x168+var_28]
1198DC:  CMP             R5, R0
1198DE:  BEQ             loc_1198E6
1198E0:  CBZ             R0, loc_1198F0
1198E2:  MOVS            R1, #5
1198E4:  B               loc_1198E8
1198E6:  MOVS            R1, #4
1198E8:  LDR             R2, [R0]
1198EA:  LDR.W           R1, [R2,R1,LSL#2]
1198EE:  BLX             R1
1198F0:  LDR             R0, [SP,#0x168+var_E8]
1198F2:  CMP             R4, R0
1198F4:  BEQ             loc_1198FC
1198F6:  CBZ             R0, loc_119906
1198F8:  MOVS            R1, #5
1198FA:  B               loc_1198FE
1198FC:  MOVS            R1, #4
1198FE:  LDR             R2, [R0]
119900:  LDR.W           R1, [R2,R1,LSL#2]
119904:  BLX             R1
119906:  CBZ             R6, loc_119918
119908:  LDR             R1, =(aAxl - 0x119910); "AXL" ...
11990A:  LDR             R2, =(aModloaderCanTH_5 - 0x119912); "modloader: Can't hook register_anim_blo"... ...
11990C:  ADD             R1, PC; "AXL"
11990E:  ADD             R2, PC; "modloader: Can't hook register_anim_blo"...
119910:  MOVS            R0, #5; prio
119912:  BLX             __android_log_print
119916:  B               loc_119930
119918:  LDR             R0, [SP,#0x168+var_144]
11991A:  MOV             R2, #0x674840
119922:  LDR             R0, [R0]
119924:  LDR             R1, =(sub_119D50+1 - 0x11992C)
119926:  ADD             R0, R2
119928:  ADD             R1, PC; sub_119D50
11992A:  LDR             R2, [SP,#0x168+var_15C]
11992C:  BL              sub_164196
119930:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_6NS_9allocatorIS4_EEFiP16CStreamedScriptsPcEEE - 0x11993A); `vtable for'std::__function::__func<modloader::models::models(void)::$_6,std::allocator<modloader::models::models(void)::$_6>,int ()(CStreamedScripts *,char *)> ...
119932:  ADD             R4, SP, #0x168+var_110
119934:  STR             R4, [SP,#0x168+var_100]
119936:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_6,std::allocator<modloader::models::models(void)::$_6>,int ()(CStreamedScripts *,char *)>
119938:  STR.W           R8, [SP,#0x168+var_10C]
11993C:  ADDS            R0, #8
11993E:  STR             R0, [SP,#0x168+var_110]
119940:  BL              sub_11B180
119944:  LDR             R0, =(unk_263610 - 0x11994A)
119946:  ADD             R0, PC; unk_263610
119948:  LDR             R6, [R0,#(dword_263620 - 0x263610)]
11994A:  CBNZ            R6, loc_11997C
11994C:  ADD             R5, SP, #0x168+var_110
11994E:  ADD             R0, SP, #0x168+var_38
119950:  MOV             R1, R5
119952:  BL              sub_11B1D8
119956:  BL              sub_11B180
11995A:  LDR             R0, =(unk_263610 - 0x119960)
11995C:  ADD             R0, PC; unk_263610
11995E:  ADD             R5, SP, #0x168+var_38
119960:  MOV             R1, R5
119962:  BL              sub_11B204
119966:  LDR             R0, [SP,#0x168+var_28]
119968:  CMP             R5, R0
11996A:  BEQ             loc_119972
11996C:  CBZ             R0, loc_11997C
11996E:  MOVS            R1, #5
119970:  B               loc_119974
119972:  MOVS            R1, #4
119974:  LDR             R2, [R0]
119976:  LDR.W           R1, [R2,R1,LSL#2]
11997A:  BLX             R1
11997C:  LDR             R0, [SP,#0x168+var_100]
11997E:  CMP             R4, R0
119980:  BEQ             loc_119988
119982:  CBZ             R0, loc_119992
119984:  MOVS            R1, #5
119986:  B               loc_11998A
119988:  MOVS            R1, #4
11998A:  LDR             R2, [R0]
11998C:  LDR.W           R1, [R2,R1,LSL#2]
119990:  BLX             R1
119992:  CBZ             R6, loc_1199A4
119994:  LDR             R1, =(aAxl - 0x11999C); "AXL" ...
119996:  LDR             R2, =(aModloaderCanTH_6 - 0x11999E); "modloader: Can't hook register_script_s"... ...
119998:  ADD             R1, PC; "AXL"
11999A:  ADD             R2, PC; "modloader: Can't hook register_script_s"...
11999C:  MOVS            R0, #5; prio
11999E:  BLX             __android_log_print
1199A2:  B               loc_1199BC
1199A4:  LDR             R0, [SP,#0x168+var_144]
1199A6:  MOV             R2, #0x66F724
1199AE:  LDR             R0, [R0]
1199B0:  LDR             R1, =(sub_119D7C+1 - 0x1199B8)
1199B2:  ADD             R0, R2
1199B4:  ADD             R1, PC; sub_119D7C
1199B6:  LDR             R2, [SP,#0x168+var_158]
1199B8:  BL              sub_164196
1199BC:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_7NS_9allocatorIS4_EEFiiiEEE - 0x1199C6); `vtable for'std::__function::__func<modloader::models::models(void)::$_7,std::allocator<modloader::models::models(void)::$_7>,int ()(int,int)> ...
1199BE:  ADD             R4, SP, #0x168+var_128
1199C0:  STR             R4, [SP,#0x168+var_118]
1199C2:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_7,std::allocator<modloader::models::models(void)::$_7>,int ()(int,int)>
1199C4:  STR.W           R8, [SP,#0x168+var_124]
1199C8:  ADDS            R0, #8
1199CA:  STR             R0, [SP,#0x168+var_128]
1199CC:  BL              sub_11B2F8
1199D0:  LDR             R0, =(unk_263630 - 0x1199D6)
1199D2:  ADD             R0, PC; unk_263630
1199D4:  LDR             R6, [R0,#(dword_263640 - 0x263630)]
1199D6:  CBNZ            R6, loc_119A08
1199D8:  ADD             R5, SP, #0x168+var_128
1199DA:  ADD             R0, SP, #0x168+var_38
1199DC:  MOV             R1, R5
1199DE:  BL              sub_11B350
1199E2:  BL              sub_11B2F8
1199E6:  LDR             R0, =(unk_263630 - 0x1199EC)
1199E8:  ADD             R0, PC; unk_263630
1199EA:  ADD             R5, SP, #0x168+var_38
1199EC:  MOV             R1, R5
1199EE:  BL              sub_11B37C
1199F2:  LDR             R0, [SP,#0x168+var_28]
1199F4:  CMP             R5, R0
1199F6:  BEQ             loc_1199FE
1199F8:  CBZ             R0, loc_119A08
1199FA:  MOVS            R1, #5
1199FC:  B               loc_119A00
1199FE:  MOVS            R1, #4
119A00:  LDR             R2, [R0]
119A02:  LDR.W           R1, [R2,R1,LSL#2]
119A06:  BLX             R1
119A08:  LDR             R0, [SP,#0x168+var_118]
119A0A:  CMP             R4, R0
119A0C:  BEQ             loc_119A14
119A0E:  CBZ             R0, loc_119A1E
119A10:  MOVS            R1, #5
119A12:  B               loc_119A16
119A14:  MOVS            R1, #4
119A16:  LDR             R2, [R0]
119A18:  LDR.W           R1, [R2,R1,LSL#2]
119A1C:  BLX             R1
119A1E:  CBZ             R6, loc_119A30
119A20:  LDR             R1, =(aAxl - 0x119A28); "AXL" ...
119A22:  LDR             R2, =(aModloaderCanTH_7 - 0x119A2A); "modloader: Can't hook stream_resource, "... ...
119A24:  ADD             R1, PC; "AXL"
119A26:  ADD             R2, PC; "modloader: Can't hook stream_resource, "...
119A28:  MOVS            R0, #5; prio
119A2A:  BLX             __android_log_print
119A2E:  B               loc_119A48
119A30:  LDR             R0, [SP,#0x168+var_144]
119A32:  MOV             R2, #0x673278
119A3A:  LDR             R0, [R0]
119A3C:  LDR             R1, =(sub_119D9C+1 - 0x119A44)
119A3E:  ADD             R0, R2
119A40:  ADD             R1, PC; sub_119D9C
119A42:  LDR             R2, [SP,#0x168+var_160]
119A44:  BL              sub_164196
119A48:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9modloader6modelsC1EvE3$_8NS_9allocatorIS4_EEFPKciS8_EEE - 0x119A52); `vtable for'std::__function::__func<modloader::models::models(void)::$_8,std::allocator<modloader::models::models(void)::$_8>,char const* ()(int,char const*)> ...
119A4A:  ADD             R4, SP, #0x168+var_140
119A4C:  STR             R4, [SP,#0x168+var_130]
119A4E:  ADD             R0, PC; `vtable for'std::__function::__func<modloader::models::models(void)::$_8,std::allocator<modloader::models::models(void)::$_8>,char const* ()(int,char const*)>
119A50:  STR.W           R8, [SP,#0x168+var_13C]
119A54:  ADDS            R0, #8
119A56:  STR             R0, [SP,#0x168+var_140]
119A58:  BL              sub_11B454
119A5C:  LDR             R0, =(unk_263650 - 0x119A62)
119A5E:  ADD             R0, PC; unk_263650
119A60:  LDR             R6, [R0,#(dword_263660 - 0x263650)]
119A62:  CBNZ            R6, loc_119A94
119A64:  ADD             R5, SP, #0x168+var_140
119A66:  ADD             R0, SP, #0x168+var_38
119A68:  MOV             R1, R5
119A6A:  BL              sub_11B4AC
119A6E:  BL              sub_11B454
119A72:  LDR             R0, =(unk_263650 - 0x119A78)
119A74:  ADD             R0, PC; unk_263650
119A76:  ADD             R5, SP, #0x168+var_38
119A78:  MOV             R1, R5
119A7A:  BL              sub_11B4D8
119A7E:  LDR             R0, [SP,#0x168+var_28]
119A80:  CMP             R5, R0
119A82:  BEQ             loc_119A8A
119A84:  CBZ             R0, loc_119A94
119A86:  MOVS            R1, #5
119A88:  B               loc_119A8C
119A8A:  MOVS            R1, #4
119A8C:  LDR             R2, [R0]
119A8E:  LDR.W           R1, [R2,R1,LSL#2]
119A92:  BLX             R1
119A94:  LDR             R0, [SP,#0x168+var_130]
119A96:  CMP             R4, R0
119A98:  BEQ             loc_119AA0
119A9A:  CBZ             R0, loc_119AAA
119A9C:  MOVS            R1, #5
119A9E:  B               loc_119AA2
119AA0:  MOVS            R1, #4
119AA2:  LDR             R2, [R0]
119AA4:  LDR.W           R1, [R2,R1,LSL#2]
119AA8:  BLX             R1
119AAA:  CBZ             R6, loc_119ABC
119AAC:  LDR             R1, =(aAxl - 0x119AB4); "AXL" ...
119AAE:  LDR             R2, =(aModloaderCanTH_8 - 0x119AB6); "modloader: Can't hook stream_texturedb,"... ...
119AB0:  ADD             R1, PC; "AXL"
119AB2:  ADD             R2, PC; "modloader: Can't hook stream_texturedb,"...
119AB4:  MOVS            R0, #5; prio
119AB6:  BLX             __android_log_print
119ABA:  B               loc_119AD0
119ABC:  LDR             R0, [SP,#0x168+var_144]
119ABE:  LDR             R0, [R0]
119AC0:  LDR             R1, =(sub_119DBC+1 - 0x119AC8)
119AC2:  ADD             R0, R9
119AC4:  ADD             R1, PC; sub_119DBC
119AC6:  ADD.W           R0, R0, #0x3180
119ACA:  LDR             R2, [SP,#0x168+var_164]
119ACC:  BL              sub_164196
119AD0:  MOV             R0, R8
119AD2:  ADD             SP, SP, #0x14C
119AD4:  POP.W           {R8-R11}
119AD8:  POP             {R4-R7,PC}
