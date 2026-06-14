; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr10InitialiseEv
; Address            : 0x38FD30 - 0x38FD9A
; =========================================================

38FD30:  PUSH            {R4-R7,LR}
38FD32:  ADD             R7, SP, #0xC
38FD34:  PUSH.W          {R8}
38FD38:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x38FD42)
38FD3A:  LDR             R1, =(_ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr - 0x38FD46)
38FD3C:  LDR             R2, =(_ZN12CCutsceneMgr19ms_useLodMultiplierE_ptr - 0x38FD4C)
38FD3E:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
38FD40:  LDR             R3, =(_ZN12CCutsceneMgr21ms_wasCutsceneSkippedE_ptr - 0x38FD52)
38FD42:  ADD             R1, PC; _ZN12CCutsceneMgr21ms_cutsceneProcessingE_ptr
38FD44:  LDR.W           R12, =(_ZN12CCutsceneMgr14ms_hasFileInfoE_ptr - 0x38FD56)
38FD48:  ADD             R2, PC; _ZN12CCutsceneMgr19ms_useLodMultiplierE_ptr
38FD4A:  LDR.W           LR, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x38FD58)
38FD4E:  ADD             R3, PC; _ZN12CCutsceneMgr21ms_wasCutsceneSkippedE_ptr
38FD50:  LDR             R6, =(_ZN12CCutsceneMgr13ms_animLoadedE_ptr - 0x38FD5C)
38FD52:  ADD             R12, PC; _ZN12CCutsceneMgr14ms_hasFileInfoE_ptr
38FD54:  ADD             LR, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
38FD56:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
38FD58:  ADD             R6, PC; _ZN12CCutsceneMgr13ms_animLoadedE_ptr
38FD5A:  LDR.W           R8, [R1]; CCutsceneMgr::ms_cutsceneProcessing ...
38FD5E:  LDR             R2, [R2]; CCutsceneMgr::ms_useLodMultiplier ...
38FD60:  MOVS            R1, #0
38FD62:  LDR             R3, [R3]; CCutsceneMgr::ms_wasCutsceneSkipped ...
38FD64:  LDR.W           R4, [R12]; CCutsceneMgr::ms_hasFileInfo ...
38FD68:  LDR.W           R5, [LR]; CCutsceneMgr::ms_cutsceneLoadStatus ...
38FD6C:  LDR             R6, [R6]; CCutsceneMgr::ms_animLoaded ...
38FD6E:  STRB            R1, [R0]; CCutsceneMgr::ms_running
38FD70:  MOVS            R0, #0x10; unsigned int
38FD72:  STR             R1, [R5]; CCutsceneMgr::ms_cutsceneLoadStatus
38FD74:  STRB            R1, [R6]; CCutsceneMgr::ms_animLoaded
38FD76:  STRB.W          R1, [R8]; CCutsceneMgr::ms_cutsceneProcessing
38FD7A:  STRB            R1, [R2]; CCutsceneMgr::ms_useLodMultiplier
38FD7C:  STRB            R1, [R3]; CCutsceneMgr::ms_wasCutsceneSkipped
38FD7E:  STRB            R1, [R4]; CCutsceneMgr::ms_hasFileInfo
38FD80:  BLX             _Znwj; operator new(uint)
38FD84:  MOV.W           R1, #0x200; int
38FD88:  BLX             j__ZN10CDirectoryC2Ei; CDirectory::CDirectory(int)
38FD8C:  LDR             R1, =(_ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr - 0x38FD92)
38FD8E:  ADD             R1, PC; _ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr
38FD90:  LDR             R1, [R1]; CCutsceneMgr::ms_pCutsceneDir ...
38FD92:  STR             R0, [R1]; CCutsceneMgr::ms_pCutsceneDir
38FD94:  POP.W           {R8}
38FD98:  POP             {R4-R7,PC}
