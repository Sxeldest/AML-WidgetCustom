; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr25LoadAnimationUncompressedEPKc
; Address            : 0x38FDE0 - 0x38FE0A
; =========================================================

38FDE0:  PUSH            {R4,R5,R7,LR}
38FDE2:  ADD             R7, SP, #8
38FDE4:  MOV             R1, R0; char *
38FDE6:  LDR             R0, =(_ZN12CCutsceneMgr31ms_numUncompressedCutsceneAnimsE_ptr - 0x38FDEE)
38FDE8:  LDR             R2, =(_ZN12CCutsceneMgr29ms_aUncompressedCutsceneAnimsE_ptr - 0x38FDF0)
38FDEA:  ADD             R0, PC; _ZN12CCutsceneMgr31ms_numUncompressedCutsceneAnimsE_ptr
38FDEC:  ADD             R2, PC; _ZN12CCutsceneMgr29ms_aUncompressedCutsceneAnimsE_ptr
38FDEE:  LDR             R4, [R0]; CCutsceneMgr::ms_numUncompressedCutsceneAnims ...
38FDF0:  LDR             R5, [R2]; CCutsceneMgr::ms_aUncompressedCutsceneAnims ...
38FDF2:  LDR             R0, [R4]; CCutsceneMgr::ms_numUncompressedCutsceneAnims
38FDF4:  ADD.W           R0, R5, R0,LSL#5; char *
38FDF8:  BLX             strcpy
38FDFC:  LDR             R0, [R4]; CCutsceneMgr::ms_numUncompressedCutsceneAnims
38FDFE:  MOVS            R1, #0
38FE00:  ADDS            R0, #1
38FE02:  STR             R0, [R4]; CCutsceneMgr::ms_numUncompressedCutsceneAnims
38FE04:  LSLS            R0, R0, #5
38FE06:  STRB            R1, [R5,R0]
38FE08:  POP             {R4,R5,R7,PC}
