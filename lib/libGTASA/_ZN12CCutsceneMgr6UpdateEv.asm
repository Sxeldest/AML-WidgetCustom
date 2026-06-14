; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr6UpdateEv
; Address            : 0x3900D0 - 0x3900E2
; =========================================================

3900D0:  LDR             R0, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x3900D6)
3900D2:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
3900D4:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus ...
3900D6:  LDR             R0, [R0]; this
3900D8:  CMP             R0, #0
3900DA:  IT NE
3900DC:  BNE.W           j_j__ZN12CCutsceneMgr14Update_overlayEv; j_CCutsceneMgr::Update_overlay(void)
3900E0:  BX              LR
