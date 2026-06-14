; =========================================================
; Game Engine Function: _ZN11CAutomobile16BoostJumpControlEv
; Address            : 0x556824 - 0x5568D2
; =========================================================

556824:  PUSH            {R4,R6,R7,LR}
556826:  ADD             R7, SP, #8
556828:  SUB             SP, SP, #0x10
55682A:  MOV             R4, R0
55682C:  LDR.W           R0, [R4,#0x464]; this
556830:  CMP             R0, #0
556832:  BEQ             loc_5568CE
556834:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
556838:  CMP             R0, #1
55683A:  BNE             loc_5568CE
55683C:  MOV.W           R0, #0xFFFFFFFF; int
556840:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
556844:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
556848:  BLX             j__ZN4CPad7GetJumpEv; CPad::GetJump(void)
55684C:  CMP             R0, #1
55684E:  BNE             loc_5568CE
556850:  VMOV.F32        S0, #1.0
556854:  ADD.W           R0, R4, #0x7E8
556858:  VLDR            S2, [R0]
55685C:  VCMPE.F32       S2, S0
556860:  VMRS            APSR_nzcv, FPSCR
556864:  BGE             loc_5568CE
556866:  VLDR            S0, =0.15
55686A:  MOV             R0, R4
55686C:  VLDR            S2, [R4,#0x90]
556870:  VMUL.F32        S0, S2, S0
556874:  VLDR            S2, =0.0
556878:  VMUL.F32        S2, S0, S2
55687C:  VMOV            R3, S0
556880:  VMOV            R1, S2
556884:  MOV             R2, R1
556886:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
55688A:  VLDR            S0, =0.01
55688E:  VLDR            S2, [R4,#0x94]
556892:  LDR             R0, [R4,#0x14]
556894:  VMUL.F32        S0, S2, S0
556898:  VLDR            S2, [R0,#0x20]
55689C:  VLDR            S4, [R0,#0x24]
5568A0:  VLDR            S6, [R0,#0x28]
5568A4:  LDRD.W          R12, LR, [R0,#0x10]
5568A8:  LDR             R0, [R0,#0x18]
5568AA:  VMUL.F32        S2, S0, S2
5568AE:  STRD.W          R12, LR, [SP,#0x18+var_18]
5568B2:  VMUL.F32        S4, S0, S4
5568B6:  STR             R0, [SP,#0x18+var_10]
5568B8:  VMUL.F32        S0, S0, S6
5568BC:  MOV             R0, R4
5568BE:  VMOV            R1, S2
5568C2:  VMOV            R2, S4
5568C6:  VMOV            R3, S0
5568CA:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5568CE:  ADD             SP, SP, #0x10
5568D0:  POP             {R4,R6,R7,PC}
