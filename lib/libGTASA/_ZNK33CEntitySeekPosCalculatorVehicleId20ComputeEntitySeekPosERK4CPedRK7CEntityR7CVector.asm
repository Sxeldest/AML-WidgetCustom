; =========================================================
; Game Engine Function: _ZNK33CEntitySeekPosCalculatorVehicleId20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector
; Address            : 0x54458C - 0x5446B8
; =========================================================

54458C:  PUSH            {R4-R7,LR}
54458E:  ADD             R7, SP, #0xC
544590:  PUSH.W          {R8}
544594:  VPUSH           {D8-D12}
544598:  MOV             R6, R2
54459A:  MOV             R5, R0
54459C:  LDR             R0, [R6,#0x14]
54459E:  MOV             R8, R3
5445A0:  ADD.W           R1, R0, #0x30 ; '0'
5445A4:  CMP             R0, #0
5445A6:  IT EQ
5445A8:  ADDEQ           R1, R6, #4
5445AA:  VLDR            S18, [R1]
5445AE:  VLDR            S20, [R1,#4]
5445B2:  VLDR            S22, [R1,#8]
5445B6:  BEQ             loc_5445D2
5445B8:  VLDR            S0, [R0]
5445BC:  VLDR            S24, [R0,#4]
5445C0:  VLDR            S4, [R0,#8]
5445C4:  VLDR            S16, [R0,#0x10]
5445C8:  VLDR            S2, [R0,#0x14]
5445CC:  VLDR            S6, [R0,#0x18]
5445D0:  B               loc_5445F8
5445D2:  LDR             R4, [R6,#0x10]
5445D4:  MOV             R0, R4; x
5445D6:  BLX             sinf
5445DA:  VMOV            S24, R0
5445DE:  MOV             R0, R4; x
5445E0:  VNEG.F32        S16, S24
5445E4:  BLX             cosf
5445E8:  VLDR            S6, =0.0
5445EC:  VMOV            S2, R0
5445F0:  VMOV.F32        S0, S2
5445F4:  VMOV.F32        S4, S6
5445F8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x544602)
5445FA:  LDRSH.W         R1, [R6,#0x26]
5445FE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
544600:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
544602:  LDR.W           R0, [R0,R1,LSL#2]
544606:  LDR             R1, [R0,#0x2C]
544608:  LDR             R0, [R5,#4]
54460A:  VLDR            S12, [R1,#4]
54460E:  CMP             R0, #2
544610:  VLDR            S10, [R1,#0x10]
544614:  BGT             loc_54464A
544616:  VMOV.F32        S8, #-0.5
54461A:  VLDR            S14, [R1]
54461E:  CMP             R0, #2
544620:  VADD.F32        S8, S14, S8
544624:  VMUL.F32        S4, S4, S8
544628:  VMUL.F32        S14, S24, S8
54462C:  VMUL.F32        S8, S0, S8
544630:  VADD.F32        S0, S22, S4
544634:  VADD.F32        S4, S20, S14
544638:  VADD.F32        S8, S18, S8
54463C:  BEQ             loc_54467C
54463E:  CBNZ            R0, loc_5446A2
544640:  VMOV.F32        S12, #0.5
544644:  VMUL.F32        S10, S10, S12
544648:  B               loc_54468A
54464A:  VMOV.F32        S14, #0.5
54464E:  VLDR            S8, [R1,#0xC]
544652:  CMP             R0, #5
544654:  VADD.F32        S8, S8, S14
544658:  VMUL.F32        S4, S4, S8
54465C:  VMUL.F32        S1, S24, S8
544660:  VMUL.F32        S8, S0, S8
544664:  VADD.F32        S0, S22, S4
544668:  VADD.F32        S4, S20, S1
54466C:  VADD.F32        S8, S18, S8
544670:  BEQ             loc_544686
544672:  CMP             R0, #3
544674:  BNE             loc_5446A2
544676:  VMUL.F32        S10, S10, S14
54467A:  B               loc_54468A
54467C:  VMOV.F32        S10, #0.5
544680:  VMUL.F32        S10, S12, S10
544684:  B               loc_54468A
544686:  VMUL.F32        S10, S12, S14
54468A:  VMUL.F32        S6, S6, S10
54468E:  VMUL.F32        S2, S2, S10
544692:  VMUL.F32        S10, S16, S10
544696:  VADD.F32        S0, S6, S0
54469A:  VADD.F32        S4, S2, S4
54469E:  VADD.F32        S8, S10, S8
5446A2:  VSTR            S8, [R8]
5446A6:  VSTR            S4, [R8,#4]
5446AA:  VSTR            S0, [R8,#8]
5446AE:  VPOP            {D8-D12}
5446B2:  POP.W           {R8}
5446B6:  POP             {R4-R7,PC}
