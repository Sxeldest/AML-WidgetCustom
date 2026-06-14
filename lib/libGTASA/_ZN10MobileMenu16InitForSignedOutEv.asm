; =========================================================
; Game Engine Function: _ZN10MobileMenu16InitForSignedOutEv
; Address            : 0x29B1A8 - 0x29B226
; =========================================================

29B1A8:  PUSH            {R4,R5,R7,LR}
29B1AA:  ADD             R7, SP, #8
29B1AC:  MOV             R4, R0
29B1AE:  LDR             R0, =(AllowMissionReplay_ptr - 0x29B1B6)
29B1B0:  MOVS            R1, #1
29B1B2:  ADD             R0, PC; AllowMissionReplay_ptr
29B1B4:  STRB.W          R1, [R4,#0x55]
29B1B8:  MOVS            R1, #0
29B1BA:  LDR             R0, [R0]; AllowMissionReplay
29B1BC:  STR             R1, [R0]
29B1BE:  B               loc_29B1C6
29B1C0:  LDR             R1, [R0]
29B1C2:  LDR             R1, [R1,#4]
29B1C4:  BLX             R1
29B1C6:  LDR             R1, [R4,#0x24]
29B1C8:  CBZ             R1, loc_29B1DA
29B1CA:  LDR             R0, [R4,#0x28]
29B1CC:  SUBS            R1, #1
29B1CE:  LDR.W           R0, [R0,R1,LSL#2]
29B1D2:  STR             R1, [R4,#0x24]
29B1D4:  CMP             R0, #0
29B1D6:  BNE             loc_29B1C0
29B1D8:  B               loc_29B1C8
29B1DA:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x29B1E0)
29B1DC:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
29B1DE:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing ...
29B1E0:  LDRB            R0, [R0]; this
29B1E2:  CBZ             R0, loc_29B1EC
29B1E4:  BLX             j__ZN12CCutsceneMgr12SkipCutsceneEv; CCutsceneMgr::SkipCutscene(void)
29B1E8:  BLX             j__ZN12CCutsceneMgr18DeleteCutsceneDataEv; CCutsceneMgr::DeleteCutsceneData(void)
29B1EC:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
29B1F0:  MOV             R0, R4; this
29B1F2:  BLX             j__ZN10MobileMenu4LoadEv; MobileMenu::Load(void)
29B1F6:  MOVS            R0, #0x58 ; 'X'; unsigned int
29B1F8:  BLX             _Znwj; operator new(uint)
29B1FC:  MOVS            R1, #0; bool
29B1FE:  MOVS            R2, #0; bool
29B200:  MOV             R5, R0
29B202:  BLX             j__ZN10FlowScreenC2Ebb; FlowScreen::FlowScreen(bool,bool)
29B206:  LDR             R0, =(_ZTV14MainMenuScreen_ptr - 0x29B20C)
29B208:  ADD             R0, PC; _ZTV14MainMenuScreen_ptr
29B20A:  LDR             R0, [R0]; `vtable for'MainMenuScreen ...
29B20C:  ADDS            R0, #8
29B20E:  STR             R0, [R5]
29B210:  MOV             R0, R5; this
29B212:  BLX             j__ZN14MainMenuScreen11AddAllItemsEv; MainMenuScreen::AddAllItems(void)
29B216:  LDR             R0, [R4,#0x2C]
29B218:  CMP             R0, #0
29B21A:  ITT NE
29B21C:  MOVNE           R0, R4; this
29B21E:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29B222:  STR             R5, [R4,#0x2C]
29B224:  POP             {R4,R5,R7,PC}
