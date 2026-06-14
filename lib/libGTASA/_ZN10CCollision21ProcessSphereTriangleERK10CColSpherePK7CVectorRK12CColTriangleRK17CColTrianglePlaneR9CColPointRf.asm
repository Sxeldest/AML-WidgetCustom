; =========================================================
; Game Engine Function: _ZN10CCollision21ProcessSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlaneR9CColPointRf
; Address            : 0x2DA648 - 0x2DAB48
; =========================================================

2DA648:  PUSH            {R4-R7,LR}
2DA64A:  ADD             R7, SP, #0xC
2DA64C:  PUSH.W          {R8}
2DA650:  VPUSH           {D8-D15}
2DA654:  SUB             SP, SP, #0x50
2DA656:  VLDR            D16, [R3]
2DA65A:  MOV             R4, R0
2DA65C:  LDR             R0, [R3,#8]
2DA65E:  MOV             R5, R2
2DA660:  STR             R0, [SP,#0xA0+var_58]
2DA662:  VSTR            D16, [SP,#0xA0+var_60]
2DA666:  VLDR            S0, [R4]
2DA66A:  VLDR            S8, [SP,#0xA0+var_60]
2DA66E:  VLDR            S2, [R4,#4]
2DA672:  VLDR            S10, [SP,#0xA0+var_60+4]
2DA676:  VMUL.F32        S0, S0, S8
2DA67A:  VLDR            S4, [R4,#8]
2DA67E:  VMUL.F32        S2, S2, S10
2DA682:  VLDR            S8, [SP,#0xA0+var_58]
2DA686:  VLDR            S6, [R4,#0xC]
2DA68A:  VMUL.F32        S4, S4, S8
2DA68E:  VADD.F32        S0, S0, S2
2DA692:  VLDR            S2, [R3,#0xC]
2DA696:  VADD.F32        S0, S0, S4
2DA69A:  VSUB.F32        S23, S0, S2
2DA69E:  VABS.F32        S22, S23
2DA6A2:  VCMPE.F32       S22, S6
2DA6A6:  VMRS            APSR_nzcv, FPSCR
2DA6AA:  BLE             loc_2DA6B0
2DA6AC:  MOVS            R6, #0
2DA6AE:  B               loc_2DAB34
2DA6B0:  VMUL.F32        S30, S23, S23
2DA6B4:  LDR.W           R8, [R7,#arg_4]
2DA6B8:  MOVS            R6, #0
2DA6BA:  VLDR            S0, [R8]
2DA6BE:  VCMPE.F32       S30, S0
2DA6C2:  VMRS            APSR_nzcv, FPSCR
2DA6C6:  BGT.W           loc_2DAB34
2DA6CA:  LDM.W           R5, {R0,R2,R3}
2DA6CE:  ADD.W           R0, R0, R0,LSL#1
2DA6D2:  ADD.W           R2, R2, R2,LSL#1
2DA6D6:  ADD.W           R0, R1, R0,LSL#2
2DA6DA:  VLDR            S16, [R0]
2DA6DE:  VLDR            S18, [R0,#4]
2DA6E2:  VLDR            S20, [R0,#8]
2DA6E6:  ADD.W           R0, R1, R2,LSL#2
2DA6EA:  ADD             R2, SP, #0xA0+var_60
2DA6EC:  VLDR            S28, [R0]
2DA6F0:  VLDR            S2, [R0,#4]
2DA6F4:  VSUB.F32        S27, S28, S16
2DA6F8:  VLDR            S0, [R0,#8]
2DA6FC:  VSUB.F32        S29, S2, S18
2DA700:  VSTR            S2, [SP,#0xA0+var_9C]
2DA704:  VSUB.F32        S31, S0, S20
2DA708:  VSTR            S0, [SP,#0xA0+var_98]
2DA70C:  ADD.W           R0, R3, R3,LSL#1
2DA710:  ADD.W           R0, R1, R0,LSL#2
2DA714:  ADD             R1, SP, #0xA0+var_6C; CVector *
2DA716:  VMUL.F32        S2, S27, S27
2DA71A:  VLDR            S21, [R0]
2DA71E:  VMUL.F32        S0, S29, S29
2DA722:  VLDR            S19, [R0,#4]
2DA726:  VMUL.F32        S4, S31, S31
2DA72A:  VLDR            S17, [R0,#8]
2DA72E:  ADD             R0, SP, #0xA0+var_78; CVector *
2DA730:  VADD.F32        S0, S2, S0
2DA734:  VADD.F32        S0, S0, S4
2DA738:  VSQRT.F32       S25, S0
2DA73C:  VMOV.F32        S0, #1.0
2DA740:  VDIV.F32        S0, S0, S25
2DA744:  VMUL.F32        S4, S0, S29
2DA748:  VMUL.F32        S2, S0, S31
2DA74C:  VMUL.F32        S0, S27, S0
2DA750:  VSTR            S4, [SP,#0xA0+var_68]
2DA754:  VSTR            S0, [SP,#0xA0+var_6C]
2DA758:  VSTR            S2, [SP,#0xA0+var_64]
2DA75C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
2DA760:  VSUB.F32        S8, S19, S18
2DA764:  VLDR            S2, [SP,#0xA0+var_74]
2DA768:  VSUB.F32        S6, S21, S16
2DA76C:  VLDR            S0, [SP,#0xA0+var_78]
2DA770:  VSUB.F32        S10, S17, S20
2DA774:  VLDR            S4, [SP,#0xA0+var_70]
2DA778:  VLDR            S7, [SP,#0xA0+var_6C]
2DA77C:  MOVS            R0, #2
2DA77E:  VLDR            S11, [SP,#0xA0+var_68]
2DA782:  VLDR            S13, [SP,#0xA0+var_64]
2DA786:  VLDR            S1, [R4,#4]
2DA78A:  VMUL.F32        S12, S8, S2
2DA78E:  VLDR            S24, =0.0
2DA792:  VMUL.F32        S14, S6, S0
2DA796:  VADD.F32        S12, S14, S12
2DA79A:  VMUL.F32        S14, S10, S4
2DA79E:  VADD.F32        S3, S12, S14
2DA7A2:  VMUL.F32        S12, S8, S11
2DA7A6:  VMUL.F32        S14, S6, S7
2DA7AA:  VADD.F32        S12, S14, S12
2DA7AE:  VMUL.F32        S14, S10, S13
2DA7B2:  VADD.F32        S5, S12, S14
2DA7B6:  VLDR            S12, [R4]
2DA7BA:  VLDR            S14, [R4,#8]
2DA7BE:  VSTR            S1, [SP,#0xA0+var_94]
2DA7C2:  VSUB.F32        S1, S1, S18
2DA7C6:  VSTR            S12, [SP,#0xA0+var_8C]
2DA7CA:  VSUB.F32        S12, S12, S16
2DA7CE:  VSTR            S14, [SP,#0xA0+var_90]
2DA7D2:  VSUB.F32        S14, S14, S20
2DA7D6:  VMUL.F32        S2, S2, S1
2DA7DA:  VMUL.F32        S0, S0, S12
2DA7DE:  VADD.F32        S0, S0, S2
2DA7E2:  VMUL.F32        S2, S4, S14
2DA7E6:  VADD.F32        S9, S0, S2
2DA7EA:  VMUL.F32        S0, S11, S1
2DA7EE:  VMUL.F32        S2, S7, S12
2DA7F2:  VADD.F32        S0, S2, S0
2DA7F6:  VMUL.F32        S2, S13, S14
2DA7FA:  VMUL.F32        S13, S25, S9
2DA7FE:  VADD.F32        S0, S0, S2
2DA802:  VSUB.F32        S2, S5, S25
2DA806:  VSUB.F32        S4, S0, S25
2DA80A:  VMUL.F32        S7, S2, S9
2DA80E:  VMUL.F32        S11, S3, S4
2DA812:  VSUB.F32        S7, S7, S11
2DA816:  VMUL.F32        S11, S0, S24
2DA81A:  VSUB.F32        S15, S13, S11
2DA81E:  VMUL.F32        S11, S5, S9
2DA822:  VMUL.F32        S13, S3, S0
2DA826:  VCMPE.F32       S15, #0.0
2DA82A:  VMRS            APSR_nzcv, FPSCR
2DA82E:  VSUB.F32        S26, S13, S11
2DA832:  VCMPE.F32       S26, #0.0
2DA836:  IT GE
2DA838:  MOVGE           R6, #1
2DA83A:  IT LT
2DA83C:  MOVLT           R0, #1
2DA83E:  VMRS            APSR_nzcv, FPSCR
2DA842:  VCMPE.F32       S7, #0.0
2DA846:  IT LT
2DA848:  MOVLT           R0, R6
2DA84A:  VMRS            APSR_nzcv, FPSCR
2DA84E:  IT GE
2DA850:  ADDGE           R0, #1
2DA852:  CMP             R0, #1
2DA854:  BEQ             loc_2DA890
2DA856:  CMP             R0, #2
2DA858:  BEQ             loc_2DA8A8
2DA85A:  CMP             R0, #3
2DA85C:  BNE             loc_2DA912
2DA85E:  VLDR            S0, [SP,#0xA0+var_60]
2DA862:  VLDR            S2, [SP,#0xA0+var_60+4]
2DA866:  VLDR            S4, [SP,#0xA0+var_58]
2DA86A:  VMUL.F32        S0, S23, S0
2DA86E:  VMUL.F32        S2, S23, S2
2DA872:  VLDR            S1, [SP,#0xA0+var_94]
2DA876:  VMUL.F32        S4, S23, S4
2DA87A:  VLDR            S14, [SP,#0xA0+var_90]
2DA87E:  VLDR            S12, [SP,#0xA0+var_8C]
2DA882:  VSUB.F32        S16, S12, S0
2DA886:  VSUB.F32        S18, S1, S2
2DA88A:  VSUB.F32        S20, S14, S4
2DA88E:  B               loc_2DAAB2
2DA890:  VCMPE.F32       S15, #0.0
2DA894:  VMRS            APSR_nzcv, FPSCR
2DA898:  BGE             loc_2DA918
2DA89A:  VCMPE.F32       S26, #0.0
2DA89E:  VMRS            APSR_nzcv, FPSCR
2DA8A2:  BGE.W           loc_2DAA6E
2DA8A6:  B               loc_2DA9C4
2DA8A8:  VCMPE.F32       S15, #0.0
2DA8AC:  VMRS            APSR_nzcv, FPSCR
2DA8B0:  BGE             loc_2DA946
2DA8B2:  VMUL.F32        S2, S25, S25
2DA8B6:  VMUL.F32        S0, S25, S0
2DA8BA:  VMUL.F32        S4, S9, S24
2DA8BE:  VADD.F32        S2, S2, S24
2DA8C2:  VADD.F32        S0, S0, S4
2DA8C6:  VDIV.F32        S0, S0, S2
2DA8CA:  VCMPE.F32       S0, #0.0
2DA8CE:  VMRS            APSR_nzcv, FPSCR
2DA8D2:  BLE             loc_2DA9C4
2DA8D4:  VMOV.F32        S4, #1.0
2DA8D8:  VCMPE.F32       S0, S4
2DA8DC:  VMRS            APSR_nzcv, FPSCR
2DA8E0:  BGE.W           loc_2DAA6E
2DA8E4:  VSQRT.F32       S2, S2
2DA8E8:  VDIV.F32        S2, S15, S2
2DA8EC:  VMUL.F32        S2, S2, S2
2DA8F0:  VMUL.F32        S4, S29, S0
2DA8F4:  VADD.F32        S2, S30, S2
2DA8F8:  VADD.F32        S18, S18, S4
2DA8FC:  VSQRT.F32       S22, S2
2DA900:  VMUL.F32        S2, S31, S0
2DA904:  VMUL.F32        S0, S27, S0
2DA908:  VADD.F32        S20, S20, S2
2DA90C:  VADD.F32        S16, S16, S0
2DA910:  B               loc_2DA9DC
2DA912:  VLDR            S22, [R8]
2DA916:  B               loc_2DA9DC
2DA918:  VLDR            S1, [SP,#0xA0+var_94]
2DA91C:  VLDR            S12, [SP,#0xA0+var_8C]
2DA920:  VSUB.F32        S0, S1, S19
2DA924:  VLDR            S14, [SP,#0xA0+var_90]
2DA928:  VSUB.F32        S2, S12, S21
2DA92C:  VSUB.F32        S4, S14, S17
2DA930:  VMUL.F32        S0, S0, S0
2DA934:  VMUL.F32        S2, S2, S2
2DA938:  VMOV.F32        S16, S21
2DA93C:  VMOV.F32        S18, S19
2DA940:  VMOV.F32        S20, S17
2DA944:  B               loc_2DAAA2
2DA946:  VCMPE.F32       S26, #0.0
2DA94A:  VMRS            APSR_nzcv, FPSCR
2DA94E:  BGE             loc_2DA9EA
2DA950:  VMUL.F32        S2, S3, S9
2DA954:  VMUL.F32        S0, S5, S0
2DA958:  VMUL.F32        S4, S3, S3
2DA95C:  VMUL.F32        S3, S5, S5
2DA960:  VADD.F32        S0, S0, S2
2DA964:  VADD.F32        S2, S3, S4
2DA968:  VDIV.F32        S0, S0, S2
2DA96C:  VCMPE.F32       S0, #0.0
2DA970:  VMRS            APSR_nzcv, FPSCR
2DA974:  BLE             loc_2DA9C4
2DA976:  VMOV.F32        S4, #1.0
2DA97A:  VLDR            S12, [SP,#0xA0+var_8C]
2DA97E:  VLDR            S14, [SP,#0xA0+var_90]
2DA982:  VLDR            S1, [SP,#0xA0+var_94]
2DA986:  VCMPE.F32       S0, S4
2DA98A:  VMRS            APSR_nzcv, FPSCR
2DA98E:  BGE.W           loc_2DAB42
2DA992:  VSQRT.F32       S2, S2
2DA996:  VSUB.F32        S4, S11, S13
2DA99A:  VDIV.F32        S2, S4, S2
2DA99E:  VMUL.F32        S2, S2, S2
2DA9A2:  VMUL.F32        S4, S8, S0
2DA9A6:  VADD.F32        S2, S30, S2
2DA9AA:  VADD.F32        S18, S18, S4
2DA9AE:  VSQRT.F32       S22, S2
2DA9B2:  VMUL.F32        S2, S10, S0
2DA9B6:  VMUL.F32        S0, S6, S0
2DA9BA:  VADD.F32        S20, S20, S2
2DA9BE:  VADD.F32        S16, S16, S0
2DA9C2:  B               loc_2DAAB2
2DA9C4:  VMUL.F32        S0, S1, S1
2DA9C8:  VMUL.F32        S2, S12, S12
2DA9CC:  VMUL.F32        S4, S14, S14
2DA9D0:  VADD.F32        S0, S2, S0
2DA9D4:  VADD.F32        S0, S0, S4
2DA9D8:  VSQRT.F32       S22, S0
2DA9DC:  VLDR            S12, [SP,#0xA0+var_8C]
2DA9E0:  VLDR            S14, [SP,#0xA0+var_90]
2DA9E4:  VLDR            S1, [SP,#0xA0+var_94]
2DA9E8:  B               loc_2DAAB2
2DA9EA:  VMUL.F32        S0, S2, S4
2DA9EE:  VMUL.F32        S4, S3, S9
2DA9F2:  VMUL.F32        S6, S3, S3
2DA9F6:  VMUL.F32        S2, S2, S2
2DA9FA:  VADD.F32        S0, S4, S0
2DA9FE:  VADD.F32        S2, S2, S6
2DAA02:  VDIV.F32        S0, S0, S2
2DAA06:  VCMPE.F32       S0, #0.0
2DAA0A:  VMRS            APSR_nzcv, FPSCR
2DAA0E:  BLE             loc_2DAA6E
2DAA10:  VMOV.F32        S4, #1.0
2DAA14:  VLDR            S12, [SP,#0xA0+var_8C]
2DAA18:  VLDR            S14, [SP,#0xA0+var_90]
2DAA1C:  VLDR            S1, [SP,#0xA0+var_94]
2DAA20:  VCMPE.F32       S0, S4
2DAA24:  VMRS            APSR_nzcv, FPSCR
2DAA28:  BGE.W           loc_2DAB42
2DAA2C:  VSQRT.F32       S2, S2
2DAA30:  VDIV.F32        S2, S7, S2
2DAA34:  VMUL.F32        S2, S2, S2
2DAA38:  VLDR            S10, [SP,#0xA0+var_98]
2DAA3C:  VLDR            S3, [SP,#0xA0+var_9C]
2DAA40:  VSUB.F32        S8, S21, S28
2DAA44:  VSUB.F32        S4, S17, S10
2DAA48:  VSUB.F32        S6, S19, S3
2DAA4C:  VADD.F32        S2, S30, S2
2DAA50:  VSQRT.F32       S22, S2
2DAA54:  VMUL.F32        S2, S4, S0
2DAA58:  VMUL.F32        S4, S6, S0
2DAA5C:  VMUL.F32        S0, S8, S0
2DAA60:  VADD.F32        S20, S10, S2
2DAA64:  VADD.F32        S18, S3, S4
2DAA68:  VADD.F32        S16, S28, S0
2DAA6C:  B               loc_2DAAB2
2DAA6E:  VLDR            S8, [SP,#0xA0+var_9C]
2DAA72:  VMOV.F32        S16, S28
2DAA76:  VLDR            S1, [SP,#0xA0+var_94]
2DAA7A:  VLDR            S12, [SP,#0xA0+var_8C]
2DAA7E:  VMOV.F32        S18, S8
2DAA82:  VSUB.F32        S0, S1, S8
2DAA86:  VLDR            S6, [SP,#0xA0+var_98]
2DAA8A:  VSUB.F32        S2, S12, S28
2DAA8E:  VLDR            S14, [SP,#0xA0+var_90]
2DAA92:  VMOV.F32        S20, S6
2DAA96:  VSUB.F32        S4, S14, S6
2DAA9A:  VMUL.F32        S0, S0, S0
2DAA9E:  VMUL.F32        S2, S2, S2
2DAAA2:  VMUL.F32        S4, S4, S4
2DAAA6:  VADD.F32        S0, S2, S0
2DAAAA:  VADD.F32        S0, S0, S4
2DAAAE:  VSQRT.F32       S22, S0
2DAAB2:  VLDR            S0, [R4,#0xC]
2DAAB6:  MOVS            R6, #0
2DAAB8:  VCMPE.F32       S22, S0
2DAABC:  VMRS            APSR_nzcv, FPSCR
2DAAC0:  ITTTT LT
2DAAC2:  VMULLT.F32      S24, S22, S22
2DAAC6:  VLDRLT          S0, [R8]
2DAACA:  VCMPELT.F32     S24, S0
2DAACE:  VMRSLT          APSR_nzcv, FPSCR
2DAAD2:  BGE             loc_2DAB34
2DAAD4:  VSUB.F32        S0, S1, S18
2DAAD8:  ADD             R0, SP, #0xA0+var_88; this
2DAADA:  VSUB.F32        S2, S12, S16
2DAADE:  LDR             R6, [R7,#arg_0]
2DAAE0:  VSUB.F32        S4, S14, S20
2DAAE4:  VSTR            S0, [SP,#0xA0+var_88+4]
2DAAE8:  VSTR            S2, [SP,#0xA0+var_88]
2DAAEC:  VSTR            S4, [SP,#0xA0+var_80]
2DAAF0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2DAAF4:  VSTR            S16, [R6]
2DAAF8:  VSTR            S18, [R6,#4]
2DAAFC:  VSTR            S20, [R6,#8]
2DAB00:  VLDR            D16, [SP,#0xA0+var_88]
2DAB04:  LDR             R0, [SP,#0xA0+var_80]
2DAB06:  STR             R0, [R6,#0x18]
2DAB08:  VSTR            D16, [R6,#0x10]
2DAB0C:  LDRB            R0, [R4,#0x12]
2DAB0E:  LDRH            R1, [R4,#0x10]
2DAB10:  STRB.W          R0, [R6,#0x22]
2DAB14:  STRH            R1, [R6,#0x20]
2DAB16:  MOVS            R1, #0
2DAB18:  LDRB            R0, [R5,#0xC]
2DAB1A:  STRB.W          R1, [R6,#0x24]
2DAB1E:  STRB.W          R0, [R6,#0x23]
2DAB22:  VLDR            S0, [R4,#0xC]
2DAB26:  VSUB.F32        S0, S0, S22
2DAB2A:  VSTR            S0, [R6,#0x28]
2DAB2E:  MOVS            R6, #1
2DAB30:  VSTR            S24, [R8]
2DAB34:  MOV             R0, R6
2DAB36:  ADD             SP, SP, #0x50 ; 'P'
2DAB38:  VPOP            {D8-D15}
2DAB3C:  POP.W           {R8}
2DAB40:  POP             {R4-R7,PC}
2DAB42:  VSUB.F32        S0, S1, S19
2DAB46:  B               loc_2DA928
