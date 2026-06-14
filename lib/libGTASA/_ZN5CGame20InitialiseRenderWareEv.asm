; =========================================================
; Game Engine Function: _ZN5CGame20InitialiseRenderWareEv
; Address            : 0x46F500 - 0x46F64A
; =========================================================

46F500:  PUSH            {R4,R5,R7,LR}
46F502:  ADD             R7, SP, #8
46F504:  SUB             SP, SP, #0x18
46F506:  BLX             j__Z15ValidateVersionv; ValidateVersion(void)
46F50A:  BLX             j__ZN9CTxdStore10InitialiseEv; CTxdStore::Initialise(void)
46F50E:  BLX             j__ZN18CVisibilityPlugins10InitialiseEv; CVisibilityPlugins::Initialise(void)
46F512:  ADR             R0, aMobile_0; "mobile"
46F514:  MOVS            R1, #0
46F516:  MOVS            R2, #6
46F518:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
46F51C:  ADR             R0, aTxd_2; "txd"
46F51E:  MOVS            R1, #0
46F520:  MOVS            R2, #6
46F522:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
46F526:  ADR             R0, aGta3_4; "gta3"
46F528:  MOVS            R1, #0
46F52A:  MOVS            R2, #6
46F52C:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
46F530:  ADR             R0, aGtaInt_0; "gta_int"
46F532:  MOVS            R1, #0
46F534:  MOVS            R2, #6
46F536:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
46F53A:  ADR             R0, aCutscene_1; "cutscene"
46F53C:  MOVS            R1, #0
46F53E:  MOVS            R2, #6
46F540:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
46F544:  BLX             j__Z17UseHiDetailPlayerv; UseHiDetailPlayer(void)
46F548:  CMP             R0, #1
46F54A:  MOV.W           R1, #0
46F54E:  ITE NE
46F550:  ADRNE           R0, aPlayer_3; "player"
46F552:  ADREQ           R0, aPlayerhi_1; "playerhi"
46F554:  MOVS            R2, #4
46F556:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
46F55A:  ADR             R0, aMenu_0; "menu"
46F55C:  MOVS            R1, #0
46F55E:  MOVS            R2, #4
46F560:  MOVS            R4, #0
46F562:  BLX             j__ZN22TextureDatabaseRuntime4LoadEPKcb21TextureDatabaseFormat; TextureDatabaseRuntime::Load(char const*,bool,TextureDatabaseFormat)
46F566:  LDR             R0, =(RsGlobal_ptr - 0x46F56E)
46F568:  MOVS            R2, #1; int
46F56A:  ADD             R0, PC; RsGlobal_ptr
46F56C:  LDR             R1, [R0]; RsGlobal
46F56E:  LDRD.W          R0, R1, [R1,#(dword_9FC900 - 0x9FC8FC)]; int
46F572:  BLX             j__Z12CameraCreateiii; CameraCreate(int,int,int)
46F576:  LDR             R1, =(Scene_ptr - 0x46F57E)
46F578:  CMP             R0, #0
46F57A:  ADD             R1, PC; Scene_ptr
46F57C:  LDR             R1, [R1]; Scene
46F57E:  STR             R0, [R1,#(dword_9FC93C - 0x9FC938)]
46F580:  BEQ             loc_46F644
46F582:  LDR             R0, =(TheCamera_ptr - 0x46F588)
46F584:  ADD             R0, PC; TheCamera_ptr
46F586:  LDR             R4, [R0]; TheCamera
46F588:  MOV             R0, R4; this
46F58A:  BLX             j__ZN7CCamera4InitEv; CCamera::Init(void)
46F58E:  LDR             R0, =(Scene_ptr - 0x46F594)
46F590:  ADD             R0, PC; Scene_ptr
46F592:  LDR             R5, [R0]; Scene
46F594:  MOV             R0, R4
46F596:  LDR             R1, [R5,#(dword_9FC93C - 0x9FC938)]
46F598:  BLX             j__ZN7CCamera11SetRwCameraEP8RwCamera; CCamera::SetRwCamera(RwCamera *)
46F59C:  LDR             R0, [R5,#(dword_9FC93C - 0x9FC938)]
46F59E:  MOVS            R1, #0x44FA0000
46F5A4:  BLX             j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
46F5A8:  LDR             R0, [R5,#(dword_9FC93C - 0x9FC938)]
46F5AA:  MOV             R1, #0x3F666666
46F5B2:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
46F5B6:  LDR             R0, [R5,#(dword_9FC93C - 0x9FC938)]
46F5B8:  MOVW            R2, #0x3333
46F5BC:  MOVW            R3, #0xAAAB
46F5C0:  MOVT            R2, #0x3F33
46F5C4:  MOVT            R3, #0x3FAA
46F5C8:  MOVS            R1, #0
46F5CA:  MOVS            R4, #0
46F5CC:  BLX             j__Z10CameraSizeP8RwCameraP6RwRectff; CameraSize(RwCamera *,RwRect *,float,float)
46F5D0:  ADR             R0, dword_46F650
46F5D2:  MOVW            R2, #0x4000
46F5D6:  VLD1.64         {D16-D17}, [R0@128]
46F5DA:  MOV             R0, SP
46F5DC:  MOV             R1, R0
46F5DE:  MOVT            R2, #0xC61C
46F5E2:  VST1.32         {D16-D17}, [R1]!
46F5E6:  STR             R2, [R1]
46F5E8:  STR             R2, [SP,#0x20+var_C]
46F5EA:  BLX             j__Z13RpWorldCreateP6RwBBox; RpWorldCreate(RwBBox *)
46F5EE:  LDR             R1, [R5,#(dword_9FC93C - 0x9FC938)]
46F5F0:  CMP             R0, #0
46F5F2:  STR             R0, [R5]
46F5F4:  BEQ             loc_46F636
46F5F6:  BLX             j__Z16RpWorldAddCameraP7RpWorldP8RwCamera; RpWorldAddCamera(RpWorld *,RwCamera *)
46F5FA:  LDR             R0, =(Scene_ptr - 0x46F600)
46F5FC:  ADD             R0, PC; Scene_ptr
46F5FE:  LDR             R0, [R0]; Scene
46F600:  LDR             R0, [R0]
46F602:  BLX             j__Z12LightsCreateP7RpWorld; LightsCreate(RpWorld *)
46F606:  BLX             j__Z15CreateDebugFontv; CreateDebugFont(void)
46F60A:  BLX             j__ZN5CFont10InitialiseEv; CFont::Initialise(void)
46F60E:  BLX             j__ZN4CHud10InitialiseEv; CHud::Initialise(void)
46F612:  BLX             j__ZN11CPlayerSkin10InitialiseEv; CPlayerSkin::Initialise(void)
46F616:  BLX             j__ZN12CPostEffects10InitialiseEv; CPostEffects::Initialise(void)
46F61A:  LDR             R0, =(_ZN5CGame17m_pWorkingMatrix1E_ptr - 0x46F622)
46F61C:  LDR             R1, =(_ZN5CGame17m_pWorkingMatrix2E_ptr - 0x46F624)
46F61E:  ADD             R0, PC; _ZN5CGame17m_pWorkingMatrix1E_ptr
46F620:  ADD             R1, PC; _ZN5CGame17m_pWorkingMatrix2E_ptr
46F622:  LDR             R4, [R0]; CGame::m_pWorkingMatrix1 ...
46F624:  LDR             R5, [R1]; CGame::m_pWorkingMatrix2 ...
46F626:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
46F62A:  STR             R0, [R4]; CGame::m_pWorkingMatrix1
46F62C:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
46F630:  MOVS            R4, #1
46F632:  STR             R0, [R5]; CGame::m_pWorkingMatrix2
46F634:  B               loc_46F644
46F636:  MOV             R0, R1
46F638:  BLX             j__Z13CameraDestroyP8RwCamera; CameraDestroy(RwCamera *)
46F63C:  LDR             R0, =(Scene_ptr - 0x46F642)
46F63E:  ADD             R0, PC; Scene_ptr
46F640:  LDR             R0, [R0]; Scene
46F642:  STR             R4, [R0,#(dword_9FC93C - 0x9FC938)]
46F644:  MOV             R0, R4
46F646:  ADD             SP, SP, #0x18
46F648:  POP             {R4,R5,R7,PC}
