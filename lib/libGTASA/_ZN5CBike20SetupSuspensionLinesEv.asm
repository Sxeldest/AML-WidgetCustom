; =========================================================
; Game Engine Function: _ZN5CBike20SetupSuspensionLinesEv
; Address            : 0x5607A0 - 0x560C6A
; =========================================================

5607A0:  PUSH            {R4-R7,LR}
5607A2:  ADD             R7, SP, #0xC
5607A4:  PUSH.W          {R8-R11}
5607A8:  SUB             SP, SP, #4
5607AA:  VPUSH           {D8-D15}
5607AE:  SUB             SP, SP, #0x60
5607B0:  MOV             R4, R0
5607B2:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5607C2)
5607B6:  LDRSH.W         R1, [R4,#0x26]
5607BA:  VMOV.F32        S24, #-0.5
5607BE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5607C0:  VLDR            S22, =0.0
5607C4:  VMOV.F32        S26, #0.25
5607C8:  VLDR            S18, =100000.0
5607CC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5607CE:  VMOV.F32        S28, #-0.25
5607D2:  VMOV.F32        S30, S22
5607D6:  ADD             R5, SP, #0xC0+var_A0
5607D8:  MOV.W           R8, #0
5607DC:  LDR.W           R0, [R0,R1,LSL#2]
5607E0:  ADD.W           R3, R0, #0x58 ; 'X'
5607E4:  ADD.W           R6, R0, #0x5C ; '\'
5607E8:  LDR             R1, [R0,#0x2C]
5607EA:  ADD.W           R0, R4, #0x5C8
5607EE:  STR             R1, [SP,#0xC0+var_C0]
5607F0:  LDR.W           R9, [R1,#0x2C]
5607F4:  STR             R0, [SP,#0xC0+var_B4]
5607F6:  ADDW            R0, R4, #0x5C4
5607FA:  STR             R0, [SP,#0xC0+var_B8]
5607FC:  ADDW            R0, R4, #0x7AC
560800:  STR             R0, [SP,#0xC0+var_BC]
560802:  LDR.W           R0, [R9,#0x10]
560806:  VLDR            S20, [R0,#8]
56080A:  VLDR            S16, [R0,#0x28]
56080E:  STRD.W          R6, R9, [SP,#0xC0+var_B0]
560812:  STR             R3, [SP,#0xC0+var_A8]
560814:  VCMP.F32        S20, S18
560818:  VMRS            APSR_nzcv, FPSCR
56081C:  BEQ             loc_560844
56081E:  LDR.W           R0, [R9,#0x10]
560822:  CMP.W           R8, #1
560826:  MOV.W           R1, #0
56082A:  IT GT
56082C:  MOVGT           R1, #1
56082E:  ADD.W           R2, R0, R8,LSL#5
560832:  ADD.W           R1, R4, R1,LSL#2
560836:  VLDR            S17, [R2]
56083A:  VLDR            S0, [R2,#4]
56083E:  LDR.W           R11, [R1,#0x77C]
560842:  B               loc_5609A0
560844:  CMP.W           R8, #3; switch 4 cases
560848:  BHI             def_560856; jumptable 00560856 default case
56084A:  VMOV.F32        S2, S28
56084E:  LDR             R0, [SP,#0xC0+var_B4]
560850:  VMOV.F32        S0, S26
560854:  MOV             R1, R6
560856:  TBB.W           [PC,R8]; switch jump
56085A:  DCB 2; jump table for switch statement
56085B:  DCB 4
56085C:  DCB 0xF
56085D:  DCB 0xB
56085E:  VMOV.F32        S2, S26; jumptable 00560856 case 0
560862:  VMOV.F32        S0, S2; jumptable 00560856 case 1
560866:  LDR             R0, [SP,#0xC0+var_B8]
560868:  MOV             R1, R3
56086A:  B               loc_560878; jumptable 00560856 case 2
56086C:  MOVS            R0, #0; jumptable 00560856 default case
56086E:  B               loc_560882
560870:  LDR             R0, [SP,#0xC0+var_B4]; jumptable 00560856 case 3
560872:  VMOV.F32        S0, S28
560876:  MOV             R1, R6
560878:  VLDR            S2, [R1]; jumptable 00560856 case 2
56087C:  LDR             R0, [R0]
56087E:  VMUL.F32        S30, S0, S2
560882:  ADD.W           R1, R0, #0x40 ; '@'
560886:  ADD.W           R2, R0, #0x20 ; ' '
56088A:  VLD1.32         {D16-D17}, [R1]
56088E:  ADD.W           R1, R0, #0x30 ; '0'
560892:  ADD.W           R9, R5, #0x20 ; ' '
560896:  VLD1.32         {D18-D19}, [R1]
56089A:  ADD.W           R1, R0, #0x10
56089E:  VLD1.32         {D20-D21}, [R1]
5608A2:  LDR             R1, [R4,#0x18]
5608A4:  VLD1.32         {D22-D23}, [R2]
5608A8:  LDR.W           R10, [R1,#4]
5608AC:  ADD.W           R1, R5, #0x30 ; '0'
5608B0:  STR             R1, [SP,#0xC0+var_A4]
5608B2:  VST1.64         {D16-D17}, [R1]
5608B6:  MOV             R1, R5
5608B8:  VST1.64         {D18-D19}, [R9]
5608BC:  VST1.64         {D20-D21}, [R1]!
5608C0:  VST1.64         {D22-D23}, [R1]
5608C4:  LDR             R6, [R0,#4]
5608C6:  CBZ             R6, loc_5608E0
5608C8:  ADD.W           R1, R6, #0x10
5608CC:  MOV             R0, R5
5608CE:  MOVS            R2, #2
5608D0:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
5608D4:  LDR             R6, [R6,#4]
5608D6:  CMP             R6, R10
5608D8:  IT EQ
5608DA:  MOVEQ           R6, #0
5608DC:  CMP             R6, #0
5608DE:  BNE             loc_5608C8
5608E0:  LDR.W           R11, [SP,#0xC0+var_68]
5608E4:  UXTH.W          R0, R8
5608E8:  VLDR            S17, [SP,#0xC0+var_70]
5608EC:  CMP             R0, #2
5608EE:  VLDR            S19, [SP,#0xC0+var_6C]
5608F2:  BEQ             loc_560908
5608F4:  CMP             R0, #0
5608F6:  IT EQ
5608F8:  STREQ.W         R11, [R4,#0x77C]
5608FC:  B               loc_560990
5608FE:  ALIGN 0x10
560900:  DCFS 0.0
560904:  DCFS 100000.0
560908:  VMOV.F32        S0, S22
56090C:  LDR.W           R0, [R4,#0x5C0]
560910:  STR.W           R11, [R4,#0x780]
560914:  CBZ             R0, loc_56098A
560916:  ADD.W           R1, R0, #0x10
56091A:  VLD1.32         {D16-D17}, [R1]
56091E:  ADD.W           R1, R0, #0x20 ; ' '
560922:  VLD1.32         {D18-D19}, [R1]
560926:  ADD.W           R1, R0, #0x30 ; '0'
56092A:  VLD1.32         {D20-D21}, [R1]
56092E:  ADD.W           R1, R0, #0x40 ; '@'
560932:  VLD1.32         {D22-D23}, [R1]
560936:  LDR             R1, [SP,#0xC0+var_A4]
560938:  VST1.64         {D22-D23}, [R1]
56093C:  MOV             R1, R5
56093E:  VST1.64         {D20-D21}, [R9]
560942:  VST1.64         {D16-D17}, [R1]!
560946:  VST1.64         {D18-D19}, [R1]
56094A:  LDR             R6, [R0,#4]
56094C:  CBZ             R6, loc_560966
56094E:  ADD.W           R1, R6, #0x10
560952:  MOV             R0, R5
560954:  MOVS            R2, #2
560956:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
56095A:  LDR             R6, [R6,#4]
56095C:  CMP             R6, R10
56095E:  IT EQ
560960:  MOVEQ           R6, #0
560962:  CMP             R6, #0
560964:  BNE             loc_56094E
560966:  VLDR            S0, [SP,#0xC0+var_6C]
56096A:  VMOV            S4, R11
56096E:  VLDR            S2, [SP,#0xC0+var_68]
560972:  VSUB.F32        S0, S19, S0
560976:  VSUB.F32        S2, S4, S2
56097A:  VMUL.F32        S0, S0, S0
56097E:  VMUL.F32        S2, S2, S2
560982:  VADD.F32        S0, S0, S2
560986:  VSQRT.F32       S0, S0
56098A:  LDR             R0, [SP,#0xC0+var_BC]
56098C:  VSTR            S0, [R0]
560990:  VADD.F32        S0, S30, S19
560994:  LDR.W           R9, [SP,#0xC0+var_AC]
560998:  LDR             R6, [SP,#0xC0+var_B0]
56099A:  LDR             R3, [SP,#0xC0+var_A8]
56099C:  LDR.W           R0, [R9,#0x10]
5609A0:  LDR.W           R1, [R4,#0x388]
5609A4:  VMOV            S2, R11
5609A8:  ADD.W           R0, R0, R8,LSL#5
5609AC:  CMP.W           R8, #2
5609B0:  VLDR            S4, [R1,#0xB8]
5609B4:  MOV             R1, R6
5609B6:  VSTR            S17, [R0]
5609BA:  VADD.F32        S2, S4, S2
5609BE:  VSTR            S0, [R0,#4]
5609C2:  VSTR            S2, [R0,#8]
5609C6:  LDR.W           R0, [R4,#0x388]
5609CA:  IT CC
5609CC:  MOVCC           R1, R3
5609CE:  VLDR            S4, [R1]
5609D2:  VLDR            S6, [R0,#0xB8]
5609D6:  VMUL.F32        S4, S4, S24
5609DA:  VLDR            S8, [R0,#0xBC]
5609DE:  LDR.W           R0, [R9,#0x10]
5609E2:  VSUB.F32        S6, S8, S6
5609E6:  ADD.W           R0, R0, R8,LSL#5
5609EA:  VSTR            S17, [R0,#0x10]
5609EE:  VSTR            S0, [R0,#0x14]
5609F2:  VADD.F32        S4, S6, S4
5609F6:  VADD.F32        S2, S2, S4
5609FA:  VSTR            S2, [R0,#0x18]
5609FE:  LDR.W           R0, [R4,#0x388]
560A02:  VLDR            S0, [R0,#0xB8]
560A06:  VLDR            S2, [R0,#0xBC]
560A0A:  ADD.W           R0, R4, R8,LSL#2
560A0E:  ADDW            R1, R0, #0x784
560A12:  ADDW            R0, R0, #0x794
560A16:  VSUB.F32        S0, S0, S2
560A1A:  VSTR            S0, [R1]
560A1E:  LDR.W           R1, [R9,#0x10]
560A22:  ADD.W           R1, R1, R8,LSL#5
560A26:  ADD.W           R8, R8, #1
560A2A:  CMP.W           R8, #4
560A2E:  VLDR            S0, [R1,#8]
560A32:  VLDR            S2, [R1,#0x18]
560A36:  VSUB.F32        S0, S0, S2
560A3A:  VSTR            S0, [R0]
560A3E:  BNE.W           loc_560814
560A42:  VCMP.F32        S20, S18
560A46:  VMRS            APSR_nzcv, FPSCR
560A4A:  BNE             loc_560AB8
560A4C:  LDR.W           R10, [R4,#0x5BC]
560A50:  ADD.W           R0, R10, #0x10
560A54:  VLD1.32         {D16-D17}, [R0]
560A58:  ADD.W           R0, R10, #0x20 ; ' '
560A5C:  VLD1.32         {D18-D19}, [R0]
560A60:  ADD.W           R0, R10, #0x30 ; '0'
560A64:  VLD1.32         {D20-D21}, [R0]
560A68:  ADD.W           R0, R10, #0x40 ; '@'
560A6C:  VLD1.32         {D22-D23}, [R0]
560A70:  ADD.W           R0, R5, #0x30 ; '0'
560A74:  VST1.64         {D22-D23}, [R0]
560A78:  ADD.W           R0, R5, #0x20 ; ' '
560A7C:  VST1.64         {D20-D21}, [R0]
560A80:  VST1.64         {D16-D17}, [R5]!
560A84:  VST1.64         {D18-D19}, [R5]
560A88:  LDR.W           R5, [R10,#4]
560A8C:  CBZ             R5, loc_560AAA
560A8E:  ADD.W           R8, SP, #0xC0+var_A0
560A92:  ADD.W           R1, R5, #0x10
560A96:  MOV             R0, R8
560A98:  MOVS            R2, #2
560A9A:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
560A9E:  LDR             R5, [R5,#4]
560AA0:  CMP             R5, R10
560AA2:  IT EQ
560AA4:  MOVEQ           R5, #0
560AA6:  CMP             R5, #0
560AA8:  BNE             loc_560A92
560AAA:  LDRD.W          R0, R1, [SP,#0xC0+var_6C]
560AAE:  STR.W           R0, [R4,#0x7B0]
560AB2:  STR.W           R1, [R4,#0x7B4]
560AB6:  LDR             R3, [SP,#0xC0+var_A8]
560AB8:  VMOV.F32        S0, #-4.0
560ABC:  LDR.W           R0, [R4,#0x388]
560AC0:  VMOV.F32        S4, #1.0
560AC4:  ADDW            R1, R4, #0x774
560AC8:  VLDR            S2, [R0,#0xAC]
560ACC:  ADDW            R0, R4, #0x784
560AD0:  VMUL.F32        S0, S2, S0
560AD4:  VLDR            S2, [R0]
560AD8:  LDR.W           R0, [R9,#0x10]
560ADC:  VLDR            S6, [R0,#8]
560AE0:  ADDW            R0, R4, #0x7A4
560AE4:  VDIV.F32        S0, S4, S0
560AE8:  VADD.F32        S0, S0, S4
560AEC:  VMOV.F32        S4, #0.5
560AF0:  VMUL.F32        S0, S2, S0
560AF4:  VLDR            S2, [R3]
560AF8:  VMUL.F32        S2, S2, S4
560AFC:  VSUB.F32        S0, S0, S6
560B00:  VADD.F32        S0, S2, S0
560B04:  VSTR            S0, [R0]
560B08:  VLDR            S2, [R3]
560B0C:  VMUL.F32        S2, S2, S4
560B10:  VSUB.F32        S2, S2, S0
560B14:  VSTR            S2, [R1]
560B18:  ADD.W           R1, R4, #0x778
560B1C:  VLDR            S2, [R6]
560B20:  VMUL.F32        S2, S2, S4
560B24:  VSUB.F32        S0, S2, S0
560B28:  VSTR            S0, [R1]
560B2C:  LDR.W           R1, [R9,#0x10]
560B30:  LDR             R2, [SP,#0xC0+var_C0]
560B32:  VLDR            S2, [R1,#0x18]
560B36:  VLDR            S0, [R2,#8]
560B3A:  MOV             R1, R2
560B3C:  VCMPE.F32       S2, S0
560B40:  VMRS            APSR_nzcv, FPSCR
560B44:  ITT LT
560B46:  VSTRLT          S2, [R2,#8]
560B4A:  VMOVLT.F32      S0, S2
560B4E:  VLDR            S2, [R2]
560B52:  VLDR            S4, [R2,#4]
560B56:  VMUL.F32        S0, S0, S0
560B5A:  VLDR            S6, [R2,#0xC]
560B5E:  VMUL.F32        S2, S2, S2
560B62:  VLDR            S8, [R2,#0x10]
560B66:  VMUL.F32        S4, S4, S4
560B6A:  VMUL.F32        S6, S6, S6
560B6E:  VLDR            S10, [R2,#0x14]
560B72:  VMUL.F32        S8, S8, S8
560B76:  VMUL.F32        S10, S10, S10
560B7A:  VADD.F32        S2, S2, S4
560B7E:  VADD.F32        S6, S6, S8
560B82:  VADD.F32        S0, S2, S0
560B86:  VADD.F32        S4, S6, S10
560B8A:  VSQRT.F32       S0, S0
560B8E:  VSQRT.F32       S2, S4
560B92:  VCMPE.F32       S0, S2
560B96:  VMRS            APSR_nzcv, FPSCR
560B9A:  IT LE
560B9C:  ADDLE           R1, #0xC
560B9E:  VLDR            S0, [R1]
560BA2:  VLDR            S2, [R1,#4]
560BA6:  VMUL.F32        S0, S0, S0
560BAA:  VLDR            S4, [R1,#8]
560BAE:  VMUL.F32        S2, S2, S2
560BB2:  VMUL.F32        S4, S4, S4
560BB6:  VADD.F32        S0, S0, S2
560BBA:  VLDR            S2, [R2,#0x24]
560BBE:  VADD.F32        S0, S0, S4
560BC2:  VSQRT.F32       S0, S0
560BC6:  VCMPE.F32       S2, S0
560BCA:  VMRS            APSR_nzcv, FPSCR
560BCE:  VCMP.F32        S16, S18
560BD2:  IT LT
560BD4:  VSTRLT          S0, [R2,#0x24]
560BD8:  VMRS            APSR_nzcv, FPSCR
560BDC:  BNE             loc_560C5C
560BDE:  LDR.W           R1, [R4,#0x388]
560BE2:  LDR.W           R1, [R1,#0xCC]
560BE6:  ANDS.W          R1, R1, #0x40000000
560BEA:  BEQ             loc_560C5C
560BEC:  LDRSH.W         R2, [R9]
560BF0:  CMP             R2, #1
560BF2:  BLT             loc_560C5C
560BF4:  VMOV.F32        S0, #0.25
560BF8:  VLDR            S2, [R0]
560BFC:  MOVS            R0, #0
560BFE:  MOVS            R1, #0xC
560C00:  VSUB.F32        S0, S0, S2
560C04:  VLDR            S2, =0.4
560C08:  LDR.W           R3, [R9,#8]
560C0C:  ADDS            R6, R3, R1
560C0E:  VLDR            S6, [R6,#-4]
560C12:  VLDR            S4, [R6]
560C16:  VSUB.F32        S8, S6, S4
560C1A:  VCMPE.F32       S8, S0
560C1E:  VMRS            APSR_nzcv, FPSCR
560C22:  BGE             loc_560C52
560C24:  VCMPE.F32       S4, S2
560C28:  VMRS            APSR_nzcv, FPSCR
560C2C:  BLE             loc_560C44
560C2E:  VSUB.F32        S4, S6, S0
560C32:  VMAX.F32        D2, D2, D1
560C36:  VSTR            S4, [R6]
560C3A:  LDR.W           R3, [R9,#8]
560C3E:  ADDS            R2, R3, R1
560C40:  VLDR            S4, [R2]
560C44:  VADD.F32        S4, S0, S4
560C48:  ADDS            R2, R3, R1
560C4A:  VSTR            S4, [R2,#-4]
560C4E:  LDRH.W          R2, [R9]
560C52:  ADDS            R1, #0x14
560C54:  ADDS            R0, #1
560C56:  SXTH            R3, R2
560C58:  CMP             R0, R3
560C5A:  BLT             loc_560C08
560C5C:  ADD             SP, SP, #0x60 ; '`'
560C5E:  VPOP            {D8-D15}
560C62:  ADD             SP, SP, #4
560C64:  POP.W           {R8-R11}
560C68:  POP             {R4-R7,PC}
