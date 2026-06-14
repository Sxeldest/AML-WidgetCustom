; =========================================================
; Game Engine Function: _ZN9CPhysical17ApplyCollisionAltEP7CEntityR9CColPointRfR7CVectorS6_
; Address            : 0x403A1C - 0x404070
; =========================================================

403A1C:  PUSH            {R4-R7,LR}
403A1E:  ADD             R7, SP, #0xC
403A20:  PUSH.W          {R8-R11}
403A24:  SUB             SP, SP, #4
403A26:  VPUSH           {D8-D10}
403A2A:  SUB             SP, SP, #0x80; unsigned __int8
403A2C:  MOV             R5, R0
403A2E:  MOV             R8, R1
403A30:  LDR.W           R0, [R5,#0x100]
403A34:  MOV             R10, R3
403A36:  MOV             R6, R2
403A38:  CMP             R0, #0
403A3A:  ITTT NE
403A3C:  LDRBNE.W        R1, [R0,#0x3A]
403A40:  ANDNE.W         R1, R1, #7
403A44:  CMPNE           R1, #3
403A46:  BEQ             loc_403A5E
403A48:  SUBS            R1, #2
403A4A:  UXTB            R1, R1
403A4C:  CMP             R1, #2
403A4E:  BHI             loc_403A5E
403A50:  MOVS            R1, #0
403A52:  ADD             R3, SP, #0xB8+var_44
403A54:  STR             R1, [SP,#0xB8+var_44]
403A56:  MOV             R1, R8
403A58:  MOV             R2, R6
403A5A:  BLX             j__ZN9CPhysical18ApplySoftCollisionEP7CEntityR9CColPointRf; CPhysical::ApplySoftCollision(CEntity *,CColPoint &,float &)
403A5E:  LDRB.W          R0, [R5,#0x44]
403A62:  LSLS            R0, R0, #0x1B
403A64:  BMI.W           loc_403B6E
403A68:  LDR             R0, [R5,#0x14]
403A6A:  MOV             R1, R5
403A6C:  VLDR            S0, [R6]
403A70:  VLDR            S2, [R6,#4]
403A74:  VLDR            S6, [R0,#0x30]
403A78:  VLDR            S8, [R0,#0x34]
403A7C:  VSUB.F32        S0, S0, S6
403A80:  VLDR            S10, [R0,#0x38]
403A84:  VSUB.F32        S2, S2, S8
403A88:  VLDR            S4, [R6,#8]
403A8C:  ADD             R0, SP, #0xB8+var_50
403A8E:  VSUB.F32        S4, S4, S10
403A92:  VMOV            R2, S0
403A96:  VMOV            R3, S2
403A9A:  VSTR            S2, [SP,#0xB8+var_40]
403A9E:  VSTR            S0, [SP,#0xB8+var_44]
403AA2:  VSTR            S4, [SP,#0xB8+var_3C]
403AA6:  VSTR            S4, [SP,#0xB8+var_B8]
403AAA:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
403AAE:  LDRB.W          R0, [R5,#0x47]
403AB2:  LSLS            R0, R0, #0x1D
403AB4:  BPL             loc_403B08
403AB6:  LDRB.W          R0, [R5,#0x3A]
403ABA:  AND.W           R0, R0, #7
403ABE:  CMP             R0, #2
403AC0:  ITT EQ
403AC2:  LDRBEQ.W        R0, [R6,#0x20]
403AC6:  CMPEQ           R0, #0x41 ; 'A'
403AC8:  BNE             loc_403B08
403ACA:  LDR             R0, [R5]
403ACC:  ADD             R2, SP, #0xB8+var_44
403ACE:  MOV             R1, R5
403AD0:  LDR.W           R3, [R0,#0xC8]
403AD4:  ADD             R0, SP, #0xB8+var_60
403AD6:  BLX             R3
403AD8:  VLDR            S0, [SP,#0xB8+var_50]
403ADC:  VLDR            S6, [SP,#0xB8+var_60]
403AE0:  VLDR            S2, [SP,#0xB8+var_4C]
403AE4:  VLDR            S8, [SP,#0xB8+var_60+4]
403AE8:  VADD.F32        S0, S6, S0
403AEC:  VLDR            S4, [SP,#0xB8+var_48]
403AF0:  VLDR            S10, [SP,#0xB8+var_58]
403AF4:  VADD.F32        S2, S8, S2
403AF8:  VADD.F32        S4, S10, S4
403AFC:  VSTR            S0, [SP,#0xB8+var_50]
403B00:  VSTR            S2, [SP,#0xB8+var_4C]
403B04:  VSTR            S4, [SP,#0xB8+var_48]
403B08:  VLDR            D16, [R6,#0x10]
403B0C:  VLDR            S4, [SP,#0xB8+var_50]
403B10:  VSTR            D16, [SP,#0xB8+var_60]
403B14:  VLDR            S0, [SP,#0xB8+var_60]
403B18:  VLDR            S2, [SP,#0xB8+var_60+4]
403B1C:  VLDR            S6, [SP,#0xB8+var_4C]
403B20:  VMUL.F32        S0, S4, S0
403B24:  LDR             R0, [R6,#0x18]
403B26:  VMUL.F32        S2, S6, S2
403B2A:  STR             R0, [SP,#0xB8+var_58]
403B2C:  VLDR            S4, [SP,#0xB8+var_58]
403B30:  VLDR            S6, [SP,#0xB8+var_48]
403B34:  VMUL.F32        S4, S6, S4
403B38:  VADD.F32        S0, S0, S2
403B3C:  VADD.F32        S20, S0, S4
403B40:  VCMPE.F32       S20, #0.0
403B44:  VMRS            APSR_nzcv, FPSCR
403B48:  BGE             loc_403BC2
403B4A:  ADD.W           R9, R5, #0xA8
403B4E:  LDR             R1, [R5,#0x14]; CVector *
403B50:  ADD             R0, SP, #0xB8+var_6C; CMatrix *
403B52:  MOV             R2, R9
403B54:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
403B58:  LDRB.W          R0, [R5,#0x44]
403B5C:  LSLS            R0, R0, #0x19
403B5E:  BMI             loc_403BC6
403B60:  VLDR            S4, [SP,#0xB8+var_6C]
403B64:  VLDR            S2, [SP,#0xB8+var_68]
403B68:  VLDR            S0, [SP,#0xB8+var_64]
403B6C:  B               loc_403BDA
403B6E:  VLDR            S0, [R6,#0x10]
403B72:  VLDR            S6, [R5,#0x48]
403B76:  VLDR            S2, [R6,#0x14]
403B7A:  VLDR            S8, [R5,#0x4C]
403B7E:  VMUL.F32        S0, S6, S0
403B82:  VLDR            S4, [R6,#0x18]
403B86:  VMUL.F32        S2, S8, S2
403B8A:  VLDR            S10, [R5,#0x50]
403B8E:  VMUL.F32        S4, S10, S4
403B92:  VADD.F32        S0, S0, S2
403B96:  VADD.F32        S0, S0, S4
403B9A:  VCMPE.F32       S0, #0.0
403B9E:  VMRS            APSR_nzcv, FPSCR
403BA2:  BGE             loc_403BC2
403BA4:  VLDR            S2, [R5,#0x90]
403BA8:  ADD.W           R12, R6, #0x10
403BAC:  VNMUL.F32       S2, S0, S2
403BB0:  VSTR            S2, [R10]
403BB4:  LDR             R0, [R5,#0x44]
403BB6:  TST.W           R0, #0x60
403BBA:  BEQ             loc_403CAC
403BBC:  VLDR            S0, [R5,#0x90]
403BC0:  B               loc_403D10
403BC2:  MOVS            R0, #0
403BC4:  B               loc_404062
403BC6:  VLDR            S0, =0.0
403BCA:  MOVS            R0, #0
403BCC:  STRD.W          R0, R0, [SP,#0xB8+var_6C]
403BD0:  VMOV.F32        S2, S0
403BD4:  STR             R0, [SP,#0xB8+var_64]
403BD6:  VMOV.F32        S4, S0
403BDA:  VLDR            S6, [SP,#0xB8+var_44]
403BDE:  ADD             R0, SP, #0xB8+var_78; CVector *
403BE0:  VLDR            S8, [SP,#0xB8+var_40]
403BE4:  ADD             R1, SP, #0xB8+var_84; CVector *
403BE6:  VLDR            S10, [SP,#0xB8+var_3C]
403BEA:  VSUB.F32        S4, S6, S4
403BEE:  VSUB.F32        S2, S8, S2
403BF2:  ADD             R2, SP, #0xB8+var_60
403BF4:  VSUB.F32        S0, S10, S0
403BF8:  VLDR            S16, [R5,#0x90]
403BFC:  ADD.W           R11, R6, #0x10
403C00:  VSTR            S4, [SP,#0xB8+var_84]
403C04:  VSTR            S2, [SP,#0xB8+var_80]
403C08:  VSTR            S0, [SP,#0xB8+var_7C]
403C0C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
403C10:  VLDR            S0, [SP,#0xB8+var_78]
403C14:  VMOV.F32        S18, #1.0
403C18:  VLDR            S2, [SP,#0xB8+var_74]
403C1C:  VMUL.F32        S0, S0, S0
403C20:  VLDR            S4, [SP,#0xB8+var_70]
403C24:  VMUL.F32        S2, S2, S2
403C28:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x403C34)
403C2C:  VMUL.F32        S4, S4, S4
403C30:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
403C32:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
403C34:  VADD.F32        S0, S0, S2
403C38:  VLDR            S2, [R5,#0x94]
403C3C:  VADD.F32        S0, S0, S4
403C40:  VDIV.F32        S4, S18, S16
403C44:  VDIV.F32        S0, S0, S2
403C48:  VADD.F32        S0, S4, S0
403C4C:  VLDR            S2, [R0]
403C50:  LDRB.W          R0, [R5,#0x3A]
403C54:  AND.W           R1, R0, #7
403C58:  CMP             R1, #4
403C5A:  VDIV.F32        S16, S18, S0
403C5E:  VLDR            S0, =0.008
403C62:  VMUL.F32        S0, S2, S0
403C66:  BEQ             loc_403D34
403C68:  CMP             R1, #2
403C6A:  ITT EQ
403C6C:  LDRBEQ.W        R1, [R5,#0x45]
403C70:  MOVSEQ.W        R1, R1,LSL#31
403C74:  BNE.W           loc_403E06
403C78:  LDR.W           R1, [R5,#0x5A0]
403C7C:  CMP             R1, #5
403C7E:  BEQ.W           loc_403D96
403C82:  CMP             R1, #9
403C84:  ITT EQ
403C86:  ANDEQ.W         R1, R0, #0xF0
403C8A:  CMPEQ           R1, #0x20 ; ' '
403C8C:  BEQ.W           loc_403DB2
403C90:  LDR             R1, [R5,#0x14]
403C92:  VLDR            S2, =-0.3
403C96:  VLDR            S4, [R1,#0x28]
403C9A:  VCMPE.F32       S4, S2
403C9E:  VMRS            APSR_nzcv, FPSCR
403CA2:  BGE.W           loc_403E06
403CA6:  VLDR            S2, =1.4
403CAA:  B               loc_403DB6
403CAC:  VMOV.F32        S4, #1.0
403CB0:  VLDR            S0, [R5,#0x90]
403CB4:  VLDR            S12, [R6,#0x10]
403CB8:  LSLS            R0, R0, #0x18
403CBA:  VLDR            S14, [R6,#0x14]
403CBE:  VLDR            S1, [R6,#0x18]
403CC2:  VMUL.F32        S12, S12, S2
403CC6:  VMUL.F32        S14, S14, S2
403CCA:  VLDR            S3, =0.0
403CCE:  VMUL.F32        S2, S1, S2
403CD2:  VLDR            S6, [R5,#0x48]
403CD6:  VLDR            S8, [R5,#0x4C]
403CDA:  VDIV.F32        S4, S4, S0
403CDE:  VLDR            S10, [R5,#0x50]
403CE2:  IT PL
403CE4:  VMOVPL.F32      S3, S2
403CE8:  VMUL.F32        S2, S12, S4
403CEC:  VMUL.F32        S12, S14, S4
403CF0:  VMUL.F32        S4, S3, S4
403CF4:  VADD.F32        S2, S6, S2
403CF8:  VADD.F32        S6, S12, S8
403CFC:  VADD.F32        S4, S4, S10
403D00:  VSTR            S2, [R5,#0x48]
403D04:  VSTR            S6, [R5,#0x4C]
403D08:  VSTR            S4, [R5,#0x50]
403D0C:  VLDR            S2, [R10]
403D10:  LDR             R0, =(AudioEngine_ptr - 0x403D20)
403D12:  MOVS            R4, #0
403D14:  LDRB.W          R2, [R6,#0x23]
403D18:  MOV.W           R1, #0x3F800000
403D1C:  ADD             R0, PC; AudioEngine_ptr
403D1E:  LDRB.W          R3, [R6,#0x20]
403D22:  STRD.W          R1, R4, [SP,#0xB8+var_A8]
403D26:  VDIV.F32        S0, S2, S0
403D2A:  STR             R4, [SP,#0xB8+var_A0]
403D2C:  LDR             R0, [R0]; AudioEngine
403D2E:  STMEA.W         SP, {R2,R6,R12}
403D32:  B               loc_404054
403D34:  LDRB            R1, [R5,#0x1C]
403D36:  LSLS            R1, R1, #0x1C
403D38:  BMI             loc_403E06
403D3A:  VLDR            S2, =1.3
403D3E:  VMUL.F32        S0, S0, S2
403D42:  VLDR            S2, [R5,#0x48]
403D46:  VABS.F32        S2, S2
403D4A:  VCMPE.F32       S2, S0
403D4E:  VMRS            APSR_nzcv, FPSCR
403D52:  BGE             loc_403E06
403D54:  VLDR            S2, [R5,#0x4C]
403D58:  VABS.F32        S2, S2
403D5C:  VCMPE.F32       S2, S0
403D60:  VMRS            APSR_nzcv, FPSCR
403D64:  BGE             loc_403E06
403D66:  VLDR            S2, [R5,#0x50]
403D6A:  VADD.F32        S0, S0, S0
403D6E:  VABS.F32        S2, S2
403D72:  VCMPE.F32       S2, S0
403D76:  VMRS            APSR_nzcv, FPSCR
403D7A:  BGE             loc_403E06
403D7C:  VLDR            S0, =-0.98
403D80:  VLDR            S18, =0.0
403D84:  VMUL.F32        S0, S20, S0
403D88:  VMUL.F32        S0, S0, S16
403D8C:  VSTR            S0, [R10]
403D90:  LDRB.W          R0, [R5,#0x3A]
403D94:  B               loc_403E06
403D96:  VMOV.F32        S2, #1.5
403D9A:  VLDR            S4, [R5,#0x48]
403D9E:  VABS.F32        S4, S4
403DA2:  VMUL.F32        S0, S0, S2
403DA6:  VCMPE.F32       S4, S0
403DAA:  VMRS            APSR_nzcv, FPSCR
403DAE:  BLT             loc_403DCC
403DB0:  B               loc_403E06
403DB2:  VLDR            S2, =1.7
403DB6:  VLDR            S4, [R5,#0x48]
403DBA:  VMUL.F32        S0, S0, S2
403DBE:  VABS.F32        S2, S4
403DC2:  VCMPE.F32       S2, S0
403DC6:  VMRS            APSR_nzcv, FPSCR
403DCA:  BGE             loc_403E06
403DCC:  VLDR            S2, [R5,#0x4C]
403DD0:  VABS.F32        S2, S2
403DD4:  VCMPE.F32       S2, S0
403DD8:  VMRS            APSR_nzcv, FPSCR
403DDC:  BGE             loc_403E06
403DDE:  VLDR            S2, [R5,#0x50]
403DE2:  VADD.F32        S0, S0, S0
403DE6:  VABS.F32        S2, S2
403DEA:  VCMPE.F32       S2, S0
403DEE:  VMRS            APSR_nzcv, FPSCR
403DF2:  BGE             loc_403E06
403DF4:  VLDR            S0, =-0.95
403DF8:  VLDR            S18, =0.0
403DFC:  VMUL.F32        S0, S20, S0
403E00:  VMUL.F32        S0, S0, S16
403E04:  B               loc_403E2A
403E06:  AND.W           R0, R0, #7
403E0A:  CMP             R0, #2
403E0C:  ITT EQ
403E0E:  LDREQ.W         R0, [R5,#0x5A0]
403E12:  CMPEQ           R0, #5
403E14:  BEQ             loc_403EC2
403E16:  VMOV.F32        S0, #1.0
403E1A:  VLDR            S2, [R5,#0xA0]
403E1E:  VADD.F32        S0, S2, S0
403E22:  VMUL.F32        S0, S20, S0
403E26:  VNMUL.F32       S0, S16, S0
403E2A:  VSTR            S0, [R10]
403E2E:  VLDR            S2, [SP,#0xB8+var_60]
403E32:  VLDR            S4, [SP,#0xB8+var_60+4]
403E36:  VLDR            S6, [SP,#0xB8+var_58]
403E3A:  VMUL.F32        S2, S0, S2
403E3E:  VMUL.F32        S4, S0, S4
403E42:  VMUL.F32        S0, S0, S6
403E46:  VSTR            S2, [SP,#0xB8+var_78]
403E4A:  VSTR            S4, [SP,#0xB8+var_74]
403E4E:  VSTR            S0, [SP,#0xB8+var_70]
403E52:  LDRB.W          R0, [R5,#0x44]
403E56:  TST.W           R0, #0xE0
403E5A:  BEQ             loc_403E80
403E5C:  VMOV            R1, S2
403E60:  ADD.W           R12, SP, #0xB8+var_44
403E64:  VMOV            R2, S4
403E68:  MOV.W           LR, #1
403E6C:  VMOV            R3, S0
403E70:  LDM.W           R12, {R0,R4,R12}
403E74:  STMEA.W         SP, {R0,R4,R12,LR}
403E78:  MOV             R0, R5
403E7A:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
403E7E:  B               loc_404030
403E80:  VMOV.F32        S20, #1.0
403E84:  MOV             R4, R11
403E86:  LDRD.W          R0, R11, [R7,#arg_0]
403E8A:  VLDR            S6, [R5,#0x90]
403E8E:  LDRB.W          R1, [R5,#0x3A]
403E92:  AND.W           R1, R1, #7
403E96:  CMP             R1, #2
403E98:  VDIV.F32        S10, S20, S6
403E9C:  VMUL.F32        S6, S0, S10
403EA0:  VMUL.F32        S8, S10, S4
403EA4:  VMUL.F32        S10, S10, S2
403EA8:  BNE             loc_403EEE
403EAA:  LDRB            R1, [R5,#0x1D]
403EAC:  LSLS            R1, R1, #0x1B
403EAE:  BMI             loc_403F24
403EB0:  VLDR            S12, =1.2
403EB4:  VMUL.F32        S6, S6, S12
403EB8:  VMUL.F32        S8, S8, S12
403EBC:  VMUL.F32        S10, S10, S12
403EC0:  B               loc_403F66
403EC2:  LDRB.W          R0, [R6,#0x23]
403EC6:  CMP             R0, #0x2B ; '+'
403EC8:  BEQ             loc_403EDC
403ECA:  VMOV.F32        S2, #0.5
403ECE:  VLDR            S0, [SP,#0xB8+var_58]
403ED2:  VCMPE.F32       S0, S2
403ED6:  VMRS            APSR_nzcv, FPSCR
403EDA:  BGE             loc_403E16
403EDC:  VLDR            S0, [R5,#0xA0]
403EE0:  VMOV.F32        S2, #1.0
403EE4:  VADD.F32        S0, S0, S0
403EE8:  VADD.F32        S0, S0, S2
403EEC:  B               loc_403E22
403EEE:  VLDR            S0, [R0]
403EF2:  VLDR            S2, [R0,#4]
403EF6:  VLDR            S4, [R0,#8]
403EFA:  VADD.F32        S0, S10, S0
403EFE:  VADD.F32        S2, S8, S2
403F02:  VADD.F32        S4, S6, S4
403F06:  VSTR            S0, [R0]
403F0A:  VSTR            S2, [R0,#4]
403F0E:  VSTR            S4, [R0,#8]
403F12:  B               loc_403FA6
403F14:  DCFS 0.0
403F18:  DCFS 0.008
403F1C:  DCFS -0.3
403F20:  DCFS 1.4
403F24:  VLDR            S12, [R5,#0x48]
403F28:  VLDR            S14, [R5,#0x4C]
403F2C:  VMUL.F32        S12, S12, S12
403F30:  VLDR            S1, [R5,#0x50]
403F34:  VMUL.F32        S14, S14, S14
403F38:  VMUL.F32        S1, S1, S1
403F3C:  VADD.F32        S12, S12, S14
403F40:  VLDR            S14, =0.1
403F44:  VADD.F32        S12, S12, S1
403F48:  VCMPE.F32       S12, S14
403F4C:  VMRS            APSR_nzcv, FPSCR
403F50:  BGT             loc_403F66
403F52:  LDRB.W          R1, [R8,#0x3A]
403F56:  AND.W           R1, R1, #7
403F5A:  CMP             R1, #1
403F5C:  BEQ             loc_403EB0
403F5E:  LDRB.W          R1, [R8,#0x44]
403F62:  LSLS            R1, R1, #0x1D
403F64:  BMI             loc_403EB0
403F66:  VLDR            S12, [R0]
403F6A:  VLDR            S14, [R0,#4]
403F6E:  VLDR            S1, [R0,#8]
403F72:  VADD.F32        S10, S10, S12
403F76:  VLDR            S12, =0.8
403F7A:  VADD.F32        S8, S8, S14
403F7E:  VADD.F32        S6, S6, S1
403F82:  VMUL.F32        S4, S4, S12
403F86:  VMUL.F32        S2, S2, S12
403F8A:  VMUL.F32        S0, S0, S12
403F8E:  VSTR            S10, [R0]
403F92:  VSTR            S8, [R0,#4]
403F96:  VSTR            S6, [R0,#8]
403F9A:  VSTR            S4, [SP,#0xB8+var_74]
403F9E:  VSTR            S2, [SP,#0xB8+var_78]
403FA2:  VSTR            S0, [SP,#0xB8+var_70]
403FA6:  LDR             R1, [R5,#0x14]; CVector *
403FA8:  ADD             R0, SP, #0xB8+var_84; CMatrix *
403FAA:  MOV             R2, R9
403FAC:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
403FB0:  VLDR            S0, [SP,#0xB8+var_84]
403FB4:  ADD             R0, SP, #0xB8+var_90; CVector *
403FB6:  VLDR            S6, [SP,#0xB8+var_44]
403FBA:  ADD             R1, SP, #0xB8+var_9C; CVector *
403FBC:  VLDR            S2, [SP,#0xB8+var_80]
403FC0:  ADD             R2, SP, #0xB8+var_78
403FC2:  VLDR            S8, [SP,#0xB8+var_40]
403FC6:  VSUB.F32        S0, S6, S0
403FCA:  VLDR            S4, [SP,#0xB8+var_7C]
403FCE:  VLDR            S10, [SP,#0xB8+var_3C]
403FD2:  VSUB.F32        S2, S8, S2
403FD6:  VSUB.F32        S4, S10, S4
403FDA:  VSTR            S0, [SP,#0xB8+var_9C]
403FDE:  VSTR            S2, [SP,#0xB8+var_98]
403FE2:  VSTR            S4, [SP,#0xB8+var_94]
403FE6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
403FEA:  VLDR            S0, [R5,#0x94]
403FEE:  VLDR            S2, [SP,#0xB8+var_90]
403FF2:  VDIV.F32        S0, S20, S0
403FF6:  VLDR            S4, [SP,#0xB8+var_8C]
403FFA:  VMUL.F32        S2, S0, S2
403FFE:  VLDR            S6, [SP,#0xB8+var_88]
404002:  VMUL.F32        S4, S0, S4
404006:  VLDR            S8, [R11,#4]
40400A:  VMUL.F32        S0, S0, S6
40400E:  VLDR            S6, [R11]
404012:  VLDR            S10, [R11,#8]
404016:  VADD.F32        S2, S2, S6
40401A:  VADD.F32        S4, S4, S8
40401E:  VADD.F32        S0, S0, S10
404022:  VSTR            S2, [R11]
404026:  VSTR            S4, [R11,#4]
40402A:  VSTR            S0, [R11,#8]
40402E:  MOV             R11, R4
404030:  VLDR            S0, [R10]
404034:  MOVS            R2, #0
404036:  LDR             R0, =(AudioEngine_ptr - 0x404044)
404038:  VDIV.F32        S0, S0, S16
40403C:  LDRB.W          R3, [R6,#0x20]; unsigned __int8
404040:  ADD             R0, PC; AudioEngine_ptr
404042:  LDRB.W          R1, [R6,#0x23]
404046:  STRD.W          R2, R2, [SP,#0xB8+var_A4]; unsigned __int8
40404A:  LDR             R0, [R0]; AudioEngine ; this
40404C:  VSTR            S18, [SP,#0xB8+var_A8]
404050:  STMEA.W         SP, {R1,R6,R11}
404054:  MOV             R1, R5; CEntity *
404056:  MOV             R2, R8; CEntity *
404058:  VSTR            S0, [SP,#0xB8+var_AC]
40405C:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
404060:  MOVS            R0, #1
404062:  ADD             SP, SP, #0x80
404064:  VPOP            {D8-D10}
404068:  ADD             SP, SP, #4
40406A:  POP.W           {R8-R11}
40406E:  POP             {R4-R7,PC}
