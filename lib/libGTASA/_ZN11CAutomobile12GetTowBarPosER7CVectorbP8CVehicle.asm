; =========================================================
; Game Engine Function: _ZN11CAutomobile12GetTowBarPosER7CVectorbP8CVehicle
; Address            : 0x55E564 - 0x55E6F2
; =========================================================

55E564:  PUSH            {R4,R5,R7,LR}
55E566:  ADD             R7, SP, #8
55E568:  SUB             SP, SP, #0x10
55E56A:  MOV             R5, R1
55E56C:  LDRSH.W         R1, [R0,#0x26]
55E570:  CMP.W           R1, #0x20C
55E574:  UXTH.W          R12, R1
55E578:  BGT             loc_55E58E
55E57A:  SUBW            R4, R1, #0x202
55E57E:  CMP             R4, #2
55E580:  BCC.W           loc_55E684
55E584:  MOVW            R4, #0x193
55E588:  CMP             R1, R4
55E58A:  BEQ             loc_55E684
55E58C:  B               loc_55E5C8
55E58E:  MOVW            R4, #0x20D
55E592:  CMP             R1, R4
55E594:  BEQ             loc_55E5A6
55E596:  MOVW            R4, #0x24F
55E59A:  CMP             R1, R4
55E59C:  BEQ             loc_55E684
55E59E:  MOVW            R4, #0x213
55E5A2:  CMP             R1, R4
55E5A4:  BNE             loc_55E5C8
55E5A6:  MOVW            R1, #0x213
55E5AA:  CMP             R12, R1
55E5AC:  BNE             loc_55E5FA
55E5AE:  VLDR            S0, =-0.6
55E5B2:  CBZ             R3, loc_55E60C
55E5B4:  LDR.W           R1, [R3,#0x5A4]
55E5B8:  CMP             R1, #0xB
55E5BA:  BNE             loc_55E60C
55E5BC:  LDRH            R1, [R3,#0x26]
55E5BE:  MOVW            R2, #0x262
55E5C2:  CMP             R1, R2
55E5C4:  BEQ             loc_55E60C
55E5C6:  B               loc_55E608
55E5C8:  CBZ             R3, loc_55E5DC
55E5CA:  CMP.W           R12, #0x228
55E5CE:  ITTT EQ
55E5D0:  LDRHEQ.W        LR, [R3,#0x26]
55E5D4:  MOVWEQ          R4, #0x263
55E5D8:  CMPEQ           LR, R4
55E5DA:  BEQ             loc_55E684
55E5DC:  MOVW            R4, #0x1E5
55E5E0:  CMP             R1, R4
55E5E2:  BEQ             loc_55E5F4
55E5E4:  MOVW            R4, #0x247
55E5E8:  CMP             R1, R4
55E5EA:  ITT NE
55E5EC:  MOVWNE          R4, #0x25E
55E5F0:  CMPNE           R1, R4
55E5F2:  BNE             loc_55E66E
55E5F4:  CMP             R3, #0
55E5F6:  BNE             loc_55E678
55E5F8:  B               loc_55E698
55E5FA:  VLDR            S0, =-1.05
55E5FE:  CBZ             R3, loc_55E60C
55E600:  LDR.W           R1, [R3,#0x5A4]
55E604:  CMP             R1, #0xB
55E606:  BNE             loc_55E60C
55E608:  MOVS            R1, #0
55E60A:  B               loc_55E6EC
55E60C:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55E61A)
55E60E:  MOVS            R2, #0
55E610:  STR             R2, [R5]
55E612:  VMOV.F32        S4, #0.5
55E616:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55E618:  LDRSH.W         R2, [R0,#0x26]
55E61C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
55E61E:  LDR.W           R1, [R1,R2,LSL#2]
55E622:  LDR             R1, [R1,#0x2C]
55E624:  VLDR            S2, [R1,#4]
55E628:  LDR             R1, =(TOWTRUCK_HOIST_DOWN_LIMIT_ptr - 0x55E632)
55E62A:  VADD.F32        S0, S0, S2
55E62E:  ADD             R1, PC; TOWTRUCK_HOIST_DOWN_LIMIT_ptr
55E630:  LDR             R1, [R1]; TOWTRUCK_HOIST_DOWN_LIMIT
55E632:  VSTR            S0, [R5,#4]
55E636:  LDRH            R1, [R1]
55E638:  LDRH.W          R2, [R0,#0x880]
55E63C:  VMOV            S0, R1
55E640:  ADDW            R1, R0, #0x8AC
55E644:  VMOV            S2, R2
55E648:  VCVT.F32.U32    S0, S0
55E64C:  VCVT.F32.U32    S2, S2
55E650:  VDIV.F32        S0, S2, S0
55E654:  VMOV.F32        S2, #1.0
55E658:  VSUB.F32        S0, S2, S0
55E65C:  VLDR            S2, [R1]
55E660:  VMUL.F32        S0, S0, S4
55E664:  VADD.F32        S0, S0, S4
55E668:  VSUB.F32        S0, S0, S2
55E66C:  B               loc_55E6D0
55E66E:  CBZ             R3, loc_55E698
55E670:  MOVW            R1, #0x25F
55E674:  CMP             R12, R1
55E676:  BNE             loc_55E698
55E678:  LDRSH.W         R1, [R3,#0x26]
55E67C:  SUBW            R1, R1, #0x25E
55E680:  CMP             R1, #2
55E682:  BHI             loc_55E698
55E684:  LDR.W           R1, [R0,#0x6AC]
55E688:  CBZ             R1, loc_55E698
55E68A:  MOV             R0, R1
55E68C:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
55E690:  VLDR            D16, [R0,#0x30]
55E694:  LDR             R0, [R0,#0x38]
55E696:  B               loc_55E6E4
55E698:  MOVS            R1, #0
55E69A:  CMP             R2, #1
55E69C:  BNE             loc_55E6EC
55E69E:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55E6AA)
55E6A0:  VMOV.F32        S0, #-0.5
55E6A4:  STR             R1, [R5]
55E6A6:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55E6A8:  LDRSH.W         R1, [R0,#0x26]
55E6AC:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
55E6AE:  LDR.W           R1, [R2,R1,LSL#2]
55E6B2:  LDR             R1, [R1,#0x2C]
55E6B4:  VLDR            S2, [R1,#4]
55E6B8:  ADDW            R1, R0, #0x8AC
55E6BC:  VADD.F32        S0, S2, S0
55E6C0:  VMOV.F32        S2, #0.5
55E6C4:  VSTR            S0, [R5,#4]
55E6C8:  VLDR            S0, [R1]
55E6CC:  VSUB.F32        S0, S2, S0
55E6D0:  VSTR            S0, [R5,#8]
55E6D4:  MOV             R2, R5
55E6D6:  LDR             R1, [R0,#0x14]
55E6D8:  MOV             R0, SP
55E6DA:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55E6DE:  VLDR            D16, [SP,#0x18+var_18]
55E6E2:  LDR             R0, [SP,#0x18+var_10]
55E6E4:  MOVS            R1, #1
55E6E6:  STR             R0, [R5,#8]
55E6E8:  VSTR            D16, [R5]
55E6EC:  MOV             R0, R1
55E6EE:  ADD             SP, SP, #0x10
55E6F0:  POP             {R4,R5,R7,PC}
