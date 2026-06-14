; =========================================================
; Game Engine Function: _ZN11CAutomobile23DoHoverSuspensionRatiosEv
; Address            : 0x55EF2C - 0x55F0B6
; =========================================================

55EF2C:  PUSH            {R4-R7,LR}
55EF2E:  ADD             R7, SP, #0xC
55EF30:  PUSH.W          {R8-R11}
55EF34:  SUB             SP, SP, #4
55EF36:  VPUSH           {D8-D15}
55EF3A:  SUB             SP, SP, #0x18
55EF3C:  MOV             R4, R0
55EF3E:  VLDR            S0, =0.3
55EF42:  LDR             R0, [R4,#0x14]
55EF44:  VLDR            S2, [R0,#0x28]
55EF48:  VCMPE.F32       S2, S0
55EF4C:  VMRS            APSR_nzcv, FPSCR
55EF50:  BLT.W           loc_55F0A8
55EF54:  LDRB.W          R0, [R4,#0x42F]
55EF58:  LSLS            R0, R0, #0x19
55EF5A:  BMI.W           loc_55F0A8
55EF5E:  MOV             R0, R4; this
55EF60:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55EF64:  VMOV.F32        S16, #1.0
55EF68:  LDR.W           R10, [R0,#0x2C]
55EF6C:  VMOV.F32        S20, #-1.0
55EF70:  VLDR            S18, =-100.0
55EF74:  VLDR            S22, =0.99999
55EF78:  MOV.W           R5, #0x7E8
55EF7C:  VLDR            S24, =0.0
55EF80:  MOV.W           R11, #0
55EF84:  MOV.W           R8, #0
55EF88:  LDR.W           R0, [R10,#0x10]
55EF8C:  ADD             R6, SP, #0x78+var_70
55EF8E:  LDR             R1, [R4,#0x14]
55EF90:  ADD.W           R2, R0, R11
55EF94:  MOV             R0, R6
55EF96:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55EF9A:  LDR.W           R0, [R10,#0x10]
55EF9E:  LDR             R1, [R4,#0x14]
55EFA0:  ADD             R0, R11
55EFA2:  VLDR            S26, [SP,#0x78+var_70]
55EFA6:  ADD.W           R2, R0, #0x10
55EFAA:  MOV             R0, R6
55EFAC:  VLDR            S28, [SP,#0x78+var_6C]
55EFB0:  VLDR            S30, [SP,#0x78+var_68]
55EFB4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55EFB8:  ADD.W           R9, R4, R5
55EFBC:  VLDR            S19, [SP,#0x78+var_6C]
55EFC0:  VLDR            S21, [SP,#0x78+var_68]
55EFC4:  VMOV.F32        S23, S18
55EFC8:  VLDR            S0, [R9]
55EFCC:  VMOV            R1, S19; float
55EFD0:  VLDR            S17, [SP,#0x78+var_70]
55EFD4:  VMOV            R2, S21; float
55EFD8:  VCMPE.F32       S0, S16
55EFDC:  MOVS            R3, #0
55EFDE:  VMRS            APSR_nzcv, FPSCR
55EFE2:  ITTT LT
55EFE4:  ADDLT.W         R0, R4, R8
55EFE8:  ADDLT.W         R0, R0, #0x740
55EFEC:  VLDRLT          S23, [R0]
55EFF0:  STRD.W          R3, R3, [SP,#0x78+var_78]; float *
55EFF4:  VMOV            R0, S17; this
55EFF8:  ADD             R3, SP, #0x78+var_64; float
55EFFA:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
55EFFE:  CMP             R0, #1
55F000:  BNE             loc_55F096
55F002:  VLDR            S0, [SP,#0x78+var_64]
55F006:  VCMPE.F32       S0, S23
55F00A:  VMRS            APSR_nzcv, FPSCR
55F00E:  ITTT GT
55F010:  VADDGT.F32      S2, S21, S20
55F014:  VCMPEGT.F32     S0, S2
55F018:  VMRSGT          APSR_nzcv, FPSCR
55F01C:  BLE             loc_55F096
55F01E:  VMOV.F32        S2, S22
55F022:  VCMPE.F32       S0, S21
55F026:  VMRS            APSR_nzcv, FPSCR
55F02A:  BLE             loc_55F046
55F02C:  VMOV.F32        S2, S24
55F030:  VCMPE.F32       S0, S30
55F034:  VMRS            APSR_nzcv, FPSCR
55F038:  BGT             loc_55F046
55F03A:  VSUB.F32        S2, S30, S21
55F03E:  VSUB.F32        S4, S30, S0
55F042:  VDIV.F32        S2, S4, S2
55F046:  VSUB.F32        S4, S19, S28
55F04A:  VSTR            S2, [R9]
55F04E:  VSUB.F32        S6, S17, S26
55F052:  ADD.W           R0, R4, R8
55F056:  MOVS            R1, #0
55F058:  STR.W           R1, [R0,#0x748]
55F05C:  STR.W           R1, [R0,#0x74C]
55F060:  MOV.W           R1, #0x3F800000
55F064:  STR.W           R1, [R0,#0x750]
55F068:  MOVS            R1, #0x27 ; '''
55F06A:  STRB.W          R1, [R0,#0x75B]
55F06E:  ADD.W           R1, R0, #0x740
55F072:  VMUL.F32        S4, S4, S2
55F076:  VMUL.F32        S2, S6, S2
55F07A:  VSTR            S0, [R1]
55F07E:  ADDW            R1, R0, #0x73C
55F082:  ADD.W           R0, R0, #0x738
55F086:  VADD.F32        S4, S28, S4
55F08A:  VADD.F32        S2, S26, S2
55F08E:  VSTR            S4, [R1]
55F092:  VSTR            S2, [R0]
55F096:  ADD.W           R8, R8, #0x2C ; ','
55F09A:  ADDS            R5, #4
55F09C:  ADD.W           R11, R11, #0x20 ; ' '
55F0A0:  CMP.W           R8, #0xB0
55F0A4:  BNE.W           loc_55EF88
55F0A8:  ADD             SP, SP, #0x18
55F0AA:  VPOP            {D8-D15}
55F0AE:  ADD             SP, SP, #4
55F0B0:  POP.W           {R8-R11}
55F0B4:  POP             {R4-R7,PC}
