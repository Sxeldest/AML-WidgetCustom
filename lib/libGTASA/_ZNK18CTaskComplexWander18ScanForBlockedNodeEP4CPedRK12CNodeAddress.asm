; =========================================================
; Game Engine Function: _ZNK18CTaskComplexWander18ScanForBlockedNodeEP4CPedRK12CNodeAddress
; Address            : 0x521670 - 0x5217A6
; =========================================================

521670:  PUSH            {R4,R6,R7,LR}
521672:  ADD             R7, SP, #8
521674:  VPUSH           {D8-D10}
521678:  SUB             SP, SP, #0x10
52167A:  LDR             R0, =(ThePaths_ptr - 0x521684)
52167C:  MOV             R4, R1
52167E:  LDRH            R3, [R4,#0x24]
521680:  ADD             R0, PC; ThePaths_ptr
521682:  LDR             R2, [R2]
521684:  LDR             R1, [R0]; ThePaths
521686:  ADD             R0, SP, #0x30+var_2C
521688:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
52168C:  LDR             R0, [R4,#0x14]
52168E:  VLDR            S16, [SP,#0x30+var_2C]
521692:  ADD.W           R1, R0, #0x30 ; '0'
521696:  CMP             R0, #0
521698:  VLDR            S18, [SP,#0x30+var_28]
52169C:  IT EQ
52169E:  ADDEQ           R1, R4, #4
5216A0:  VLDR            S0, [R1]
5216A4:  VLDR            S2, [R1,#4]
5216A8:  VSUB.F32        S0, S16, S0
5216AC:  VLDR            S20, =0.0
5216B0:  VSUB.F32        S2, S18, S2
5216B4:  VMUL.F32        S0, S0, S0
5216B8:  VMUL.F32        S2, S2, S2
5216BC:  VADD.F32        S0, S0, S2
5216C0:  VMOV.F32        S2, #9.0
5216C4:  VADD.F32        S0, S0, S20
5216C8:  VCMPE.F32       S0, S2
5216CC:  VMRS            APSR_nzcv, FPSCR
5216D0:  BGT             loc_52179C
5216D2:  LDR.W           R0, [R4,#0x440]
5216D6:  ADD.W           R0, R0, #0x124; this
5216DA:  BLX             j__ZNK11CPedScanner20GetClosestPedInRangeEv; CPedScanner::GetClosestPedInRange(void)
5216DE:  CBZ             R0, loc_521736
5216E0:  LDR             R1, [R0,#0x14]
5216E2:  VMOV.F32        S4, #1.0
5216E6:  ADD.W           R2, R1, #0x30 ; '0'
5216EA:  CMP             R1, #0
5216EC:  IT EQ
5216EE:  ADDEQ           R2, R0, #4
5216F0:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5216FE)
5216F2:  VLDR            S0, [R2]
5216F6:  VLDR            S2, [R2,#4]
5216FA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5216FC:  VSUB.F32        S0, S16, S0
521700:  LDRSH.W         R0, [R0,#0x26]
521704:  VSUB.F32        S2, S18, S2
521708:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
52170A:  LDR.W           R0, [R1,R0,LSL#2]
52170E:  VMUL.F32        S0, S0, S0
521712:  LDR             R0, [R0,#0x2C]
521714:  VMUL.F32        S2, S2, S2
521718:  VLDR            S6, [R0,#0x24]
52171C:  VADD.F32        S4, S6, S4
521720:  VADD.F32        S0, S0, S2
521724:  VMUL.F32        S2, S4, S4
521728:  VADD.F32        S0, S0, S20
52172C:  VCMPE.F32       S0, S2
521730:  VMRS            APSR_nzcv, FPSCR
521734:  BLT             loc_521798
521736:  LDR.W           R0, [R4,#0x440]
52173A:  ADDS            R0, #0xD4; this
52173C:  BLX             j__ZNK15CVehicleScanner24GetClosestVehicleInRangeEv; CVehicleScanner::GetClosestVehicleInRange(void)
521740:  CBZ             R0, loc_52179C
521742:  LDR             R1, [R0,#0x14]
521744:  VMOV.F32        S4, #1.0
521748:  ADD.W           R2, R1, #0x30 ; '0'
52174C:  CMP             R1, #0
52174E:  IT EQ
521750:  ADDEQ           R2, R0, #4
521752:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x521760)
521754:  VLDR            S0, [R2]
521758:  VLDR            S2, [R2,#4]
52175C:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
52175E:  VSUB.F32        S0, S16, S0
521762:  LDRSH.W         R0, [R0,#0x26]
521766:  VSUB.F32        S2, S18, S2
52176A:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
52176C:  LDR.W           R0, [R1,R0,LSL#2]
521770:  VMUL.F32        S0, S0, S0
521774:  LDR             R0, [R0,#0x2C]
521776:  VMUL.F32        S2, S2, S2
52177A:  VLDR            S6, [R0,#0x24]
52177E:  VADD.F32        S4, S6, S4
521782:  VADD.F32        S0, S0, S2
521786:  VMUL.F32        S2, S4, S4
52178A:  VADD.F32        S0, S0, S20
52178E:  VCMPE.F32       S0, S2
521792:  VMRS            APSR_nzcv, FPSCR
521796:  BGE             loc_52179C
521798:  MOVS            R0, #1
52179A:  B               loc_52179E
52179C:  MOVS            R0, #0
52179E:  ADD             SP, SP, #0x10
5217A0:  VPOP            {D8-D10}
5217A4:  POP             {R4,R6,R7,PC}
