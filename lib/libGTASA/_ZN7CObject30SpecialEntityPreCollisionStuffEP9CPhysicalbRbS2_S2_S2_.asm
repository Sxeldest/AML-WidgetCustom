; =========================================================
; Game Engine Function: _ZN7CObject30SpecialEntityPreCollisionStuffEP9CPhysicalbRbS2_S2_S2_
; Address            : 0x454F70 - 0x45521C
; =========================================================

454F70:  PUSH            {R4-R7,LR}
454F72:  ADD             R7, SP, #0xC
454F74:  PUSH.W          {R8-R10}
454F78:  SUB             SP, SP, #0x68
454F7A:  MOV             R4, R0
454F7C:  MOV             R6, R1
454F7E:  LDR.W           R0, [R4,#0x12C]
454F82:  MOV             R5, R2
454F84:  LDR.W           R10, [R7,#arg_0]
454F88:  CMP             R0, R6
454F8A:  ITT NE
454F8C:  LDRNE.W         R0, [R6,#0x12C]
454F90:  CMPNE           R0, R4
454F92:  BNE             loc_454F9C
454F94:  MOVS            R0, #1
454F96:  STRB.W          R0, [R10]
454F9A:  B               loc_454FCE
454F9C:  LDR.W           R0, [R4,#0x100]
454FA0:  LDR.W           R9, [R7,#arg_8]
454FA4:  CMP             R0, R6
454FA6:  ITT NE
454FA8:  LDRNE.W         R1, [R6,#0x100]
454FAC:  CMPNE           R1, R4
454FAE:  BEQ             loc_454FB6
454FB0:  CBZ             R0, loc_454FD6
454FB2:  CMP             R0, R1
454FB4:  BNE             loc_454FD6
454FB6:  MOVS            R0, #1
454FB8:  STRB            R0, [R3]
454FBA:  LDRB.W          R0, [R10]
454FBE:  CBNZ            R0, loc_454FCE
454FC0:  CBNZ            R5, loc_454FC8
454FC2:  LDRB            R0, [R4,#0x1C]
454FC4:  LSLS            R0, R0, #0x1B
454FC6:  BPL             loc_454FCE
454FC8:  MOVS            R0, #1
454FCA:  STRB.W          R0, [R9]
454FCE:  ADD             SP, SP, #0x68 ; 'h'
454FD0:  POP.W           {R8-R10}
454FD4:  POP             {R4-R7,PC}
454FD6:  LDR             R2, [R4,#0x44]
454FD8:  AND.W           R0, R2, #0x82
454FDC:  CMP             R0, #0x80
454FDE:  BNE             loc_454FE8
454FE0:  LDRB.W          R0, [R6,#0x44]
454FE4:  LSLS            R0, R0, #0x18
454FE6:  BPL             loc_454FB6
454FE8:  LSLS            R0, R2, #0x18
454FEA:  BMI             loc_455016
454FEC:  LDR.W           R12, [R7,#arg_4]
454FF0:  TST.W           R2, #0x60
454FF4:  BEQ             loc_455030
454FF6:  CMP             R5, #0
454FF8:  BNE             loc_454FB6
454FFA:  LDRB            R0, [R4,#0x1C]
454FFC:  LSLS            R0, R0, #0x1B
454FFE:  BMI             loc_454FB6
455000:  LDR             R0, [R6,#0x1C]
455002:  TST.W           R0, #0x10
455006:  BEQ             loc_454FBA
455008:  LSLS            R0, R0, #0x13
45500A:  IT PL
45500C:  MOVPL           R12, R9
45500E:  MOVS            R0, #1
455010:  STRB.W          R0, [R12]
455014:  B               loc_454FBA
455016:  CMP             R5, #1
455018:  BEQ             loc_454FB6
45501A:  LDRB            R0, [R4,#0x1C]
45501C:  LSLS            R0, R0, #0x1B
45501E:  ITT PL
455020:  LDRBPL          R0, [R6,#0x1C]
455022:  MOVSPL.W        R0, R0,LSL#27
455026:  BPL             loc_454FBA
455028:  MOVS            R0, #1
45502A:  STRB.W          R0, [R9]
45502E:  B               loc_454FBA
455030:  LDR.W           LR, [R4,#0x144]
455034:  TST.W           LR, #0x100
455038:  BEQ             loc_455078
45503A:  LDR             R0, [R4,#0x14]
45503C:  VLDR            S0, =0.66
455040:  VLDR            S2, [R0,#0x28]
455044:  VCMPE.F32       S2, S0
455048:  VMRS            APSR_nzcv, FPSCR
45504C:  BLT             loc_455054
45504E:  LDRB            R0, [R4,#0x1C]
455050:  LSLS            R0, R0, #0x1B
455052:  BPL             loc_455078
455054:  LDRB.W          R0, [R6,#0x3A]
455058:  AND.W           R0, R0, #6
45505C:  CMP             R0, #2
45505E:  BNE             loc_455078
455060:  MOVS            R0, #1
455062:  STRB.W          R0, [R10]
455066:  LDRB.W          R0, [R6,#0x3A]
45506A:  AND.W           R0, R0, #7
45506E:  CMP             R0, #2
455070:  BNE             loc_454FCE
455072:  STR.W           R6, [R4,#0x12C]
455076:  B               loc_454FBA
455078:  LDRB.W          R0, [R6,#0x3A]
45507C:  LDRH            R2, [R4,#0x26]
45507E:  AND.W           R0, R0, #7
455082:  CMP             R0, #2
455084:  BNE.W           loc_4551AE
455088:  SUB.W           R0, R2, #0x176
45508C:  UXTH            R0, R0
45508E:  CMP             R0, #7
455090:  BLS.W           loc_454FB6
455094:  LDRB.W          R0, [R4,#0x140]
455098:  CMP             R0, #3
45509A:  BEQ             loc_4550AC
45509C:  ANDS.W          R0, LR, #0x40 ; '@'
4550A0:  BNE             loc_4550AC
4550A2:  LDR             R0, [R4,#0x1C]
4550A4:  TST.W           R0, #0x40004
4550A8:  BNE.W           loc_454FBA
4550AC:  LDRSH.W         R0, [R6,#0x26]
4550B0:  CMP.W           R0, #0x196
4550B4:  BEQ             loc_45501A
4550B6:  MOVW            R1, #0x212
4550BA:  CMP             R0, R1
4550BC:  IT NE
4550BE:  CMPNE.W         R0, #0x1E6
4550C2:  BEQ             loc_45501A
4550C4:  LDRB.W          R0, [R4,#0x148]
4550C8:  CMP             R0, #0x13
4550CA:  BHI.W           loc_454FBA
4550CE:  MOV             R0, R4; this
4550D0:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4550D4:  VMOV.F32        S0, #1.0
4550D8:  VLDR            S2, [R0,#0xC]
4550DC:  VCMPE.F32       S2, S0
4550E0:  VMRS            APSR_nzcv, FPSCR
4550E4:  BGE.W           loc_454FBA
4550E8:  VLDR            S2, [R0,#0x10]
4550EC:  VCMPE.F32       S2, S0
4550F0:  VMRS            APSR_nzcv, FPSCR
4550F4:  BGE.W           loc_454FBA
4550F8:  VLDR            S2, [R0,#0x14]
4550FC:  VCMPE.F32       S2, S0
455100:  VMRS            APSR_nzcv, FPSCR
455104:  BGE.W           loc_454FBA
455108:  MOVS            R1, #0
45510A:  ADD             R2, SP, #0x80+var_70
45510C:  STRD.W          R1, R1, [SP,#0x80+var_20]
455110:  VLDR            S0, [R0]
455114:  VLDR            S6, [R0,#0xC]
455118:  VLDR            S2, [R0,#4]
45511C:  VLDR            S8, [R0,#0x10]
455120:  VSUB.F32        S0, S6, S0
455124:  VLDR            S4, [R0,#8]
455128:  VLDR            S10, [R0,#0x14]
45512C:  VSUB.F32        S2, S8, S2
455130:  MOV             R0, SP
455132:  VSUB.F32        S4, S10, S4
455136:  VSTR            S2, [SP,#0x80+var_70+4]
45513A:  VSTR            S0, [SP,#0x80+var_70]
45513E:  VSTR            S4, [SP,#0x80+var_68]
455142:  LDR             R1, [R4,#0x14]
455144:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
455148:  VLDR            D16, [SP,#0x80+var_80]
45514C:  LDR             R0, [SP,#0x80+var_78]
45514E:  STR             R0, [SP,#0x80+var_68]
455150:  VSTR            D16, [SP,#0x80+var_70]
455154:  LDR             R0, [R6,#0x14]; CMatrix *
455156:  VLDR            S0, [SP,#0x80+var_68]
45515A:  ADD.W           R1, R0, #0x30 ; '0'
45515E:  CMP             R0, #0
455160:  IT EQ
455162:  ADDEQ           R1, R6, #4
455164:  VLDR            S2, [R1,#8]
455168:  VCMPE.F32       S0, S2
45516C:  VMRS            APSR_nzcv, FPSCR
455170:  BLT             loc_45519C
455172:  ADD.W           R8, SP, #0x80+var_60
455176:  MOV             R1, R8; CMatrix *
455178:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
45517C:  MOV             R1, R0
45517E:  MOV             R0, R8
455180:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
455184:  ADD             R2, SP, #0x80+var_70
455186:  MOV             R0, SP
455188:  MOV             R1, R8
45518A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
45518E:  VLDR            S0, [SP,#0x80+var_78]
455192:  VCMPE.F32       S0, #0.0
455196:  VMRS            APSR_nzcv, FPSCR
45519A:  BGE             loc_4551A6
45519C:  MOVS            R0, #1
45519E:  STRB.W          R0, [R10]
4551A2:  STR.W           R6, [R4,#0x12C]
4551A6:  ADD             R0, SP, #0x80+var_60; this
4551A8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4551AC:  B               loc_454FBA
4551AE:  CMP.W           R2, #0x156
4551B2:  IT EQ
4551B4:  CMPEQ           R0, #3
4551B6:  BNE             loc_4551D2
4551B8:  LDR             R0, [R6,#0x14]
4551BA:  LDR             R1, [R4,#0x14]
4551BC:  VLDR            S0, [R0,#0x38]
4551C0:  VLDR            S2, [R1,#0x38]
4551C4:  VCMPE.F32       S2, S0
4551C8:  VMRS            APSR_nzcv, FPSCR
4551CC:  BLT.W           loc_454FB6
4551D0:  B               loc_454FBA
4551D2:  CMP             R0, #4
4551D4:  BNE.W           loc_454FBA
4551D8:  LDR.W           R0, [R6,#0x164]
4551DC:  VLDR            S0, [R0,#0x14]
4551E0:  VCMPE.F32       S0, #0.0
4551E4:  VMRS            APSR_nzcv, FPSCR
4551E8:  BLE.W           loc_454FBA
4551EC:  CMP             R1, #0
4551EE:  BNE.W           loc_454FBA
4551F2:  LDR             R0, [R6,#0x44]
4551F4:  AND.W           R0, R0, #0xC
4551F8:  CMP             R0, #4
4551FA:  BEQ.W           loc_454FBA
4551FE:  VMOV.F32        S0, #10.0
455202:  VLDR            S2, [R6,#0x90]
455206:  VMUL.F32        S0, S2, S0
45520A:  VLDR            S2, [R4,#0x90]
45520E:  VCMPE.F32       S2, S0
455212:  VMRS            APSR_nzcv, FPSCR
455216:  BGE.W           loc_454FBA
45521A:  B               loc_45500E
