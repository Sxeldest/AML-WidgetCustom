; =========================================================
; Game Engine Function: _ZN15CTaskSimpleFall10ProcessPedEP4CPed
; Address            : 0x52B700 - 0x52B7EC
; =========================================================

52B700:  PUSH            {R4,R5,R7,LR}
52B702:  ADD             R7, SP, #8
52B704:  VPUSH           {D8-D9}
52B708:  MOV             R5, R1
52B70A:  MOV             R4, R0
52B70C:  LDR.W           R0, [R5,#0x484]
52B710:  LDR.W           R1, [R5,#0x488]
52B714:  LDR.W           R2, [R5,#0x48C]
52B718:  AND.W           R0, R0, #1
52B71C:  LDR.W           R3, [R5,#0x534]
52B720:  AND.W           R1, R1, #0x80000
52B724:  ORR.W           R2, R2, #0x100000
52B728:  ORRS            R0, R1
52B72A:  ORR.W           R3, R3, #8
52B72E:  STR.W           R3, [R5,#0x534]
52B732:  STR.W           R2, [R5,#0x48C]
52B736:  LDRB            R0, [R4,#8]
52B738:  IT NE
52B73A:  CMPNE           R0, #0
52B73C:  BEQ             loc_52B7C2
52B73E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x52B748)
52B740:  VLDR            S16, =50.0
52B744:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
52B746:  VLDR            S18, =1000.0
52B74A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
52B74C:  VLDR            S0, [R0]
52B750:  LDR             R0, [R4,#0x1C]
52B752:  VDIV.F32        S0, S0, S16
52B756:  VMUL.F32        S0, S0, S18
52B75A:  VCVT.U32.F32    S0, S0
52B75E:  VMOV            R1, S0
52B762:  CMP             R0, R1
52B764:  BLS             loc_52B7E0
52B766:  SUBS            R0, R0, R1
52B768:  STR             R0, [R4,#0x1C]
52B76A:  CMP.W           R0, #0x1F4
52B76E:  BLS             loc_52B7D8
52B770:  MOV             R0, R5; this
52B772:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52B776:  CMP             R0, #1
52B778:  BNE             loc_52B7D8
52B77A:  ADDW            R0, R5, #0x484
52B77E:  LDRB            R0, [R0,#8]
52B780:  LSLS            R0, R0, #0x19
52B782:  BMI             loc_52B7D8
52B784:  LDR.W           R0, [R5,#0x44C]
52B788:  CMP             R0, #0x3F ; '?'
52B78A:  BEQ             loc_52B7D8
52B78C:  MOV             R0, R5; this
52B78E:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
52B792:  CBZ             R0, loc_52B7D8
52B794:  MOV             R0, R5; this
52B796:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
52B79A:  LDRH.W          R0, [R0,#0x110]
52B79E:  CBNZ            R0, loc_52B7D8
52B7A0:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x52B7A6)
52B7A2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
52B7A4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
52B7A6:  VLDR            S0, [R0]
52B7AA:  VDIV.F32        S0, S0, S16
52B7AE:  VMUL.F32        S0, S0, S18
52B7B2:  VCVT.U32.F32    S0, S0
52B7B6:  VMOV            R0, S0
52B7BA:  RSB.W           R0, R0, #0x1F4
52B7BE:  STR             R0, [R4,#0x1C]
52B7C0:  B               loc_52B7D8
52B7C2:  LDR             R1, [R4,#0x14]
52B7C4:  CBNZ            R1, loc_52B7D2
52B7C6:  CMP             R0, #0
52B7C8:  ITTT EQ
52B7CA:  MOVEQ           R0, R4; this
52B7CC:  MOVEQ           R1, R5; CPed *
52B7CE:  BLXEQ           j__ZN15CTaskSimpleFall9StartAnimEP4CPed; CTaskSimpleFall::StartAnim(CPed *)
52B7D2:  MOV             R1, R5; CPed *
52B7D4:  BLX             j__ZN15CTaskSimpleFall11ProcessFallEP4CPed; CTaskSimpleFall::ProcessFall(CPed *)
52B7D8:  MOVS            R0, #0
52B7DA:  VPOP            {D8-D9}
52B7DE:  POP             {R4,R5,R7,PC}
52B7E0:  MOVS            R0, #0
52B7E2:  STR             R0, [R4,#0x1C]
52B7E4:  MOVS            R0, #1
52B7E6:  VPOP            {D8-D9}
52B7EA:  POP             {R4,R5,R7,PC}
