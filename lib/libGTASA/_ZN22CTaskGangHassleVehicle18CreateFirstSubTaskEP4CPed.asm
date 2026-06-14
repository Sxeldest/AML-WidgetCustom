; =========================================================
; Game Engine Function: _ZN22CTaskGangHassleVehicle18CreateFirstSubTaskEP4CPed
; Address            : 0x5186E8 - 0x5188B0
; =========================================================

5186E8:  PUSH            {R4-R7,LR}
5186EA:  ADD             R7, SP, #0xC
5186EC:  PUSH.W          {R8}
5186F0:  SUB             SP, SP, #8
5186F2:  MOV             R5, R0
5186F4:  MOV             R4, R1
5186F6:  LDR             R0, [R5,#0x10]
5186F8:  CBZ             R0, loc_518752
5186FA:  LDR.W           R2, [R0,#0x464]
5186FE:  MOV             R1, R5
518700:  STR.W           R2, [R1,#0x34]!; CEntity **
518704:  CBZ             R2, loc_51870E
518706:  MOV             R0, R2; this
518708:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51870C:  LDR             R0, [R5,#0x10]; this
51870E:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x51871C)
518710:  VMOV.F32        S4, #4.0
518714:  LDRSH.W         R2, [R0,#0x26]
518718:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
51871A:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
51871C:  LDR.W           R1, [R1,R2,LSL#2]
518720:  LDR             R1, [R1,#0x2C]
518722:  VLDR            S0, [R1]
518726:  VLDR            S2, [R1,#0xC]
51872A:  VSUB.F32        S0, S2, S0
51872E:  VCMPE.F32       S0, S4
518732:  VMRS            APSR_nzcv, FPSCR
518736:  BGT             loc_518752
518738:  VLDR            S0, [R1,#4]
51873C:  VMOV.F32        S4, #8.0
518740:  VLDR            S2, [R1,#0x10]
518744:  VSUB.F32        S0, S2, S0
518748:  VCMPE.F32       S0, S4
51874C:  VMRS            APSR_nzcv, FPSCR
518750:  BLE             loc_51875E
518752:  MOVS            R6, #0
518754:  MOV             R0, R6
518756:  ADD             SP, SP, #8
518758:  POP.W           {R8}
51875C:  POP             {R4-R7,PC}
51875E:  BLX             j__ZN8CVehicle19GetSpareHasslePosIdEv; CVehicle::GetSpareHasslePosId(void)
518762:  MOV             R1, R0; int
518764:  ADDS            R0, R1, #1
518766:  MOV.W           R6, #0
51876A:  STR             R1, [R5,#0x14]
51876C:  BEQ             loc_518754
51876E:  LDR             R0, [R5,#0x10]; this
518770:  MOVS            R2, #1; bool
518772:  MOV.W           R8, #1
518776:  BLX             j__ZN8CVehicle14SetHasslePosIdEib; CVehicle::SetHasslePosId(int,bool)
51877A:  LDRD.W          R1, R0, [R5,#0x10]
51877E:  CMP             R0, #5; switch 6 cases
518780:  STRD.W          R6, R6, [R5,#0x24]
518784:  STR             R6, [R5,#0x2C]
518786:  BHI             def_5187A8; jumptable 005187A8 default case
518788:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x518792)
51878A:  LDRSH.W         R1, [R1,#0x26]
51878E:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
518790:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
518792:  LDR.W           R1, [R2,R1,LSL#2]
518796:  LDR             R1, [R1,#0x2C]
518798:  VLDR            S4, [R1]
51879C:  VLDR            S0, [R1,#4]
5187A0:  VLDR            S6, [R1,#0xC]
5187A4:  VLDR            S2, [R1,#0x10]
5187A8:  TBB.W           [PC,R0]; switch jump
5187AC:  DCB 3; jump table for switch statement
5187AD:  DCB 8
5187AE:  DCB 0x17
5187AF:  DCB 0x1C
5187B0:  DCB 0x2B
5187B1:  DCB 0x30
5187B2:  VLDR            S0, [R5,#0x20]; jumptable 005187A8 case 0
5187B6:  VSUB.F32        S0, S4, S0
5187BA:  B               loc_5187C4
5187BC:  VLDR            S0, [R5,#0x20]; jumptable 005187A8 case 1
5187C0:  VADD.F32        S0, S6, S0
5187C4:  VLDR            S6, =0.0
5187C8:  VMOV.F32        S4, #0.5
5187CC:  VADD.F32        S6, S0, S6
5187D0:  VMUL.F32        S0, S2, S4
5187D4:  VSTR            S6, [R5,#0x24]
5187D8:  B               loc_518814
5187DA:  VLDR            S2, [R5,#0x20]; jumptable 005187A8 case 2
5187DE:  VSUB.F32        S2, S4, S2
5187E2:  B               loc_5187EC
5187E4:  VLDR            S2, [R5,#0x20]; jumptable 005187A8 case 3
5187E8:  VADD.F32        S2, S6, S2
5187EC:  VLDR            S6, =0.0
5187F0:  VMOV.F32        S4, #0.5
5187F4:  VADD.F32        S2, S2, S6
5187F8:  VMUL.F32        S0, S0, S4
5187FC:  VSTR            S2, [R5,#0x24]
518800:  B               loc_518814
518802:  VLDR            S2, [R5,#0x20]; jumptable 005187A8 case 4
518806:  VSUB.F32        S0, S0, S2
51880A:  B               loc_518814
51880C:  VLDR            S0, [R5,#0x20]; jumptable 005187A8 case 5
518810:  VADD.F32        S0, S2, S0
518814:  VLDR            S2, =0.0
518818:  VADD.F32        S0, S0, S2
51881C:  VSTR            S0, [R5,#0x28]
518820:  MOVS            R0, #0; jumptable 005187A8 default case
518822:  MOVS            R1, #1; unsigned __int8
518824:  STRB.W          R0, [R5,#0x31]
518828:  MOV             R0, R4; this
51882A:  BLX             j__ZN4CPed30DropEntityThatThisPedIsHoldingEh; CPed::DropEntityThatThisPedIsHolding(uchar)
51882E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x518834)
518830:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
518832:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
518834:  LDR             R6, [R0]; CTimer::m_snTimeInMilliseconds
518836:  BLX             rand
51883A:  UXTH            R0, R0
51883C:  VLDR            S2, =0.000015259
518840:  VMOV            S0, R0
518844:  VCVT.F32.S32    S0, S0
518848:  STRB.W          R8, [R5,#0x40]
51884C:  VMUL.F32        S0, S0, S2
518850:  VLDR            S2, =100000.0
518854:  VMUL.F32        S0, S0, S2
518858:  VCVT.S32.F32    S0, S0
51885C:  VMOV            R0, S0
518860:  ADD.W           R0, R0, #0x24000
518864:  ADD.W           R0, R0, #0x9F0
518868:  STRD.W          R6, R0, [R5,#0x38]
51886C:  LDRB.W          R0, [R4,#0x485]
518870:  LSLS            R0, R0, #0x1F
518872:  ITT NE
518874:  LDRNE.W         R0, [R4,#0x590]
518878:  CMPNE           R0, #0
51887A:  BNE             loc_518890
51887C:  LDR             R0, [R5]
51887E:  MOV             R1, R4
518880:  LDR             R2, [R0,#0x28]
518882:  MOV             R0, R5
518884:  ADD             SP, SP, #8
518886:  POP.W           {R8}
51888A:  POP.W           {R4-R7,LR}
51888E:  BX              R2
518890:  MOVS            R0, #dword_34; this
518892:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
518896:  LDR.W           R1, [R4,#0x590]; CVehicle *
51889A:  MOV             R6, R0
51889C:  MOVS            R0, #0
51889E:  MOVS            R2, #1
5188A0:  STRD.W          R2, R0, [SP,#0x18+var_18]; bool
5188A4:  MOV             R0, R6; this
5188A6:  MOVS            R2, #0; int
5188A8:  MOVS            R3, #0; int
5188AA:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
5188AE:  B               loc_518754
