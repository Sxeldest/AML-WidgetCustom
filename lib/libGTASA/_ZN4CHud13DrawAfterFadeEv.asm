; =========================================================
; Game Engine Function: _ZN4CHud13DrawAfterFadeEv
; Address            : 0x43A658 - 0x43A7C2
; =========================================================

43A658:  PUSH            {R7,LR}
43A65A:  MOV             R7, SP
43A65C:  MOVS            R0, #9
43A65E:  MOVS            R1, #1
43A660:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43A664:  MOVS            R0, #2
43A666:  MOVS            R1, #3
43A668:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43A66C:  MOVS            R0, #0xC
43A66E:  MOVS            R1, #0
43A670:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43A674:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x43A67C)
43A676:  LDR             R1, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x43A67E)
43A678:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
43A67A:  ADD             R1, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
43A67C:  LDR             R0, [R0]; CTimer::m_UserPause ...
43A67E:  LDR             R1, [R1]; CWeapon::ms_bTakePhoto ...
43A680:  LDRB            R0, [R0]; CTimer::m_UserPause
43A682:  LDRB            R1, [R1]; CWeapon::ms_bTakePhoto
43A684:  ORRS            R0, R1
43A686:  LSLS            R0, R0, #0x18
43A688:  IT NE
43A68A:  POPNE           {R7,PC}
43A68C:  MOVS            R0, #1; unsigned __int8
43A68E:  BLX             j__Z12emu_GammaSeth; emu_GammaSet(uchar)
43A692:  MOV.W           R0, #0xFFFFFFFF; int
43A696:  MOVS            R1, #0; bool
43A698:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43A69C:  CBZ             R0, loc_43A6DC
43A69E:  MOV.W           R0, #0xFFFFFFFF; int
43A6A2:  MOVS            R1, #0; bool
43A6A4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43A6A8:  LDR.W           R0, [R0,#0x5A4]
43A6AC:  CMP             R0, #4
43A6AE:  BEQ             loc_43A71C
43A6B0:  MOV.W           R0, #0xFFFFFFFF; int
43A6B4:  MOVS            R1, #0; bool
43A6B6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43A6BA:  LDR             R1, =(gMobileMenu_ptr - 0x43A6C0)
43A6BC:  ADD             R1, PC; gMobileMenu_ptr
43A6BE:  LDR             R1, [R1]; gMobileMenu
43A6C0:  LDR             R2, [R1,#(dword_6E0098 - 0x6E006C)]
43A6C2:  CBNZ            R2, loc_43A71C
43A6C4:  LDR.W           R0, [R0,#0x5A4]
43A6C8:  CMP             R0, #3
43A6CA:  BEQ             loc_43A71C
43A6CC:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x43A6D2)
43A6CE:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
43A6D0:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing ...
43A6D2:  LDRB            R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing
43A6D4:  CBNZ            R0, loc_43A71C
43A6D6:  LDR             R0, [R1,#(dword_6E0090 - 0x6E006C)]
43A6D8:  CBZ             R0, loc_43A6F4
43A6DA:  B               loc_43A71C
43A6DC:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x43A6E2)
43A6DE:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
43A6E0:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing ...
43A6E2:  LDRB            R0, [R0]; CCutsceneMgr::ms_cutsceneProcessing
43A6E4:  CBNZ            R0, loc_43A71C
43A6E6:  LDR             R0, =(gMobileMenu_ptr - 0x43A6EC)
43A6E8:  ADD             R0, PC; gMobileMenu_ptr
43A6EA:  LDR             R0, [R0]; gMobileMenu
43A6EC:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
43A6EE:  CBNZ            R1, loc_43A71C
43A6F0:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
43A6F2:  CBNZ            R0, loc_43A71C
43A6F4:  LDR             R0, =(TheCamera_ptr - 0x43A6FC)
43A6F6:  LDR             R1, =(_ZN4CHud26bScriptDontDisplayAreaNameE_ptr - 0x43A6FE)
43A6F8:  ADD             R0, PC; TheCamera_ptr
43A6FA:  ADD             R1, PC; _ZN4CHud26bScriptDontDisplayAreaNameE_ptr
43A6FC:  LDR             R0, [R0]; TheCamera
43A6FE:  LDR             R1, [R1]; CHud::bScriptDontDisplayAreaName ...
43A700:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
43A704:  LDRB            R1, [R1]; CHud::bScriptDontDisplayAreaName
43A706:  ORRS            R0, R1
43A708:  LSLS            R0, R0, #0x18
43A70A:  BNE             loc_43A71C
43A70C:  LDR             R0, =(_ZN4CHud14m_VehicleStateE_ptr - 0x43A712)
43A70E:  ADD             R0, PC; _ZN4CHud14m_VehicleStateE_ptr
43A710:  LDR             R0, [R0]; CHud::m_VehicleState ...
43A712:  LDR             R0, [R0]; this
43A714:  CMP             R0, #0
43A716:  IT EQ
43A718:  BLXEQ           j__ZN4CHud12DrawAreaNameEv; CHud::DrawAreaName(void)
43A71C:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x43A722)
43A71E:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
43A720:  LDR             R0, [R0]; CHud::m_BigMessage ...
43A722:  LDRH            R0, [R0]; CHud::m_BigMessage
43A724:  CMP             R0, #0
43A726:  ITT EQ
43A728:  MOVEQ           R0, #0; this
43A72A:  BLXEQ           j__ZN4CHud14DrawScriptTextEh; CHud::DrawScriptText(uchar)
43A72E:  MOVS            R0, #0; unsigned __int8
43A730:  BLX             j__Z12emu_GammaSeth; emu_GammaSet(uchar)
43A734:  MOVS            R0, #0; this
43A736:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43A73A:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x43A740)
43A73C:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43A73E:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
43A740:  LDRB            R0, [R0,#(_ZN4CPad23NewMouseControllerStateE+1 - 0x959AF4)]; this
43A742:  CBZ             R0, loc_43A764
43A744:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
43A748:  CMP             R0, #2
43A74A:  BEQ             loc_43A764
43A74C:  MOVS            R0, #0; this
43A74E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43A752:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x43A758)
43A754:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43A756:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
43A758:  LDRB            R0, [R0]; CPad::NewMouseControllerState
43A75A:  CMP             R0, #0
43A75C:  IT NE
43A75E:  MOVNE           R0, #(stderr+1); this
43A760:  BLX             j__ZN15CTouchInterface12VisualizeAllEb; CTouchInterface::VisualizeAll(bool)
43A764:  MOVS            R0, #(stderr+1); this
43A766:  BLX             j__ZN15CTouchInterface7DrawAllEb; CTouchInterface::DrawAll(bool)
43A76A:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x43A772)
43A76C:  LDR             R1, =(_ZN8CGarages15MessageIDStringE_ptr - 0x43A774)
43A76E:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
43A770:  ADD             R1, PC; _ZN8CGarages15MessageIDStringE_ptr
43A772:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
43A774:  LDR             R1, [R1]; CGarages::MessageIDString ...
43A776:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
43A778:  LDRB            R1, [R1]; CGarages::MessageIDString
43A77A:  ORRS            R0, R1
43A77C:  LSLS            R0, R0, #0x18
43A77E:  BNE             loc_43A792
43A780:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43A786)
43A782:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43A784:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43A786:  LDR.W           R0, [R0,#(dword_6F3A1C - 0x6F3794)]; this
43A78A:  CMP             R0, #0
43A78C:  IT NE
43A78E:  BLXNE           j__ZN15CWidgetHelpText7ProcessEv; CWidgetHelpText::Process(void)
43A792:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43A798)
43A794:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43A796:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43A798:  LDR.W           R0, [R0,#(dword_6F3838 - 0x6F3794)]; this
43A79C:  CMP             R0, #0
43A79E:  IT NE
43A7A0:  BLXNE           j__ZN13CWidgetButton4DrawEv; CWidgetButton::Draw(void)
43A7A4:  LDR             R0, =(_ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr - 0x43A7AA)
43A7A6:  ADD             R0, PC; _ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr
43A7A8:  LDR             R0, [R0]; CTheScripts::bDrawSubtitlesBeforeFade ...
43A7AA:  LDRB            R0, [R0]; this
43A7AC:  CMP             R0, #0
43A7AE:  IT EQ
43A7B0:  BLXEQ           j__ZN4CHud13DrawSubtitlesEv; CHud::DrawSubtitles(void)
43A7B4:  BLX             j__ZN4CHud16DrawMissionTitleEv; CHud::DrawMissionTitle(void)
43A7B8:  MOVS            R0, #0; this
43A7BA:  POP.W           {R7,LR}
43A7BE:  B.W             _ZN4CHud17DrawOddJobMessageEh; CHud::DrawOddJobMessage(uchar)
