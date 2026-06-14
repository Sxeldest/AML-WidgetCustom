; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr29GetCutsceneTimeInMillesecondsEv
; Address            : 0x4657D8 - 0x4657F4
; =========================================================

4657D8:  LDR             R0, =(_ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr - 0x4657E2)
4657DA:  VLDR            S0, =1000.0
4657DE:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr
4657E0:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneTimer ...
4657E2:  VLDR            S2, [R0]
4657E6:  VMUL.F32        S0, S2, S0
4657EA:  VCVT.U32.F32    S0, S0
4657EE:  VMOV            R0, S0
4657F2:  BX              LR
