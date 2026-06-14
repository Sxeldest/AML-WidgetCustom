; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr8ShutdownEv
; Address            : 0x38FDBC - 0x38FDDA
; =========================================================

38FDBC:  LDR             R0, =(_ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr - 0x38FDC2)
38FDBE:  ADD             R0, PC; _ZN12CCutsceneMgr15ms_pCutsceneDirE_ptr
38FDC0:  LDR             R0, [R0]; CCutsceneMgr::ms_pCutsceneDir ...
38FDC2:  LDR             R0, [R0]; this
38FDC4:  CMP             R0, #0
38FDC6:  IT EQ
38FDC8:  BXEQ            LR
38FDCA:  PUSH            {R7,LR}
38FDCC:  MOV             R7, SP
38FDCE:  BLX             j__ZN10CDirectoryD2Ev; CDirectory::~CDirectory()
38FDD2:  POP.W           {R7,LR}
38FDD6:  B.W             j__ZdlPv; operator delete(void *)
