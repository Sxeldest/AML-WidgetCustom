; =========================================================
; Game Engine Function: _ZN10CGameLogic26ResetStuffUponResurrectionEv
; Address            : 0x3077A4 - 0x3078B8
; =========================================================

3077A4:  PUSH            {R4-R7,LR}
3077A6:  ADD             R7, SP, #0xC
3077A8:  PUSH.W          {R8,R9,R11}
3077AC:  SUB             SP, SP, #0x18
3077AE:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3077B4)
3077B0:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3077B2:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3077B4:  LDR             R5, [R0]; CWorld::PlayerInFocus
3077B6:  MOVS            R0, #0; this
3077B8:  BLX             j__ZN9CMessages13ClearMessagesEh; CMessages::ClearMessages(uchar)
3077BC:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3077C6)
3077BE:  MOV.W           R9, #0x194
3077C2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr ; this
3077C4:  LDR             R6, [R0]; CWorld::Players ...
3077C6:  SMLABB.W        R4, R5, R9, R6
3077CA:  BLX             j__ZN8CCarCtrl27ClearInterestingVehicleListEv; CCarCtrl::ClearInterestingVehicleList(void)
3077CE:  ADD.W           R8, SP, #0x30+var_24
3077D2:  MOV             R1, R4
3077D4:  MOV             R0, R8; this
3077D6:  BLX             j__ZN11CPlayerInfo6GetPosEv; CPlayerInfo::GetPos(void)
3077DA:  MOVS            R1, #0
3077DC:  MOV             R0, R8; this
3077DE:  MOVT            R1, #0x457A; CVector *
3077E2:  MOVS            R2, #1; float
3077E4:  BLX             j__ZN6CWorld26ClearExcitingStuffFromAreaERK7CVectorfh; CWorld::ClearExcitingStuffFromArea(CVector const&,float,uchar)
3077E8:  MOV.W           R0, #(elf_hash_bucket+0x1D4); this
3077EC:  BLX             j__ZN10CGameLogic8PassTimeEj; CGameLogic::PassTime(uint)
3077F0:  SMULBB.W        R4, R5, R9
3077F4:  VLDR            S0, =180.0
3077F8:  LDR             R0, [R6,R4]
3077FA:  ADDW            R1, R0, #0x55C
3077FE:  VLDR            S2, [R1]
307802:  LDR             R1, [R0,#0x14]
307804:  VMUL.F32        S0, S2, S0
307808:  VLDR            S2, =3.1416
30780C:  ADD.W           R3, R1, #0x30 ; '0'
307810:  CMP             R1, #0
307812:  IT EQ
307814:  ADDEQ           R3, R0, #4
307816:  LDM             R3, {R1-R3}
307818:  VDIV.F32        S0, S0, S2
30781C:  VSTR            S0, [SP,#0x30+var_30]
307820:  BLX             j__ZN10CGameLogic36RestorePlayerStuffDuringResurrectionEP10CPlayerPed7CVectorf; CGameLogic::RestorePlayerStuffDuringResurrection(CPlayerPed *,CVector,float)
307824:  LDR             R0, [R6,R4]
307826:  LDR             R1, [R0,#0x14]
307828:  ADD.W           R4, R1, #0x30 ; '0'
30782C:  CMP             R1, #0
30782E:  IT EQ
307830:  ADDEQ           R4, R0, #4
307832:  BEQ             loc_307846
307834:  LDRD.W          R0, R1, [R1,#0x10]; x
307838:  EOR.W           R0, R0, #0x80000000; y
30783C:  BLX             atan2f
307840:  VMOV            S0, R0
307844:  B               loc_30784A
307846:  VLDR            S0, [R0,#0x10]
30784A:  VMOV            R1, S0; CVector *
30784E:  MOV             R0, R4; this
307850:  BLX             j__ZN10CGameLogic25SortOutStreamingAndMemoryERK7CVectorf; CGameLogic::SortOutStreamingAndMemory(CVector const&,float)
307854:  LDR             R0, =(TheCamera_ptr - 0x307860)
307856:  MOVS            R4, #0
307858:  MOVS            R1, #0; int
30785A:  MOVS            R2, #0; int
30785C:  ADD             R0, PC; TheCamera_ptr
30785E:  MOVS            R3, #0; int
307860:  LDR             R0, [R0]; TheCamera ; this
307862:  STR.W           R4, [R0,#(dword_9520D0 - 0x951FA8)]
307866:  STRD.W          R4, R4, [SP,#0x30+var_30]; int
30786A:  BLX             j__ZN7CCamera13SetMotionBlurEiiiii; CCamera::SetMotionBlur(int,int,int,int,int)
30786E:  MOVS            R0, #0; this
307870:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
307874:  MOVS            R1, #0; __int16
307876:  BLX             j__ZN4CPad11StopShakingEs; CPad::StopShaking(short)
30787A:  BLX             j__ZN11CReferences24RemoveReferencesToPlayerEv; CReferences::RemoveReferencesToPlayer(void)
30787E:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x307888)
307880:  MOVS            R3, #0xA
307882:  LDR             R1, =(_ZN11CPopulation24m_CountDownToPedsAtStartE_ptr - 0x30788C)
307884:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
307886:  LDR             R2, =(_ZN8CCarCtrl22CountDownToCarsAtStartE_ptr - 0x307890)
307888:  ADD             R1, PC; _ZN11CPopulation24m_CountDownToPedsAtStartE_ptr
30788A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
30788C:  ADD             R2, PC; _ZN8CCarCtrl22CountDownToCarsAtStartE_ptr
30788E:  LDR             R1, [R1]; int
307890:  LDR             R2, [R2]; CCarCtrl::CountDownToCarsAtStart ...
307892:  LDR             R0, [R0]; this
307894:  STRB            R3, [R1]; CPopulation::m_CountDownToPedsAtStart
307896:  STRB            R3, [R2]; CCarCtrl::CountDownToCarsAtStart
307898:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30789C:  LDR             R1, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x3078A4)
30789E:  LDR             R2, =(_ZN10CGameLogic9GameStateE_ptr - 0x3078AA)
3078A0:  ADD             R1, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
3078A2:  STRH.W          R4, [R0,#0x110]
3078A6:  ADD             R2, PC; _ZN10CGameLogic9GameStateE_ptr
3078A8:  LDR             R1, [R1]; CGameLogic::TimeOfLastEvent ...
3078AA:  LDR             R2, [R2]; CGameLogic::GameState ...
3078AC:  STR             R4, [R1]; CGameLogic::TimeOfLastEvent
3078AE:  STRB            R4, [R2]; CGameLogic::GameState
3078B0:  ADD             SP, SP, #0x18
3078B2:  POP.W           {R8,R9,R11}
3078B6:  POP             {R4-R7,PC}
