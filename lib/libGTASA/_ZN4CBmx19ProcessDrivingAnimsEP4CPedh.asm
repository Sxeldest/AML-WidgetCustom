; =========================================================
; Game Engine Function: _ZN4CBmx19ProcessDrivingAnimsEP4CPedh
; Address            : 0x569A7C - 0x56A210
; =========================================================

569A7C:  PUSH            {R4-R7,LR}
569A7E:  ADD             R7, SP, #0xC
569A80:  PUSH.W          {R8-R11}
569A84:  SUB             SP, SP, #4
569A86:  VPUSH           {D8-D13}
569A8A:  SUB             SP, SP, #8
569A8C:  MOV             R4, R0
569A8E:  MOV             R5, R1
569A90:  LDRB            R0, [R4,#0x1E]
569A92:  LSLS            R0, R0, #0x1E
569A94:  BPL             loc_569AA8
569A96:  CMP             R5, #0
569A98:  BEQ.W           loc_569F22
569A9C:  MOV             R0, R5; this
569A9E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
569AA2:  CMP             R0, #1
569AA4:  BNE.W           loc_569F22
569AA8:  MOVW            R0, #0x101
569AAC:  MOVS            R1, #0xCE
569AAE:  STRH.W          R0, [R4,#0x7C8]
569AB2:  LDR             R0, [R5,#0x18]
569AB4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569AB8:  CBZ             R0, loc_569AE4
569ABA:  VMOV.F32        S0, #1.0
569ABE:  VLDR            S2, [R0,#0x18]
569AC2:  ADDW            R0, R4, #0x834
569AC6:  VLDR            S4, =1.5708
569ACA:  VLDR            S6, [R0]
569ACE:  VSUB.F32        S0, S0, S2
569AD2:  VMUL.F32        S2, S2, S4
569AD6:  VMUL.F32        S0, S0, S6
569ADA:  VADD.F32        S0, S2, S0
569ADE:  VSTR            S0, [R0]
569AE2:  B               loc_569F0E
569AE4:  LDR.W           R0, [R5,#0x444]
569AE8:  CMP             R0, #0
569AEA:  ITTT NE
569AEC:  MOVNE           R0, R5
569AEE:  MOVNE           R1, #0
569AF0:  BLXNE           j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
569AF4:  LDR             R1, [R4,#0x14]
569AF6:  LDR             R0, [R5,#0x18]
569AF8:  VLDR            S16, [R4,#0x48]
569AFC:  VLDR            S22, [R1,#0x10]
569B00:  VLDR            S26, [R1,#0x14]
569B04:  VLDR            S24, [R1,#0x18]
569B08:  MOVS            R1, #0xCF
569B0A:  VLDR            S20, [R4,#0x4C]
569B0E:  VLDR            S18, [R4,#0x50]
569B12:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569B16:  MOV             R11, R0
569B18:  LDR             R0, [R5,#0x18]
569B1A:  MOVS            R1, #0xD0
569B1C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569B20:  MOV             R6, R0
569B22:  LDR             R0, [R5,#0x18]
569B24:  MOVS            R1, #0xC4
569B26:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569B2A:  MOV             R10, R0
569B2C:  LDR             R0, [R5,#0x18]
569B2E:  MOVS            R1, #0xC5
569B30:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569B34:  MOV             R9, R0
569B36:  LDR             R0, [R5,#0x18]
569B38:  MOVS            R1, #0xC7
569B3A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569B3E:  STR             R0, [SP,#0x58+var_54]
569B40:  MOVS            R1, #0xCA
569B42:  LDR             R0, [R5,#0x18]
569B44:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569B48:  MOV             R8, R0
569B4A:  CMP.W           R8, #0
569B4E:  BNE             loc_569B6A
569B50:  LDR             R0, [R5,#0x18]
569B52:  MOVS            R1, #0xCB
569B54:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569B58:  MOV             R8, R0
569B5A:  CMP.W           R8, #0
569B5E:  BNE             loc_569B6A
569B60:  LDR             R0, [R5,#0x18]
569B62:  MOVS            R1, #0xCC
569B64:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
569B68:  MOV             R8, R0
569B6A:  VMOV.F32        S2, #5.0
569B6E:  ADDW            R0, R4, #0x65C
569B72:  ADDW            R2, R4, #0x654
569B76:  VLDR            S0, [R0]
569B7A:  ADDW            R0, R4, #0x82C
569B7E:  VABS.F32        S4, S0
569B82:  VLDR            S0, [R0]
569B86:  ADR.W           R0, dword_56A214
569B8A:  VCMPE.F32       S0, S2
569B8E:  VMRS            APSR_nzcv, FPSCR
569B92:  IT GT
569B94:  ADDGT           R0, #4
569B96:  VLDR            S6, [R0]
569B9A:  VCMPE.F32       S4, S6
569B9E:  VMRS            APSR_nzcv, FPSCR
569BA2:  BGE             loc_569C1C
569BA4:  CMP.W           R8, #0
569BA8:  BNE             loc_569C1C
569BAA:  VMUL.F32        S4, S20, S26
569BAE:  VMUL.F32        S8, S16, S22
569BB2:  VMUL.F32        S10, S18, S24
569BB6:  VADD.F32        S4, S8, S4
569BBA:  VLDR            S8, =0.01
569BBE:  VADD.F32        S4, S4, S10
569BC2:  VCMPE.F32       S4, S8
569BC6:  VMRS            APSR_nzcv, FPSCR
569BCA:  BLE             loc_569C1C
569BCC:  ADDW            R0, R4, #0x664
569BD0:  VLDR            S8, [R0]
569BD4:  VCMPE.F32       S8, S6
569BD8:  VMRS            APSR_nzcv, FPSCR
569BDC:  BGE             loc_569C1C
569BDE:  LDRH            R0, [R4,#0x26]
569BE0:  CMP.W           R0, #0x1FE
569BE4:  BNE.W           loc_569F30
569BE8:  VMOV.F32        S6, #2.0
569BEC:  LDRB.W          R0, [R4,#0x4C0]
569BF0:  CMP             R0, #0
569BF2:  BEQ.W           loc_569F3E
569BF6:  VMOV            S8, R0
569BFA:  VMOV.F32        S12, #-0.25
569BFE:  VCVT.F32.U32    S8, S8
569C02:  LDR.W           R0, [R4,#0x388]
569C06:  VMUL.F32        S4, S4, S2
569C0A:  VLDR            S10, [R0,#0x88]
569C0E:  VMUL.F32        S8, S10, S8
569C12:  VADD.F32        S8, S8, S12
569C16:  VDIV.F32        S16, S4, S8
569C1A:  B               loc_569F42
569C1C:  CMP.W           R11, #0
569C20:  BEQ             loc_569C58
569C22:  VLDR            S0, [R11,#0x1C]
569C26:  VCMPE.F32       S0, #0.0
569C2A:  VMRS            APSR_nzcv, FPSCR
569C2E:  BLT             loc_569C58
569C30:  VLDR            S0, [R11,#0x18]
569C34:  VCMPE.F32       S0, #0.0
569C38:  VMRS            APSR_nzcv, FPSCR
569C3C:  BLE             loc_569C58
569C3E:  LDRH.W          R0, [R11,#0x2E]
569C42:  MOV.W           R1, #0xC1000000
569C46:  CMP             R6, #0
569C48:  STR.W           R1, [R11,#0x1C]
569C4C:  BIC.W           R0, R0, #1
569C50:  STRH.W          R0, [R11,#0x2E]
569C54:  BNE             loc_569C92
569C56:  B               loc_569CA0
569C58:  CBZ             R6, loc_569CD0
569C5A:  VLDR            S0, [R6,#0x1C]
569C5E:  VCMPE.F32       S0, #0.0
569C62:  VMRS            APSR_nzcv, FPSCR
569C66:  BLT             loc_569CD0
569C68:  VLDR            S0, [R6,#0x18]
569C6C:  VCMPE.F32       S0, #0.0
569C70:  VMRS            APSR_nzcv, FPSCR
569C74:  BLE             loc_569CD0
569C76:  CMP.W           R11, #0
569C7A:  ITTTT NE
569C7C:  LDRHNE.W        R0, [R11,#0x2E]
569C80:  MOVNE.W         R1, #0xC1000000
569C84:  STRNE.W         R1, [R11,#0x1C]
569C88:  BICNE.W         R0, R0, #1
569C8C:  IT NE
569C8E:  STRHNE.W        R0, [R11,#0x2E]
569C92:  LDRH            R0, [R6,#0x2E]
569C94:  MOV.W           R1, #0xC1000000
569C98:  STR             R1, [R6,#0x1C]
569C9A:  BIC.W           R0, R0, #1
569C9E:  STRH            R0, [R6,#0x2E]
569CA0:  ADD.W           R0, R4, #0x668
569CA4:  ADDW            R1, R4, #0x66C
569CA8:  VLDR            S0, =0.95
569CAC:  VLDR            S2, [R0]
569CB0:  VLDR            S4, [R1]
569CB4:  VMUL.F32        S2, S2, S0
569CB8:  VMUL.F32        S0, S4, S0
569CBC:  VSTR            S2, [R0]
569CC0:  VSTR            S0, [R1]
569CC4:  ORRS.W          R0, R11, R6
569CC8:  BNE             loc_569CE6
569CCA:  VLDR            S16, =0.0
569CCE:  B               loc_569D0C
569CD0:  LDR.W           R3, [R4,#0x650]
569CD4:  MOVS            R0, #0
569CD6:  STR             R0, [SP,#0x58+var_58]
569CD8:  MOV             R0, R5
569CDA:  MOV             R1, R4
569CDC:  BLX             j__ZN5CBike17ProcessRiderAnimsEP4CPedP8CVehicleP13CRideAnimDataP17tBikeHandlingDatas; CBike::ProcessRiderAnims(CPed *,CVehicle *,CRideAnimData *,tBikeHandlingData *,short)
569CE0:  ORRS.W          R0, R11, R6
569CE4:  BEQ             loc_569CCA
569CE6:  CMP.W           R11, #0
569CEA:  VLDR            S0, =-6.2832
569CEE:  IT NE
569CF0:  MOVNE           R6, R11
569CF2:  VLDR            S2, [R6,#0x20]
569CF6:  LDR             R0, [R6,#0x14]
569CF8:  VMUL.F32        S0, S2, S0
569CFC:  VLDR            S2, [R0,#0x10]
569D00:  VDIV.F32        S0, S0, S2
569D04:  VLDR            S2, =0.0
569D08:  VADD.F32        S16, S0, S2
569D0C:  ADDW            R6, R4, #0x834
569D10:  CMP.W           R10, #0
569D14:  VSTR            S16, [R6]
569D18:  BEQ             loc_569D42
569D1A:  VLDR            S2, =0.1
569D1E:  VLDR            S0, [R10,#0x18]
569D22:  VCMPE.F32       S0, S2
569D26:  VMRS            APSR_nzcv, FPSCR
569D2A:  BLE             loc_569D42
569D2C:  VMOV.F32        S2, #1.0
569D30:  VLDR            S4, =3.1416
569D34:  VSUB.F32        S2, S2, S0
569D38:  VMUL.F32        S0, S0, S4
569D3C:  VMUL.F32        S2, S16, S2
569D40:  B               loc_569D6E
569D42:  CMP.W           R9, #0
569D46:  BEQ             loc_569D7E
569D48:  VLDR            S2, =0.1
569D4C:  VLDR            S0, [R9,#0x18]
569D50:  VCMPE.F32       S0, S2
569D54:  VMRS            APSR_nzcv, FPSCR
569D58:  BLE             loc_569D7E
569D5A:  VMOV.F32        S2, #1.0
569D5E:  VLDR            S4, =0.0
569D62:  VSUB.F32        S2, S2, S0
569D66:  VMUL.F32        S0, S0, S4
569D6A:  VMUL.F32        S2, S2, S16
569D6E:  VADD.F32        S0, S0, S2
569D72:  MOVS            R0, #1
569D74:  VSTR            S0, [R6]
569D78:  STRB.W          R0, [R4,#0x848]
569D7C:  B               loc_569DD0
569D7E:  LDR             R0, [SP,#0x58+var_54]
569D80:  CBZ             R0, loc_569DAE
569D82:  VLDR            S2, =0.1
569D86:  VLDR            S0, [R0,#0x18]
569D8A:  VCMPE.F32       S0, S2
569D8E:  VMRS            APSR_nzcv, FPSCR
569D92:  BLE             loc_569DAE
569D94:  VMOV.F32        S2, #1.0
569D98:  VLDR            S4, =1.5708
569D9C:  VSUB.F32        S2, S2, S0
569DA0:  VMUL.F32        S0, S0, S4
569DA4:  VMUL.F32        S2, S2, S16
569DA8:  VADD.F32        S0, S0, S2
569DAC:  B               loc_569DCC
569DAE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x569DB6)
569DB2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
569DB4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
569DB6:  LDR             R1, [R0]; y
569DB8:  MOV             R0, #0x3F7851EC; x
569DC0:  BLX             powf
569DC4:  VMOV            S0, R0
569DC8:  VMUL.F32        S0, S0, S16
569DCC:  VSTR            S0, [R6]
569DD0:  CMP.W           R8, #0
569DD4:  ITTTT NE
569DD6:  MOVNE           R0, #1
569DD8:  STRBNE.W        R0, [R4,#0x848]
569DDC:  MOVNE           R0, #0
569DDE:  STRBNE.W        R0, [R4,#0x7C9]
569DE2:  MOV             R0, R5; this
569DE4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
569DE8:  CMP             R0, #1
569DEA:  BNE.W           loc_569F06
569DEE:  ADDW            R1, R4, #0x744
569DF2:  LDRB.W          R0, [R4,#0x628]
569DF6:  VLDR            S0, [R1]
569DFA:  AND.W           R1, R0, #0x7F
569DFE:  STRB.W          R1, [R4,#0x628]
569E02:  VCMPE.F32       S0, #0.0
569E06:  VMRS            APSR_nzcv, FPSCR
569E0A:  BGT             loc_569E90
569E0C:  ADD.W           R1, R4, #0x748
569E10:  VLDR            S2, [R1]
569E14:  VCMPE.F32       S2, #0.0
569E18:  VMRS            APSR_nzcv, FPSCR
569E1C:  BGT             loc_569E90
569E1E:  LDR             R1, [R4,#0x14]
569E20:  VLDR            S2, [R1,#0x18]
569E24:  VCMPE.F32       S2, #0.0
569E28:  VMRS            APSR_nzcv, FPSCR
569E2C:  BLE             loc_569E90
569E2E:  ADDW            R1, R4, #0x74C
569E32:  VLDR            S4, [R1]
569E36:  VCMPE.F32       S4, #0.0
569E3A:  VMRS            APSR_nzcv, FPSCR
569E3E:  BGT             loc_569E52
569E40:  ADD.W           R1, R4, #0x750
569E44:  VLDR            S4, [R1]
569E48:  VCMPE.F32       S4, #0.0
569E4C:  VMRS            APSR_nzcv, FPSCR
569E50:  BLE             loc_569E90
569E52:  VMOV.F32        S0, #0.5
569E56:  LDR.W           R1, [R4,#0x650]
569E5A:  VLDR            S4, [R1,#0x2C]
569E5E:  VSUB.F32        S2, S4, S2
569E62:  VMUL.F32        S0, S4, S0
569E66:  VCMPE.F32       S2, S0
569E6A:  VMRS            APSR_nzcv, FPSCR
569E6E:  BLT             loc_569EFE
569E70:  B               loc_569F06
569E72:  ALIGN 4
569E74:  DCFS 1.5708
569E78:  DCFS 0.01
569E7C:  DCFS 0.95
569E80:  DCFS 0.0
569E84:  DCFS -6.2832
569E88:  DCFS 0.1
569E8C:  DCFS 3.1416
569E90:  ADDW            R1, R4, #0x74C
569E94:  VLDR            S2, [R1]
569E98:  VCMPE.F32       S2, #0.0
569E9C:  VMRS            APSR_nzcv, FPSCR
569EA0:  BGT             loc_569F06
569EA2:  ADD.W           R1, R4, #0x750
569EA6:  VLDR            S2, [R1]
569EAA:  VCMPE.F32       S2, #0.0
569EAE:  VMRS            APSR_nzcv, FPSCR
569EB2:  BGT             loc_569F06
569EB4:  LDR             R1, [R4,#0x14]
569EB6:  VLDR            S2, [R1,#0x18]
569EBA:  VCMPE.F32       S2, #0.0
569EBE:  VMRS            APSR_nzcv, FPSCR
569EC2:  BGE             loc_569F06
569EC4:  VCMPE.F32       S0, #0.0
569EC8:  VMRS            APSR_nzcv, FPSCR
569ECC:  BGT             loc_569EE0
569ECE:  ADD.W           R1, R4, #0x748
569ED2:  VLDR            S0, [R1]
569ED6:  VCMPE.F32       S0, #0.0
569EDA:  VMRS            APSR_nzcv, FPSCR
569EDE:  BLE             loc_569F06
569EE0:  LDR.W           R1, [R4,#0x650]
569EE4:  VLDR            S0, =0.6
569EE8:  VLDR            S4, [R1,#0x30]
569EEC:  VMUL.F32        S0, S4, S0
569EF0:  VSUB.F32        S2, S4, S2
569EF4:  VCMPE.F32       S2, S0
569EF8:  VMRS            APSR_nzcv, FPSCR
569EFC:  BLE             loc_569F06
569EFE:  ORR.W           R0, R0, #0x80
569F02:  STRB.W          R0, [R4,#0x628]
569F06:  ADDW            R0, R4, #0x834
569F0A:  VLDR            S0, [R0]
569F0E:  VNEG.F32        S0, S0
569F12:  ADDW            R0, R4, #0x83C
569F16:  VSTR            S0, [R0]
569F1A:  ADDW            R0, R4, #0x838
569F1E:  VSTR            S0, [R0]
569F22:  ADD             SP, SP, #8
569F24:  VPOP            {D8-D13}
569F28:  ADD             SP, SP, #4
569F2A:  POP.W           {R8-R11}
569F2E:  POP             {R4-R7,PC}
569F30:  VMOV.F32        S8, #3.0
569F34:  VMOV.F32        S6, #2.5
569F38:  VMUL.F32        S16, S4, S8
569F3C:  B               loc_569F42
569F3E:  VLDR            S16, =0.0
569F42:  VCMPE.F32       S16, S6
569F46:  VMRS            APSR_nzcv, FPSCR
569F4A:  BGE             loc_569F7C
569F4C:  VCMPE.F32       S0, S2
569F50:  VMRS            APSR_nzcv, FPSCR
569F54:  BLE             loc_569F7C
569F56:  CBZ             R6, loc_569FD2
569F58:  VMOV.F32        S0, #1.0
569F5C:  VLDR            S2, [R6,#0x18]
569F60:  VCMPE.F32       S2, S0
569F64:  VMRS            APSR_nzcv, FPSCR
569F68:  BGE             loc_569F78
569F6A:  VLDR            S0, [R6,#0x1C]
569F6E:  VCMPE.F32       S0, #0.0
569F72:  VMRS            APSR_nzcv, FPSCR
569F76:  BLE             loc_569FD2
569F78:  MOVS            R0, #0
569F7A:  B               loc_569FE4
569F7C:  VCMPE.F32       S0, #0.0
569F80:  VMRS            APSR_nzcv, FPSCR
569F84:  BGT             loc_569FA6
569F86:  ADD.W           R0, R4, #0x4A0
569F8A:  VLDR            S0, [R0]
569F8E:  VCMP.F32        S0, #0.0
569F92:  VMRS            APSR_nzcv, FPSCR
569F96:  BNE             loc_569FA6
569F98:  LDRB.W          R0, [R4,#0x3A]
569F9C:  AND.W           R0, R0, #0xF8
569FA0:  CMP             R0, #0x10
569FA2:  BNE.W           loc_56A13C
569FA6:  CMP.W           R11, #0
569FAA:  BEQ             loc_56A00A
569FAC:  VMOV.F32        S0, #1.0
569FB0:  VLDR            S2, [R11,#0x18]
569FB4:  VCMPE.F32       S2, S0
569FB8:  VMRS            APSR_nzcv, FPSCR
569FBC:  BGE             loc_569FCC
569FBE:  VLDR            S0, [R11,#0x1C]
569FC2:  VCMPE.F32       S0, #0.0
569FC6:  VMRS            APSR_nzcv, FPSCR
569FCA:  BLE             loc_56A00A
569FCC:  MOVS            R0, #0
569FCE:  MOV             R6, R11
569FD0:  B               loc_56A01C
569FD2:  LDR             R1, [R2]; int
569FD4:  MOVS            R2, #0xD0; unsigned int
569FD6:  LDR             R0, [R5,#0x18]; int
569FD8:  MOV.W           R3, #0x40800000
569FDC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
569FE0:  MOV             R6, R0
569FE2:  MOVS            R0, #1
569FE4:  LDRH            R1, [R6,#0x2E]
569FE6:  CMP.W           R11, #0
569FEA:  ORR.W           R1, R1, #1
569FEE:  STRH            R1, [R6,#0x2E]
569FF0:  BEQ             loc_56A034
569FF2:  LDRH.W          R1, [R11,#0x2E]
569FF6:  CMP             R0, #0
569FF8:  MOV             R6, R11
569FFA:  VSTR            S16, [R11,#0x24]
569FFE:  ORR.W           R1, R1, #1
56A002:  STRH.W          R1, [R11,#0x2E]
56A006:  BNE             loc_56A03C
56A008:  B               loc_56A0CE
56A00A:  LDR             R1, [R2]; int
56A00C:  MOVS            R2, #0xCF; unsigned int
56A00E:  LDR             R0, [R5,#0x18]; int
56A010:  MOV.W           R3, #0x40800000
56A014:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
56A018:  MOV             R6, R0
56A01A:  MOVS            R0, #1
56A01C:  LDRH            R1, [R6,#0x2E]
56A01E:  VSTR            S16, [R6,#0x24]
56A022:  ORR.W           R1, R1, #1
56A026:  STRH            R1, [R6,#0x2E]
56A028:  CMP             R6, #0
56A02A:  BEQ.W           loc_56A1E6
56A02E:  CMP             R0, #1
56A030:  BEQ             loc_56A03C
56A032:  B               loc_56A0CE
56A034:  CMP             R0, #0
56A036:  VSTR            S16, [R6,#0x24]
56A03A:  BEQ             loc_56A0CE
56A03C:  CMP.W           R10, #0
56A040:  BEQ             loc_56A05A
56A042:  VMOV.F32        S0, #0.5
56A046:  VLDR            S2, [R10,#0x18]
56A04A:  VCMPE.F32       S2, S0
56A04E:  VMRS            APSR_nzcv, FPSCR
56A052:  BLE             loc_56A05A
56A054:  VLDR            S0, =3.1416
56A058:  B               loc_56A092
56A05A:  CMP.W           R9, #0
56A05E:  BEQ             loc_56A078
56A060:  VMOV.F32        S0, #0.5
56A064:  VLDR            S2, [R9,#0x18]
56A068:  VCMPE.F32       S2, S0
56A06C:  VMRS            APSR_nzcv, FPSCR
56A070:  BLE             loc_56A078
56A072:  VLDR            S0, =0.0
56A076:  B               loc_56A092
56A078:  LDR             R0, [SP,#0x58+var_54]
56A07A:  CBZ             R0, loc_56A0CE
56A07C:  VMOV.F32        S0, #0.5
56A080:  VLDR            S2, [R0,#0x18]
56A084:  VCMPE.F32       S2, S0
56A088:  VMRS            APSR_nzcv, FPSCR
56A08C:  BLE             loc_56A0CE
56A08E:  VLDR            S0, =1.5708
56A092:  VLDR            S2, =0.0
56A096:  VSUB.F32        S0, S2, S0
56A09A:  VLDR            S2, =6.2832
56A09E:  VDIV.F32        S16, S0, S2
56A0A2:  VCMPE.F32       S16, #0.0
56A0A6:  VMRS            APSR_nzcv, FPSCR
56A0AA:  VMOV.F32        S0, #1.0
56A0AE:  VADD.F32        S0, S16, S0
56A0B2:  IT LT
56A0B4:  VMOVLT.F32      S16, S0
56A0B8:  LDR             R0, [R6,#0x14]
56A0BA:  VLDR            S0, [R0,#0x10]
56A0BE:  MOV             R0, R6; this
56A0C0:  VMUL.F32        S0, S0, S16
56A0C4:  VMOV            R1, S0; float
56A0C8:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
56A0CC:  B               loc_56A0EC
56A0CE:  VLDR            S0, =-6.2832
56A0D2:  VLDR            S2, [R6,#0x20]
56A0D6:  LDR             R0, [R6,#0x14]
56A0D8:  VMUL.F32        S0, S2, S0
56A0DC:  VLDR            S2, [R0,#0x10]
56A0E0:  VDIV.F32        S0, S0, S2
56A0E4:  VLDR            S2, =0.0
56A0E8:  VADD.F32        S16, S0, S2
56A0EC:  ADDW            R0, R4, #0x834
56A0F0:  VSTR            S16, [R0]
56A0F4:  ADD.W           R0, R4, #0x668
56A0F8:  VLDR            S4, =0.05
56A0FC:  ADDW            R1, R4, #0x66C
56A100:  VLDR            S0, [R0]
56A104:  VLDR            S2, [R1]
56A108:  VABS.F32        S6, S0
56A10C:  VCMPE.F32       S6, S4
56A110:  VMRS            APSR_nzcv, FPSCR
56A114:  ITTT LE
56A116:  VABSLE.F32      S6, S2
56A11A:  VCMPELE.F32     S6, S4
56A11E:  VMRSLE          APSR_nzcv, FPSCR
56A122:  BLE.W           loc_569DE2
56A126:  VLDR            S4, =0.95
56A12A:  VMUL.F32        S0, S0, S4
56A12E:  VMUL.F32        S2, S2, S4
56A132:  VSTR            S0, [R0]
56A136:  VSTR            S2, [R1]
56A13A:  B               loc_569DE2
56A13C:  CMP.W           R11, #0
56A140:  BEQ             loc_56A168
56A142:  VMOV.F32        S0, #1.0
56A146:  VLDR            S2, [R11,#0x18]
56A14A:  VCMPE.F32       S2, S0
56A14E:  VMRS            APSR_nzcv, FPSCR
56A152:  BGE             loc_56A162
56A154:  VLDR            S0, [R11,#0x1C]
56A158:  VCMPE.F32       S0, #0.0
56A15C:  VMRS            APSR_nzcv, FPSCR
56A160:  BLE             loc_56A168
56A162:  MOVS            R0, #0
56A164:  MOV             R6, R11
56A166:  B               loc_56A17A
56A168:  LDR             R1, [R2]; int
56A16A:  MOVS            R2, #0xCF; unsigned int
56A16C:  LDR             R0, [R5,#0x18]; int
56A16E:  MOV.W           R3, #0x40800000
56A172:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
56A176:  MOV             R6, R0
56A178:  MOVS            R0, #1
56A17A:  LDRH            R1, [R6,#0x2E]
56A17C:  BIC.W           R1, R1, #1
56A180:  STRH            R1, [R6,#0x2E]
56A182:  LDRB.W          R1, [R4,#0x42C]
56A186:  LSLS            R1, R1, #0x1A
56A188:  BMI.W           loc_56A028
56A18C:  VMOV.F32        S0, #1.0
56A190:  ADDW            R1, R4, #0x734
56A194:  VLDR            S2, [R1]
56A198:  VCMPE.F32       S2, S0
56A19C:  VMRS            APSR_nzcv, FPSCR
56A1A0:  BLT             loc_56A1DA
56A1A2:  ADD.W           R1, R4, #0x738
56A1A6:  VLDR            S2, [R1]
56A1AA:  VCMPE.F32       S2, S0
56A1AE:  VMRS            APSR_nzcv, FPSCR
56A1B2:  BLT             loc_56A1DA
56A1B4:  ADDW            R1, R4, #0x73C
56A1B8:  VLDR            S2, [R1]
56A1BC:  VCMPE.F32       S2, S0
56A1C0:  VMRS            APSR_nzcv, FPSCR
56A1C4:  BLT             loc_56A1DA
56A1C6:  ADD.W           R1, R4, #0x740
56A1CA:  VLDR            S2, [R1]
56A1CE:  VCMPE.F32       S2, S0
56A1D2:  VMRS            APSR_nzcv, FPSCR
56A1D6:  BGE.W           loc_56A028
56A1DA:  MOVS            R1, #1
56A1DC:  STRB.W          R1, [R4,#0x848]
56A1E0:  CMP             R6, #0
56A1E2:  BNE.W           loc_56A02E
56A1E6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56A1EC)
56A1E8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56A1EA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56A1EC:  LDR             R1, [R0]; y
56A1EE:  MOV             R0, #0x3F7851EC; x
56A1F6:  BLX             powf
56A1FA:  ADDW            R1, R4, #0x834
56A1FE:  VMOV            S2, R0
56A202:  VLDR            S0, [R1]
56A206:  VMUL.F32        S0, S2, S0
56A20A:  VSTR            S0, [R1]
56A20E:  B               loc_56A0F4
