; =========================================================
; Game Engine Function: _ZN6CWorld37CallOffChaseForAreaSectorListVehiclesER8CPtrListffffffff
; Address            : 0x42C5B0 - 0x42C7DA
; =========================================================

42C5B0:  PUSH            {R4-R7,LR}
42C5B2:  ADD             R7, SP, #0xC
42C5B4:  PUSH.W          {R8-R11}
42C5B8:  SUB             SP, SP, #4
42C5BA:  VPUSH           {D8-D15}
42C5BE:  SUB             SP, SP, #0x18
42C5C0:  LDR             R6, [R0]
42C5C2:  CMP             R6, #0
42C5C4:  BEQ.W           loc_42C7CC
42C5C8:  VLDR            S24, [R7,#arg_0]
42C5CC:  VMOV            S28, R2
42C5D0:  VMOV            S26, R3
42C5D4:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42C5E6)
42C5D6:  VMOV            S30, R1
42C5DA:  VLDR            S16, [R7,#arg_10]
42C5DE:  VMOV.F32        S0, #0.5
42C5E2:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42C5E4:  VADD.F32        S2, S28, S24
42C5E8:  VLDR            S18, [R7,#arg_C]
42C5EC:  VADD.F32        S4, S30, S26
42C5F0:  LDR.W           R11, [R0]; CWorld::ms_nCurrentScanCode ...
42C5F4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x42C604)
42C5F6:  ADD             R4, SP, #0x78+var_6C
42C5F8:  VLDR            S20, [R7,#arg_8]
42C5FC:  MOV.W           R9, #1
42C600:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
42C602:  VLDR            S22, [R7,#arg_4]
42C606:  LDR.W           R8, [R0]; CTimer::m_snTimeInMilliseconds ...
42C60A:  VMUL.F32        S17, S2, S0
42C60E:  VMUL.F32        S19, S4, S0
42C612:  LDRD.W          R5, R6, [R6]
42C616:  LDRH.W          R0, [R11]; CWorld::ms_nCurrentScanCode
42C61A:  LDRH            R1, [R5,#0x30]
42C61C:  CMP             R1, R0
42C61E:  BEQ.W           loc_42C7C6
42C622:  STRH            R0, [R5,#0x30]
42C624:  MOV.W           R0, #0xFFFFFFFF; int
42C628:  MOVS            R1, #0; bool
42C62A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
42C62E:  CMP             R0, R5
42C630:  BEQ.W           loc_42C7C6
42C634:  LDR             R1, [R5,#0x14]
42C636:  ADDS            R2, R5, #4
42C638:  CMP             R1, #0
42C63A:  MOV             R0, R2
42C63C:  IT NE
42C63E:  ADDNE.W         R0, R1, #0x30 ; '0'
42C642:  VLDR            S0, [R0]
42C646:  VCMPE.F32       S0, S22
42C64A:  VMRS            APSR_nzcv, FPSCR
42C64E:  BLE.W           loc_42C7C6
42C652:  VCMPE.F32       S0, S18
42C656:  VMRS            APSR_nzcv, FPSCR
42C65A:  BGE.W           loc_42C7C6
42C65E:  VLDR            S0, [R0,#4]
42C662:  VCMPE.F32       S0, S20
42C666:  VMRS            APSR_nzcv, FPSCR
42C66A:  BLE.W           loc_42C7C6
42C66E:  VCMPE.F32       S0, S16
42C672:  VMRS            APSR_nzcv, FPSCR
42C676:  BGE.W           loc_42C7C6
42C67A:  LDRB.W          R0, [R5,#0x42C]
42C67E:  LSLS            R0, R0, #0x1F
42C680:  BEQ.W           loc_42C7C6
42C684:  LDRB.W          R0, [R5,#0x3BE]
42C688:  SUBS            R1, R0, #2
42C68A:  CMP             R1, #4
42C68C:  ITT CS
42C68E:  SUBCS           R0, #0x3C ; '<'
42C690:  CMPCS           R0, #1
42C692:  BHI.W           loc_42C7C6
42C696:  STRB.W          R9, [R5,#0x3BF]
42C69A:  LDR.W           R0, [R8]; CTimer::m_snTimeInMilliseconds
42C69E:  ADD.W           R0, R0, #0x7D0
42C6A2:  STR.W           R0, [R5,#0x3C0]
42C6A6:  MOV             R0, R5; this
42C6A8:  STR             R2, [SP,#0x78+var_70]
42C6AA:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
42C6AE:  LDR.W           R10, [R0,#0x2C]
42C6B2:  LDRSH.W         R0, [R10]
42C6B6:  CMP             R0, #1
42C6B8:  BLT.W           loc_42C7C6
42C6BC:  STRD.W          R11, R8, [SP,#0x78+var_78]
42C6C0:  MOV.W           R9, #0
42C6C4:  LDR.W           R0, [R10,#8]
42C6C8:  MOV.W           R8, #0
42C6CC:  MOV.W           R11, #0
42C6D0:  LDR             R1, [R5,#0x14]
42C6D2:  ADD.W           R2, R0, R9
42C6D6:  MOV             R0, R4
42C6D8:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
42C6DC:  LDR.W           R0, [R10,#8]
42C6E0:  MOVS            R2, #0
42C6E2:  VLDR            S0, [SP,#0x78+var_6C]
42C6E6:  MOVS            R3, #0
42C6E8:  ADD.W           R1, R0, R9
42C6EC:  VLDR            S2, [SP,#0x78+var_68]
42C6F0:  ADD.W           R9, R9, #0x14
42C6F4:  ADD.W           R11, R11, #1
42C6F8:  VLDR            S4, [R1,#0xC]
42C6FC:  LDRSH.W         R1, [R10]
42C700:  VSUB.F32        S6, S0, S4
42C704:  VADD.F32        S0, S0, S4
42C708:  VADD.F32        S8, S2, S4
42C70C:  VSUB.F32        S2, S2, S4
42C710:  VCMPE.F32       S6, S26
42C714:  VMRS            APSR_nzcv, FPSCR
42C718:  VCMPE.F32       S0, S30
42C71C:  IT LT
42C71E:  MOVLT           R2, #1
42C720:  VMRS            APSR_nzcv, FPSCR
42C724:  VCMPE.F32       S8, S28
42C728:  IT GT
42C72A:  MOVGT           R3, #1
42C72C:  VMRS            APSR_nzcv, FPSCR
42C730:  AND.W           R2, R2, R3
42C734:  MOV.W           R3, #0
42C738:  VCMPE.F32       S2, S24
42C73C:  IT GT
42C73E:  MOVGT           R3, #1
42C740:  VMRS            APSR_nzcv, FPSCR
42C744:  AND.W           R2, R2, R3
42C748:  MOV.W           R3, #0
42C74C:  IT LT
42C74E:  MOVLT           R3, #1
42C750:  CMP             R11, R1
42C752:  AND.W           R2, R2, R3
42C756:  ORR.W           R8, R8, R2
42C75A:  BLT             loc_42C6D0
42C75C:  MOVS.W          R0, R8,LSL#31
42C760:  LDR.W           R8, [SP,#0x78+var_74]
42C764:  LDR.W           R11, [SP,#0x78+var_78]
42C768:  MOV.W           R9, #1
42C76C:  LDR             R1, [SP,#0x78+var_70]
42C76E:  BEQ             loc_42C7C6
42C770:  LDR             R0, [R5,#0x14]
42C772:  VLDR            S0, [R5,#0x48]
42C776:  CMP             R0, #0
42C778:  VLDR            S2, [R5,#0x4C]
42C77C:  IT NE
42C77E:  ADDNE.W         R1, R0, #0x30 ; '0'
42C782:  VLDR            S6, =0.0
42C786:  VLDR            S4, [R1]
42C78A:  VMOV            D16, D3
42C78E:  VCMPE.F32       S4, S19
42C792:  VMRS            APSR_nzcv, FPSCR
42C796:  VMAX.F32        D3, D0, D16
42C79A:  VMIN.F32        D0, D0, D16
42C79E:  VMAX.F32        D2, D1, D16
42C7A2:  VMIN.F32        D1, D1, D16
42C7A6:  IT GT
42C7A8:  VMOVGT.F32      S0, S6
42C7AC:  VSTR            S0, [R5,#0x48]
42C7B0:  VLDR            S0, [R1,#4]
42C7B4:  VCMPE.F32       S0, S17
42C7B8:  VMRS            APSR_nzcv, FPSCR
42C7BC:  IT GT
42C7BE:  VMOVGT.F32      S2, S4
42C7C2:  VSTR            S2, [R5,#0x4C]
42C7C6:  CMP             R6, #0
42C7C8:  BNE.W           loc_42C612
42C7CC:  ADD             SP, SP, #0x18
42C7CE:  VPOP            {D8-D15}
42C7D2:  ADD             SP, SP, #4
42C7D4:  POP.W           {R8-R11}
42C7D8:  POP             {R4-R7,PC}
