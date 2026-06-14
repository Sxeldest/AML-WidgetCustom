; =========================================================
; Game Engine Function: _ZN4CPedD2Ev
; Address            : 0x49F634 - 0x49F78E
; =========================================================

49F634:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CPed::~CPed()'
49F636:  ADD             R7, SP, #8
49F638:  MOV             R4, R0
49F63A:  LDR             R0, =(_ZTV4CPed_ptr - 0x49F648)
49F63C:  LDRB.W          R1, [R4,#0x48F]
49F640:  ADDW            R5, R4, #0x484
49F644:  ADD             R0, PC; _ZTV4CPed_ptr
49F646:  LDR             R0, [R0]; `vtable for'CPed ...
49F648:  ADDS            R0, #8
49F64A:  STR             R0, [R4]
49F64C:  LSLS            R0, R1, #0x1F
49F64E:  BEQ             loc_49F686
49F650:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x49F65A)
49F652:  LDRSH.W         R1, [R4,#0x79C]
49F656:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
49F658:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
49F65A:  ADD.W           R1, R1, R1,LSL#2
49F65E:  LDRSH.W         R0, [R0,R1,LSL#2]
49F662:  MOVW            R1, #0x6676; int
49F666:  ADD             R0, R1; this
49F668:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
49F66C:  LDR             R0, [R5,#8]
49F66E:  BIC.W           R0, R0, #0x1000000
49F672:  STR             R0, [R5,#8]
49F674:  LDRSH.W         R1, [R4,#0x79C]; CEntity *
49F678:  MOV             R0, R4; this
49F67A:  BLX             j__ZN11CTheScripts36RemoveFromWaitingForScriptBrainArrayEP7CEntitys; CTheScripts::RemoveFromWaitingForScriptBrainArray(CEntity *,short)
49F67E:  MOVW            R0, #0xFFFF
49F682:  STRH.W          R0, [R4,#0x79C]
49F686:  MOV             R0, R4; this
49F688:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
49F68C:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x49F69A)
49F68E:  MOV             R2, #0xBED87F3B
49F696:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
49F698:  LDR             R0, [R0]; CPools::ms_pPedPool ...
49F69A:  LDR             R0, [R0]; CPools::ms_pPedPool
49F69C:  LDRD.W          R1, R0, [R0]
49F6A0:  SUBS            R1, R4, R1
49F6A2:  ASRS            R1, R1, #2
49F6A4:  MULS            R1, R2
49F6A6:  LDRB            R0, [R0,R1]
49F6A8:  ORR.W           R1, R0, R1,LSL#8
49F6AC:  MOVS            R0, #2
49F6AE:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
49F6B2:  MOV             R0, R4; this
49F6B4:  BLX             j__ZN14CConversations24RemoveConversationForPedEP4CPed; CConversations::RemoveConversationForPed(CPed *)
49F6B8:  LDR.W           R0, [R4,#0x590]; this
49F6BC:  CMP             R0, #0
49F6BE:  ITT NE
49F6C0:  ADDNE.W         R1, R4, #0x590; CEntity **
49F6C4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49F6C8:  LDR.W           R0, [R4,#0x738]; this
49F6CC:  MOVS            R1, #0
49F6CE:  STR.W           R1, [R4,#0x590]
49F6D2:  CMP             R0, #0
49F6D4:  IT NE
49F6D6:  BLXNE           j__ZN5CFire10ExtinguishEv; CFire::Extinguish(void)
49F6DA:  LDR.W           R0, [R4,#0x790]; this
49F6DE:  CBZ             R0, loc_49F6EC
49F6E0:  MOV             R1, R4; CPed *
49F6E2:  BLX             j__ZN11CCoverPoint23ReleaseCoverPointForPedEP4CPed; CCoverPoint::ReleaseCoverPointForPed(CPed *)
49F6E6:  MOVS            R0, #0
49F6E8:  STR.W           R0, [R4,#0x790]
49F6EC:  MOV             R0, R4; this
49F6EE:  BLX             j__ZN4CPed12ClearWeaponsEv; CPed::ClearWeapons(void)
49F6F2:  LDRB            R0, [R5,#6]
49F6F4:  LSLS            R0, R0, #0x1F
49F6F6:  BEQ             loc_49F704
49F6F8:  LDR             R0, =(_ZN11CPopulation16NumMiamiViceCopsE_ptr - 0x49F6FE)
49F6FA:  ADD             R0, PC; _ZN11CPopulation16NumMiamiViceCopsE_ptr
49F6FC:  LDR             R0, [R0]; CPopulation::NumMiamiViceCops ...
49F6FE:  LDR             R1, [R0]; CPopulation::NumMiamiViceCops
49F700:  SUBS            R1, #1
49F702:  STR             R1, [R0]; CPopulation::NumMiamiViceCops
49F704:  MOV             R0, R4; this
49F706:  MOVS            R1, #(stderr+1); CPed *
49F708:  BLX             j__ZN11CPopulation14UpdatePedCountEP4CPedh; CPopulation::UpdatePedCount(CPed *,uchar)
49F70C:  ADD.W           R0, R4, #0x298; this
49F710:  BLX             j__ZN23CAEPedSpeechAudioEntity9TerminateEv; CAEPedSpeechAudioEntity::Terminate(void)
49F714:  ADD.W           R0, R4, #0x398; this
49F718:  BLX             j__ZN23CAEPedWeaponAudioEntity9TerminateEv; CAEPedWeaponAudioEntity::Terminate(void)
49F71C:  ADD.W           R0, R4, #0x13C; this
49F720:  BLX             j__ZN17CAEPedAudioEntity9TerminateEv; CAEPedAudioEntity::Terminate(void)
49F724:  LDR.W           R0, [R4,#0x440]; this
49F728:  CBZ             R0, loc_49F732
49F72A:  BLX             j__ZN16CPedIntelligenceD2Ev; CPedIntelligence::~CPedIntelligence()
49F72E:  BLX             j__ZN16CPedIntelligencedlEPv; CPedIntelligence::operator delete(void *)
49F732:  LDR.W           R0, [R4,#0x740]; this
49F736:  CMP             R0, #0
49F738:  ITT NE
49F73A:  ADDNE.W         R1, R4, #0x740; CEntity **
49F73E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49F742:  LDR             R0, =(_ZTV14CAEAudioEntity_ptr - 0x49F748)
49F744:  ADD             R0, PC; _ZTV14CAEAudioEntity_ptr
49F746:  LDR             R0, [R0]; `vtable for'CAEAudioEntity ...
49F748:  ADD.W           R5, R0, #8
49F74C:  ADD.W           R0, R4, #0x3A0; this
49F750:  STR.W           R5, [R4,#0x398]
49F754:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
49F758:  ADD.W           R0, R4, #0x2A0; this
49F75C:  STR.W           R5, [R4,#0x298]
49F760:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
49F764:  LDR             R0, =(_ZTV17CAEPedAudioEntity_ptr - 0x49F76A)
49F766:  ADD             R0, PC; _ZTV17CAEPedAudioEntity_ptr
49F768:  LDR             R0, [R0]; `vtable for'CAEPedAudioEntity ...
49F76A:  ADDS            R0, #8
49F76C:  STR.W           R0, [R4,#0x13C]
49F770:  ADD.W           R0, R4, #0x1E4; this
49F774:  BLX             j__ZN22CAETwinLoopSoundEntityD2Ev; CAETwinLoopSoundEntity::~CAETwinLoopSoundEntity()
49F778:  ADD.W           R0, R4, #0x144; this
49F77C:  STR.W           R5, [R4,#0x13C]
49F780:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
49F784:  MOV             R0, R4; this
49F786:  POP.W           {R4,R5,R7,LR}
49F78A:  B.W             sub_19446C
