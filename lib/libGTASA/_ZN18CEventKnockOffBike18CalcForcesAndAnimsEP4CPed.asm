; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBike18CalcForcesAndAnimsEP4CPed
; Address            : 0x3757F0 - 0x375CB6
; =========================================================

3757F0:  PUSH            {R4-R7,LR}
3757F2:  ADD             R7, SP, #0xC
3757F4:  PUSH.W          {R8}
3757F8:  VPUSH           {D8-D11}
3757FC:  MOV             R5, R0
3757FE:  MOV             R4, R1
375800:  LDR             R0, [R5,#0x38]
375802:  VLDR            S0, [R4,#0x90]
375806:  LDR.W           R1, [R0,#0x5A0]
37580A:  VLDR            S2, [R0,#0x90]
37580E:  CBZ             R1, loc_37581A
375810:  CMP             R1, #9
375812:  BNE             loc_375822
375814:  ADDW            R1, R0, #0x818
375818:  B               loc_37581E
37581A:  ADDW            R1, R0, #0x974
37581E:  LDRB            R6, [R1]
375820:  B               loc_375824
375822:  MOVS            R6, #0
375824:  LDRSB.W         R2, [R5,#0x36]
375828:  SUB.W           R1, R2, #0x31 ; '1'; switch 7 cases
37582C:  CMP             R1, #6
37582E:  BHI             def_375838; jumptable 00375838 default case
375830:  VDIV.F32        S16, S0, S2
375834:  MOV.W           R8, #0x80000000
375838:  TBB.W           [PC,R1]; switch jump
37583C:  DCB 4; jump table for switch statement
37583D:  DCB 0x6F
37583E:  DCB 0x6F
37583F:  DCB 0x6F
375840:  DCB 0xC3
375841:  DCB 0xD8
375842:  DCB 0x64
375843:  ALIGN 2
375844:  VLDR            D16, [R5,#0xC]; jumptable 00375838 case 49
375848:  ADR.W           R1, dword_375CBC
37584C:  LDR             R0, [R5,#0x14]
37584E:  MOVS            R3, #0
375850:  STR             R0, [R4,#0x50]
375852:  VSTR            D16, [R4,#0x48]
375856:  LDR             R0, [R5,#0x38]
375858:  LDR.W           R0, [R0,#0x5A4]
37585C:  CMP             R0, #0xA
37585E:  MOV             R0, R4
375860:  IT EQ
375862:  ADDEQ           R1, #4
375864:  VLDR            S6, [R5,#0x24]
375868:  VLDR            S0, [R1]
37586C:  VLDR            S2, [R5,#0x18]
375870:  VMUL.F32        S0, S16, S0
375874:  VLDR            S4, [R5,#0x1C]
375878:  VMUL.F32        S0, S6, S0
37587C:  VMUL.F32        S2, S2, S0
375880:  VMUL.F32        S0, S4, S0
375884:  VMOV            R1, S2
375888:  VMOV            R2, S0
37588C:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
375890:  LDR             R0, [R5,#0x38]
375892:  LDR.W           R6, [R0,#0x5A4]
375896:  BLX             rand
37589A:  VMOV            S2, R0
37589E:  VLDR            S4, =4.6566e-10
3758A2:  VMOV.F32        S6, #3.0
3758A6:  CMP             R6, #0xA
3758A8:  VCVT.F32.S32    S2, S2
3758AC:  VMOV.F32        S0, #2.0
3758B0:  IT EQ
3758B2:  VMOVEQ.F32      S0, S6
3758B6:  VMUL.F32        S2, S2, S4
3758BA:  VMUL.F32        S0, S0, S2
3758BE:  VLDR            S2, =70.0
3758C2:  VADD.F32        S0, S0, S6
3758C6:  VDIV.F32        S0, S0, S2
3758CA:  VLDR            S2, [R4,#0x50]
3758CE:  VADD.F32        S0, S2, S0
3758D2:  VSTR            S0, [R4,#0x50]
3758D6:  LDR             R0, [R5,#0x38]
3758D8:  STR.W           R0, [R4,#0x12C]
3758DC:  LDRSB.W         R0, [R5,#0x34]
3758E0:  CMP             R0, #3
3758E2:  ITTE LS
3758E4:  ADRLS.W         R1, dword_375CC8
3758E8:  LDRLS.W         R5, [R1,R0,LSL#2]
3758EC:  MOVHI           R5, #0xF
3758EE:  LDR.W           R0, [R4,#0x488]
3758F2:  ORR.W           R0, R0, R8
3758F6:  STR.W           R0, [R4,#0x488]
3758FA:  MOV             R0, R4; this
3758FC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
375900:  B               loc_375CAA
375902:  CBNZ            R2, loc_37591A; jumptable 00375838 default case
375904:  VLDR            D16, [R5,#0xC]; jumptable 00375838 case 55
375908:  LDR             R0, [R5,#0x14]
37590A:  STR             R0, [R4,#0x50]
37590C:  VSTR            D16, [R4,#0x48]
375910:  LDR             R0, [R5,#0x38]
375912:  MOVS            R5, #0xBF
375914:  STR.W           R0, [R4,#0x12C]
375918:  B               loc_375CAA
37591A:  LDRSB.W         R1, [R5,#0x34]; jumptable 00375838 cases 50-52
37591E:  SUBS            R2, R1, #1
375920:  CMP             R2, #2
375922:  BCC.W           loc_375A74
375926:  CMP             R1, #3
375928:  BEQ.W           loc_375B1E
37592C:  CMP             R1, #0
37592E:  BNE.W           loc_375BC6
375932:  VLDR            S0, [R0,#0x48]
375936:  VLDR            S2, [R0,#0x4C]
37593A:  VMUL.F32        S0, S0, S0
37593E:  VLDR            S4, [R0,#0x50]
375942:  VMUL.F32        S2, S2, S2
375946:  VMUL.F32        S4, S4, S4
37594A:  VADD.F32        S0, S0, S2
37594E:  VLDR            S2, =0.09
375952:  VADD.F32        S0, S0, S4
375956:  VCMPE.F32       S0, S2
37595A:  VMRS            APSR_nzcv, FPSCR
37595E:  BGE             loc_3759BA
375960:  VMOV.F32        S0, #6.0
375964:  LDR             R0, [R0,#0x14]
375966:  VMOV.F32        S2, #5.0
37596A:  VLDR            S4, [R0,#0x10]
37596E:  VLDR            S6, [R0,#0x14]
375972:  VLDR            S10, [R0,#0x20]
375976:  VLDR            S12, [R0,#0x24]
37597A:  VLDR            S8, [R0,#0x18]
37597E:  VMUL.F32        S4, S4, S0
375982:  VLDR            S14, [R0,#0x28]
375986:  VMUL.F32        S6, S6, S0
37598A:  VMUL.F32        S10, S10, S2
37598E:  MOV             R0, R4
375990:  VMUL.F32        S12, S12, S2
375994:  VMUL.F32        S0, S8, S0
375998:  VMUL.F32        S2, S14, S2
37599C:  VSUB.F32        S4, S10, S4
3759A0:  VSUB.F32        S6, S12, S6
3759A4:  VSUB.F32        S0, S2, S0
3759A8:  VMOV            R1, S4
3759AC:  VMOV            R2, S6
3759B0:  VMOV            R3, S0
3759B4:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
3759B8:  LDR             R0, [R5,#0x38]
3759BA:  STR.W           R0, [R4,#0x12C]
3759BE:  MOVS            R5, #0x6A ; 'j'
3759C0:  B               loc_375CAA
3759C2:  VLDR            S0, =0.2; jumptable 00375838 case 53
3759C6:  VLDR            S4, [R0,#0x4C]
3759CA:  VLDR            S2, [R0,#0x48]
3759CE:  MOVS            R0, #0
3759D0:  VMUL.F32        S4, S4, S0
3759D4:  STR             R0, [R4,#0x50]
3759D6:  VMUL.F32        S0, S2, S0
3759DA:  VSTR            S0, [R4,#0x48]
3759DE:  VSTR            S4, [R4,#0x4C]
3759E2:  LDR             R0, [R5,#0x38]
3759E4:  MOVS            R5, #0x78 ; 'x'
3759E6:  STR.W           R0, [R4,#0x12C]
3759EA:  B               loc_375CAA
3759EC:  VLDR            D16, [R5,#0xC]; jumptable 00375838 case 54
3759F0:  LDR             R0, [R5,#0x14]
3759F2:  STR             R0, [R4,#0x50]
3759F4:  VSTR            D16, [R4,#0x48]
3759F8:  VLDR            S18, [R5,#0x18]
3759FC:  VLDR            S20, [R5,#0x1C]
375A00:  VLDR            S22, [R5,#0x24]
375A04:  BLX             rand
375A08:  VMOV            S0, R0
375A0C:  VLDR            S2, =-0.3
375A10:  VLDR            S4, =4.6566e-10
375A14:  MOV             R0, R4
375A16:  VCVT.F32.S32    S0, S0
375A1A:  VMUL.F32        S2, S16, S2
375A1E:  VMUL.F32        S0, S0, S4
375A22:  VMUL.F32        S2, S2, S22
375A26:  VMOV.F32        S4, #3.0
375A2A:  VADD.F32        S0, S0, S0
375A2E:  VMUL.F32        S6, S2, S18
375A32:  VMUL.F32        S2, S2, S20
375A36:  VADD.F32        S0, S0, S4
375A3A:  VMOV            R1, S6
375A3E:  VMOV            R2, S2
375A42:  VMOV            R3, S0
375A46:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
375A4A:  LDR             R0, [R5,#0x38]
375A4C:  STR.W           R0, [R4,#0x12C]
375A50:  LDRSB.W         R0, [R5,#0x34]
375A54:  CMP             R0, #3
375A56:  ITTE LS
375A58:  ADRLS           R1, dword_375CDC
375A5A:  LDRLS.W         R5, [R1,R0,LSL#2]
375A5E:  MOVHI           R5, #0xF
375A60:  CMP             R6, #0
375A62:  BNE.W           loc_375CAA
375A66:  LDR.W           R0, [R4,#0x488]
375A6A:  ORR.W           R0, R0, R8
375A6E:  STR.W           R0, [R4,#0x488]
375A72:  B               loc_375CAA
375A74:  VLDR            S0, [R0,#0x48]
375A78:  VLDR            S2, [R0,#0x4C]
375A7C:  VMUL.F32        S8, S0, S0
375A80:  VLDR            S4, [R0,#0x50]
375A84:  VMUL.F32        S6, S2, S2
375A88:  VMUL.F32        S10, S4, S4
375A8C:  VADD.F32        S6, S8, S6
375A90:  VLDR            S8, =0.09
375A94:  VADD.F32        S6, S6, S10
375A98:  VCMPE.F32       S6, S8
375A9C:  VMRS            APSR_nzcv, FPSCR
375AA0:  BLE.W           loc_375BCA
375AA4:  VLDR            S6, =0.3
375AA8:  VMUL.F32        S0, S0, S6
375AAC:  VMUL.F32        S4, S4, S6
375AB0:  VMUL.F32        S2, S2, S6
375AB4:  VSTR            S0, [R4,#0x48]
375AB8:  VMOV.F32        S0, #5.0
375ABC:  VSTR            S2, [R4,#0x4C]
375AC0:  VMOV.F32        S2, #6.0
375AC4:  VSTR            S4, [R4,#0x50]
375AC8:  LDR             R0, [R5,#0x38]
375ACA:  LDR             R0, [R0,#0x14]
375ACC:  VLDR            S4, [R0]
375AD0:  VLDR            S6, [R0,#4]
375AD4:  VLDR            S10, [R0,#0x20]
375AD8:  VMUL.F32        S4, S4, S2
375ADC:  VLDR            S12, [R0,#0x24]
375AE0:  VMUL.F32        S6, S6, S2
375AE4:  VLDR            S8, [R0,#8]
375AE8:  VMUL.F32        S10, S10, S0
375AEC:  VLDR            S14, [R0,#0x28]
375AF0:  VMUL.F32        S12, S12, S0
375AF4:  VMUL.F32        S2, S8, S2
375AF8:  MOV             R0, R4
375AFA:  VMUL.F32        S0, S14, S0
375AFE:  VADD.F32        S4, S4, S10
375B02:  VADD.F32        S6, S6, S12
375B06:  VADD.F32        S0, S2, S0
375B0A:  VMOV            R1, S4
375B0E:  VMOV            R2, S6
375B12:  VMOV            R3, S0
375B16:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
375B1A:  MOVS            R5, #0x19
375B1C:  B               loc_375CAA
375B1E:  VLDR            S0, [R0,#0x48]
375B22:  VLDR            S2, [R0,#0x4C]
375B26:  VMUL.F32        S8, S0, S0
375B2A:  VLDR            S4, [R0,#0x50]
375B2E:  VMUL.F32        S6, S2, S2
375B32:  VMUL.F32        S10, S4, S4
375B36:  VADD.F32        S6, S8, S6
375B3A:  VLDR            S8, =0.09
375B3E:  VADD.F32        S6, S6, S10
375B42:  VCMPE.F32       S6, S8
375B46:  VMRS            APSR_nzcv, FPSCR
375B4A:  BLE             loc_375C40
375B4C:  VLDR            S6, =0.3
375B50:  VMUL.F32        S0, S0, S6
375B54:  VMUL.F32        S4, S4, S6
375B58:  VMUL.F32        S2, S2, S6
375B5C:  VSTR            S0, [R4,#0x48]
375B60:  VMOV.F32        S0, #6.0
375B64:  VSTR            S2, [R4,#0x4C]
375B68:  VMOV.F32        S2, #5.0
375B6C:  VSTR            S4, [R4,#0x50]
375B70:  LDR             R0, [R5,#0x38]
375B72:  LDR             R0, [R0,#0x14]
375B74:  VLDR            S4, [R0]
375B78:  VLDR            S6, [R0,#4]
375B7C:  VLDR            S10, [R0,#0x20]
375B80:  VMUL.F32        S4, S4, S0
375B84:  VLDR            S12, [R0,#0x24]
375B88:  VMUL.F32        S6, S6, S0
375B8C:  VLDR            S8, [R0,#8]
375B90:  VMUL.F32        S10, S10, S2
375B94:  VLDR            S14, [R0,#0x28]
375B98:  VMUL.F32        S12, S12, S2
375B9C:  VMUL.F32        S0, S8, S0
375BA0:  MOV             R0, R4
375BA2:  VMUL.F32        S2, S14, S2
375BA6:  VSUB.F32        S4, S10, S4
375BAA:  VSUB.F32        S6, S12, S6
375BAE:  VSUB.F32        S0, S2, S0
375BB2:  VMOV            R1, S4
375BB6:  VMOV            R2, S6
375BBA:  VMOV            R3, S0
375BBE:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
375BC2:  MOVS            R5, #0x1B
375BC4:  B               loc_375CAA
375BC6:  MOVS            R5, #0xF
375BC8:  B               loc_375CAA
375BCA:  ADDS            R0, #0x48 ; 'H'
375BCC:  VMOV.F32        S0, #4.0
375BD0:  VMOV.F32        S2, #8.0
375BD4:  VLDR            D16, [R0]
375BD8:  LDR             R0, [R0,#8]
375BDA:  STR             R0, [R4,#0x50]
375BDC:  VSTR            D16, [R4,#0x48]
375BE0:  LDR             R0, [R5,#0x38]
375BE2:  LDR             R0, [R0,#0x14]
375BE4:  VLDR            S4, [R0]
375BE8:  VLDR            S6, [R0,#4]
375BEC:  VLDR            S10, [R0,#0x20]
375BF0:  VMUL.F32        S4, S4, S2
375BF4:  VLDR            S12, [R0,#0x24]
375BF8:  VMUL.F32        S6, S6, S2
375BFC:  VLDR            S8, [R0,#8]
375C00:  VMUL.F32        S10, S10, S0
375C04:  VLDR            S14, [R0,#0x28]
375C08:  VMUL.F32        S12, S12, S0
375C0C:  VMUL.F32        S2, S8, S2
375C10:  MOV             R0, R4
375C12:  VMUL.F32        S0, S14, S0
375C16:  VADD.F32        S4, S4, S10
375C1A:  VADD.F32        S6, S6, S12
375C1E:  VADD.F32        S0, S2, S0
375C22:  VMOV            R1, S4
375C26:  VMOV            R2, S6
375C2A:  VMOV            R3, S0
375C2E:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
375C32:  MOVS            R5, #0x16
375C34:  B               loc_375CAA
375C36:  ALIGN 4
375C38:  DCFS 4.6566e-10
375C3C:  DCFS 70.0
375C40:  ADDS            R0, #0x48 ; 'H'
375C42:  VMOV.F32        S0, #8.0
375C46:  VMOV.F32        S2, #4.0
375C4A:  VLDR            D16, [R0]
375C4E:  LDR             R0, [R0,#8]
375C50:  STR             R0, [R4,#0x50]
375C52:  VSTR            D16, [R4,#0x48]
375C56:  LDR             R0, [R5,#0x38]
375C58:  LDR             R0, [R0,#0x14]
375C5A:  VLDR            S4, [R0]
375C5E:  VLDR            S6, [R0,#4]
375C62:  VLDR            S10, [R0,#0x20]
375C66:  VMUL.F32        S4, S4, S0
375C6A:  VLDR            S12, [R0,#0x24]
375C6E:  VMUL.F32        S6, S6, S0
375C72:  VLDR            S8, [R0,#8]
375C76:  VMUL.F32        S10, S10, S2
375C7A:  VLDR            S14, [R0,#0x28]
375C7E:  VMUL.F32        S12, S12, S2
375C82:  VMUL.F32        S0, S8, S0
375C86:  MOV             R0, R4
375C88:  VMUL.F32        S2, S14, S2
375C8C:  VSUB.F32        S4, S10, S4
375C90:  VSUB.F32        S6, S12, S6
375C94:  VSUB.F32        S0, S2, S0
375C98:  VMOV            R1, S4
375C9C:  VMOV            R2, S6
375CA0:  VMOV            R3, S0
375CA4:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
375CA8:  MOVS            R5, #0x17
375CAA:  MOV             R0, R5
375CAC:  VPOP            {D8-D11}
375CB0:  POP.W           {R8}
375CB4:  POP             {R4-R7,PC}
