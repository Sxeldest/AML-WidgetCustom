; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr12SkipCutsceneEv
; Address            : 0x4657FC - 0x46588E
; =========================================================

4657FC:  PUSH            {R4,R6,R7,LR}
4657FE:  ADD             R7, SP, #8
465800:  LDR             R0, =(_ZN12CCutsceneMgr21ms_wasCutsceneSkippedE_ptr - 0x46580C)
465802:  MOVS            R3, #1
465804:  LDR             R1, =(_ZN4CHud12m_BigMessageE_ptr - 0x46580E)
465806:  LDR             R2, =(byte_9AE231 - 0x465810)
465808:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_wasCutsceneSkippedE_ptr
46580A:  ADD             R1, PC; _ZN4CHud12m_BigMessageE_ptr
46580C:  ADD             R2, PC; byte_9AE231
46580E:  LDR             R0, [R0]; CCutsceneMgr::ms_wasCutsceneSkipped ...
465810:  LDR             R1, [R1]; CHud::m_BigMessage ...
465812:  LDRB            R2, [R2]
465814:  STRB            R3, [R0]; CCutsceneMgr::ms_wasCutsceneSkipped
465816:  MOVS            R0, #0
465818:  CMP             R2, #0
46581A:  STRH.W          R0, [R1,#(word_99106C - 0x990F6C)]
46581E:  BEQ             loc_46584C
465820:  LDR             R0, =(TheCamera_ptr - 0x465826)
465822:  ADD             R0, PC; TheCamera_ptr
465824:  LDR             R4, [R0]; TheCamera
465826:  MOV             R0, R4; this
465828:  BLX             j__ZN7CCamera21GetCutSceneFinishTimeEv; CCamera::GetCutSceneFinishTime(void)
46582C:  VMOV            S0, R0
465830:  VLDR            S2, =1000.0
465834:  LDR             R0, =(_ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr - 0x46583E)
465836:  VCVT.F32.U32    S0, S0
46583A:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr
46583C:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneTimer ...
46583E:  VDIV.F32        S0, S0, S2
465842:  VSTR            S0, [R0]
465846:  MOV             R0, R4; this
465848:  BLX             j__ZN7CCamera14FinishCutsceneEv; CCamera::FinishCutscene(void)
46584C:  MOV.W           R0, #0xFFFFFFFF; int
465850:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
465854:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x465862)
465856:  MOV.W           LR, #0x194
46585A:  LDR.W           R12, =(_ZN6CWorld7PlayersE_ptr - 0x465868)
46585E:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
465860:  LDRD.W          R3, R4, [R0,#0x1C]
465864:  ADD             R12, PC; _ZN6CWorld7PlayersE_ptr
465866:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
465868:  ORR.W           R3, R3, #0x80
46586C:  LDR.W           R2, [R12]; CWorld::Players ...
465870:  LDR             R1, [R1]; CWorld::PlayerInFocus
465872:  STRD.W          R3, R4, [R0,#0x1C]
465876:  SMLABB.W        R1, R1, LR, R2
46587A:  MOV             R2, #0x461C4000; float
465882:  MOV             R0, R1; this
465884:  MOVS            R1, #0; bool
465886:  POP.W           {R4,R6,R7,LR}
46588A:  B.W             sub_191824
