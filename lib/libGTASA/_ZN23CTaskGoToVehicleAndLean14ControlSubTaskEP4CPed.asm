; =========================================================
; Game Engine Function: _ZN23CTaskGoToVehicleAndLean14ControlSubTaskEP4CPed
; Address            : 0x51A6EC - 0x51A8F2
; =========================================================

51A6EC:  PUSH            {R4,R5,R7,LR}
51A6EE:  ADD             R7, SP, #8
51A6F0:  SUB             SP, SP, #0x10
51A6F2:  MOV             R4, R0
51A6F4:  MOV             R5, R1
51A6F6:  LDR             R1, [R4,#0xC]
51A6F8:  CMP             R1, #0
51A6FA:  BEQ.W           loc_51A822
51A6FE:  LDR             R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x51A708)
51A700:  LDR.W           R2, [R5,#0x440]
51A704:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
51A706:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
51A708:  LDR.W           R2, [R2,#0x278]
51A70C:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
51A70E:  CMP             R2, R0
51A710:  BLE             loc_51A720
51A712:  LDR.W           R0, [R1,#0x430]
51A716:  BIC.W           R0, R0, #0x10000
51A71A:  STR.W           R0, [R1,#0x430]
51A71E:  B               loc_51A822
51A720:  LDR             R0, [R1,#0x14]
51A722:  LDR             R2, [R5,#0x14]
51A724:  ADD.W           R3, R0, #0x30 ; '0'
51A728:  CMP             R0, #0
51A72A:  IT EQ
51A72C:  ADDEQ           R3, R1, #4
51A72E:  ADD.W           R0, R2, #0x30 ; '0'
51A732:  CMP             R2, #0
51A734:  VLDR            S0, [R3]
51A738:  VLDR            S2, [R3,#4]
51A73C:  VLDR            S4, [R3,#8]
51A740:  IT EQ
51A742:  ADDEQ           R0, R5, #4
51A744:  VLDR            S6, [R0]
51A748:  VLDR            S8, [R0,#4]
51A74C:  VSUB.F32        S0, S6, S0
51A750:  VLDR            S10, [R0,#8]
51A754:  VSUB.F32        S2, S8, S2
51A758:  ADD             R0, SP, #0x18+var_14
51A75A:  VMOV            R2, S0
51A75E:  VMOV            R3, S2
51A762:  VSUB.F32        S0, S10, S4
51A766:  VSTR            S0, [SP,#0x18+var_18]
51A76A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
51A76E:  LDR             R0, [R4,#0xC]
51A770:  LDR.W           R0, [R0,#0x464]
51A774:  CBNZ            R0, loc_51A7A8
51A776:  VLDR            S0, [SP,#0x18+var_14]
51A77A:  VLDR            S2, [SP,#0x18+var_10]
51A77E:  VMUL.F32        S0, S0, S0
51A782:  VLDR            S4, [SP,#0x18+var_10+4]
51A786:  VMUL.F32        S2, S2, S2
51A78A:  VMUL.F32        S4, S4, S4
51A78E:  VADD.F32        S0, S0, S2
51A792:  VLDR            S2, =0.01
51A796:  VADD.F32        S0, S0, S4
51A79A:  VSQRT.F32       S0, S0
51A79E:  VCMPE.F32       S0, S2
51A7A2:  VMRS            APSR_nzcv, FPSCR
51A7A6:  BLE             loc_51A7BC
51A7A8:  LDR             R0, [R4,#8]
51A7AA:  MOVS            R2, #1
51A7AC:  MOVS            R3, #0
51A7AE:  LDR             R1, [R0]
51A7B0:  LDR.W           R12, [R1,#0x1C]
51A7B4:  MOV             R1, R5
51A7B6:  BLX             R12
51A7B8:  CMP             R0, #1
51A7BA:  BEQ             loc_51A810
51A7BC:  ADD             R0, SP, #0x18+var_14; this
51A7BE:  MOV             R1, R4; CPed *
51A7C0:  MOV             R2, R5
51A7C2:  BLX             j__ZN23CTaskGoToVehicleAndLean13CalcTargetPosEP4CPed; CTaskGoToVehicleAndLean::CalcTargetPos(CPed *)
51A7C6:  VLDR            S0, [R4,#0x18]
51A7CA:  VLDR            S2, [SP,#0x18+var_14]
51A7CE:  VLDR            D16, [R4,#0x1C]
51A7D2:  VSUB.F32        S0, S2, S0
51A7D6:  VLDR            D17, [SP,#0x18+var_10]
51A7DA:  VSUB.F32        D16, D17, D16
51A7DE:  VMUL.F32        D1, D16, D16
51A7E2:  VMUL.F32        S0, S0, S0
51A7E6:  VADD.F32        S0, S0, S2
51A7EA:  VADD.F32        S0, S0, S3
51A7EE:  VLDR            S2, =0.01
51A7F2:  VCMPE.F32       S0, S2
51A7F6:  VMRS            APSR_nzcv, FPSCR
51A7FA:  BLE             loc_51A83C
51A7FC:  LDR             R0, [R4,#8]
51A7FE:  MOVS            R2, #1
51A800:  MOVS            R3, #0
51A802:  LDR             R1, [R0]
51A804:  LDR.W           R12, [R1,#0x1C]
51A808:  MOV             R1, R5
51A80A:  BLX             R12
51A80C:  CMP             R0, #1
51A80E:  BNE             loc_51A83C
51A810:  LDR             R0, [R4,#0xC]
51A812:  CMP             R0, #0
51A814:  ITTT NE
51A816:  LDRNE.W         R1, [R0,#0x430]
51A81A:  BICNE.W         R1, R1, #0x10000
51A81E:  STRNE.W         R1, [R0,#0x430]
51A822:  LDR             R0, [R4,#8]
51A824:  CBZ             R0, loc_51A838
51A826:  LDR             R1, [R0]
51A828:  MOVS            R2, #2
51A82A:  MOVS            R3, #0
51A82C:  MOVS            R4, #0
51A82E:  LDR.W           R12, [R1,#0x1C]
51A832:  MOV             R1, R5
51A834:  BLX             R12
51A836:  B               loc_51A8EC
51A838:  MOVS            R4, #0
51A83A:  B               loc_51A8EC
51A83C:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x51A848)
51A83E:  MOV.W           R2, #0x194
51A842:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x51A84C)
51A844:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
51A846:  LDRB            R5, [R4,#0x14]
51A848:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
51A84A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
51A84C:  LDR             R1, [R1]; CWorld::Players ...
51A84E:  LDR             R0, [R0]; CWorld::PlayerInFocus
51A850:  SMULBB.W        R0, R0, R2
51A854:  LDR             R1, [R1,R0]
51A856:  LDR.W           R0, [R1,#0x590]; this
51A85A:  CMP             R0, #0
51A85C:  ITT NE
51A85E:  LDRNE.W         R1, [R1,#0x484]
51A862:  ANDSNE.W        R1, R1, #0x100; char *
51A866:  BEQ             loc_51A8BE
51A868:  VLDR            S0, [R0,#0x48]
51A86C:  VLDR            S2, [R0,#0x4C]
51A870:  VMUL.F32        S0, S0, S0
51A874:  VLDR            S4, [R0,#0x50]
51A878:  VMUL.F32        S2, S2, S2
51A87C:  VMUL.F32        S4, S4, S4
51A880:  VADD.F32        S0, S0, S2
51A884:  VLDR            S2, =0.04
51A888:  VADD.F32        S0, S0, S4
51A88C:  VCMPE.F32       S0, S2
51A890:  VMRS            APSR_nzcv, FPSCR
51A894:  BLE             loc_51A8BE
51A896:  MOVS            R0, #0
51A898:  CBNZ            R5, loc_51A8CA
51A89A:  CMP             R0, #1
51A89C:  BNE             loc_51A8EA
51A89E:  LDR             R0, =(aGangs - 0x51A8A4); "gangs"
51A8A0:  ADD             R0, PC; "gangs"
51A8A2:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51A8A6:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x51A8AC)
51A8A8:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
51A8AA:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
51A8AC:  ADD.W           R1, R1, R0,LSL#5
51A8B0:  LDRB            R1, [R1,#0x10]; int
51A8B2:  CMP             R1, #1
51A8B4:  BNE             loc_51A8DE
51A8B6:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
51A8BA:  MOVS            R0, #1
51A8BC:  B               loc_51A8DA
51A8BE:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
51A8C2:  EOR.W           R0, R0, #1
51A8C6:  CMP             R5, #0
51A8C8:  BEQ             loc_51A89A
51A8CA:  CBNZ            R0, loc_51A8EA
51A8CC:  LDR             R0, =(aGangs - 0x51A8D2); "gangs"
51A8CE:  ADD             R0, PC; "gangs"
51A8D0:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51A8D4:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51A8D8:  MOVS            R0, #0
51A8DA:  STRB            R0, [R4,#0x14]
51A8DC:  B               loc_51A8EA
51A8DE:  MOVW            R1, #0x63E7
51A8E2:  ADD             R0, R1; this
51A8E4:  MOVS            R1, #8; int
51A8E6:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
51A8EA:  LDR             R4, [R4,#8]
51A8EC:  MOV             R0, R4
51A8EE:  ADD             SP, SP, #0x10
51A8F0:  POP             {R4,R5,R7,PC}
