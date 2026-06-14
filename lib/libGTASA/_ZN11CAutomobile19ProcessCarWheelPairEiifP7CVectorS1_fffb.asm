; =========================================================
; Game Engine Function: _ZN11CAutomobile19ProcessCarWheelPairEiifP7CVectorS1_fffb
; Address            : 0x556AC8 - 0x557436
; =========================================================

556AC8:  PUSH            {R4-R7,LR}
556ACA:  ADD             R7, SP, #0xC
556ACC:  PUSH.W          {R8-R11}
556AD0:  SUB             SP, SP, #4
556AD2:  VPUSH           {D8-D15}
556AD6:  SUB             SP, SP, #0x68
556AD8:  MOV             R11, R0
556ADA:  MOV             R8, R2
556ADC:  LDR.W           R2, [R11,#0x388]
556AE0:  MOV             R9, R1
556AE2:  LDR.W           R0, =(mod_HandlingManager_ptr - 0x556AF0)
556AE6:  MOV             R4, R3
556AE8:  LDR             R5, [R7,#arg_14]
556AEA:  LDRH            R1, [R2]
556AEC:  ADD             R0, PC; mod_HandlingManager_ptr
556AEE:  VLDR            S18, [R7,#arg_10]
556AF2:  CMP             R5, #1
556AF4:  LDR             R3, [R0]; mod_HandlingManager
556AF6:  RSB.W           R0, R1, R1,LSL#3
556AFA:  VLDR            S22, [R7,#arg_8]
556AFE:  ADD.W           R1, R3, R0,LSL#5
556B02:  LDRB.W          R1, [R1,#0x88]
556B06:  BNE             loc_556B1E
556B08:  VLDR            S0, [R2,#0xC0]
556B0C:  MOV.W           R10, #0
556B10:  CMP             R1, #0x52 ; 'R'
556B12:  VADD.F32        S20, S0, S0
556B16:  IT NE
556B18:  MOVNE.W         R10, #1
556B1C:  B               loc_556C00
556B1E:  VLDR            S0, [R2,#0xC0]
556B22:  VMOV.F32        S2, #2.0
556B26:  LDRB.W          R2, [R11,#0x42C]
556B2A:  MOV.W           R10, #0
556B2E:  VADD.F32        S0, S0, S0
556B32:  CMP             R1, #0x46 ; 'F'
556B34:  IT NE
556B36:  MOVNE.W         R10, #1
556B3A:  LSLS            R2, R2, #0x1A
556B3C:  VSUB.F32        S20, S2, S0
556B40:  BPL             loc_556B50
556B42:  LDRB.W          R2, [R11,#0x390]
556B46:  LSLS            R2, R2, #0x19
556B48:  BMI             loc_556B50
556B4A:  VLDR            S18, =20000.0
556B4E:  B               loc_556C00
556B50:  CMP             R1, #0x46 ; 'F'
556B52:  ITT NE
556B54:  LDRHNE.W        R1, [R11,#0x87E]
556B58:  CMPNE           R1, #0
556B5A:  BNE             loc_556B86
556B5C:  LDRB.W          R1, [R11,#0x392]
556B60:  LSLS            R1, R1, #0x1C
556B62:  BMI             loc_556C00
556B64:  LDR.W           R1, =(mod_HandlingManager_ptr - 0x556B6C)
556B68:  ADD             R1, PC; mod_HandlingManager_ptr
556B6A:  LDR             R1, [R1]; mod_HandlingManager
556B6C:  ADD.W           R0, R1, R0,LSL#5
556B70:  LDRB.W          R0, [R0,#0x88]
556B74:  CMP             R0, #0x46 ; 'F'
556B76:  ITTT NE
556B78:  ADDWNE          R0, R11, #0x8B8
556B7C:  VLDRNE          S0, [R0]
556B80:  VMULNE.F32      S22, S0, S22
556B84:  B               loc_556C00
556B86:  VLDR            S0, =3000.0
556B8A:  ADD.W           R0, R11, #0x498
556B8E:  VLDR            S2, [R11,#0x94]
556B92:  VLDR            S4, =-0.002
556B96:  VDIV.F32        S0, S0, S2
556B9A:  LDR             R1, [R7,#arg_4]
556B9C:  MOV             R2, R1
556B9E:  VMUL.F32        S2, S2, S4
556BA2:  VMOV.F32        S4, #1.0
556BA6:  VMIN.F32        D0, D0, D2
556BAA:  VMUL.F32        S0, S2, S0
556BAE:  VLDR            S2, [R0]
556BB2:  LDR.W           R0, [R11,#0x14]
556BB6:  VLDR            S4, [R0,#4]
556BBA:  VLDR            S6, [R0,#8]
556BBE:  VMUL.F32        S0, S2, S0
556BC2:  VLDR            S2, [R0]
556BC6:  ADD.W           R0, R9, R9,LSL#1
556BCA:  LDR.W           R1, [R2,R0,LSL#2]
556BCE:  ADD.W           R0, R2, R0,LSL#2
556BD2:  LDRD.W          R2, R3, [R0,#4]
556BD6:  MOV             R0, R11
556BD8:  VMUL.F32        S6, S0, S6
556BDC:  VMUL.F32        S4, S0, S4
556BE0:  VMUL.F32        S0, S0, S2
556BE4:  VSTR            S0, [SP,#0xC8+var_C8]
556BE8:  VSTR            S4, [SP,#0xC8+var_C4]
556BEC:  VSTR            S6, [SP,#0xC8+var_C0]
556BF0:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
556BF4:  VLDR            S18, =0.0
556BF8:  MOV.W           R10, #1
556BFC:  VMOV.F32        S22, S18
556C00:  ADD.W           R0, R11, R9,LSL#2
556C04:  STR             R0, [SP,#0xC8+var_94]
556C06:  ADDW            R0, R0, #0x808
556C0A:  STR             R0, [SP,#0xC8+var_98]
556C0C:  VLDR            S16, [R7,#arg_C]
556C10:  VLDR            S17, [R0]
556C14:  VCMPE.F32       S17, #0.0
556C18:  VMRS            APSR_nzcv, FPSCR
556C1C:  BGT             loc_556C36
556C1E:  ADD.W           R0, R11, R8,LSL#2
556C22:  ADDW            R0, R0, #0x808
556C26:  VLDR            S0, [R0]
556C2A:  VCMPE.F32       S0, #0.0
556C2E:  VMRS            APSR_nzcv, FPSCR
556C32:  BLE.W           loc_557240
556C36:  VMOV            S0, R4
556C3A:  VLDR            S2, =-100.0
556C3E:  VCMPE.F32       S0, S2
556C42:  VMRS            APSR_nzcv, FPSCR
556C46:  BLE             loc_556C62
556C48:  MOV             R0, R4; x
556C4A:  BLX             sinf
556C4E:  MOV             R6, R0
556C50:  MOV             R0, R4; x
556C52:  BLX             cosf
556C56:  VMOV            S28, R0
556C5A:  MOVS            R0, #1
556C5C:  VMOV            S30, R6
556C60:  B               loc_556C64
556C62:  MOVS            R0, #0
556C64:  STR             R0, [SP,#0xC8+var_9C]
556C66:  LDRB.W          R0, [R11,#0x3A]
556C6A:  MOVS            R1, #8
556C6C:  ORR.W           R0, R1, R0,LSR#3
556C70:  CMP             R0, #8
556C72:  ITTE NE
556C74:  LDRBNE.W        R0, [R11,#0x390]
556C78:  UBFXNE.W        R0, R0, #3, #1
556C7C:  MOVEQ           R0, #0
556C7E:  CMP             R5, #1
556C80:  BNE             loc_556C9A
556C82:  CBNZ            R0, loc_556C9C
556C84:  LDR.W           R0, [R11,#0x388]
556C88:  VLDR            S0, [R0,#0x98]
556C8C:  VLDR            S2, [R0,#0xA8]
556C90:  VADD.F32        S26, S0, S0
556C94:  VADD.F32        S24, S2, S2
556C98:  B               loc_556CC6
556C9A:  CBZ             R0, loc_556CA6
556C9C:  VMOV.F32        S26, #1.0
556CA0:  VMOV.F32        S24, S26
556CA4:  B               loc_556CC6
556CA6:  LDR.W           R0, [R11,#0x388]
556CAA:  VMOV.F32        S4, #2.0
556CAE:  VLDR            S0, [R0,#0x98]
556CB2:  VLDR            S2, [R0,#0xA8]
556CB6:  VADD.F32        S0, S0, S0
556CBA:  VADD.F32        S2, S2, S2
556CBE:  VSUB.F32        S26, S4, S0
556CC2:  VSUB.F32        S24, S4, S2
556CC6:  VCMPE.F32       S17, #0.0
556CCA:  VMRS            APSR_nzcv, FPSCR
556CCE:  BLE.W           loc_556FA0
556CD2:  MOVS            R0, #0x2C ; ','
556CD4:  MOV             R5, R8
556CD6:  MLA.W           R8, R9, R0, R11
556CDA:  LDR.W           R1, [R11,#0x14]
556CDE:  ADD             R6, SP, #0xC8+var_70
556CE0:  VLDR            D16, [R1,#0x10]
556CE4:  LDR             R0, [R1,#0x18]
556CE6:  STR             R0, [SP,#0xC8+var_68]
556CE8:  ADDW            R0, R8, #0x74C
556CEC:  ADD.W           R4, R8, #0x748
556CF0:  VSTR            D16, [SP,#0xC8+var_70]
556CF4:  VLDR            S4, [R0]
556CF8:  ADD.W           R0, R8, #0x750
556CFC:  VLDR            S2, [SP,#0xC8+var_70+4]
556D00:  VLDR            S0, [SP,#0xC8+var_70]
556D04:  VLDR            S6, [R4]
556D08:  VMUL.F32        S8, S2, S4
556D0C:  VLDR            S14, [R0]
556D10:  MOV             R0, R6; this
556D12:  VMUL.F32        S10, S0, S6
556D16:  VLDR            S12, [SP,#0xC8+var_68]
556D1A:  VMUL.F32        S1, S12, S14
556D1E:  VADD.F32        S8, S10, S8
556D22:  VADD.F32        S8, S8, S1
556D26:  VMUL.F32        S6, S6, S8
556D2A:  VMUL.F32        S4, S4, S8
556D2E:  VMUL.F32        S10, S14, S8
556D32:  VSUB.F32        S0, S0, S6
556D36:  VSUB.F32        S2, S2, S4
556D3A:  VSUB.F32        S8, S12, S10
556D3E:  VSTR            S8, [SP,#0xC8+var_68]
556D42:  VSTR            S0, [SP,#0xC8+var_70]
556D46:  VSTR            S2, [SP,#0xC8+var_70+4]
556D4A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
556D4E:  ADD             R0, SP, #0xC8+var_90; CVector *
556D50:  MOV             R1, R6; CVector *
556D52:  MOV             R2, R4
556D54:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
556D58:  LDR             R0, [SP,#0xC8+var_88]
556D5A:  STR             R0, [SP,#0xC8+var_78]
556D5C:  ADD             R0, SP, #0xC8+var_80; this
556D5E:  VLDR            D16, [SP,#0xC8+var_90]
556D62:  VSTR            D16, [SP,#0xC8+var_80]
556D66:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
556D6A:  VLDR            S17, =0.0
556D6E:  CMP.W           R10, #0
556D72:  IT NE
556D74:  VMOVNE.F32      S17, S16
556D78:  LDR             R0, [SP,#0xC8+var_9C]
556D7A:  ADD.W           R1, R8, #0x738
556D7E:  CMP             R0, #1
556D80:  BNE             loc_556E04
556D82:  LDRH.W          R0, [R11,#0x26]
556D86:  CMP.W           R0, #0x208
556D8A:  BEQ             loc_556E04
556D8C:  VLDR            S0, [SP,#0xC8+var_80]
556D90:  VLDR            S2, [SP,#0xC8+var_80+4]
556D94:  VLDR            S4, [SP,#0xC8+var_78]
556D98:  VMUL.F32        S5, S28, S0
556D9C:  VLDR            S6, [SP,#0xC8+var_70]
556DA0:  VMUL.F32        S1, S28, S2
556DA4:  VLDR            S8, [SP,#0xC8+var_70+4]
556DA8:  VMUL.F32        S12, S28, S4
556DAC:  VLDR            S10, [SP,#0xC8+var_68]
556DB0:  VMUL.F32        S7, S30, S6
556DB4:  VMUL.F32        S3, S30, S8
556DB8:  VMUL.F32        S14, S30, S10
556DBC:  VMUL.F32        S4, S30, S4
556DC0:  VMUL.F32        S10, S28, S10
556DC4:  VMUL.F32        S2, S30, S2
556DC8:  VMUL.F32        S8, S28, S8
556DCC:  VMUL.F32        S0, S30, S0
556DD0:  VMUL.F32        S6, S28, S6
556DD4:  VADD.F32        S12, S14, S12
556DD8:  VADD.F32        S14, S3, S1
556DDC:  VSUB.F32        S4, S10, S4
556DE0:  VADD.F32        S1, S7, S5
556DE4:  VSUB.F32        S2, S8, S2
556DE8:  VSUB.F32        S0, S6, S0
556DEC:  VSTR            S12, [SP,#0xC8+var_78]
556DF0:  VSTR            S14, [SP,#0xC8+var_80+4]
556DF4:  VSTR            S4, [SP,#0xC8+var_68]
556DF8:  VSTR            S1, [SP,#0xC8+var_80]
556DFC:  VSTR            S2, [SP,#0xC8+var_70+4]
556E00:  VSTR            S0, [SP,#0xC8+var_70]
556E04:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x556E12)
556E08:  MOVS            R2, #0x3C ; '<'
556E0A:  STRB.W          R2, [R8,#0x758]
556E0E:  ADD             R0, PC; g_surfaceInfos_ptr
556E10:  LDR             R0, [R0]; g_surfaceInfos
556E12:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
556E16:  VMOV            S0, R0
556E1A:  LDRB.W          R0, [R11,#0x3A]
556E1E:  STR             R5, [SP,#0xC8+var_A0]
556E20:  VMUL.F32        S19, S22, S0
556E24:  CMP             R0, #7
556E26:  BHI             loc_556EB0
556E28:  MOVS            R0, #0x2C ; ','
556E2A:  MLA.W           R4, R9, R0, R11
556E2E:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x556E36)
556E32:  ADD             R0, PC; g_surfaceInfos_ptr
556E34:  LDR             R0, [R0]; g_surfaceInfos ; this
556E36:  LDRB.W          R1, [R4,#0x75B]; unsigned int
556E3A:  BLX             j__ZN14SurfaceInfos_c16GetWetMultiplierEj; SurfaceInfos_c::GetWetMultiplier(uint)
556E3E:  VMOV.F32        S0, #1.0
556E42:  LDR             R1, [SP,#0xC8+var_94]
556E44:  VMOV.F32        S4, #4.0
556E48:  LDR.W           R2, [R11,#0x388]
556E4C:  ADD.W           R1, R1, #0x7E8
556E50:  ADDW            R4, R4, #0x75B
556E54:  VLDR            S2, [R1]
556E58:  LDR.W           R1, [R11,#0x390]
556E5C:  VSUB.F32        S0, S0, S2
556E60:  VLDR            S2, [R2,#0xAC]
556E64:  TST.W           R1, #0x200000
556E68:  VMUL.F32        S0, S0, S4
556E6C:  VMOV            S4, R0
556E70:  VMUL.F32        S0, S0, S2
556E74:  VMUL.F32        S2, S19, S4
556E78:  VMOV.F32        S4, #2.0
556E7C:  VMUL.F32        S0, S20, S0
556E80:  VMIN.F32        D0, D0, D2
556E84:  VMUL.F32        S19, S2, S0
556E88:  BEQ             loc_556EAC
556E8A:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x556E94)
556E8E:  LDRB            R1, [R4]; unsigned int
556E90:  ADD             R0, PC; g_surfaceInfos_ptr
556E92:  LDR             R0, [R0]; g_surfaceInfos ; this
556E94:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
556E98:  CMP             R0, #2
556E9A:  BLE             loc_556EA8
556E9C:  VLDR            S0, =1.4
556EA0:  MOV             R8, R10
556EA2:  VMUL.F32        S19, S19, S0
556EA6:  B               loc_556EF0
556EA8:  LDR.W           R1, [R11,#0x390]
556EAC:  LSLS            R0, R1, #0xB
556EAE:  BMI             loc_556ED0
556EB0:  MOV             R8, R10
556EB2:  B               loc_556EF0
556EB4:  DCFS 20000.0
556EB8:  DCFS 3000.0
556EBC:  DCFS -0.002
556EC0:  DCFS 0.0
556EC4:  DCFS -100.0
556EC8:  DCFS 1.4
556ECC:  DCFS 1.15
556ED0:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x556EDC)
556ED4:  MOV             R8, R10
556ED6:  LDRB            R1, [R4]; unsigned int
556ED8:  ADD             R0, PC; g_surfaceInfos_ptr
556EDA:  LDR             R0, [R0]; g_surfaceInfos ; this
556EDC:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
556EE0:  VLDR            S0, =1.15
556EE4:  CMP             R0, #2
556EE6:  VMUL.F32        S0, S19, S0
556EEA:  IT GT
556EEC:  VMOVGT.F32      S19, S0
556EF0:  LDR.W           R10, [SP,#0xC8+var_94]
556EF4:  ADDW            R4, R11, #0x5B4
556EF8:  MOV             R1, R9; int
556EFA:  LDR.W           R0, [R10,#0x97C]
556EFE:  STR             R0, [SP,#0xC8+var_84]
556F00:  MOV             R0, R4; this
556F02:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
556F06:  VMUL.F32        S0, S18, S26
556F0A:  ADD.W           R2, R9, R9,LSL#1
556F0E:  LDR             R1, [R7,#arg_4]
556F10:  ADDW            R6, R10, #0x97C
556F14:  LDR             R3, [R7,#arg_0]
556F16:  CMP             R0, #1
556F18:  ADD.W           R1, R1, R2,LSL#2
556F1C:  ADD.W           R3, R3, R2,LSL#2; int
556F20:  LDRB.W          R2, [R11,#0x974]
556F24:  BNE             loc_556F3E
556F26:  VLDR            S2, [R4]
556F2A:  MOV.W           R12, #1
556F2E:  ADD             R5, SP, #0xC8+var_84
556F30:  ADDW            R4, R10, #0x86C
556F34:  VMUL.F32        S2, S19, S2
556F38:  VMUL.F32        S2, S24, S2
556F3C:  B               loc_556F4C
556F3E:  VMUL.F32        S2, S24, S19
556F42:  ADD             R5, SP, #0xC8+var_84
556F44:  ADDW            R4, R10, #0x86C
556F48:  MOV.W           R12, #0
556F4C:  UXTB.W          R0, R9
556F50:  ADD.W           LR, SP, #0xC8+var_B4
556F54:  STM.W           LR, {R0,R4,R5,R12}
556F58:  MOV             R0, R11; int
556F5A:  VSTR            S0, [SP,#0xC8+var_BC]
556F5E:  VSTR            S17, [SP,#0xC8+var_C0]
556F62:  STRD.W          R1, R2, [SP,#0xC8+var_C8]; CVector *
556F66:  ADD             R1, SP, #0xC8+var_70; int
556F68:  ADD             R2, SP, #0xC8+var_80; int
556F6A:  VSTR            S2, [SP,#0xC8+var_B8]
556F6E:  BLX             j__ZN8CVehicle12ProcessWheelER7CVectorS1_S1_S1_ifffcPfP11tWheelStatet; CVehicle::ProcessWheel(CVector &,CVector &,CVector &,CVector &,int,float,float,float,char,float *,tWheelState *,ushort)
556F72:  MOV             R10, R8
556F74:  LDR             R5, [R7,#arg_14]
556F76:  LDR.W           R8, [SP,#0xC8+var_A0]
556F7A:  CMP.W           R10, #0
556F7E:  BEQ             loc_556F9C
556F80:  ADD.W           R1, R11, #0x4A0
556F84:  LDR             R0, [SP,#0xC8+var_84]
556F86:  VLDR            S0, [R1]
556F8A:  VCMPE.F32       S0, #0.0
556F8E:  VMRS            APSR_nzcv, FPSCR
556F92:  BGE             loc_556F9E
556F94:  CMP             R0, #1
556F96:  IT EQ
556F98:  MOVEQ           R0, #0
556F9A:  B               loc_556F9E
556F9C:  LDR             R0, [SP,#0xC8+var_84]
556F9E:  STR             R0, [R6]
556FA0:  ADD.W           R9, R11, R8,LSL#2
556FA4:  ADDW            R0, R9, #0x808
556FA8:  VLDR            S0, [R0]
556FAC:  VCMPE.F32       S0, #0.0
556FB0:  VMRS            APSR_nzcv, FPSCR
556FB4:  BLE.W           loc_557240
556FB8:  MOVS            R0, #0x2C ; ','
556FBA:  LDR.W           R1, [R11,#0x14]
556FBE:  MLA.W           R5, R8, R0, R11
556FC2:  ADD             R6, SP, #0xC8+var_70
556FC4:  VLDR            D16, [R1,#0x10]
556FC8:  LDR             R0, [R1,#0x18]
556FCA:  STR             R0, [SP,#0xC8+var_68]
556FCC:  ADDW            R0, R5, #0x74C
556FD0:  ADD.W           R4, R5, #0x748
556FD4:  VSTR            D16, [SP,#0xC8+var_70]
556FD8:  VLDR            S4, [R0]
556FDC:  ADD.W           R0, R5, #0x750
556FE0:  VLDR            S2, [SP,#0xC8+var_70+4]
556FE4:  VLDR            S0, [SP,#0xC8+var_70]
556FE8:  VLDR            S6, [R4]
556FEC:  VMUL.F32        S8, S2, S4
556FF0:  VLDR            S14, [R0]
556FF4:  MOV             R0, R6; this
556FF6:  VMUL.F32        S10, S0, S6
556FFA:  VLDR            S12, [SP,#0xC8+var_68]
556FFE:  VMUL.F32        S1, S12, S14
557002:  VADD.F32        S8, S10, S8
557006:  VADD.F32        S8, S8, S1
55700A:  VMUL.F32        S6, S6, S8
55700E:  VMUL.F32        S4, S4, S8
557012:  VMUL.F32        S10, S14, S8
557016:  VSUB.F32        S0, S0, S6
55701A:  VSUB.F32        S2, S2, S4
55701E:  VSUB.F32        S8, S12, S10
557022:  VSTR            S8, [SP,#0xC8+var_68]
557026:  VSTR            S0, [SP,#0xC8+var_70]
55702A:  VSTR            S2, [SP,#0xC8+var_70+4]
55702E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
557032:  ADD             R0, SP, #0xC8+var_90; CVector *
557034:  MOV             R1, R6; CVector *
557036:  MOV             R2, R4
557038:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
55703C:  LDR             R0, [SP,#0xC8+var_88]
55703E:  STR             R0, [SP,#0xC8+var_78]
557040:  ADD             R0, SP, #0xC8+var_80; this
557042:  VLDR            D16, [SP,#0xC8+var_90]
557046:  VSTR            D16, [SP,#0xC8+var_80]
55704A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
55704E:  VLDR            S17, =0.0
557052:  CMP.W           R10, #0
557056:  IT NE
557058:  VMOVNE.F32      S17, S16
55705C:  LDR             R0, [SP,#0xC8+var_9C]
55705E:  ADD.W           R1, R5, #0x738
557062:  CMP             R0, #1
557064:  BNE             loc_5570DE
557066:  VLDR            S0, [SP,#0xC8+var_80]
55706A:  VLDR            S2, [SP,#0xC8+var_80+4]
55706E:  VLDR            S4, [SP,#0xC8+var_78]
557072:  VMUL.F32        S5, S28, S0
557076:  VLDR            S6, [SP,#0xC8+var_70]
55707A:  VMUL.F32        S1, S28, S2
55707E:  VLDR            S8, [SP,#0xC8+var_70+4]
557082:  VMUL.F32        S12, S28, S4
557086:  VLDR            S10, [SP,#0xC8+var_68]
55708A:  VMUL.F32        S7, S30, S6
55708E:  VMUL.F32        S3, S30, S8
557092:  VMUL.F32        S14, S30, S10
557096:  VMUL.F32        S4, S30, S4
55709A:  VMUL.F32        S10, S28, S10
55709E:  VMUL.F32        S2, S30, S2
5570A2:  VMUL.F32        S8, S28, S8
5570A6:  VMUL.F32        S0, S30, S0
5570AA:  VMUL.F32        S6, S28, S6
5570AE:  VADD.F32        S12, S14, S12
5570B2:  VADD.F32        S14, S3, S1
5570B6:  VSUB.F32        S4, S10, S4
5570BA:  VADD.F32        S1, S7, S5
5570BE:  VSUB.F32        S2, S8, S2
5570C2:  VSUB.F32        S0, S6, S0
5570C6:  VSTR            S12, [SP,#0xC8+var_78]
5570CA:  VSTR            S14, [SP,#0xC8+var_80+4]
5570CE:  VSTR            S4, [SP,#0xC8+var_68]
5570D2:  VSTR            S1, [SP,#0xC8+var_80]
5570D6:  VSTR            S2, [SP,#0xC8+var_70+4]
5570DA:  VSTR            S0, [SP,#0xC8+var_70]
5570DE:  LDR             R0, =(g_surfaceInfos_ptr - 0x5570EA)
5570E0:  MOVS            R2, #0x3C ; '<'
5570E2:  STRB.W          R2, [R5,#0x758]
5570E6:  ADD             R0, PC; g_surfaceInfos_ptr
5570E8:  LDR             R0, [R0]; g_surfaceInfos
5570EA:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
5570EE:  VMOV            S0, R0
5570F2:  LDRB.W          R0, [R11,#0x3A]
5570F6:  VMUL.F32        S22, S22, S0
5570FA:  CMP             R0, #7
5570FC:  BHI             loc_55719A
5570FE:  MOVS            R0, #0x2C ; ','
557100:  MLA.W           R4, R8, R0, R11
557104:  LDR             R0, =(g_surfaceInfos_ptr - 0x55710A)
557106:  ADD             R0, PC; g_surfaceInfos_ptr
557108:  LDR             R0, [R0]; g_surfaceInfos ; this
55710A:  LDRB.W          R1, [R4,#0x75B]; unsigned int
55710E:  BLX             j__ZN14SurfaceInfos_c16GetWetMultiplierEj; SurfaceInfos_c::GetWetMultiplier(uint)
557112:  VMOV.F32        S0, #1.0
557116:  ADD.W           R1, R9, #0x7E8
55711A:  VMOV.F32        S4, #4.0
55711E:  LDR.W           R2, [R11,#0x388]
557122:  VLDR            S2, [R1]
557126:  ADDW            R4, R4, #0x75B
55712A:  LDR.W           R1, [R11,#0x390]
55712E:  TST.W           R1, #0x200000
557132:  VSUB.F32        S0, S0, S2
557136:  VLDR            S2, [R2,#0xAC]
55713A:  VMUL.F32        S0, S0, S4
55713E:  VMOV            S4, R0
557142:  VMUL.F32        S0, S0, S2
557146:  VMUL.F32        S2, S22, S4
55714A:  VMOV.F32        S4, #2.0
55714E:  VMUL.F32        S0, S20, S0
557152:  VMIN.F32        D0, D0, D2
557156:  VMUL.F32        S22, S2, S0
55715A:  BEQ             loc_55717A
55715C:  LDR             R0, =(g_surfaceInfos_ptr - 0x557164)
55715E:  LDRB            R1, [R4]; unsigned int
557160:  ADD             R0, PC; g_surfaceInfos_ptr
557162:  LDR             R0, [R0]; g_surfaceInfos ; this
557164:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
557168:  CMP             R0, #2
55716A:  BLE             loc_557176
55716C:  VLDR            S0, =1.4
557170:  VMUL.F32        S22, S22, S0
557174:  B               loc_55719A
557176:  LDR.W           R1, [R11,#0x390]
55717A:  LSLS            R0, R1, #0xB
55717C:  BPL             loc_55719A
55717E:  LDR             R0, =(g_surfaceInfos_ptr - 0x557186)
557180:  LDRB            R1, [R4]; unsigned int
557182:  ADD             R0, PC; g_surfaceInfos_ptr
557184:  LDR             R0, [R0]; g_surfaceInfos ; this
557186:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
55718A:  VLDR            S0, =1.15
55718E:  CMP             R0, #2
557190:  VMUL.F32        S0, S22, S0
557194:  IT GT
557196:  VMOVGT.F32      S22, S0
55719A:  ADDW            R4, R11, #0x5B4
55719E:  LDR.W           R0, [R9,#0x97C]
5571A2:  STR             R0, [SP,#0xC8+var_84]
5571A4:  MOV             R1, R8; int
5571A6:  MOV             R0, R4; this
5571A8:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
5571AC:  VMUL.F32        S0, S18, S26
5571B0:  ADD.W           R2, R8, R8,LSL#1
5571B4:  LDR             R1, [R7,#arg_4]
5571B6:  ADDW            R6, R9, #0x97C
5571BA:  LDR             R3, [R7,#arg_0]
5571BC:  CMP             R0, #1
5571BE:  ADD.W           R1, R1, R2,LSL#2
5571C2:  ADD.W           R3, R3, R2,LSL#2; int
5571C6:  LDRB.W          R2, [R11,#0x974]
5571CA:  BNE             loc_5571E4
5571CC:  VLDR            S2, [R4]
5571D0:  MOV.W           R12, #1
5571D4:  ADD             R5, SP, #0xC8+var_84
5571D6:  ADDW            R4, R9, #0x86C
5571DA:  VMUL.F32        S2, S22, S2
5571DE:  VMUL.F32        S2, S24, S2
5571E2:  B               loc_5571F2
5571E4:  VMUL.F32        S2, S24, S22
5571E8:  ADD             R5, SP, #0xC8+var_84
5571EA:  ADDW            R4, R9, #0x86C
5571EE:  MOV.W           R12, #0
5571F2:  UXTB.W          R0, R8
5571F6:  ADD.W           LR, SP, #0xC8+var_B4
5571FA:  STM.W           LR, {R0,R4,R5,R12}
5571FE:  MOV             R0, R11; int
557200:  VSTR            S0, [SP,#0xC8+var_BC]
557204:  VSTR            S17, [SP,#0xC8+var_C0]
557208:  STRD.W          R1, R2, [SP,#0xC8+var_C8]; CVector *
55720C:  ADD             R1, SP, #0xC8+var_70; int
55720E:  ADD             R2, SP, #0xC8+var_80; int
557210:  VSTR            S2, [SP,#0xC8+var_B8]
557214:  BLX             j__ZN8CVehicle12ProcessWheelER7CVectorS1_S1_S1_ifffcPfP11tWheelStatet; CVehicle::ProcessWheel(CVector &,CVector &,CVector &,CVector &,int,float,float,float,char,float *,tWheelState *,ushort)
557218:  LDR             R5, [R7,#arg_14]
55721A:  CMP.W           R10, #0
55721E:  BEQ             loc_55723C
557220:  ADD.W           R1, R11, #0x4A0
557224:  LDR             R0, [SP,#0xC8+var_84]
557226:  VLDR            S0, [R1]
55722A:  VCMPE.F32       S0, #0.0
55722E:  VMRS            APSR_nzcv, FPSCR
557232:  BGE             loc_55723E
557234:  CMP             R0, #1
557236:  IT EQ
557238:  MOVEQ           R0, #0
55723A:  B               loc_55723E
55723C:  LDR             R0, [SP,#0xC8+var_84]
55723E:  STR             R0, [R6]
557240:  CMP             R5, #0
557242:  BNE             loc_5572E4
557244:  LDRB.W          R0, [R11,#0x392]
557248:  LSLS            R0, R0, #0x1C
55724A:  BMI             loc_5572E4
55724C:  LDRH.W          R0, [R11,#0x87E]
557250:  CBZ             R0, loc_5572A2
557252:  EORS.W          R0, R10, #1
557256:  BNE             loc_5572A2
557258:  LDR.W           R0, [R11,#0x980]
55725C:  CMP             R0, #1
55725E:  ITT NE
557260:  LDRNE.W         R0, [R11,#0x988]
557264:  CMPNE           R0, #1
557266:  BNE             loc_5572A2
557268:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x557272)
55726A:  VLDR            S0, =0.001
55726E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
557270:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
557272:  VLDR            S2, [R0]
557276:  ADDW            R0, R11, #0x8B8
55727A:  VMUL.F32        S0, S2, S0
55727E:  VLDR            S2, [R0]
557282:  VADD.F32        S0, S2, S0
557286:  VMOV.F32        S2, #3.0
55728A:  VSTR            S0, [R0]
55728E:  VCMPE.F32       S0, S2
557292:  VMRS            APSR_nzcv, FPSCR
557296:  ITTT GT
557298:  MOVGT           R1, #0
55729A:  MOVTGT          R1, #0x4040
55729E:  STRGT           R1, [R0]
5572A0:  B               loc_5572E4
5572A2:  VMOV.F32        S18, #1.0
5572A6:  ADDW            R4, R11, #0x8B8
5572AA:  VLDR            S0, [R4]
5572AE:  VCMPE.F32       S0, S18
5572B2:  VMRS            APSR_nzcv, FPSCR
5572B6:  BLE             loc_5572E4
5572B8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5572C2)
5572BA:  VMOV.F32        S2, #-1.0
5572BE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5572C0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5572C2:  LDR             R1, [R0]; y
5572C4:  MOV             R0, #0x3F7EB852; x
5572CC:  VADD.F32        S20, S0, S2
5572D0:  BLX             powf
5572D4:  VMOV            S0, R0
5572D8:  VMUL.F32        S0, S20, S0
5572DC:  VADD.F32        S0, S0, S18
5572E0:  VSTR            S0, [R4]
5572E4:  LDR.W           R0, [R11,#0x388]
5572E8:  LDRB.W          R0, [R0,#0xCF]
5572EC:  LSLS            R0, R0, #0x1E
5572EE:  BMI.W           loc_557428
5572F2:  LDR             R0, [SP,#0xC8+var_98]
5572F4:  VLDR            S0, [R0]
5572F8:  VCMPE.F32       S0, #0.0
5572FC:  VMRS            APSR_nzcv, FPSCR
557300:  BGT             loc_55738C
557302:  VCMP.F32        S16, #0.0
557306:  MOVS            R0, #0
557308:  VMRS            APSR_nzcv, FPSCR
55730C:  IT NE
55730E:  MOVNE           R0, #1
557310:  AND.W           R0, R0, R10
557314:  CMP             R0, #1
557316:  BNE             loc_557340
557318:  LDR             R1, [SP,#0xC8+var_94]
55731A:  VCMPE.F32       S16, #0.0
55731E:  VMRS            APSR_nzcv, FPSCR
557322:  ADDW            R0, R1, #0x85C
557326:  VLDR            S0, [R0]
55732A:  BLE             loc_557354
55732C:  VMOV.F32        S2, #1.0
557330:  VCMPE.F32       S0, S2
557334:  VMRS            APSR_nzcv, FPSCR
557338:  BGE             loc_55736E
55733A:  VLDR            S2, =-0.1
55733E:  B               loc_557366
557340:  LDR             R1, [SP,#0xC8+var_94]
557342:  VLDR            S0, =0.95
557346:  ADDW            R0, R1, #0x85C
55734A:  VLDR            S2, [R0]
55734E:  VMUL.F32        S0, S2, S0
557352:  B               loc_55736A
557354:  VMOV.F32        S2, #-1.0
557358:  VCMPE.F32       S0, S2
55735C:  VMRS            APSR_nzcv, FPSCR
557360:  BLE             loc_55736E
557362:  VLDR            S2, =0.05
557366:  VADD.F32        S0, S0, S2
55736A:  VSTR            S0, [R0]
55736E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x557374)
557370:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
557372:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
557374:  VLDR            S2, [R0]
557378:  ADDW            R0, R1, #0x83C
55737C:  VMUL.F32        S0, S0, S2
557380:  VLDR            S2, [R0]
557384:  VADD.F32        S0, S2, S0
557388:  VSTR            S0, [R0]
55738C:  ADD.W           R0, R11, R8,LSL#2
557390:  ADDW            R1, R0, #0x808
557394:  VLDR            S0, [R1]
557398:  VCMPE.F32       S0, #0.0
55739C:  VMRS            APSR_nzcv, FPSCR
5573A0:  BGT             loc_557428
5573A2:  VCMP.F32        S16, #0.0
5573A6:  MOVS            R1, #0
5573A8:  VMRS            APSR_nzcv, FPSCR
5573AC:  IT NE
5573AE:  MOVNE           R1, #1
5573B0:  AND.W           R1, R1, R10
5573B4:  CMP             R1, #1
5573B6:  BNE             loc_5573DE
5573B8:  ADDW            R1, R0, #0x85C
5573BC:  VCMPE.F32       S16, #0.0
5573C0:  VMRS            APSR_nzcv, FPSCR
5573C4:  VLDR            S0, [R1]
5573C8:  BLE             loc_5573F0
5573CA:  VMOV.F32        S2, #1.0
5573CE:  VCMPE.F32       S0, S2
5573D2:  VMRS            APSR_nzcv, FPSCR
5573D6:  BGE             loc_55740A
5573D8:  VLDR            S2, =-0.1
5573DC:  B               loc_557402
5573DE:  ADDW            R1, R0, #0x85C
5573E2:  VLDR            S0, =0.95
5573E6:  VLDR            S2, [R1]
5573EA:  VMUL.F32        S0, S2, S0
5573EE:  B               loc_557406
5573F0:  VMOV.F32        S2, #-1.0
5573F4:  VCMPE.F32       S0, S2
5573F8:  VMRS            APSR_nzcv, FPSCR
5573FC:  BLE             loc_55740A
5573FE:  VLDR            S2, =0.05
557402:  VADD.F32        S0, S0, S2
557406:  VSTR            S0, [R1]
55740A:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x557414)
55740C:  ADDW            R0, R0, #0x83C
557410:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
557412:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
557414:  VLDR            S2, [R1]
557418:  VMUL.F32        S0, S0, S2
55741C:  VLDR            S2, [R0]
557420:  VADD.F32        S0, S2, S0
557424:  VSTR            S0, [R0]
557428:  ADD             SP, SP, #0x68 ; 'h'
55742A:  VPOP            {D8-D15}
55742E:  ADD             SP, SP, #4
557430:  POP.W           {R8-R11}
557434:  POP             {R4-R7,PC}
