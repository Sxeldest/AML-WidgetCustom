; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr14FinishCutsceneEv
; Address            : 0x4658B0 - 0x46592A
; =========================================================

4658B0:  PUSH            {R4,R6,R7,LR}
4658B2:  ADD             R7, SP, #8
4658B4:  LDR             R0, =(byte_9AE231 - 0x4658BA)
4658B6:  ADD             R0, PC; byte_9AE231
4658B8:  LDRB            R0, [R0]
4658BA:  CBZ             R0, loc_4658E8
4658BC:  LDR             R0, =(TheCamera_ptr - 0x4658C2)
4658BE:  ADD             R0, PC; TheCamera_ptr
4658C0:  LDR             R4, [R0]; TheCamera
4658C2:  MOV             R0, R4; this
4658C4:  BLX             j__ZN7CCamera21GetCutSceneFinishTimeEv; CCamera::GetCutSceneFinishTime(void)
4658C8:  VMOV            S0, R0
4658CC:  VLDR            S2, =1000.0
4658D0:  LDR             R0, =(_ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr - 0x4658DA)
4658D2:  VCVT.F32.U32    S0, S0
4658D6:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_cutsceneTimerE_ptr
4658D8:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneTimer ...
4658DA:  VDIV.F32        S0, S0, S2
4658DE:  VSTR            S0, [R0]
4658E2:  MOV             R0, R4; this
4658E4:  BLX             j__ZN7CCamera14FinishCutsceneEv; CCamera::FinishCutscene(void)
4658E8:  MOV.W           R0, #0xFFFFFFFF; int
4658EC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4658F0:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4658FE)
4658F2:  MOV.W           LR, #0x194
4658F6:  LDR.W           R12, =(_ZN6CWorld7PlayersE_ptr - 0x465904)
4658FA:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
4658FC:  LDRD.W          R3, R4, [R0,#0x1C]
465900:  ADD             R12, PC; _ZN6CWorld7PlayersE_ptr
465902:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
465904:  ORR.W           R3, R3, #0x80
465908:  LDR.W           R2, [R12]; CWorld::Players ...
46590C:  LDR             R1, [R1]; CWorld::PlayerInFocus
46590E:  STRD.W          R3, R4, [R0,#0x1C]
465912:  SMLABB.W        R1, R1, LR, R2
465916:  MOV             R2, #0x461C4000; float
46591E:  MOV             R0, R1; this
465920:  MOVS            R1, #0; bool
465922:  POP.W           {R4,R6,R7,LR}
465926:  B.W             sub_191824
