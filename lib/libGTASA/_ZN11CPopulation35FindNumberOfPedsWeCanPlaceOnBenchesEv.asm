; =========================================================
; Game Engine Function: _ZN11CPopulation35FindNumberOfPedsWeCanPlaceOnBenchesEv
; Address            : 0x4CE808 - 0x4CE89A
; =========================================================

4CE808:  PUSH            {R7,LR}
4CE80A:  MOV             R7, SP
4CE80C:  VPUSH           {D8-D10}
4CE810:  LDR             R0, =(_ZN11CPopulation20MaxNumberOfPedsInUseE_ptr - 0x4CE818)
4CE812:  LDR             R1, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x4CE81C)
4CE814:  ADD             R0, PC; _ZN11CPopulation20MaxNumberOfPedsInUseE_ptr
4CE816:  LDR             R2, =(_ZN9CPopCycle15m_NumOther_PedsE_ptr - 0x4CE81E)
4CE818:  ADD             R1, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
4CE81A:  ADD             R2, PC; _ZN9CPopCycle15m_NumOther_PedsE_ptr
4CE81C:  LDR             R0, [R0]; this
4CE81E:  LDR             R1, [R1]; CPopulation::PedDensityMultiplier ...
4CE820:  LDR             R2, [R2]; CPopCycle::m_NumOther_Peds ...
4CE822:  VLDR            S0, [R0]
4CE826:  VLDR            S16, [R1]
4CE82A:  VLDR            S18, [R2]
4CE82E:  VCVT.F32.S32    S20, S0
4CE832:  BLX             j__ZN10CCullZones9FewerPedsEv; CCullZones::FewerPeds(void)
4CE836:  VLDR            S2, =0.6
4CE83A:  CMP             R0, #0
4CE83C:  VMOV.F32        S0, #1.0
4CE840:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x4CE858)
4CE842:  IT NE
4CE844:  VMOVNE.F32      S0, S2
4CE848:  VMIN.F32        D1, D9, D10
4CE84C:  VMUL.F32        S0, S16, S0
4CE850:  LDR             R1, =(_ZN11CPopulation25NumberOfPedsInUseInteriorE_ptr - 0x4CE85A)
4CE852:  LDR             R2, =(_ZN11CPopulation14ms_nNumCivMaleE_ptr - 0x4CE85E)
4CE854:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
4CE856:  ADD             R1, PC; _ZN11CPopulation25NumberOfPedsInUseInteriorE_ptr
4CE858:  LDR             R3, =(_ZN11CPopulation16ms_nNumCivFemaleE_ptr - 0x4CE86A)
4CE85A:  ADD             R2, PC; _ZN11CPopulation14ms_nNumCivMaleE_ptr
4CE85C:  LDR             R0, [R0]; CGame::currArea ...
4CE85E:  VCVT.S32.F32    S2, S2
4CE862:  LDR             R1, [R1]; CPopulation::NumberOfPedsInUseInterior ...
4CE864:  LDR             R2, [R2]; CPopulation::ms_nNumCivMale ...
4CE866:  ADD             R3, PC; _ZN11CPopulation16ms_nNumCivFemaleE_ptr
4CE868:  LDR             R3, [R3]; CPopulation::ms_nNumCivFemale ...
4CE86A:  VCVT.F32.S32    S2, S2
4CE86E:  LDR             R0, [R0]; CGame::currArea
4CE870:  LDR.W           R12, [R1]; CPopulation::NumberOfPedsInUseInterior
4CE874:  LDR             R2, [R2]; CPopulation::ms_nNumCivMale
4CE876:  CMP             R0, #0
4CE878:  RSB.W           R0, R2, #2
4CE87C:  VMUL.F32        S0, S0, S2
4CE880:  VCVT.S32.F32    S0, S0
4CE884:  LDR             R3, [R3]; CPopulation::ms_nNumCivFemale
4CE886:  SUB.W           R0, R0, R3
4CE88A:  VMOV            R1, S0
4CE88E:  IT NE
4CE890:  MOVNE           R1, R12
4CE892:  ADD             R0, R1
4CE894:  VPOP            {D8-D10}
4CE898:  POP             {R7,PC}
