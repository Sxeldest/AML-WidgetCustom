; =========================================================
; Game Engine Function: _ZN6CWorld7ProcessEv
; Address            : 0x4276F4 - 0x427932
; =========================================================

4276F4:  PUSH            {R4-R7,LR}
4276F6:  ADD             R7, SP, #0xC
4276F8:  PUSH.W          {R8-R10}
4276FC:  LDR.W           R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x427704)
427700:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
427702:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
427704:  LDR             R5, [R0]; CWorld::ms_listMovingEntityPtrs
427706:  B               loc_427712
427708:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
42770C:  MOV             R1, R4; CPed *
42770E:  BLX             j__ZN17CEventGlobalGroup14AddEventsToPedEP4CPed; CEventGlobalGroup::AddEventsToPed(CPed *)
427712:  CBZ             R5, loc_427726
427714:  LDRD.W          R4, R5, [R5]
427718:  LDRB.W          R0, [R4,#0x3A]
42771C:  AND.W           R0, R0, #7
427720:  CMP             R0, #3
427722:  BNE             loc_427712
427724:  B               loc_427708
427726:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x42772E)
42772A:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
42772C:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
42772E:  LDRB            R0, [R0]; CPedGroups::ms_activeGroups
427730:  CBZ             R0, loc_427742
427732:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
427736:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x42773E)
42773A:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
42773C:  LDR             R1, [R1]; CPedGroup *
42773E:  BLX             j__ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup; CEventGlobalGroup::AddEventsToGroup(CPedGroup *)
427742:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x42774A)
427746:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
427748:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
42774A:  LDRB            R0, [R0,#(byte_9EF9B1 - 0x9EF9B0)]
42774C:  CBZ             R0, loc_427762
42774E:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x427756)
427752:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
427754:  LDR             R4, [R0]; CPedGroups::ms_groups ...
427756:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
42775A:  ADD.W           R1, R4, #0x2D4; CPedGroup *
42775E:  BLX             j__ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup; CEventGlobalGroup::AddEventsToGroup(CPedGroup *)
427762:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x42776A)
427766:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
427768:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
42776A:  LDRB            R0, [R0,#(byte_9EF9B2 - 0x9EF9B0)]
42776C:  CBZ             R0, loc_427782
42776E:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x427776)
427772:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
427774:  LDR             R4, [R0]; CPedGroups::ms_groups ...
427776:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
42777A:  ADD.W           R1, R4, #0x5A8; CPedGroup *
42777E:  BLX             j__ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup; CEventGlobalGroup::AddEventsToGroup(CPedGroup *)
427782:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x42778A)
427786:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
427788:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
42778A:  LDRB            R0, [R0,#(byte_9EF9B3 - 0x9EF9B0)]
42778C:  CBZ             R0, loc_4277A2
42778E:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x427796)
427792:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
427794:  LDR             R4, [R0]; CPedGroups::ms_groups ...
427796:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
42779A:  ADDW            R1, R4, #0x87C; CPedGroup *
42779E:  BLX             j__ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup; CEventGlobalGroup::AddEventsToGroup(CPedGroup *)
4277A2:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4277AA)
4277A6:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4277A8:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4277AA:  LDRB            R0, [R0,#(byte_9EF9B4 - 0x9EF9B0)]
4277AC:  CBZ             R0, loc_4277C2
4277AE:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4277B6)
4277B2:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4277B4:  LDR             R4, [R0]; CPedGroups::ms_groups ...
4277B6:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
4277BA:  ADD.W           R1, R4, #0xB50; CPedGroup *
4277BE:  BLX             j__ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup; CEventGlobalGroup::AddEventsToGroup(CPedGroup *)
4277C2:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4277CA)
4277C6:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4277C8:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4277CA:  LDRB            R0, [R0,#(byte_9EF9B5 - 0x9EF9B0)]
4277CC:  CBZ             R0, loc_4277E2
4277CE:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4277D6)
4277D2:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4277D4:  LDR             R4, [R0]; CPedGroups::ms_groups ...
4277D6:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
4277DA:  ADDW            R1, R4, #0xE24; CPedGroup *
4277DE:  BLX             j__ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup; CEventGlobalGroup::AddEventsToGroup(CPedGroup *)
4277E2:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4277EA)
4277E6:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4277E8:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4277EA:  LDRB            R0, [R0,#(byte_9EF9B6 - 0x9EF9B0)]
4277EC:  CBZ             R0, loc_427806
4277EE:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4277FA)
4277F2:  MOVW            R1, #0x10F8
4277F6:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4277F8:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4277FA:  ADDS            R4, R0, R1
4277FC:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
427800:  MOV             R1, R4; CPedGroup *
427802:  BLX             j__ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup; CEventGlobalGroup::AddEventsToGroup(CPedGroup *)
427806:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x42780E)
42780A:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
42780C:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
42780E:  LDRB            R0, [R0,#(byte_9EF9B7 - 0x9EF9B0)]
427810:  CBZ             R0, loc_42782A
427812:  LDR.W           R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x42781E)
427816:  MOVW            R1, #0x13CC
42781A:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
42781C:  LDR             R0, [R0]; CPedGroups::ms_groups ...
42781E:  ADDS            R4, R0, R1
427820:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
427824:  MOV             R1, R4; CPedGroup *
427826:  BLX             j__ZN17CEventGlobalGroup16AddEventsToGroupEP9CPedGroup; CEventGlobalGroup::AddEventsToGroup(CPedGroup *)
42782A:  BLX             j__ZN24CInformFriendsEventQueue7ProcessEv; CInformFriendsEventQueue::Process(void)
42782E:  BLX             j__ZN22CInformGroupEventQueue7ProcessEv; CInformGroupEventQueue::Process(void)
427832:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
427836:  MOVS            R1, #0; bool
427838:  BLX             j__ZN11CEventGroup5FlushEb; CEventGroup::Flush(bool)
42783C:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x427844)
427840:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
427842:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
427844:  LDRB            R0, [R0]; CTimer::m_FrameCounter
427846:  LSLS            R0, R0, #0x1A; this
427848:  IT EQ
42784A:  BLXEQ           j__ZN11CReferences25PruneAllReferencesInWorldEv; CReferences::PruneAllReferencesInWorld(void)
42784E:  LDR.W           R0, =(_ZN6CWorld20bProcessCutsceneOnlyE_ptr - 0x427856)
427852:  ADD             R0, PC; _ZN6CWorld20bProcessCutsceneOnlyE_ptr
427854:  LDR             R0, [R0]; CWorld::bProcessCutsceneOnly ...
427856:  LDRB            R0, [R0]; CWorld::bProcessCutsceneOnly
427858:  CBZ             R0, loc_4278BC
42785A:  LDR.W           R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x427862)
42785E:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
427860:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
427862:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
427864:  CBZ             R0, loc_4278BC
427866:  LDR.W           R0, =(_ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr - 0x427870)
42786A:  MOVS            R5, #0
42786C:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_pCutsceneObjectsE_ptr
42786E:  LDR             R6, [R0]; CCutsceneMgr::ms_pCutsceneObjects ...
427870:  LDR.W           R4, [R6,R5,LSL#2]
427874:  CMP             R4, #0
427876:  ITT NE
427878:  LDRNE.W         R0, [R4,#0xB4]
42787C:  CMPNE           R0, #0
42787E:  BEQ             loc_4278B4
427880:  MOV             R0, R4; this
427882:  BLX             j__ZN7CEntity10UpdateAnimEv; CEntity::UpdateAnim(void)
427886:  LDR             R0, [R4]
427888:  LDR             R1, [R0,#0x2C]
42788A:  MOV             R0, R4
42788C:  BLX             R1
42788E:  LDR             R0, [R4]
427890:  LDR             R1, [R0,#0x30]
427892:  MOV             R0, R4
427894:  BLX             R1
427896:  LDR             R0, [R4,#0x18]
427898:  CBZ             R0, loc_4278AE
42789A:  LDR             R1, [R0,#4]
42789C:  LDR             R0, [R4,#0x14]
42789E:  ADDS            R1, #0x10
4278A0:  CBZ             R0, loc_4278A8
4278A2:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
4278A6:  B               loc_4278AE
4278A8:  ADDS            R0, R4, #4
4278AA:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
4278AE:  MOV             R0, R4; this
4278B0:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
4278B4:  ADDS            R5, #1
4278B6:  CMP             R5, #0x32 ; '2'
4278B8:  BNE             loc_427870
4278BA:  B               loc_427D42
4278BC:  LDR.W           R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x4278C4)
4278C0:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
4278C2:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
4278C4:  LDR             R4, [R0]; CWorld::ms_listMovingEntityPtrs
4278C6:  CMP             R4, #0
4278C8:  BEQ             loc_4279BE
4278CA:  LDRD.W          R0, R4, [R4]; this
4278CE:  LDRB            R1, [R0,#0x1D]
4278D0:  LSLS            R1, R1, #0x1C
4278D2:  IT PL
4278D4:  BLXPL           j__ZN7CEntity10UpdateAnimEv; CEntity::UpdateAnim(void)
4278D8:  CMP             R4, #0
4278DA:  BNE             loc_4278CA
4278DC:  LDR.W           R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x4278E4)
4278E0:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
4278E2:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
4278E4:  LDR             R5, [R0]; CWorld::ms_listMovingEntityPtrs
4278E6:  CMP             R5, #0
4278E8:  BEQ             loc_4279BE
4278EA:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x4278F6)
4278EE:  MOV.W           R9, #0
4278F2:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
4278F4:  LDR.W           R8, [R0]; CHID::currentInstanceIndex ...
4278F8:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x427900)
4278FC:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
4278FE:  LDR.W           R10, [R0]; CHID::currentInstanceIndex ...
427902:  LDRD.W          R4, R5, [R5]
427906:  LDRB            R0, [R4,#0x1D]
427908:  LSLS            R0, R0, #0x1C
42790A:  BMI             loc_427968
42790C:  LDRB.W          R0, [R4,#0x3A]
427910:  ADD.W           R6, R4, #0x1C
427914:  AND.W           R0, R0, #7
427918:  CMP             R0, #2
42791A:  BNE             loc_42792E
42791C:  LDR.W           R0, [R4,#0x464]
427920:  CBZ             R0, loc_42792E
427922:  LDR.W           R0, [R0,#0x59C]
427926:  CMP             R0, #1
427928:  IT LS
42792A:  STRLS.W         R0, [R8]; CHID::currentInstanceIndex
42792E:  B.W             sub_3F65AC
