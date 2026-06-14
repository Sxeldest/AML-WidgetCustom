; =========================================================
; Game Engine Function: _ZN10CPlayerPed18HandleSprintEnergyEbf
; Address            : 0x4C5798 - 0x4C585E
; =========================================================

4C5798:  PUSH            {R4,R6,R7,LR}
4C579A:  ADD             R7, SP, #8
4C579C:  VPUSH           {D8-D9}
4C57A0:  VMOV            S16, R2
4C57A4:  MOV             R4, R0
4C57A6:  CMP             R1, #1
4C57A8:  BNE             loc_4C57CE
4C57AA:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4C57B6)
4C57AC:  MOV.W           R2, #0x194
4C57B0:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4C57B8)
4C57B2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4C57B4:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4C57B6:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4C57B8:  LDR             R1, [R1]; CWorld::Players ...
4C57BA:  LDR             R0, [R0]; CWorld::PlayerInFocus
4C57BC:  SMLABB.W        R0, R0, R2, R1
4C57C0:  LDRB.W          R0, [R0,#0x14C]
4C57C4:  CBZ             R0, loc_4C5818
4C57C6:  MOVS            R0, #1
4C57C8:  VPOP            {D8-D9}
4C57CC:  POP             {R4,R6,R7,PC}
4C57CE:  LDR.W           R0, [R4,#0x444]
4C57D2:  VLDR            S18, [R0,#0x18]
4C57D6:  MOVS            R0, #7
4C57D8:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4C57DC:  VMOV            S0, R0
4C57E0:  VCMPE.F32       S18, S0
4C57E4:  VMRS            APSR_nzcv, FPSCR
4C57E8:  BGE             loc_4C5810
4C57EA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C57F4)
4C57EC:  VMOV.F32        S2, #0.5
4C57F0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C57F2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C57F4:  VLDR            S0, [R0]
4C57F8:  LDR.W           R0, [R4,#0x444]
4C57FC:  VMUL.F32        S0, S0, S16
4C5800:  VMUL.F32        S0, S0, S2
4C5804:  VLDR            S2, [R0,#0x18]
4C5808:  VADD.F32        S0, S2, S0
4C580C:  VSTR            S0, [R0,#0x18]
4C5810:  MOVS            R0, #0
4C5812:  VPOP            {D8-D9}
4C5816:  POP             {R4,R6,R7,PC}
4C5818:  VCMP.F32        S16, #0.0
4C581C:  MOVS            R0, #1
4C581E:  VMRS            APSR_nzcv, FPSCR
4C5822:  BEQ             loc_4C5812
4C5824:  LDR.W           R1, [R4,#0x444]
4C5828:  LDRH            R2, [R1,#0x34]
4C582A:  ANDS.W          R2, R2, #2
4C582E:  BNE             loc_4C5812
4C5830:  VLDR            S0, =-150.0
4C5834:  VLDR            S2, [R1,#0x18]
4C5838:  VCMPE.F32       S2, S0
4C583C:  VMRS            APSR_nzcv, FPSCR
4C5840:  BLE             loc_4C5810
4C5842:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C5848)
4C5844:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C5846:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C5848:  VLDR            S4, [R0]
4C584C:  VMUL.F32        S4, S4, S16
4C5850:  VSUB.F32        S2, S2, S4
4C5854:  VMAX.F32        D0, D1, D0
4C5858:  VSTR            S0, [R1,#0x18]
4C585C:  B               loc_4C57C6
