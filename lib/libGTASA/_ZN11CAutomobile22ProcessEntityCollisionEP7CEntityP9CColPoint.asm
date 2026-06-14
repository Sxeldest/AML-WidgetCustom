; =========================================================
; Game Engine Function: _ZN11CAutomobile22ProcessEntityCollisionEP7CEntityP9CColPoint
; Address            : 0x55BEA0 - 0x55C4F8
; =========================================================

55BEA0:  PUSH            {R4-R7,LR}
55BEA2:  ADD             R7, SP, #0xC
55BEA4:  PUSH.W          {R8-R11}
55BEA8:  SUB             SP, SP, #4
55BEAA:  VPUSH           {D8-D12}
55BEAE:  SUB             SP, SP, #0x98
55BEB0:  STR             R2, [SP,#0xE0+var_CC]
55BEB2:  MOV             R10, R0
55BEB4:  STR             R1, [SP,#0xE0+var_AC]
55BEB6:  LDRB.W          R0, [R10,#0x3A]
55BEBA:  AND.W           R0, R0, #0xF8
55BEBE:  CMP             R0, #0x10
55BEC0:  ITTT NE
55BEC2:  LDRNE.W         R0, [R10,#0x42C]
55BEC6:  ORRNE.W         R0, R0, #0x1000000
55BECA:  STRNE.W         R0, [R10,#0x42C]
55BECE:  MOV             R0, R10; this
55BED0:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55BED4:  STR             R0, [SP,#0xE0+var_B0]
55BED6:  ADD             R6, SP, #0xE0+var_78
55BED8:  LDR.W           R11, [R0,#0x2C]
55BEDC:  ADD.W           R0, R10, #0x7E8
55BEE0:  VLD1.32         {D16-D17}, [R0]
55BEE4:  ADD.W           R8, SP, #0xE0+var_A8
55BEE8:  LDRB.W          R9, [R11,#6]
55BEEC:  VST1.64         {D16-D17}, [R6]
55BEF0:  VLD1.32         {D16-D17}, [R0]
55BEF4:  VST1.64         {D16-D17}, [R8]
55BEF8:  LDRH.W          R3, [R10,#0x26]
55BEFC:  CMP.W           R3, #0x1B0
55BF00:  BNE             loc_55BF52
55BF02:  LDR.W           R2, [R10,#0x630]
55BF06:  LDR.W           R1, [R10,#0x62C]
55BF0A:  STRD.W          R1, R2, [SP,#0xE0+var_68]
55BF0E:  LDR.W           R2, [R10,#0x63C]
55BF12:  LDR.W           R1, [R10,#0x638]
55BF16:  STRD.W          R1, R2, [SP,#0xE0+var_60]
55BF1A:  LDR.W           R1, [R10,#0x644]
55BF1E:  LDR.W           R2, [R10,#0x648]
55BF22:  STR             R1, [SP,#0xE0+var_58]
55BF24:  ADD.W           R1, R6, #0x10
55BF28:  VLD1.64         {D16-D17}, [R1]
55BF2C:  STR             R2, [SP,#0xE0+var_54]
55BF2E:  LDR.W           R1, [R10,#0x650]
55BF32:  LDR.W           R2, [R10,#0x654]
55BF36:  STR             R1, [SP,#0xE0+var_50]
55BF38:  ADD.W           R1, R8, #0x10
55BF3C:  STR             R2, [SP,#0xE0+var_4C]
55BF3E:  VST1.64         {D16-D17}, [R1]
55BF42:  ADD.W           R1, R6, #0x20 ; ' '
55BF46:  VLD1.64         {D16-D17}, [R1]
55BF4A:  ADD.W           R1, R8, #0x20 ; ' '
55BF4E:  VST1.64         {D16-D17}, [R1]
55BF52:  LDRB.W          R1, [R10,#0x45]
55BF56:  LDR             R0, [SP,#0xE0+var_AC]; this
55BF58:  TST.W           R1, #0x90
55BF5C:  BNE             loc_55BF76
55BF5E:  LDRB.W          R1, [R0,#0x3A]
55BF62:  AND.W           R1, R1, #7
55BF66:  CMP             R1, #3
55BF68:  BEQ             loc_55BF76
55BF6A:  CMP             R1, #2
55BF6C:  ITT EQ
55BF6E:  MOVWEQ          R1, #0xFFFE
55BF72:  CMPEQ           R3, R1
55BF74:  BNE             loc_55BF7C
55BF76:  MOVS            R1, #0
55BF78:  STRB.W          R1, [R11,#6]
55BF7C:  LDR.W           R1, [R10,#0x4D0]
55BF80:  CMP             R1, R0
55BF82:  ITT NE
55BF84:  LDRNE.W         R1, [R10,#0x4D4]
55BF88:  CMPNE           R1, R0
55BF8A:  BEQ             loc_55BF96
55BF8C:  MOV.W           R4, #0xFFFFFFFF
55BF90:  MOV.W           R5, #0xFFFFFFFF
55BF94:  B               loc_55BFBE
55BF96:  MOVS            R6, #0
55BF98:  LDRSH.W         R4, [R11,#4]
55BF9C:  MOV             R8, R9
55BF9E:  STRH.W          R6, [R11,#4]
55BFA2:  MOV             R9, R0
55BFA4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55BFA8:  LDR             R0, [R0,#0x2C]
55BFAA:  LDRSH.W         R5, [R0,#4]
55BFAE:  MOV             R0, R9; this
55BFB0:  MOV             R9, R8
55BFB2:  ADD.W           R8, SP, #0xE0+var_A8
55BFB6:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55BFBA:  LDR             R0, [R0,#0x2C]
55BFBC:  STRH            R6, [R0,#4]
55BFBE:  LDRB.W          R0, [R10,#0x3A]
55BFC2:  AND.W           R0, R0, #0xF8
55BFC6:  CMP             R0, #0x60 ; '`'
55BFC8:  BNE             loc_55BFCE
55BFCA:  MOVS            R0, #0
55BFCC:  B               loc_55C016
55BFCE:  LDR             R0, [SP,#0xE0+var_AC]; this
55BFD0:  LDR.W           R8, [R10,#0x14]
55BFD4:  LDR             R6, [R0,#0x14]
55BFD6:  CBNZ            R6, loc_55BFEC
55BFD8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
55BFDC:  LDR             R0, [SP,#0xE0+var_AC]
55BFDE:  LDR             R1, [R0,#0x14]; CMatrix *
55BFE0:  LDR             R0, [SP,#0xE0+var_AC]
55BFE2:  ADDS            R0, #4; this
55BFE4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
55BFE8:  LDR             R0, [SP,#0xE0+var_AC]; this
55BFEA:  LDR             R6, [R0,#0x14]
55BFEC:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55BFF0:  MOV             R3, R0; int
55BFF2:  LDR.W           R0, =(aAutomobileColPoints_ptr - 0x55BFFE)
55BFF6:  MOVS            R1, #0
55BFF8:  MOV             R2, R6; CMatrix *
55BFFA:  ADD             R0, PC; aAutomobileColPoints_ptr
55BFFC:  STR             R1, [SP,#0xE0+var_D4]; int
55BFFE:  ADD             R1, SP, #0xE0+var_78
55C000:  STR             R1, [SP,#0xE0+var_D8]; int
55C002:  LDR             R0, [R0]; aAutomobileColPoints
55C004:  LDR             R1, [SP,#0xE0+var_CC]
55C006:  STRD.W          R1, R0, [SP,#0xE0+var_E0]; int
55C00A:  MOV             R0, R8; int
55C00C:  LDR             R1, [SP,#0xE0+var_B0]; int
55C00E:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
55C012:  ADD.W           R8, SP, #0xE0+var_A8
55C016:  STR             R0, [SP,#0xE0+var_BC]
55C018:  CMP             R5, #0
55C01A:  BLT             loc_55C026
55C01C:  LDR             R0, [SP,#0xE0+var_AC]; this
55C01E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55C022:  LDR             R0, [R0,#0x2C]
55C024:  STRH            R5, [R0,#4]
55C026:  CMP             R4, #0
55C028:  LDR             R3, [SP,#0xE0+var_AC]
55C02A:  IT GE
55C02C:  STRHGE.W        R4, [R11,#4]
55C030:  ADD             R1, SP, #0xE0+var_78
55C032:  LDRB.W          R0, [R11,#6]
55C036:  CMP             R0, #0
55C038:  BEQ.W           loc_55C220
55C03C:  ADDW            R0, R10, #0x914
55C040:  STR             R0, [SP,#0xE0+var_C0]
55C042:  ADD.W           R0, R10, #0x1C
55C046:  STR             R0, [SP,#0xE0+var_C4]
55C048:  ADD.W           R0, R3, #0x1C
55C04C:  VMOV.F32        S16, #1.0
55C050:  STR             R0, [SP,#0xE0+var_C8]
55C052:  MOVW            R8, #0x584
55C056:  LDR.W           R0, =(aAutomobileColPoints_ptr - 0x55C068)
55C05A:  MOV.W           R9, #0
55C05E:  MOV.W           R11, #0
55C062:  MOVS            R4, #0
55C064:  ADD             R0, PC; aAutomobileColPoints_ptr
55C066:  LDR             R0, [R0]; aAutomobileColPoints
55C068:  STR             R0, [SP,#0xE0+var_B8]
55C06A:  MOVS            R0, #0
55C06C:  STR             R0, [SP,#0xE0+var_B0]
55C06E:  ADD.W           R0, R1, R11
55C072:  VLDR            S0, [R0]
55C076:  VCMPE.F32       S0, S16
55C07A:  VMRS            APSR_nzcv, FPSCR
55C07E:  BGE.W           loc_55C18A
55C082:  ADD.W           R5, R10, R11
55C086:  ADD.W           R0, R5, #0x7E8
55C08A:  VLDR            S2, [R0]
55C08E:  VCMPE.F32       S0, S2
55C092:  VMRS            APSR_nzcv, FPSCR
55C096:  BGE             loc_55C18A
55C098:  VSTR            S0, [R0]
55C09C:  ADD.W           R6, R10, R4
55C0A0:  LDR             R0, [SP,#0xE0+var_B8]
55C0A2:  ADDS            R1, R0, R4
55C0A4:  ADD.W           R0, R6, #0x738
55C0A8:  STR             R0, [SP,#0xE0+var_B4]
55C0AA:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
55C0AE:  LDR             R3, [SP,#0xE0+var_AC]
55C0B0:  LDRB.W          R0, [R6,#0x75D]
55C0B4:  STRB.W          R0, [R10,R8]
55C0B8:  LDRB.W          R0, [R3,#0x3A]
55C0BC:  LDR             R1, [SP,#0xE0+var_B0]
55C0BE:  AND.W           R0, R0, #7
55C0C2:  CMP             R0, #4
55C0C4:  ADD.W           R1, R1, #1
55C0C8:  STR             R1, [SP,#0xE0+var_B0]
55C0CA:  IT NE
55C0CC:  CMPNE           R0, #2
55C0CE:  BNE             loc_55C14C
55C0D0:  STR.W           R3, [R5,#0x8FC]
55C0D4:  LDR             R5, [SP,#0xE0+var_C0]
55C0D6:  ADD.W           R0, R5, R11
55C0DA:  SUB.W           R1, R0, #0x18; CEntity **
55C0DE:  MOV             R0, R3; this
55C0E0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
55C0E4:  LDR             R3, [SP,#0xE0+var_AC]
55C0E6:  LDR             R1, [SP,#0xE0+var_B4]
55C0E8:  LDR             R0, [R3,#0x14]
55C0EA:  VLDR            S0, [R1]
55C0EE:  ADD.W           R1, R0, #0x30 ; '0'
55C0F2:  CMP             R0, #0
55C0F4:  ADDW            R0, R6, #0x73C
55C0F8:  IT EQ
55C0FA:  ADDEQ           R1, R3, #4
55C0FC:  VLDR            S2, [R1]
55C100:  VLDR            S8, [R0]
55C104:  ADD.W           R0, R6, #0x740
55C108:  VLDR            S4, [R1,#4]
55C10C:  VSUB.F32        S0, S0, S2
55C110:  VLDR            S6, [R1,#8]
55C114:  ADD.W           R1, R10, R9
55C118:  VSUB.F32        S2, S8, S4
55C11C:  VLDR            S4, [R0]
55C120:  ADD.W           R0, R5, R9
55C124:  ADD.W           R1, R1, #0x910
55C128:  VSUB.F32        S4, S4, S6
55C12C:  VSTR            S0, [R0,#-8]
55C130:  VSTR            S2, [R1]
55C134:  VSTR            S4, [R0]
55C138:  LDRB.W          R0, [R3,#0x3A]
55C13C:  AND.W           R0, R0, #7
55C140:  CMP             R0, #2
55C142:  ITT EQ
55C144:  LDRBEQ.W        R0, [R3,R8]
55C148:  STRBEQ.W        R0, [R10,R8]
55C14C:  LDRB.W          R0, [R6,#0x75B]
55C150:  STRB.W          R0, [R10,#0xBE]
55C154:  LDRB.W          R0, [R3,#0x3A]
55C158:  AND.W           R0, R0, #7
55C15C:  CMP             R0, #1
55C15E:  BNE             loc_55C188
55C160:  STR.W           R3, [R10,#0x490]
55C164:  LDR             R0, [SP,#0xE0+var_C8]
55C166:  LDR             R1, [SP,#0xE0+var_C4]
55C168:  MOV             R5, R0
55C16A:  LDR             R0, [R5]
55C16C:  MOV             R6, R1
55C16E:  LDRD.W          R1, R2, [R6]
55C172:  LSRS            R0, R0, #0x1E
55C174:  BFI.W           R1, R0, #0x1E, #1
55C178:  STRD.W          R1, R2, [R6]
55C17C:  LDR             R0, [R5]
55C17E:  LSRS            R0, R0, #0x1F
55C180:  BFI.W           R1, R0, #0x1F, #1
55C184:  STRD.W          R1, R2, [R6]
55C188:  ADD             R1, SP, #0xE0+var_78
55C18A:  ADDS            R4, #0x2C ; ','
55C18C:  ADD.W           R9, R9, #0xC
55C190:  ADD.W           R8, R8, #1
55C194:  ADD.W           R11, R11, #4
55C198:  CMP             R4, #0xB0
55C19A:  BNE.W           loc_55C06E
55C19E:  LDRH.W          R0, [R10,#0x26]
55C1A2:  ADD.W           R8, SP, #0xE0+var_A8
55C1A6:  LDR             R2, [SP,#0xE0+var_BC]
55C1A8:  CMP.W           R0, #0x1B0
55C1AC:  BNE             loc_55C232
55C1AE:  ADD.W           R0, R8, #0x20 ; ' '
55C1B2:  VLD1.64         {D16-D17}, [R0]
55C1B6:  ADD.W           R0, R8, #0x10
55C1BA:  VLD1.64         {D18-D19}, [R0]
55C1BE:  ADD.W           R0, R1, #0x10
55C1C2:  ADDS            R1, #0x20 ; ' '
55C1C4:  VLD1.64         {D20-D21}, [R0]
55C1C8:  VMIN.F32        Q9, Q10, Q9
55C1CC:  VLD1.64         {D20-D21}, [R1]
55C1D0:  VMIN.F32        Q8, Q10, Q8
55C1D4:  VST1.64         {D18-D19}, [R0]
55C1D8:  ADD.W           R0, R10, #0x638
55C1DC:  VST1.64         {D16-D17}, [R1]
55C1E0:  VST1.32         {D19[0]}, [R0@32]
55C1E4:  ADD.W           R0, R10, #0x630
55C1E8:  VST1.32         {D18[1]}, [R0@32]
55C1EC:  ADDW            R0, R10, #0x63C
55C1F0:  VST1.32         {D19[1]}, [R0@32]
55C1F4:  ADDW            R0, R10, #0x62C
55C1F8:  VST1.32         {D18[0]}, [R0@32]
55C1FC:  ADD.W           R0, R10, #0x650
55C200:  VST1.32         {D17[0]}, [R0@32]
55C204:  ADD.W           R0, R10, #0x648
55C208:  VST1.32         {D16[1]}, [R0@32]
55C20C:  ADDW            R0, R10, #0x654
55C210:  VST1.32         {D17[1]}, [R0@32]
55C214:  ADDW            R0, R10, #0x644
55C218:  VST1.32         {D16[0]}, [R0@32]
55C21C:  LDR             R4, [SP,#0xE0+var_B0]
55C21E:  B               loc_55C26C
55C220:  STRB.W          R9, [R11,#6]
55C224:  MOVS            R4, #0
55C226:  LDRH.W          R0, [R10,#0x26]
55C22A:  LDR             R2, [SP,#0xE0+var_BC]
55C22C:  CMP             R2, #1
55C22E:  BGE             loc_55C238
55C230:  B               loc_55C26C
55C232:  LDR             R4, [SP,#0xE0+var_B0]
55C234:  CMP             R2, #1
55C236:  BLT             loc_55C26C
55C238:  MOVW            R1, #0x212
55C23C:  CMP             R0, R1
55C23E:  BNE             loc_55C26C
55C240:  MOV             R9, R3
55C242:  LDRB.W          R0, [R9,#0x3A]!
55C246:  AND.W           R0, R0, #7
55C24A:  CMP             R0, #4
55C24C:  BNE             loc_55C260
55C24E:  LDRH.W          R0, [R10,#0x880]
55C252:  CMP             R0, #0
55C254:  ITT EQ
55C256:  LDRHEQ.W        R0, [R10,#0x882]
55C25A:  CMPEQ           R0, #0
55C25C:  BEQ.W           loc_55C4AA
55C260:  MOVS            R5, #0
55C262:  CMP             R4, #0
55C264:  IT GT
55C266:  MOVGT           R5, #1
55C268:  MOVS            R6, #1
55C26A:  B               loc_55C28E
55C26C:  CMP             R4, #0
55C26E:  MOV.W           R5, #0
55C272:  IT GT
55C274:  MOVGT           R5, #1
55C276:  MOVS            R6, #0
55C278:  CMP             R2, #0
55C27A:  IT GT
55C27C:  MOVGT           R6, #1
55C27E:  CMP             R4, #0
55C280:  STR             R2, [SP,#0xE0+var_BC]
55C282:  IT LE
55C284:  CMPLE           R2, #1
55C286:  BLT.W           loc_55C49A
55C28A:  ADD.W           R9, R3, #0x3A ; ':'
55C28E:  MOV             R0, R10; this
55C290:  MOV             R1, R3; CEntity *
55C292:  BLX             j__ZN9CPhysical18AddCollisionRecordEP7CEntity; CPhysical::AddCollisionRecord(CEntity *)
55C296:  LDR             R0, [SP,#0xE0+var_AC]; this
55C298:  LDRB.W          R1, [R0,#0x3A]
55C29C:  AND.W           R1, R1, #7
55C2A0:  CMP             R1, #1
55C2A2:  BEQ             loc_55C2AC
55C2A4:  MOV             R1, R10; CEntity *
55C2A6:  BLX             j__ZN9CPhysical18AddCollisionRecordEP7CEntity; CPhysical::AddCollisionRecord(CEntity *)
55C2AA:  LDR             R0, [SP,#0xE0+var_AC]
55C2AC:  CMP             R6, #1
55C2AE:  BNE             loc_55C2C8
55C2B0:  LDRB.W          R1, [R9]
55C2B4:  AND.W           R1, R1, #7
55C2B8:  CMP             R1, #1
55C2BA:  BEQ             loc_55C2D4
55C2BC:  CMP             R1, #4
55C2BE:  BNE             loc_55C2C8
55C2C0:  LDRB.W          R1, [R0,#0x44]
55C2C4:  LSLS            R1, R1, #0x1D
55C2C6:  BMI             loc_55C2D4
55C2C8:  CMP             R5, #1
55C2CA:  BNE.W           loc_55C49A
55C2CE:  ADD.W           R9, R0, #0x3A ; ':'
55C2D2:  B               loc_55C2E6
55C2D4:  LDR.W           R0, [R10,#0x1C]
55C2D8:  CMP             R5, #0
55C2DA:  ORR.W           R0, R0, #0x1000
55C2DE:  STR.W           R0, [R10,#0x1C]
55C2E2:  BEQ.W           loc_55C49A
55C2E6:  LDRB.W          R0, [R9]
55C2EA:  AND.W           R0, R0, #7
55C2EE:  CMP             R0, #1
55C2F0:  BNE.W           loc_55C49A
55C2F4:  LDR.W           R0, [R10,#0x388]
55C2F8:  VLDR            S0, [R0,#0xB4]
55C2FC:  VCMPE.F32       S0, #0.0
55C300:  VMRS            APSR_nzcv, FPSCR
55C304:  BLE.W           loc_55C49A
55C308:  VMOV.F32        S16, #1.0
55C30C:  ADDW            R0, R10, #0x5B4
55C310:  STR             R0, [SP,#0xE0+var_AC]
55C312:  ADD.W           R4, R10, #0x738
55C316:  LDR             R0, =(g_surfaceInfos_ptr - 0x55C324)
55C318:  MOVS            R5, #0
55C31A:  VLDR            S18, =0.1
55C31E:  MOVS            R6, #0
55C320:  ADD             R0, PC; g_surfaceInfos_ptr
55C322:  VLDR            S20, =0.3
55C326:  VLDR            S22, =0.2
55C32A:  LDR             R0, [R0]; g_surfaceInfos
55C32C:  STR             R0, [SP,#0xE0+var_B0]
55C32E:  ADD.W           R0, R10, R5
55C332:  ADDW            R11, R0, #0x89C
55C336:  ADDW            R1, R0, #0x88C
55C33A:  ADD.W           R9, R0, #0x7E8
55C33E:  VLDR            S2, [R1]
55C342:  ADD.W           R1, R0, #0x7F8
55C346:  VLDR            S0, [R11]
55C34A:  ADD.W           R0, R8, R5
55C34E:  VLDR            S6, [R1]
55C352:  VDIV.F32        S2, S2, S0
55C356:  VSUB.F32        S2, S16, S2
55C35A:  VLDR            S8, [R9]
55C35E:  VSUB.F32        S4, S16, S2
55C362:  VMUL.F32        S4, S6, S4
55C366:  VLDR            S6, [R0]
55C36A:  VADD.F32        S2, S2, S4
55C36E:  VMIN.F32        D12, D3, D1
55C372:  VSUB.F32        S2, S24, S8
55C376:  VMUL.F32        S0, S0, S2
55C37A:  VCMPE.F32       S0, S18
55C37E:  VMRS            APSR_nzcv, FPSCR
55C382:  BLE.W           loc_55C48E
55C386:  LDR             R0, [SP,#0xE0+var_AC]; this
55C388:  MOV             R1, R6; int
55C38A:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
55C38E:  CMP             R0, #0
55C390:  BNE             loc_55C48E
55C392:  LDRB.W          R1, [R4,#0x23]; unsigned int
55C396:  LDR             R0, [SP,#0xE0+var_B0]; this
55C398:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
55C39C:  CMP             R0, #4
55C39E:  ITT NE
55C3A0:  LDRBNE.W        R0, [R4,#0x23]
55C3A4:  CMPNE           R0, #0xB2
55C3A6:  BEQ             loc_55C48E
55C3A8:  LDR             R1, [SP,#0xE0+var_BC]
55C3AA:  MOVS            R2, #0x2C ; ','
55C3AC:  LDR             R0, [SP,#0xE0+var_CC]
55C3AE:  MLA.W           R8, R1, R2, R0
55C3B2:  MOV             R1, R4
55C3B4:  MOV             R0, R8
55C3B6:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
55C3BA:  LDR.W           R0, [R10,#0x14]
55C3BE:  CMP             R6, #2
55C3C0:  VLDR            S0, [R8,#0x10]
55C3C4:  VLDR            S2, [R8,#0x14]
55C3C8:  VLDR            S6, [R0,#0x20]
55C3CC:  VLDR            S8, [R0,#0x24]
55C3D0:  VMUL.F32        S0, S0, S6
55C3D4:  VLDR            S12, [R0,#0x10]
55C3D8:  VMUL.F32        S2, S2, S8
55C3DC:  VLDR            S6, [R10,#0x48]
55C3E0:  VLDR            S14, [R0,#0x14]
55C3E4:  VLDR            S8, [R10,#0x4C]
55C3E8:  VMUL.F32        S6, S6, S12
55C3EC:  VLDR            S1, [R0,#0x18]
55C3F0:  VMUL.F32        S8, S8, S14
55C3F4:  VLDR            S3, [R10,#0x50]
55C3F8:  VLDR            S10, [R0,#0x28]
55C3FC:  VLDR            S4, [R8,#0x18]
55C400:  VADD.F32        S0, S0, S2
55C404:  LDR.W           R0, [R10,#0x388]
55C408:  VMUL.F32        S2, S3, S1
55C40C:  VMUL.F32        S4, S4, S10
55C410:  VADD.F32        S6, S6, S8
55C414:  VADD.F32        S0, S0, S4
55C418:  VLDR            S4, [R11]
55C41C:  VADD.F32        S2, S6, S2
55C420:  VABS.F32        S0, S0
55C424:  VABS.F32        S2, S2
55C428:  VMIN.F32        D1, D1, D10
55C42C:  VMUL.F32        S0, S0, S2
55C430:  VLDR            S2, [R9]
55C434:  VSUB.F32        S2, S24, S2
55C438:  VDIV.F32        S0, S0, S20
55C43C:  VMUL.F32        S2, S2, S4
55C440:  VMIN.F32        D1, D1, D11
55C444:  VMUL.F32        S0, S2, S0
55C448:  VLDR            S2, [R0,#0xB4]
55C44C:  VMUL.F32        S0, S2, S0
55C450:  VSTR            S0, [R8,#0x28]
55C454:  BHI             loc_55C470
55C456:  MOVW            R0, #0xFFF8
55C45A:  MOVW            R1, #:lower16:(aZn20caeradiotr_62+0x12); "Manager27ChooseDJBanterIndexFromListEaP"...
55C45E:  MOVT            R0, #0xFF
55C462:  MOVT            R1, #:upper16:(aZn20caeradiotr_62+0x12); "Manager27ChooseDJBanterIndexFromListEaP"...
55C466:  AND.W           R0, R0, R6,LSL#3
55C46A:  LSR.W           R0, R1, R0
55C46E:  B               loc_55C472
55C470:  MOVS            R0, #0x10
55C472:  MOVS            R1, #0x3C ; '<'
55C474:  STRB.W          R1, [R8,#0x23]
55C478:  STRB.W          R1, [R8,#0x20]
55C47C:  STRB.W          R0, [R8,#0x21]
55C480:  ADD.W           R8, SP, #0xE0+var_A8
55C484:  LDR             R0, [SP,#0xE0+var_BC]
55C486:  CMP             R0, #0x1F
55C488:  IT LT
55C48A:  ADDLT           R0, #1
55C48C:  STR             R0, [SP,#0xE0+var_BC]
55C48E:  ADDS            R5, #4
55C490:  ADDS            R4, #0x2C ; ','
55C492:  ADDS            R6, #1
55C494:  CMP             R5, #0x10
55C496:  BNE.W           loc_55C32E
55C49A:  LDR             R0, [SP,#0xE0+var_BC]
55C49C:  ADD             SP, SP, #0x98
55C49E:  VPOP            {D8-D12}
55C4A2:  ADD             SP, SP, #4
55C4A4:  POP.W           {R8-R11}
55C4A8:  POP             {R4-R7,PC}
55C4AA:  LDR             R0, [SP,#0xE0+var_CC]
55C4AC:  MOVS            R5, #0
55C4AE:  LDR             R2, [SP,#0xE0+var_BC]
55C4B0:  MOV.W           R9, #0x2C ; ','
55C4B4:  ADD.W           R8, R0, #0x2C ; ','
55C4B8:  STR             R4, [SP,#0xE0+var_B0]
55C4BA:  LDR             R0, [SP,#0xE0+var_CC]
55C4BC:  MLA.W           R0, R5, R9, R0
55C4C0:  LDRB.W          R0, [R0,#0x20]
55C4C4:  CMP             R0, #0x41 ; 'A'
55C4C6:  BNE             loc_55C4EC
55C4C8:  SUBS            R2, #1
55C4CA:  CMP             R5, R2
55C4CC:  BGE             loc_55C4EC
55C4CE:  MLA.W           R6, R5, R9, R8
55C4D2:  SUBS            R4, R2, R5
55C4D4:  MOV             R11, R2
55C4D6:  SUB.W           R0, R6, #0x2C ; ','
55C4DA:  MOV             R1, R6
55C4DC:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
55C4E0:  ADDS            R6, #0x2C ; ','
55C4E2:  SUBS            R4, #1
55C4E4:  BNE             loc_55C4D6
55C4E6:  LDR             R3, [SP,#0xE0+var_AC]
55C4E8:  SUBS            R5, #1
55C4EA:  MOV             R2, R11
55C4EC:  ADDS            R5, #1
55C4EE:  CMP             R5, R2
55C4F0:  BLT             loc_55C4BA
55C4F2:  ADD.W           R8, SP, #0xE0+var_A8
55C4F6:  B               loc_55C21C
