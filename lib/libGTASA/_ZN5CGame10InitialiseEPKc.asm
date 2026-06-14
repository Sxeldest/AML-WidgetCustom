; =========================================================
; Game Engine Function: _ZN5CGame10InitialiseEPKc
; Address            : 0x3F3754 - 0x3F37B4
; =========================================================

3F3754:  PUSH            {R4-R7,LR}
3F3756:  ADD             R7, SP, #0xC
3F3758:  PUSH.W          {R11}
3F375C:  MOV             R4, R0
3F375E:  BLX             j__ZN5CGame5Init1EPKc; CGame::Init1(char const*)
3F3762:  BLX             j__ZN9CColAccel10startCacheEv; CColAccel::startCache(void)
3F3766:  ADR             R0, aDataDefaultDat; "DATA\\DEFAULT.DAT"
3F3768:  BLX             j__ZN11CFileLoader9LoadLevelEPKc; CFileLoader::LoadLevel(char const*)
3F376C:  MOV             R0, R4; this
3F376E:  BLX             j__ZN11CFileLoader9LoadLevelEPKc; CFileLoader::LoadLevel(char const*)
3F3772:  BLX             j__ZN9CColAccel8endCacheEv; CColAccel::endCache(void)
3F3776:  MOV             R0, R4; this
3F3778:  BLX             j__ZN5CGame5Init2EPKc; CGame::Init2(char const*)
3F377C:  ADR             R0, aLoadingTheGame; "Loading the Game"
3F377E:  ADR             R1, aStartScript; "Start script"
3F3780:  MOVS            R2, #0; char *
3F3782:  MOVS            R5, #0
3F3784:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
3F3788:  BLX             j__ZN11CTheScripts15StartTestScriptEv; CTheScripts::StartTestScript(void)
3F378C:  LDR             R0, =(skipFirstMissionSave_ptr - 0x3F3792)
3F378E:  ADD             R0, PC; skipFirstMissionSave_ptr
3F3790:  LDR             R6, [R0]; skipFirstMissionSave
3F3792:  MOVS            R0, #(stderr+1); this
3F3794:  STR             R0, [R6]
3F3796:  BLX             j__ZN11CTheScripts7ProcessEv; CTheScripts::Process(void)
3F379A:  LDR             R0, =(TheCamera_ptr - 0x3F37A2)
3F379C:  STR             R5, [R6]
3F379E:  ADD             R0, PC; TheCamera_ptr
3F37A0:  LDR             R0, [R0]; TheCamera ; this
3F37A2:  BLX             j__ZN7CCamera7ProcessEv; CCamera::Process(void)
3F37A6:  MOV             R0, R4; this
3F37A8:  BLX             j__ZN5CGame5Init3EPKc; CGame::Init3(char const*)
3F37AC:  MOVS            R0, #1
3F37AE:  POP.W           {R11}
3F37B2:  POP             {R4-R7,PC}
