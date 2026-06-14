; =========================================================
; Game Engine Function: _ZN5CDoor7ProcessEP8CVehicleR7CVectorS3_S3_
; Address            : 0x56EC28 - 0x56F01C
; =========================================================

56EC28:  PUSH            {R4-R7,LR}
56EC2A:  ADD             R7, SP, #0xC
56EC2C:  PUSH.W          {R8,R9,R11}
56EC30:  VPUSH           {D8-D10}
56EC34:  SUB             SP, SP, #0x80
56EC36:  LDR             R4, [R7,#arg_0]
56EC38:  MOV             R6, R3
56EC3A:  MOV             R5, R2
56EC3C:  MOV             R9, R0
56EC3E:  LDRD.W          R2, R3, [R4]
56EC42:  MOV             R8, R1
56EC44:  LDR             R0, [R4,#8]
56EC46:  STR             R0, [SP,#0xB0+var_B0]
56EC48:  ADD             R0, SP, #0xB0+var_3C
56EC4A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
56EC4E:  ADD             R0, SP, #0xB0+var_90; CVector *
56EC50:  MOV             R1, R6; CVector *
56EC52:  MOV             R2, R4
56EC54:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
56EC58:  VLDR            S0, [R5]
56EC5C:  ADR.W           R2, dword_56F020
56EC60:  VLDR            S6, [SP,#0xB0+var_90]
56EC64:  ADD             R4, SP, #0xB0+var_90
56EC66:  VLDR            S2, [R5,#4]
56EC6A:  VLDR            S8, [SP,#0xB0+var_8C]
56EC6E:  VADD.F32        S0, S6, S0
56EC72:  VLDR            S6, [SP,#0xB0+var_3C]
56EC76:  VADD.F32        S2, S8, S2
56EC7A:  VLDR            S8, [SP,#0xB0+var_38]
56EC7E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56EC8E)
56EC82:  VLDR            S4, [R5,#8]
56EC86:  VLDR            S10, [SP,#0xB0+var_88]
56EC8A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56EC8C:  VLDR            S12, [SP,#0xB0+var_34]
56EC90:  VSUB.F32        S0, S6, S0
56EC94:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56EC96:  VADD.F32        S4, S10, S4
56EC9A:  VSUB.F32        S2, S8, S2
56EC9E:  VSTR            S0, [SP,#0xB0+var_48]
56ECA2:  VLDR            S0, [R0]
56ECA6:  VSUB.F32        S4, S12, S4
56ECAA:  VSTR            S2, [SP,#0xB0+var_48+4]
56ECAE:  MOV             R0, R4; this
56ECB0:  LDRH.W          R1, [R9,#8]
56ECB4:  TST.W           R1, #0x20
56ECB8:  IT NE
56ECBA:  ADDNE           R2, #4
56ECBC:  VLDR            S2, [R2]
56ECC0:  VMUL.F32        S0, S0, S2
56ECC4:  VADD.F32        S0, S4, S0
56ECC8:  VSTR            S0, [SP,#0xB0+var_40]
56ECCC:  LDR.W           R1, [R8,#0x14]; CMatrix *
56ECD0:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
56ECD4:  ADD             R0, SP, #0xB0+var_A0; CVector *
56ECD6:  ADD             R1, SP, #0xB0+var_48; CMatrix *
56ECD8:  MOV             R2, R4
56ECDA:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
56ECDE:  VLDR            D16, [SP,#0xB0+var_A0]
56ECE2:  MOVS            R6, #0
56ECE4:  LDR             R0, [SP,#0xB0+var_98]
56ECE6:  STR             R0, [SP,#0xB0+var_40]
56ECE8:  VSTR            D16, [SP,#0xB0+var_48]
56ECEC:  STRD.W          R6, R6, [SP,#0xB0+var_A0]
56ECF0:  STR             R6, [SP,#0xB0+var_98]
56ECF2:  LDRH.W          R0, [R9,#8]
56ECF6:  VLDR            S16, =0.0
56ECFA:  AND.W           R0, R0, #0xF
56ECFE:  CMP             R0, #5; switch 6 cases
56ED00:  BHI             def_56ED02; jumptable 0056ED02 default case
56ED02:  TBB.W           [PC,R0]; switch jump
56ED06:  DCB 3; jump table for switch statement
56ED07:  DCB 0xD
56ED08:  DCB 0x12
56ED09:  DCB 0x17
56ED0A:  DCB 0x21
56ED0B:  DCB 0x2F
56ED0C:  VMOV.F32        S18, #1.0; jumptable 0056ED02 case 0
56ED10:  MOV.W           R0, #0x3F800000
56ED14:  B               loc_56ED3E
56ED16:  VMOV.F32        S18, S16; jumptable 0056ED02 default case
56ED1A:  VMOV.F32        S20, S16
56ED1E:  B               loc_56ED74
56ED20:  VMOV.F32        S0, #1.0; jumptable 0056ED02 case 1
56ED24:  MOV.W           R0, #0x3F800000
56ED28:  B               loc_56ED52
56ED2A:  VMOV.F32        S20, #1.0; jumptable 0056ED02 case 2
56ED2E:  MOV.W           R6, #0x3F800000
56ED32:  B               loc_56ED6E
56ED34:  MOVS            R0, #0; jumptable 0056ED02 case 3
56ED36:  VMOV.F32        S18, #-1.0
56ED3A:  MOVT            R0, #0xBF80
56ED3E:  STR             R0, [SP,#0xB0+var_A0]
56ED40:  MOVS            R6, #0
56ED42:  VMOV.F32        S20, S16
56ED46:  B               loc_56ED74
56ED48:  MOVS            R0, #0; jumptable 0056ED02 case 4
56ED4A:  VMOV.F32        S0, #-1.0
56ED4E:  MOVT            R0, #0xBF80
56ED52:  STR             R0, [SP,#0xB0+var_A0+4]
56ED54:  MOVS            R6, #0
56ED56:  VMOV.F32        S18, S16
56ED5A:  VMOV.F32        S20, S16
56ED5E:  VMOV.F32        S16, S0
56ED62:  B               loc_56ED74
56ED64:  VMOV.F32        S20, #-1.0; jumptable 0056ED02 case 5
56ED68:  MOVS            R6, #0xBF800000
56ED6E:  VMOV.F32        S18, S16
56ED72:  STR             R6, [SP,#0xB0+var_98]
56ED74:  LDR.W           R4, [R9,#0xC]
56ED78:  MOV             R0, R4; x
56ED7A:  BLX             sinf
56ED7E:  MOV             R5, R0
56ED80:  MOV             R0, R4; x
56ED82:  BLX             cosf
56ED86:  VMOV            S2, R0
56ED8A:  LDRB.W          R0, [R9,#0xA]
56ED8E:  VMOV            S4, R5
56ED92:  CBZ             R0, loc_56EDCA
56ED94:  CMP             R0, #2
56ED96:  BNE             loc_56EDF8
56ED98:  VMUL.F32        S0, S2, S16
56ED9C:  ADD             R0, SP, #0xB0+var_AC; CVector *
56ED9E:  VMUL.F32        S6, S4, S18
56EDA2:  ADD             R1, SP, #0xB0+var_48; CVector *
56EDA4:  VMUL.F32        S4, S4, S16
56EDA8:  ADD             R2, SP, #0xB0+var_A0
56EDAA:  VMUL.F32        S2, S2, S18
56EDAE:  STR             R6, [SP,#0xB0+var_98]
56EDB0:  VADD.F32        S0, S6, S0
56EDB4:  VSUB.F32        S2, S2, S4
56EDB8:  VSTR            S0, [SP,#0xB0+var_A0+4]
56EDBC:  VSTR            S2, [SP,#0xB0+var_A0]
56EDC0:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
56EDC4:  VLDR            S0, [SP,#0xB0+var_A4]
56EDC8:  B               loc_56EDF8
56EDCA:  VMUL.F32        S0, S2, S20
56EDCE:  ADD             R0, SP, #0xB0+var_AC; CVector *
56EDD0:  VMUL.F32        S6, S4, S16
56EDD4:  ADD             R1, SP, #0xB0+var_48; CVector *
56EDD6:  VMUL.F32        S4, S4, S20
56EDDA:  ADD             R2, SP, #0xB0+var_A0
56EDDC:  VMUL.F32        S2, S2, S16
56EDE0:  VADD.F32        S0, S6, S0
56EDE4:  VSUB.F32        S2, S2, S4
56EDE8:  VSTR            S0, [SP,#0xB0+var_98]
56EDEC:  VSTR            S2, [SP,#0xB0+var_A0+4]
56EDF0:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
56EDF4:  VLDR            S0, [SP,#0xB0+var_AC]
56EDF8:  LDRH.W          R4, [R9,#8]
56EDFC:  TST.W           R4, #0x40
56EE00:  BNE             loc_56EE40
56EE02:  VABS.F32        S2, S0
56EE06:  VLDR            S4, =0.001
56EE0A:  VCMPE.F32       S2, S4
56EE0E:  VMRS            APSR_nzcv, FPSCR
56EE12:  BGT             loc_56EE26
56EE14:  VLDR            S2, [R9,#0x14]
56EE18:  VABS.F32        S6, S2
56EE1C:  VCMPE.F32       S6, S4
56EE20:  VMRS            APSR_nzcv, FPSCR
56EE24:  BLE             loc_56EE32
56EE26:  VLDR            S2, [R9,#0x14]
56EE2A:  VADD.F32        S2, S0, S2
56EE2E:  VSTR            S2, [R9,#0x14]
56EE32:  LDR.W           R0, [R8,#0x5A0]
56EE36:  CMP             R0, #5
56EE38:  BNE             loc_56EE52
56EE3A:  VLDR            S0, =0.98
56EE3E:  B               loc_56EF06
56EE40:  LDR             R0, =(TheCamera_ptr - 0x56EE46)
56EE42:  ADD             R0, PC; TheCamera_ptr
56EE44:  LDR             R0, [R0]; TheCamera
56EE46:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
56EE4A:  CBZ             R0, loc_56EE84
56EE4C:  VLDR            S2, =0.0
56EE50:  B               loc_56EE98
56EE52:  LDRH.W          R0, [R8,#0x26]
56EE56:  CMP.W           R0, #0x220
56EE5A:  BNE             loc_56EF02
56EE5C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56EE6A)
56EE5E:  VLDR            S0, =-0.01
56EE62:  VLDR            S4, [R9,#0xC]
56EE66:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56EE68:  VMUL.F32        S0, S4, S0
56EE6C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56EE6E:  VLDR            S4, =0.92
56EE72:  VLDR            S6, [R0]
56EE76:  VMUL.F32        S2, S2, S4
56EE7A:  VMUL.F32        S0, S0, S6
56EE7E:  VADD.F32        S0, S2, S0
56EE82:  B               loc_56EF0A
56EE84:  LDR.W           R0, [R8,#0x5A0]
56EE88:  VLDR            S2, =0.025
56EE8C:  CMP             R0, #0
56EE8E:  ITT EQ
56EE90:  LDRBEQ.W        R0, [R8,#0x974]
56EE94:  CMPEQ           R0, #0
56EE96:  BEQ             loc_56EE4C
56EE98:  VMUL.F32        S0, S0, S2
56EE9C:  VLDR            S2, [R9,#0x14]
56EEA0:  LDR             R0, =(TheCamera_ptr - 0x56EEA6)
56EEA2:  ADD             R0, PC; TheCamera_ptr
56EEA4:  LDR             R0, [R0]; TheCamera
56EEA6:  VADD.F32        S16, S0, S2
56EEAA:  VSTR            S16, [R9,#0x14]
56EEAE:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
56EEB2:  CBZ             R0, loc_56EEBA
56EEB4:  VLDR            S0, =0.95
56EEB8:  B               loc_56EECE
56EEBA:  LDR.W           R0, [R8,#0x5A0]
56EEBE:  VLDR            S0, =0.98
56EEC2:  CMP             R0, #0
56EEC4:  ITT EQ
56EEC6:  LDRBEQ.W        R0, [R8,#0x974]
56EECA:  CMPEQ           R0, #0
56EECC:  BEQ             loc_56EEB4
56EECE:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56EED4)
56EED0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56EED2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56EED4:  VLDR            S18, [R0]
56EED8:  VMOV            R0, S0; x
56EEDC:  VMOV            R1, S18; y
56EEE0:  BLX             powf
56EEE4:  VLDR            S0, =-0.06
56EEE8:  VLDR            S2, [R9,#0xC]
56EEEC:  VMUL.F32        S0, S2, S0
56EEF0:  VMOV            S2, R0
56EEF4:  VMUL.F32        S2, S2, S16
56EEF8:  VMUL.F32        S0, S0, S18
56EEFC:  VADD.F32        S0, S2, S0
56EF00:  B               loc_56EF0A
56EF02:  VLDR            S0, =0.97
56EF06:  VMUL.F32        S0, S2, S0
56EF0A:  LSLS            R0, R4, #0x19
56EF0C:  VSTR            S0, [R9,#0x14]
56EF10:  BMI             loc_56EF2A
56EF12:  LDR             R0, =(_ZN5CDoor21DOOR_SPEED_MAX_CAPPEDE_ptr - 0x56EF1C)
56EF14:  VLDR            S2, =0.05
56EF18:  ADD             R0, PC; _ZN5CDoor21DOOR_SPEED_MAX_CAPPEDE_ptr
56EF1A:  LDR             R0, [R0]; CDoor::DOOR_SPEED_MAX_CAPPED ...
56EF1C:  VLDR            S4, [R0]
56EF20:  LSLS            R0, R4, #0x17
56EF22:  IT PL
56EF24:  VMOVPL.F32      S2, S4
56EF28:  B               loc_56EF2E
56EF2A:  VLDR            S2, =0.02
56EF2E:  VCMPE.F32       S0, S2
56EF32:  VMRS            APSR_nzcv, FPSCR
56EF36:  BGT             loc_56EF46
56EF38:  VNEG.F32        S2, S2
56EF3C:  VCMPE.F32       S0, S2
56EF40:  VMRS            APSR_nzcv, FPSCR
56EF44:  BGE             loc_56EF4E
56EF46:  VMOV.F32        S0, S2
56EF4A:  VSTR            S2, [R9,#0x14]
56EF4E:  VLDR            S2, [R9,#0xC]
56EF52:  ANDS.W          R0, R4, #0x80
56EF56:  VADD.F32        S2, S0, S2
56EF5A:  VSTR            S2, [R9,#0xC]
56EF5E:  ITT EQ
56EF60:  MOVEQ           R1, #0
56EF62:  STRBEQ.W        R1, [R9,#0xB]
56EF66:  VLDR            S6, [R9]
56EF6A:  VLDR            S4, [R9,#4]
56EF6E:  VCMPE.F32       S6, S4
56EF72:  VMRS            APSR_nzcv, FPSCR
56EF76:  BLT             loc_56EF8E
56EF78:  VCMPE.F32       S2, S6
56EF7C:  VMRS            APSR_nzcv, FPSCR
56EF80:  BGT             loc_56EF98
56EF82:  VCMPE.F32       S2, S4
56EF86:  VMRS            APSR_nzcv, FPSCR
56EF8A:  BLT             loc_56EFBA
56EF8C:  B               loc_56F006
56EF8E:  VCMPE.F32       S2, S6
56EF92:  VMRS            APSR_nzcv, FPSCR
56EF96:  BGE             loc_56EFB0
56EF98:  VLDR            S2, =-0.8
56EF9C:  CMP             R0, #0
56EF9E:  VSTR            S6, [R9,#0xC]
56EFA2:  VMUL.F32        S0, S0, S2
56EFA6:  VSTR            S0, [R9,#0x14]
56EFAA:  BNE             loc_56F006
56EFAC:  MOVS            R0, #1
56EFAE:  B               loc_56F002
56EFB0:  VCMPE.F32       S2, S4
56EFB4:  VMRS            APSR_nzcv, FPSCR
56EFB8:  BLE             loc_56F006
56EFBA:  AND.W           R1, R4, #0x90
56EFBE:  VSTR            S4, [R9,#0xC]
56EFC2:  CMP             R1, #0x10
56EFC4:  BNE             loc_56EFE8
56EFC6:  VABS.F32        S2, S0
56EFCA:  VLDR            S4, =0.1
56EFCE:  VCMPE.F32       S2, S4
56EFD2:  VMRS            APSR_nzcv, FPSCR
56EFD6:  BLE             loc_56EFE8
56EFD8:  MOVS            R0, #4
56EFDA:  MOVS            R4, #1
56EFDC:  STRB.W          R0, [R9,#0xB]
56EFE0:  MOVS            R0, #0
56EFE2:  STR.W           R0, [R9,#0x14]
56EFE6:  B               loc_56F008
56EFE8:  ADR             R1, dword_56F06C
56EFEA:  LSLS            R2, R4, #0x1A
56EFEC:  IT MI
56EFEE:  ADDMI           R1, #4
56EFF0:  CMP             R0, #0
56EFF2:  VLDR            S2, [R1]
56EFF6:  VMUL.F32        S0, S0, S2
56EFFA:  VSTR            S0, [R9,#0x14]
56EFFE:  BNE             loc_56F006
56F000:  MOVS            R0, #2
56F002:  STRB.W          R0, [R9,#0xB]
56F006:  MOVS            R4, #0
56F008:  ADD             R0, SP, #0xB0+var_90; this
56F00A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
56F00E:  MOV             R0, R4
56F010:  ADD             SP, SP, #0x80
56F012:  VPOP            {D8-D10}
56F016:  POP.W           {R8,R9,R11}
56F01A:  POP             {R4-R7,PC}
