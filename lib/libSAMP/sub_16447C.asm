; =========================================================
; Game Engine Function: sub_16447C
; Address            : 0x16447C - 0x164860
; =========================================================

16447C:  PUSH            {R4-R7,LR}
16447E:  ADD             R7, SP, #0xC
164480:  PUSH.W          {R8}
164484:  SUB             SP, SP, #0x30
164486:  LDR             R0, =(sub_16447C+1 - 0x16448E)
164488:  ADD             R1, SP, #0x40+s
16448A:  ADD             R0, PC; sub_16447C
16448C:  BLX             dladdr
164490:  LDR             R1, =(aDataDataComAri - 0x164498); "/data/data/com.arizona.game/lib/" ...
164492:  ADD             R0, SP, #0x40+var_30; int
164494:  ADD             R1, PC; "/data/data/com.arizona.game/lib/"
164496:  BL              sub_DC6DC
16449A:  LDR             R4, [SP,#0x40+s]
16449C:  CBZ             R4, loc_164508
16449E:  MOV             R0, R4; s
1644A0:  MOVS            R1, #0x2F ; '/'; c
1644A2:  BLX             strrchr
1644A6:  SUBS            R0, R0, R4
1644A8:  ADDS            R5, R0, #1
1644AA:  CMN.W           R5, #0x10
1644AE:  BCS.W           loc_164834
1644B2:  CMP             R5, #0xB
1644B4:  BCS             loc_1644C6
1644B6:  LSLS            R0, R5, #1
1644B8:  STRB.W          R0, [SP,#0x40+var_40]
1644BC:  MOV             R0, SP
1644BE:  ADD.W           R6, R0, #1
1644C2:  CBNZ            R5, loc_1644E0
1644C4:  B               loc_1644EA
1644C6:  ADD.W           R0, R5, #0x10
1644CA:  BIC.W           R8, R0, #0xF
1644CE:  MOV             R0, R8; unsigned int
1644D0:  BLX             j__Znwj; operator new(uint)
1644D4:  MOV             R6, R0
1644D6:  ORR.W           R0, R8, #1
1644DA:  STR             R5, [SP,#0x40+var_40+4]
1644DC:  STR             R0, [SP,#0x40+var_40]
1644DE:  STR             R6, [SP,#0x40+var_38]
1644E0:  MOV             R0, R6; dest
1644E2:  MOV             R1, R4; src
1644E4:  MOV             R2, R5; n
1644E6:  BLX             j_memcpy
1644EA:  MOVS            R0, #0
1644EC:  STRB            R0, [R6,R5]
1644EE:  LDRB.W          R0, [SP,#0x40+var_30]
1644F2:  LSLS            R0, R0, #0x1F
1644F4:  ITT NE
1644F6:  LDRNE           R0, [SP,#0x40+var_28]; void *
1644F8:  BLXNE           j__ZdlPv; operator delete(void *)
1644FC:  VLDR            D16, [SP,#0x40+var_40]
164500:  LDR             R0, [SP,#0x40+var_38]
164502:  STR             R0, [SP,#0x40+var_28]
164504:  VSTR            D16, [SP,#0x40+var_30]
164508:  LDR             R2, =(aLibbassSo - 0x16450E); "libbass.so" ...
16450A:  ADD             R2, PC; "libbass.so"
16450C:  MOV             R4, SP
16450E:  ADD             R1, SP, #0x40+var_30; int
164510:  MOV             R0, R4; int
164512:  BL              sub_EE094
164516:  LDRB.W          R1, [SP,#0x40+var_40]
16451A:  LDR             R0, [SP,#0x40+var_38]
16451C:  LSLS            R1, R1, #0x1F
16451E:  IT EQ
164520:  ADDEQ           R0, R4, #1; file
164522:  MOVS            R1, #1; mode
164524:  BLX             dlopen
164528:  MOV             R4, R0
16452A:  LDRB.W          R0, [SP,#0x40+var_40]
16452E:  LSLS            R0, R0, #0x1F
164530:  ITT NE
164532:  LDRNE           R0, [SP,#0x40+var_38]; void *
164534:  BLXNE           j__ZdlPv; operator delete(void *)
164538:  CMP             R4, #0
16453A:  BEQ.W           loc_164800
16453E:  LDR             R1, =(aJniOnload_0 - 0x164544); "JNI_OnLoad" ...
164540:  ADD             R1, PC; "JNI_OnLoad"
164542:  MOV             R0, R4; handle
164544:  BLX             dlsym
164548:  MOV             R2, R0
16454A:  CBZ             R0, loc_16457C
16454C:  LDR             R0, =(off_23494C - 0x16455A)
16454E:  MOV             R1, #0x6D9A38
164556:  ADD             R0, PC; off_23494C
164558:  LDR             R0, [R0]; dword_23DF24
16455A:  LDR             R0, [R0]
16455C:  LDR             R0, [R0,R1]
16455E:  CBZ             R0, loc_16456E
164560:  MOVS            R1, #0
164562:  BLX             R2
164564:  MOVS            R1, #0x10006
16456A:  CMP             R0, R1
16456C:  BEQ             loc_16457C
16456E:  LDR             R1, =(aAxl - 0x164576); "AXL" ...
164570:  LDR             R2, =(aInvalidInitial - 0x164578); "Invalid initialize JNI in libbass.so" ...
164572:  ADD             R1, PC; "AXL"
164574:  ADD             R2, PC; "Invalid initialize JNI in libbass.so"
164576:  MOVS            R0, #6; prio
164578:  BLX             __android_log_print
16457C:  LDR             R1, =(aBassSetconfig - 0x164582); "BASS_SetConfig" ...
16457E:  ADD             R1, PC; "BASS_SetConfig"
164580:  MOV             R0, R4; handle
164582:  BLX             dlsym
164586:  LDR             R2, =(off_381AC4 - 0x16458E)
164588:  LDR             R1, =(aBassGetconfig - 0x164590); "BASS_GetConfig" ...
16458A:  ADD             R2, PC; off_381AC4
16458C:  ADD             R1, PC; "BASS_GetConfig"
16458E:  STR             R0, [R2]
164590:  MOV             R0, R4; handle
164592:  BLX             dlsym
164596:  LDR             R2, =(dword_381AC8 - 0x16459E)
164598:  LDR             R1, =(aBassSetconfigp - 0x1645A0); "BASS_SetConfigPtr" ...
16459A:  ADD             R2, PC; dword_381AC8
16459C:  ADD             R1, PC; "BASS_SetConfigPtr"
16459E:  STR             R0, [R2]
1645A0:  MOV             R0, R4; handle
1645A2:  BLX             dlsym
1645A6:  LDR             R2, =(off_381ACC - 0x1645AE)
1645A8:  LDR             R1, =(aBassErrorgetco - 0x1645B0); "BASS_ErrorGetCode" ...
1645AA:  ADD             R2, PC; off_381ACC
1645AC:  ADD             R1, PC; "BASS_ErrorGetCode"
1645AE:  STR             R0, [R2]
1645B0:  MOV             R0, R4; handle
1645B2:  BLX             dlsym
1645B6:  LDR             R2, =(off_381AD0 - 0x1645BE)
1645B8:  LDR             R1, =(aBassInit - 0x1645C0); "BASS_Init" ...
1645BA:  ADD             R2, PC; off_381AD0
1645BC:  ADD             R1, PC; "BASS_Init"
1645BE:  STR             R0, [R2]
1645C0:  MOV             R0, R4; handle
1645C2:  BLX             dlsym
1645C6:  LDR             R2, =(off_381AD4 - 0x1645CE)
1645C8:  LDR             R1, =(aBassFree - 0x1645D0); "BASS_Free" ...
1645CA:  ADD             R2, PC; off_381AD4
1645CC:  ADD             R1, PC; "BASS_Free"
1645CE:  STR             R0, [R2]
1645D0:  MOV             R0, R4; handle
1645D2:  BLX             dlsym
1645D6:  LDR             R2, =(off_381AD8 - 0x1645DE)
1645D8:  LDR             R1, =(aBassIsstarted - 0x1645E0); "BASS_IsStarted" ...
1645DA:  ADD             R2, PC; off_381AD8
1645DC:  ADD             R1, PC; "BASS_IsStarted"
1645DE:  STR             R0, [R2]
1645E0:  MOV             R0, R4; handle
1645E2:  BLX             dlsym
1645E6:  LDR             R2, =(off_381ADC - 0x1645EE)
1645E8:  LDR             R1, =(aBassSet3dfacto - 0x1645F0); "BASS_Set3DFactors" ...
1645EA:  ADD             R2, PC; off_381ADC
1645EC:  ADD             R1, PC; "BASS_Set3DFactors"
1645EE:  STR             R0, [R2]
1645F0:  MOV             R0, R4; handle
1645F2:  BLX             dlsym
1645F6:  LDR             R2, =(off_381AE0 - 0x1645FE)
1645F8:  LDR             R1, =(aBassSet3dposit - 0x164600); "BASS_Set3DPosition" ...
1645FA:  ADD             R2, PC; off_381AE0
1645FC:  ADD             R1, PC; "BASS_Set3DPosition"
1645FE:  STR             R0, [R2]
164600:  MOV             R0, R4; handle
164602:  BLX             dlsym
164606:  LDR             R2, =(off_381AE4 - 0x16460E)
164608:  LDR             R1, =(aBassApply3d - 0x164610); "BASS_Apply3D" ...
16460A:  ADD             R2, PC; off_381AE4
16460C:  ADD             R1, PC; "BASS_Apply3D"
16460E:  STR             R0, [R2]
164610:  MOV             R0, R4; handle
164612:  BLX             dlsym
164616:  LDR             R2, =(off_381AE8 - 0x16461E)
164618:  LDR             R1, =(aBassStreamcrea - 0x164620); "BASS_StreamCreate" ...
16461A:  ADD             R2, PC; off_381AE8
16461C:  ADD             R1, PC; "BASS_StreamCreate"
16461E:  STR             R0, [R2]
164620:  MOV             R0, R4; handle
164622:  BLX             dlsym
164626:  LDR             R2, =(off_381AEC - 0x16462E)
164628:  LDR             R1, =(aBassStreamcrea_0 - 0x164630); "BASS_StreamCreateFile" ...
16462A:  ADD             R2, PC; off_381AEC
16462C:  ADD             R1, PC; "BASS_StreamCreateFile"
16462E:  STR             R0, [R2]
164630:  MOV             R0, R4; handle
164632:  BLX             dlsym
164636:  LDR             R2, =(off_381AF0 - 0x16463E)
164638:  LDR             R1, =(aBassStreamcrea_1 - 0x164640); "BASS_StreamCreateURL" ...
16463A:  ADD             R2, PC; off_381AF0
16463C:  ADD             R1, PC; "BASS_StreamCreateURL"
16463E:  STR             R0, [R2]
164640:  MOV             R0, R4; handle
164642:  BLX             dlsym
164646:  LDR             R2, =(off_381AF4 - 0x16464E)
164648:  LDR             R1, =(aBassStreamfree - 0x164650); "BASS_StreamFree" ...
16464A:  ADD             R2, PC; off_381AF4
16464C:  ADD             R1, PC; "BASS_StreamFree"
16464E:  STR             R0, [R2]
164650:  MOV             R0, R4; handle
164652:  BLX             dlsym
164656:  LDR             R2, =(off_381AF8 - 0x16465E)
164658:  LDR             R1, =(aBassStreamgetf - 0x164660); "BASS_StreamGetFilePosition" ...
16465A:  ADD             R2, PC; off_381AF8
16465C:  ADD             R1, PC; "BASS_StreamGetFilePosition"
16465E:  STR             R0, [R2]
164660:  MOV             R0, R4; handle
164662:  BLX             dlsym
164666:  LDR             R2, =(off_381AFC - 0x16466E)
164668:  LDR             R1, =(aBassStreamputd - 0x164670); "BASS_StreamPutData" ...
16466A:  ADD             R2, PC; off_381AFC
16466C:  ADD             R1, PC; "BASS_StreamPutData"
16466E:  STR             R0, [R2]
164670:  MOV             R0, R4; handle
164672:  BLX             dlsym
164676:  LDR             R2, =(off_381B00 - 0x16467E)
164678:  LDR             R1, =(aBassRecordgetd - 0x164680); "BASS_RecordGetDeviceInfo" ...
16467A:  ADD             R2, PC; off_381B00
16467C:  ADD             R1, PC; "BASS_RecordGetDeviceInfo"
16467E:  STR             R0, [R2]
164680:  MOV             R0, R4; handle
164682:  BLX             dlsym
164686:  LDR             R2, =(off_381B04 - 0x16468E)
164688:  LDR             R1, =(aBassRecordinit - 0x164690); "BASS_RecordInit" ...
16468A:  ADD             R2, PC; off_381B04
16468C:  ADD             R1, PC; "BASS_RecordInit"
16468E:  STR             R0, [R2]
164690:  MOV             R0, R4; handle
164692:  BLX             dlsym
164696:  LDR             R2, =(off_381B08 - 0x16469E)
164698:  LDR             R1, =(aBassRecordfree - 0x1646A0); "BASS_RecordFree" ...
16469A:  ADD             R2, PC; off_381B08
16469C:  ADD             R1, PC; "BASS_RecordFree"
16469E:  STR             R0, [R2]
1646A0:  MOV             R0, R4; handle
1646A2:  BLX             dlsym
1646A6:  LDR             R2, =(off_381B0C - 0x1646AE)
1646A8:  LDR             R1, =(aBassRecordstar - 0x1646B0); "BASS_RecordStart" ...
1646AA:  ADD             R2, PC; off_381B0C
1646AC:  ADD             R1, PC; "BASS_RecordStart"
1646AE:  STR             R0, [R2]
1646B0:  MOV             R0, R4; handle
1646B2:  BLX             dlsym
1646B6:  LDR             R2, =(off_381B10 - 0x1646BE)
1646B8:  LDR             R1, =(aBassChannelbyt - 0x1646C0); "BASS_ChannelBytes2Seconds" ...
1646BA:  ADD             R2, PC; off_381B10
1646BC:  ADD             R1, PC; "BASS_ChannelBytes2Seconds"
1646BE:  STR             R0, [R2]
1646C0:  MOV             R0, R4; handle
1646C2:  BLX             dlsym
1646C6:  LDR             R2, =(off_381B14 - 0x1646CE)
1646C8:  LDR             R1, =(aBassChannelsec - 0x1646D0); "BASS_ChannelSeconds2Bytes" ...
1646CA:  ADD             R2, PC; off_381B14
1646CC:  ADD             R1, PC; "BASS_ChannelSeconds2Bytes"
1646CE:  STR             R0, [R2]
1646D0:  MOV             R0, R4; handle
1646D2:  BLX             dlsym
1646D6:  LDR             R2, =(off_381B18 - 0x1646DE)
1646D8:  LDR             R1, =(aBassChannelisa - 0x1646E0); "BASS_ChannelIsActive" ...
1646DA:  ADD             R2, PC; off_381B18
1646DC:  ADD             R1, PC; "BASS_ChannelIsActive"
1646DE:  STR             R0, [R2]
1646E0:  MOV             R0, R4; handle
1646E2:  BLX             dlsym
1646E6:  LDR             R2, =(off_381B1C - 0x1646EE)
1646E8:  LDR             R1, =(aBassChannelfla - 0x1646F0); "BASS_ChannelFlags" ...
1646EA:  ADD             R2, PC; off_381B1C
1646EC:  ADD             R1, PC; "BASS_ChannelFlags"
1646EE:  STR             R0, [R2]
1646F0:  MOV             R0, R4; handle
1646F2:  BLX             dlsym
1646F6:  LDR             R2, =(dword_381B20 - 0x1646FE)
1646F8:  LDR             R1, =(aBassChannelpla - 0x164700); "BASS_ChannelPlay" ...
1646FA:  ADD             R2, PC; dword_381B20
1646FC:  ADD             R1, PC; "BASS_ChannelPlay"
1646FE:  STR             R0, [R2]
164700:  MOV             R0, R4; handle
164702:  BLX             dlsym
164706:  LDR             R2, =(off_381B24 - 0x16470E)
164708:  LDR             R1, =(aBassChannelsto - 0x164710); "BASS_ChannelStop" ...
16470A:  ADD             R2, PC; off_381B24
16470C:  ADD             R1, PC; "BASS_ChannelStop"
16470E:  STR             R0, [R2]
164710:  MOV             R0, R4; handle
164712:  BLX             dlsym
164716:  LDR             R2, =(off_381B28 - 0x16471E)
164718:  LDR             R1, =(aBassChannelpau - 0x164720); "BASS_ChannelPause" ...
16471A:  ADD             R2, PC; off_381B28
16471C:  ADD             R1, PC; "BASS_ChannelPause"
16471E:  STR             R0, [R2]
164720:  MOV             R0, R4; handle
164722:  BLX             dlsym
164726:  LDR             R2, =(off_381B2C - 0x16472E)
164728:  LDR             R1, =(aBassChannelset_0 - 0x164730); "BASS_ChannelSetAttribute" ...
16472A:  ADD             R2, PC; off_381B2C
16472C:  ADD             R1, PC; "BASS_ChannelSetAttribute"
16472E:  STR             R0, [R2]
164730:  MOV             R0, R4; handle
164732:  BLX             dlsym
164736:  LDR             R2, =(off_381B30 - 0x16473E)
164738:  LDR             R1, =(aBassChannelset_1 - 0x164740); "BASS_ChannelSet3DAttributes" ...
16473A:  ADD             R2, PC; off_381B30
16473C:  ADD             R1, PC; "BASS_ChannelSet3DAttributes"
16473E:  STR             R0, [R2]
164740:  MOV             R0, R4; handle
164742:  BLX             dlsym
164746:  LDR             R2, =(off_381B34 - 0x16474E)
164748:  LDR             R1, =(aBassChannelset - 0x164750); "BASS_ChannelSet3DPosition" ...
16474A:  ADD             R2, PC; off_381B34
16474C:  ADD             R1, PC; "BASS_ChannelSet3DPosition"
16474E:  STR             R0, [R2]
164750:  MOV             R0, R4; handle
164752:  BLX             dlsym
164756:  LDR             R2, =(off_381B38 - 0x16475E)
164758:  LDR             R1, =(aBassChannelget - 0x164760); "BASS_ChannelGetLength" ...
16475A:  ADD             R2, PC; off_381B38
16475C:  ADD             R1, PC; "BASS_ChannelGetLength"
16475E:  STR             R0, [R2]
164760:  MOV             R0, R4; handle
164762:  BLX             dlsym
164766:  LDR             R2, =(off_381B3C - 0x16476E)
164768:  LDR             R1, =(aBassChannelset_2 - 0x164770); "BASS_ChannelSetPosition" ...
16476A:  ADD             R2, PC; off_381B3C
16476C:  ADD             R1, PC; "BASS_ChannelSetPosition"
16476E:  STR             R0, [R2]
164770:  MOV             R0, R4; handle
164772:  BLX             dlsym
164776:  LDR             R2, =(off_381B40 - 0x16477E)
164778:  LDR             R1, =(aBassChannelget_0 - 0x164780); "BASS_ChannelGetPosition" ...
16477A:  ADD             R2, PC; off_381B40
16477C:  ADD             R1, PC; "BASS_ChannelGetPosition"
16477E:  STR             R0, [R2]
164780:  MOV             R0, R4; handle
164782:  BLX             dlsym
164786:  LDR             R2, =(off_381B44 - 0x16478E)
164788:  LDR             R1, =(aBassChannelset_3 - 0x164790); "BASS_ChannelSetFX" ...
16478A:  ADD             R2, PC; off_381B44
16478C:  ADD             R1, PC; "BASS_ChannelSetFX"
16478E:  STR             R0, [R2]
164790:  MOV             R0, R4; handle
164792:  BLX             dlsym
164796:  LDR             R2, =(off_381B48 - 0x16479E)
164798:  LDR             R1, =(aBassChannelrem - 0x1647A0); "BASS_ChannelRemoveFX" ...
16479A:  ADD             R2, PC; off_381B48
16479C:  ADD             R1, PC; "BASS_ChannelRemoveFX"
16479E:  STR             R0, [R2]
1647A0:  MOV             R0, R4; handle
1647A2:  BLX             dlsym
1647A6:  LDR             R2, =(off_381B4C - 0x1647AE)
1647A8:  LDR             R1, =(aBassFxsetparam - 0x1647B0); "BASS_FXSetParameters" ...
1647AA:  ADD             R2, PC; off_381B4C
1647AC:  ADD             R1, PC; "BASS_FXSetParameters"
1647AE:  STR             R0, [R2]
1647B0:  MOV             R0, R4; handle
1647B2:  BLX             dlsym
1647B6:  LDR             R1, =(off_381B50 - 0x1647BE)
1647B8:  LDR             R2, =(aLibbassFxSo - 0x1647C0); "libbass_fx.so" ...
1647BA:  ADD             R1, PC; off_381B50
1647BC:  ADD             R2, PC; "libbass_fx.so"
1647BE:  STR             R0, [R1]
1647C0:  MOV             R4, SP
1647C2:  ADD             R1, SP, #0x40+var_30; int
1647C4:  MOV             R0, R4; int
1647C6:  BL              sub_EE094
1647CA:  LDRB.W          R1, [SP,#0x40+var_40]
1647CE:  LDR             R0, [SP,#0x40+var_38]
1647D0:  LSLS            R1, R1, #0x1F
1647D2:  IT EQ
1647D4:  ADDEQ           R0, R4, #1; file
1647D6:  MOVS            R1, #1; mode
1647D8:  BLX             dlopen
1647DC:  MOV             R4, R0
1647DE:  LDRB.W          R0, [SP,#0x40+var_40]
1647E2:  LSLS            R0, R0, #0x1F
1647E4:  ITT NE
1647E6:  LDRNE           R0, [SP,#0x40+var_38]; void *
1647E8:  BLXNE           j__ZdlPv; operator delete(void *)
1647EC:  CBZ             R4, loc_164810
1647EE:  LDR             R1, =(aBassFxGetversi - 0x1647F4); "BASS_FX_GetVersion" ...
1647F0:  ADD             R1, PC; "BASS_FX_GetVersion"
1647F2:  MOV             R0, R4; handle
1647F4:  BLX             dlsym
1647F8:  LDR             R1, =(off_381B54 - 0x1647FE)
1647FA:  ADD             R1, PC; off_381B54
1647FC:  STR             R0, [R1]
1647FE:  B               loc_16481E
164800:  LDR             R1, =(aAxl - 0x164808); "AXL" ...
164802:  LDR             R2, =(aCanTOpenLibbas - 0x16480A); "Can't open libbass.so" ...
164804:  ADD             R1, PC; "AXL"
164806:  ADD             R2, PC; "Can't open libbass.so"
164808:  MOVS            R0, #6; prio
16480A:  BLX             __android_log_print
16480E:  B               loc_16481E
164810:  LDR             R1, =(aAxl - 0x164818); "AXL" ...
164812:  LDR             R2, =(aCanTOpenLibbas_0 - 0x16481A); "Can't open libbass_fx.so" ...
164814:  ADD             R1, PC; "AXL"
164816:  ADD             R2, PC; "Can't open libbass_fx.so"
164818:  MOVS            R0, #6; prio
16481A:  BLX             __android_log_print
16481E:  LDRB.W          R0, [SP,#0x40+var_30]
164822:  LSLS            R0, R0, #0x1F
164824:  ITT NE
164826:  LDRNE           R0, [SP,#0x40+var_28]; void *
164828:  BLXNE           j__ZdlPv; operator delete(void *)
16482C:  ADD             SP, SP, #0x30 ; '0'
16482E:  POP.W           {R8}
164832:  POP             {R4-R7,PC}
164834:  MOV             R0, SP
164836:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
16483A:  B               loc_164862
16483C:  B               loc_164862
16483E:  B               loc_164862
164840:  B               loc_164850
164842:  B               loc_164862
164844:  B               loc_164862
164846:  ALIGN 4
164848:  DCD sub_16447C+1 - 0x16448E
16484C:  DCD aDataDataComAri - 0x164498
164850:  LDRB.W          R0, [SP,#0x40+var_40]
164854:  LSLS            R0, R0, #0x1F
164856:  BEQ             loc_164862
164858:  LDR             R0, [SP,#0x40+var_38]; void *
16485A:  BLX             j__ZdlPv; operator delete(void *)
16485E:  B               loc_164862
