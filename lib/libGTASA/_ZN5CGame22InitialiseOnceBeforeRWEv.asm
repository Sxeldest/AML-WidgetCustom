; =========================================================
; Game Engine Function: _ZN5CGame22InitialiseOnceBeforeRWEv
; Address            : 0x3F3634 - 0x3F3656
; =========================================================

3F3634:  PUSH            {R7,LR}
3F3636:  MOV             R7, SP
3F3638:  BLX             j__ZN10CMemoryMgr4InitEv; CMemoryMgr::Init(void)
3F363C:  BLX             j__ZN14MobileSettings10InitializeEv; MobileSettings::Initialize(void)
3F3640:  BLX             j__ZN13CLocalisation10InitialiseEv; CLocalisation::Initialise(void)
3F3644:  BLX             j__ZN8CFileMgr10InitialiseEv; CFileMgr::Initialise(void)
3F3648:  MOVS            R0, #0x1D; int
3F364A:  BLX             j__Z12CdStreamIniti; CdStreamInit(int)
3F364E:  BLX             j__ZN4CPad10InitialiseEv; CPad::Initialise(void)
3F3652:  MOVS            R0, #1
3F3654:  POP             {R7,PC}
