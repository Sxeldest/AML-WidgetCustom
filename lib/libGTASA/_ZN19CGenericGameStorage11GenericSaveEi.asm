; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage11GenericSaveEi
; Address            : 0x482554 - 0x482872
; =========================================================

482554:  PUSH            {R4-R7,LR}
482556:  ADD             R7, SP, #0xC
482558:  PUSH.W          {R8-R11}
48255C:  SUB             SP, SP, #0x1B4
48255E:  BLX             j__Z15ResetFenceCountv; ResetFenceCount(void)
482562:  LDR.W           R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x482570)
482566:  MOVS            R4, #0
482568:  LDR.W           R1, =(_ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr - 0x482572)
48256C:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
48256E:  ADD             R1, PC; _ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr
482570:  LDR             R2, [R0]; char *
482572:  LDR             R0, [R1]; this
482574:  ADR.W           R1, dword_48287C; char *
482578:  STRB            R4, [R2]; CGenericGameStorage::ms_bFailed
48257A:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
48257E:  LDR.W           R1, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482588)
482582:  CMP             R0, #0
482584:  ADD             R1, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482586:  LDR             R1, [R1]; CGenericGameStorage::ms_FileHandle ...
482588:  STR             R0, [R1]; CGenericGameStorage::ms_FileHandle
48258A:  BEQ.W           loc_482774
48258E:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482596)
482590:  LDR             R1, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x48259A)
482592:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482594:  LDR             R2, =(_ZN19CGenericGameStorage10ms_FilePosE_ptr - 0x48259E)
482596:  ADD             R1, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
482598:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
48259A:  ADD             R2, PC; _ZN19CGenericGameStorage10ms_FilePosE_ptr
48259C:  LDR             R1, [R1]; CGenericGameStorage::ms_WorkBufferPos ...
48259E:  LDR             R2, [R2]; CGenericGameStorage::ms_FilePos ...
4825A0:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer
4825A2:  STR             R4, [R1]; CGenericGameStorage::ms_WorkBufferPos
4825A4:  CMP             R0, #0
4825A6:  STR             R4, [R2]; CGenericGameStorage::ms_FilePos
4825A8:  BNE             loc_4825C8
4825AA:  MOVW            R0, #0xFDE9; unsigned int
4825AE:  MOVW            R4, #0xFDE9
4825B2:  BLX             _Znaj; operator new[](uint)
4825B6:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x4825BE)
4825B8:  LDR             R2, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x4825C0)
4825BA:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
4825BC:  ADD             R2, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
4825BE:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer ...
4825C0:  LDR             R2, [R2]; int
4825C2:  STR             R0, [R1]; CGenericGameStorage::_ms_WorkBuffer
4825C4:  STRD.W          R0, R4, [R2]; CGenericGameStorage::ms_WorkBuffer
4825C8:  LDR             R0, =(_ZN19CGenericGameStorage11ms_CheckSumE_ptr - 0x4825D8)
4825CA:  MOV.W           R10, #0
4825CE:  LDR             R1, =(_ZN19CGenericGameStorage15ms_BlockTagNameE_ptr - 0x4825DA)
4825D0:  MOV.W           R5, #0xFFFFFFFF
4825D4:  ADD             R0, PC; _ZN19CGenericGameStorage11ms_CheckSumE_ptr
4825D6:  ADD             R1, PC; _ZN19CGenericGameStorage15ms_BlockTagNameE_ptr
4825D8:  LDR             R0, [R0]; CGenericGameStorage::ms_CheckSum ...
4825DA:  LDR.W           R9, [R1]; "BLOCK" ...
4825DE:  STR.W           R10, [R0]; CGenericGameStorage::ms_CheckSum
4825E2:  LDR             R0, =(UseDataFence_ptr - 0x4825E8)
4825E4:  ADD             R0, PC; UseDataFence_ptr
4825E6:  LDR             R6, [R0]; UseDataFence
4825E8:  LDR             R0, =(UseDataFence_ptr - 0x4825EE)
4825EA:  ADD             R0, PC; UseDataFence_ptr
4825EC:  LDR.W           R11, [R0]; UseDataFence
4825F0:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x4825F6)
4825F2:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
4825F4:  LDR.W           R8, [R0]; CGenericGameStorage::ms_bFailed ...
4825F8:  MOV             R0, R9; this
4825FA:  MOVS            R1, #byte_5; void *
4825FC:  LDRB            R4, [R6]
4825FE:  STRB.W          R10, [R6]
482602:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
482606:  CMP             R0, #0
482608:  BEQ.W           loc_482780
48260C:  ADDS            R5, #1
48260E:  STRB.W          R4, [R11]
482612:  CMP             R5, #0x1C; switch 29 cases
482614:  BHI.W           def_482618; jumptable 00482618 default case, cases 7,13,14
482618:  TBB.W           [PC,R5]; switch jump
48261C:  DCB 0xF; jump table for switch statement
48261D:  DCB 0x3C
48261E:  DCB 0x3F
48261F:  DCB 0x42
482620:  DCB 0x45
482621:  DCB 0x48
482622:  DCB 0x4E
482623:  DCB 0x94
482624:  DCB 0x51
482625:  DCB 0x54
482626:  DCB 0x57
482627:  DCB 0x5A
482628:  DCB 0x5D
482629:  DCB 0x94
48262A:  DCB 0x94
48262B:  DCB 0x60
48262C:  DCB 0x6E
48262D:  DCB 0x71
48262E:  DCB 0x74
48262F:  DCB 0x77
482630:  DCB 0x7A
482631:  DCB 0x7D
482632:  DCB 0x80
482633:  DCB 0x83
482634:  DCB 0x86
482635:  DCB 0x89
482636:  DCB 0x8C
482637:  DCB 0x8F
482638:  DCB 0x92
482639:  ALIGN 2
48263A:  ADD             R0, SP, #0x1D0+var_1C8; jumptable 00482618 case 0
48263C:  BLX             j__ZN29CSimpleVariablesSaveStructure9ConstructEv; CSimpleVariablesSaveStructure::Construct(void)
482640:  LDR             R0, =(UseDataFence_ptr - 0x482646)
482642:  ADD             R0, PC; UseDataFence_ptr
482644:  LDR             R4, [R0]; UseDataFence
482646:  LDRB            R0, [R4]
482648:  STR             R0, [SP,#0x1D0+var_1CC]
48264A:  MOVS            R0, #0
48264C:  STRB            R0, [R4]
48264E:  MOV.W           R0, #0x1AC; byte_count
482652:  BLX             malloc
482656:  ADD             R1, SP, #0x1D0+var_1C8; void *
482658:  MOV.W           R2, #0x1AC; size_t
48265C:  MOV             R10, R0
48265E:  BLX             memcpy_1
482662:  MOV             R0, R10; this
482664:  MOV.W           R1, #(elf_hash_bucket+0xB0); void *
482668:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48266C:  STR             R0, [SP,#0x1D0+var_1D0]
48266E:  MOV             R0, R10; p
482670:  MOV.W           R10, #0
482674:  BLX             free
482678:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x48267E)
48267A:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
48267C:  LDR             R1, [R0]; CGenericGameStorage::ms_bFailed ...
48267E:  LDR             R0, [SP,#0x1D0+var_1CC]
482680:  STRB            R0, [R4]
482682:  LDR             R0, [SP,#0x1D0+var_1D0]
482684:  EOR.W           R0, R0, #1
482688:  STRB            R0, [R1]; CGenericGameStorage::ms_bFailed
48268A:  CMP             R0, #0
48268C:  BNE             loc_48274C
48268E:  CMP             R5, #0x1B
482690:  BLE             loc_4825F8
482692:  B               loc_4827B8
482694:  BLX             j__ZN11CTheScripts4SaveEv; jumptable 00482618 case 1
482698:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
48269A:  BLX             j__ZN6CPools4SaveEv; jumptable 00482618 case 2
48269E:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826A0:  BLX             j__ZN8CGarages4SaveEv; jumptable 00482618 case 3
4826A4:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826A6:  BLX             j__ZN10CGameLogic4SaveEv; jumptable 00482618 case 4
4826AA:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826AC:  LDR             R0, =(ThePaths_ptr - 0x4826B2); jumptable 00482618 case 5
4826AE:  ADD             R0, PC; ThePaths_ptr
4826B0:  LDR             R0, [R0]; ThePaths ; this
4826B2:  BLX             j__ZN9CPathFind4SaveEv; CPathFind::Save(void)
4826B6:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826B8:  BLX             j__ZN8CPickups4SaveEv; jumptable 00482618 case 6
4826BC:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826BE:  BLX             j__ZN8CRestart4SaveEv; jumptable 00482618 case 8
4826C2:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826C4:  BLX             j__ZN6CRadar4SaveEv; jumptable 00482618 case 9
4826C8:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826CA:  BLX             j__ZN9CTheZones4SaveEv; jumptable 00482618 case 10
4826CE:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826D0:  BLX             j__ZN6CGangs4SaveEv; jumptable 00482618 case 11
4826D4:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826D6:  BLX             j__ZN17CTheCarGenerators4SaveEv; jumptable 00482618 case 12
4826DA:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826DC:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4826E8); jumptable 00482618 case 15
4826DE:  MOV.W           R2, #0x194
4826E2:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4826EA)
4826E4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4826E6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4826E8:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4826EA:  LDR             R1, [R1]; CWorld::Players ...
4826EC:  LDR             R0, [R0]; CWorld::PlayerInFocus
4826EE:  SMLABB.W        R0, R0, R2, R1; this
4826F2:  BLX             j__ZN11CPlayerInfo4SaveEv; CPlayerInfo::Save(void)
4826F6:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826F8:  BLX             j__ZN6CStats4SaveEv; jumptable 00482618 case 16
4826FC:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
4826FE:  BLX             j__ZN10CSetPieces4SaveEv; jumptable 00482618 case 17
482702:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
482704:  BLX             j__ZN10CStreaming4SaveEv; jumptable 00482618 case 18
482708:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
48270A:  BLX             j__ZN8CPedType4SaveEv; jumptable 00482618 case 19
48270E:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
482710:  BLX             j__ZN11CTagManager4SaveEv; jumptable 00482618 case 20
482714:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
482716:  BLX             j__ZN9CIplStore4SaveEv; jumptable 00482618 case 21
48271A:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
48271C:  BLX             j__ZN9CShopping4SaveEv; jumptable 00482618 case 22
482720:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
482722:  BLX             j__ZN9CGangWars4SaveEv; jumptable 00482618 case 23
482726:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
482728:  BLX             j__ZN17CStuntJumpManager4SaveEv; jumptable 00482618 case 24
48272C:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
48272E:  BLX             j__ZN17CEntryExitManager4SaveEv; jumptable 00482618 case 25
482732:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
482734:  BLX             j__ZN20CAERadioTrackManager4SaveEv; jumptable 00482618 case 26
482738:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
48273A:  BLX             j__ZN10C3dMarkers17SaveUser3dMarkersEv; jumptable 00482618 case 27
48273E:  B               def_482618; jumptable 00482618 default case, cases 7,13,14
482740:  BLX             j__ZN12CPostEffects4SaveEv; jumptable 00482618 case 28
482744:  LDRB.W          R0, [R8]; jumptable 00482618 default case, cases 7,13,14
482748:  CMP             R0, #0
48274A:  BEQ             loc_48268E
48274C:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482752)
48274E:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482750:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482752:  LDR             R0, [R0]; void *
482754:  CBZ             R0, loc_48276E
482756:  BLX             _ZdaPv; operator delete[](void *)
48275A:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482764)
48275C:  MOVS            R2, #0
48275E:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482766)
482760:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482762:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482764:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482766:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer ...
482768:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
48276A:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
48276E:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482774)
482770:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482772:  B               loc_4827A6
482774:  LDR             R0, =(PcSaveHelper_ptr - 0x48277C)
482776:  MOVS            R1, #4
482778:  ADD             R0, PC; PcSaveHelper_ptr
48277A:  LDR             R0, [R0]; PcSaveHelper
48277C:  STR             R1, [R0]
48277E:  B               loc_4827AE
482780:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482786)
482782:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482784:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482786:  LDR             R0, [R0]; void *
482788:  CBZ             R0, loc_4827A2
48278A:  BLX             _ZdaPv; operator delete[](void *)
48278E:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482798)
482790:  MOVS            R2, #0
482792:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x48279A)
482794:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482796:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482798:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
48279A:  LDR             R1, [R1]; unsigned int
48279C:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
48279E:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
4827A2:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x4827A8)
4827A4:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
4827A6:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
4827A8:  LDR             R0, [R0]; this
4827AA:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4827AE:  MOVS            R0, #0
4827B0:  ADD             SP, SP, #0x1B4
4827B2:  POP.W           {R8-R11}
4827B6:  POP             {R4-R7,PC}
4827B8:  BLX             j__Z10SaveBriefsv; SaveBriefs(void)
4827BC:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x4827C2)
4827BE:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
4827C0:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
4827C2:  LDR             R1, [R0]; CGenericGameStorage::ms_WorkBufferPos
4827C4:  MOVW            R0, #0xFDE4
4827C8:  SUBS            R1, R0, R1
4827CA:  CMP.W           R1, #0xFFFFFFFF
4827CE:  BLE             loc_4827DA
4827D0:  LDR             R1, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x4827D6)
4827D2:  ADD             R1, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
4827D4:  LDR             R1, [R1]; CGenericGameStorage::ms_WorkBufferPos ...
4827D6:  STR             R0, [R1]; CGenericGameStorage::ms_WorkBufferPos
4827D8:  B               loc_4827EE
4827DA:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x4827E4)
4827DC:  MOVW            R1, #0xFDE8; bool
4827E0:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
4827E2:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
4827E4:  STR             R1, [R0]; CGenericGameStorage::ms_WorkBufferPos
4827E6:  MOVS            R0, #0; this
4827E8:  BLX             j__ZN19CGenericGameStorage14SaveWorkBufferEb; CGenericGameStorage::SaveWorkBuffer(bool)
4827EC:  CBZ             R0, loc_48284A
4827EE:  MOVS            R0, #(stderr+1); this
4827F0:  BLX             j__ZN19CGenericGameStorage14SaveWorkBufferEb; CGenericGameStorage::SaveWorkBuffer(bool)
4827F4:  MOV             R4, R0
4827F6:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x4827FC)
4827F8:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
4827FA:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
4827FC:  LDR             R0, [R0]; void *
4827FE:  CBZ             R0, loc_482818
482800:  BLX             _ZdaPv; operator delete[](void *)
482804:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x48280E)
482806:  MOVS            R2, #0
482808:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482810)
48280A:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
48280C:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
48280E:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482810:  LDR             R1, [R1]; unsigned int
482812:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
482814:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
482818:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x48281E)
48281A:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
48281C:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
48281E:  LDR             R0, [R0]; this
482820:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
482824:  MOV             R5, R0
482826:  CMP             R4, #1
482828:  BNE             loc_4827AE
48282A:  LDR             R0, =(_ZN19CGenericGameStorage24ms_SaveFileNameJustSavedE_ptr - 0x482836)
48282C:  MOVW            R2, #0x103; size_t
482830:  LDR             R1, =(_ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr - 0x482838)
482832:  ADD             R0, PC; _ZN19CGenericGameStorage24ms_SaveFileNameJustSavedE_ptr
482834:  ADD             R1, PC; _ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr
482836:  LDR             R0, [R0]; char *
482838:  LDR             R1, [R1]; char *
48283A:  BLX             strncpy
48283E:  CMP             R5, #0
482840:  BNE             loc_4827AE
482842:  BLX             j__ZN4CPad16FixPadsAfterSaveEv; CPad::FixPadsAfterSave(void)
482846:  MOVS            R0, #1
482848:  B               loc_4827B0
48284A:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482850)
48284C:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
48284E:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482850:  LDR             R0, [R0]; void *
482852:  CBZ             R0, loc_48286C
482854:  BLX             _ZdaPv; operator delete[](void *)
482858:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482862)
48285A:  MOVS            R2, #0
48285C:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482864)
48285E:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482860:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482862:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482864:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer ...
482866:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
482868:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
48286C:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482872)
48286E:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482870:  B               loc_4827A6
