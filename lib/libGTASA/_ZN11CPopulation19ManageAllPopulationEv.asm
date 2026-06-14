; =========================================================
; Game Engine Function: _ZN11CPopulation19ManageAllPopulationEv
; Address            : 0x4CE64C - 0x4CE7E4
; =========================================================

4CE64C:  PUSH            {R4-R7,LR}
4CE64E:  ADD             R7, SP, #0xC
4CE650:  PUSH.W          {R8-R11}
4CE654:  SUB             SP, SP, #4
4CE656:  VPUSH           {D8-D11}
4CE65A:  SUB             SP, SP, #0x10
4CE65C:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4CE662)
4CE65E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4CE660:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4CE662:  LDR             R0, [R0]; int
4CE664:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
4CE668:  VLDR            D16, [R0]
4CE66C:  MOV.W           R9, #0
4CE670:  LDR             R0, [R0,#8]
4CE672:  STR             R0, [SP,#0x50+var_48]
4CE674:  MOVS            R0, #0; int
4CE676:  VSTR            D16, [SP,#0x50+var_50]
4CE67A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4CE67E:  LDR.W           R0, [R0,#0x440]; this
4CE682:  MOVS            R1, #0; bool
4CE684:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
4CE688:  MOV             R4, R0
4CE68A:  CBZ             R4, loc_4CE6B0
4CE68C:  LDR             R0, [R4]
4CE68E:  LDR             R1, [R0,#0x14]
4CE690:  MOV             R0, R4
4CE692:  BLX             R1
4CE694:  MOVW            R1, #0x133
4CE698:  MOV.W           R9, #0
4CE69C:  CMP             R0, R1
4CE69E:  BNE             loc_4CE6B0
4CE6A0:  LDR             R0, [R4,#8]
4CE6A2:  LDRB.W          R1, [R0,#0x3A]
4CE6A6:  AND.W           R1, R1, #7
4CE6AA:  CMP             R1, #4
4CE6AC:  IT EQ
4CE6AE:  MOVEQ           R9, R0
4CE6B0:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4CE6B6)
4CE6B2:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4CE6B4:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4CE6B6:  LDR             R6, [R0]; CPools::ms_pObjectPool
4CE6B8:  LDR             R0, [R6,#8]
4CE6BA:  CBZ             R0, loc_4CE6F2
4CE6BC:  MOV.W           R1, #0x1A4
4CE6C0:  SUBS            R5, R0, #1
4CE6C2:  MULS            R1, R0
4CE6C4:  MOV             R8, SP
4CE6C6:  SUB.W           R4, R1, #0x1A4
4CE6CA:  LDR             R0, [R6,#4]
4CE6CC:  LDRSB           R0, [R0,R5]
4CE6CE:  CMP             R0, #0
4CE6D0:  BLT             loc_4CE6E8
4CE6D2:  LDR             R0, [R6]
4CE6D4:  CMN             R4, R0
4CE6D6:  ITT NE
4CE6D8:  SUBNE.W         R1, R9, R0
4CE6DC:  CMPNE           R1, R4
4CE6DE:  BEQ             loc_4CE6E8
4CE6E0:  ADD             R0, R4; this
4CE6E2:  MOV             R1, R8; CObject *
4CE6E4:  BLX             j__ZN11CPopulation12ManageObjectEP7CObjectRK7CVector; CPopulation::ManageObject(CObject *,CVector const&)
4CE6E8:  SUBS            R5, #1
4CE6EA:  SUB.W           R4, R4, #0x1A4
4CE6EE:  ADDS            R0, R5, #1
4CE6F0:  BNE             loc_4CE6CA
4CE6F2:  LDR             R0, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x4CE6F8)
4CE6F4:  ADD             R0, PC; _ZN6CPools13ms_pDummyPoolE_ptr
4CE6F6:  LDR             R0, [R0]; CPools::ms_pDummyPool ...
4CE6F8:  LDR             R4, [R0]; CPools::ms_pDummyPool
4CE6FA:  LDR             R0, [R4,#8]
4CE6FC:  CMP             R0, #0
4CE6FE:  BEQ             loc_4CE7D6
4CE700:  RSB.W           R1, R0, R0,LSL#4
4CE704:  SUBS            R6, R0, #1
4CE706:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x4CE718)
4CE708:  MOV             R2, #0xFFFFFFEA
4CE70C:  VLDR            S16, [SP,#0x50+var_50]
4CE710:  ADD.W           R5, R2, R1,LSL#2
4CE714:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
4CE716:  VLDR            S18, [SP,#0x50+var_50+4]
4CE71A:  VLDR            S20, [SP,#0x50+var_48]
4CE71E:  ADR.W           R11, dword_4CE800
4CE722:  LDR.W           R8, [R0]; CGame::currArea ...
4CE726:  LDR             R0, =(MI_SAMSITE_ptr - 0x4CE730)
4CE728:  VLDR            S22, =750.0
4CE72C:  ADD             R0, PC; MI_SAMSITE_ptr
4CE72E:  LDR.W           R9, [R0]; MI_SAMSITE
4CE732:  LDR             R0, =(MI_SAMSITE2_ptr - 0x4CE738)
4CE734:  ADD             R0, PC; MI_SAMSITE2_ptr
4CE736:  LDR.W           R10, [R0]; MI_SAMSITE2
4CE73A:  LDR             R0, [R4,#4]
4CE73C:  LDRSB           R0, [R0,R6]
4CE73E:  CMP             R0, #0
4CE740:  BLT             loc_4CE7CE
4CE742:  LDR             R1, [R4]
4CE744:  ADDS            R0, R1, R5
4CE746:  CMP             R0, #0x26 ; '&'
4CE748:  BEQ             loc_4CE7CE
4CE74A:  LDRB            R2, [R0,#0xD]
4CE74C:  CMP             R2, #0xD
4CE74E:  ITT NE
4CE750:  LDRNE.W         R3, [R8]; CGame::currArea
4CE754:  CMPNE           R3, R2
4CE756:  BNE             loc_4CE7CE
4CE758:  LDRB.W          R2, [R0,#-0xA]
4CE75C:  LSLS            R2, R2, #0x18
4CE75E:  BPL             loc_4CE7CE
4CE760:  LDR.W           R2, [R0,#-0x12]
4CE764:  ADD.W           R3, R2, #0x30 ; '0'
4CE768:  CMP             R2, #0
4CE76A:  IT EQ
4CE76C:  SUBEQ.W         R3, R0, #0x22 ; '"'
4CE770:  LDRSH           R1, [R1,R5]
4CE772:  VLDR            S0, [R3]
4CE776:  VLDR            S2, [R3,#4]
4CE77A:  VSUB.F32        S0, S0, S16
4CE77E:  VLDR            S4, [R3,#8]
4CE782:  VSUB.F32        S2, S2, S18
4CE786:  LDRH.W          R2, [R9]
4CE78A:  VSUB.F32        S4, S4, S20
4CE78E:  CMP             R2, R1
4CE790:  VMUL.F32        S0, S0, S0
4CE794:  VMUL.F32        S2, S2, S2
4CE798:  VMUL.F32        S4, S4, S4
4CE79C:  VADD.F32        S0, S0, S2
4CE7A0:  VMOV.F32        S2, S22
4CE7A4:  VADD.F32        S0, S0, S4
4CE7A8:  VSQRT.F32       S0, S0
4CE7AC:  BEQ             loc_4CE7BE
4CE7AE:  LDRH.W          R2, [R10]
4CE7B2:  CMP             R2, R1
4CE7B4:  MOV             R1, R11
4CE7B6:  IT EQ
4CE7B8:  ADDEQ           R1, #4; CDummyObject *
4CE7BA:  VLDR            S2, [R1]
4CE7BE:  VCMPE.F32       S0, S2
4CE7C2:  VMRS            APSR_nzcv, FPSCR
4CE7C6:  BGE             loc_4CE7CE
4CE7C8:  SUBS            R0, #0x26 ; '&'; this
4CE7CA:  BLX             j__ZN11CPopulation19ConvertToRealObjectEP12CDummyObject; CPopulation::ConvertToRealObject(CDummyObject *)
4CE7CE:  SUBS            R6, #1
4CE7D0:  SUBS            R5, #0x3C ; '<'
4CE7D2:  ADDS            R0, R6, #1
4CE7D4:  BNE             loc_4CE73A
4CE7D6:  ADD             SP, SP, #0x10
4CE7D8:  VPOP            {D8-D11}
4CE7DC:  ADD             SP, SP, #4
4CE7DE:  POP.W           {R8-R11}
4CE7E2:  POP             {R4-R7,PC}
