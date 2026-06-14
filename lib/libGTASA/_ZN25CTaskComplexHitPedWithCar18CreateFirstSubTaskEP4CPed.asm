; =========================================================
; Game Engine Function: _ZN25CTaskComplexHitPedWithCar18CreateFirstSubTaskEP4CPed
; Address            : 0x50B6D4 - 0x50B7DC
; =========================================================

50B6D4:  PUSH            {R4-R7,LR}
50B6D6:  ADD             R7, SP, #0xC
50B6D8:  PUSH.W          {R11}
50B6DC:  MOV             R4, R0
50B6DE:  MOV             R5, R1
50B6E0:  LDR             R1, [R4,#0xC]; CPed *
50B6E2:  MOV             R0, R5; this
50B6E4:  BLX             j__ZN20CPedGeometryAnalyser17ComputePedHitSideERK4CPedRK9CPhysical; CPedGeometryAnalyser::ComputePedHitSide(CPed const&,CPhysical const&)
50B6E8:  STR             R0, [R4,#0x14]
50B6EA:  MOV             R0, R5; this
50B6EC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50B6F0:  VMOV.F32        S2, #20.0
50B6F4:  CMP             R0, #0
50B6F6:  VMOV.F32        S0, #12.0
50B6FA:  IT NE
50B6FC:  VMOVNE.F32      S0, S2
50B700:  VLDR            S2, [R4,#0x10]
50B704:  VCMPE.F32       S2, S0
50B708:  VMRS            APSR_nzcv, FPSCR
50B70C:  BLE             loc_50B714
50B70E:  MOV.W           R1, #0x1FA
50B712:  B               loc_50B7D0
50B714:  MOV             R0, R5; this
50B716:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50B71A:  VMOV.F32        S0, #10.0
50B71E:  CMP             R0, #0
50B720:  VMOV.F32        S2, #6.0
50B724:  IT NE
50B726:  VMOVNE.F32      S2, S0
50B72A:  VLDR            S0, [R4,#0x10]
50B72E:  VCMPE.F32       S0, S2
50B732:  VMRS            APSR_nzcv, FPSCR
50B736:  BGT             loc_50B758
50B738:  VMOV.F32        S2, #3.0
50B73C:  VCMPE.F32       S0, S2
50B740:  VMRS            APSR_nzcv, FPSCR
50B744:  BLE             loc_50B75E
50B746:  VLDR            S0, [R5,#0xEC]
50B74A:  VLDR            S2, =-0.8
50B74E:  VCMPE.F32       S0, S2
50B752:  VMRS            APSR_nzcv, FPSCR
50B756:  BGE             loc_50B75E
50B758:  MOVW            R1, #0x1FB
50B75C:  B               loc_50B7D0
50B75E:  LDR             R6, [R4,#0xC]
50B760:  MOV             R0, R5; this
50B762:  MOV             R1, R6; CPed *
50B764:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
50B768:  CMP             R0, #3; switch 4 cases
50B76A:  BHI             def_50B76C; jumptable 0050B76C default case
50B76C:  TBB.W           [PC,R0]; switch jump
50B770:  DCB 2; jump table for switch statement
50B771:  DCB 0xB
50B772:  DCB 0x13
50B773:  DCB 0x21
50B774:  LDR             R0, [R6,#0x14]; jumptable 0050B76C case 0
50B776:  VLDR            S4, [R0,#0x10]
50B77A:  VLDR            S2, [R0,#0x14]
50B77E:  VLDR            S0, [R0,#0x18]
50B782:  B               loc_50B7C0
50B784:  B               loc_50B7C0; jumptable 0050B76C default case
50B786:  LDR             R0, [R6,#0x14]; jumptable 0050B76C case 1
50B788:  VLDR            S4, [R0]
50B78C:  VLDR            S2, [R0,#4]
50B790:  VLDR            S0, [R0,#8]
50B794:  B               loc_50B7A4
50B796:  LDR             R0, [R6,#0x14]; jumptable 0050B76C case 2
50B798:  VLDR            S4, [R0,#0x10]
50B79C:  VLDR            S2, [R0,#0x14]
50B7A0:  VLDR            S0, [R0,#0x18]
50B7A4:  VNEG.F32        S0, S0
50B7A8:  VNEG.F32        S2, S2
50B7AC:  VNEG.F32        S4, S4
50B7B0:  B               loc_50B7C0
50B7B2:  LDR             R0, [R6,#0x14]; jumptable 0050B76C case 3
50B7B4:  VLDR            S4, [R0]
50B7B8:  VLDR            S2, [R0,#4]
50B7BC:  VLDR            S0, [R0,#8]
50B7C0:  MOV.W           R1, #0x1F6; int
50B7C4:  VSTR            S4, [R4,#0x1C]
50B7C8:  VSTR            S2, [R4,#0x20]
50B7CC:  VSTR            S0, [R4,#0x24]
50B7D0:  MOV             R0, R4; this
50B7D2:  POP.W           {R11}
50B7D6:  POP.W           {R4-R7,LR}
50B7DA:  B               _ZN25CTaskComplexHitPedWithCar13CreateSubTaskEi; CTaskComplexHitPedWithCar::CreateSubTask(int)
