; =========================================================
; Game Engine Function: _ZN8CTrailer22ProcessEntityCollisionEP7CEntityP9CColPoint
; Address            : 0x57C084 - 0x57C3FE
; =========================================================

57C084:  PUSH            {R4-R7,LR}
57C086:  ADD             R7, SP, #0xC
57C088:  PUSH.W          {R8-R11}
57C08C:  SUB             SP, SP, #4
57C08E:  VPUSH           {D8}
57C092:  SUB             SP, SP, #0x150
57C094:  MOV             R10, R2
57C096:  ADD.W           R2, R0, #0xA00
57C09A:  VLDR            S0, =-1000.0
57C09E:  VLDR            S2, [R2]
57C0A2:  VCMP.F32        S2, S0
57C0A6:  VMRS            APSR_nzcv, FPSCR
57C0AA:  BNE             loc_57C0C2
57C0AC:  MOV             R2, R10
57C0AE:  ADD             SP, SP, #0x150
57C0B0:  VPOP            {D8}
57C0B4:  ADD             SP, SP, #4
57C0B6:  POP.W           {R8-R11}
57C0BA:  POP.W           {R4-R7,LR}
57C0BE:  B.W             sub_190570
57C0C2:  STR             R1, [SP,#0x178+var_14C]
57C0C4:  LDRB.W          R1, [R0,#0x3A]
57C0C8:  AND.W           R1, R1, #0xF8
57C0CC:  CMP             R1, #0x10
57C0CE:  ITTT NE
57C0D0:  LDRNE.W         R1, [R0,#0x42C]
57C0D4:  ORRNE.W         R1, R1, #0x1000000
57C0D8:  STRNE.W         R1, [R0,#0x42C]
57C0DC:  STR             R0, [SP,#0x178+var_150]
57C0DE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
57C0E2:  LDR             R3, [SP,#0x178+var_150]
57C0E4:  MOV             R4, R0
57C0E6:  LDR.W           R11, [R4,#0x2C]
57C0EA:  ADD.W           R0, R3, #0x7E8
57C0EE:  VLD1.32         {D16-D17}, [R0]
57C0F2:  ADD             R0, SP, #0x178+var_40
57C0F4:  VST1.32         {D16-D17}, [R0]!
57C0F8:  LDR.W           R1, [R3,#0x9F4]
57C0FC:  LDR.W           R2, [R3,#0x9F8]
57C100:  STR             R1, [R0]
57C102:  STR             R2, [SP,#0x178+var_2C]
57C104:  LDRB.W          R0, [R3,#0x45]
57C108:  LDR             R1, [SP,#0x178+var_14C]
57C10A:  TST.W           R0, #0x90
57C10E:  BNE             loc_57C11C
57C110:  LDRB.W          R0, [R1,#0x3A]
57C114:  AND.W           R0, R0, #6
57C118:  CMP             R0, #2
57C11A:  BNE             loc_57C122
57C11C:  MOVS            R0, #0
57C11E:  STRB.W          R0, [R11,#6]
57C122:  LDR.W           R0, [R3,#0x4D0]
57C126:  CMP             R0, R1
57C128:  ITT NE
57C12A:  LDRNE.W         R0, [R3,#0x4D4]
57C12E:  CMPNE           R0, R1
57C130:  BEQ             loc_57C13C
57C132:  MOV.W           R5, #0xFFFFFFFF
57C136:  MOV.W           R8, #0xFFFFFFFF
57C13A:  B               loc_57C164
57C13C:  MOV             R6, R4
57C13E:  MOV             R0, R1; this
57C140:  MOVS            R4, #0
57C142:  LDRSH.W         R5, [R11,#4]
57C146:  STRH.W          R4, [R11,#4]
57C14A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
57C14E:  LDR             R0, [R0,#0x2C]
57C150:  LDRSH.W         R8, [R0,#4]
57C154:  LDR             R0, [SP,#0x178+var_14C]; this
57C156:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
57C15A:  LDRD.W          R3, R1, [SP,#0x178+var_150]
57C15E:  LDR             R0, [R0,#0x2C]
57C160:  STRH            R4, [R0,#4]
57C162:  MOV             R4, R6
57C164:  LDR             R6, [R1,#0x14]
57C166:  LDR.W           R9, [R3,#0x14]
57C16A:  CBNZ            R6, loc_57C182
57C16C:  MOV             R0, R1; this
57C16E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
57C172:  LDR             R0, [SP,#0x178+var_14C]
57C174:  LDR             R1, [R0,#0x14]; CMatrix *
57C176:  LDR             R0, [SP,#0x178+var_14C]
57C178:  ADDS            R0, #4; this
57C17A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
57C17E:  LDR             R1, [SP,#0x178+var_14C]
57C180:  LDR             R6, [R1,#0x14]
57C182:  MOV             R0, R1; this
57C184:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
57C188:  ADD             R1, SP, #0x178+var_148
57C18A:  MOV             R3, R0; int
57C18C:  MOVS            R0, #0
57C18E:  MOV             R2, R6; CMatrix *
57C190:  STRD.W          R10, R1, [SP,#0x178+var_178]; int
57C194:  ADD             R1, SP, #0x178+var_40
57C196:  STRD.W          R1, R0, [SP,#0x178+var_170]; int
57C19A:  MOV             R0, R9; int
57C19C:  MOV             R1, R4; int
57C19E:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
57C1A2:  CMP             R5, #0
57C1A4:  MOV             R4, R0
57C1A6:  IT GE
57C1A8:  STRHGE.W        R5, [R11,#4]
57C1AC:  CMP.W           R8, #0
57C1B0:  BLT             loc_57C1BE
57C1B2:  LDR             R0, [SP,#0x178+var_14C]; this
57C1B4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
57C1B8:  LDR             R0, [R0,#0x2C]
57C1BA:  STRH.W          R8, [R0,#4]
57C1BE:  LDRB.W          R0, [R11,#6]
57C1C2:  LDR.W           R12, [SP,#0x178+var_14C]
57C1C6:  CMP             R0, #0
57C1C8:  BEQ.W           loc_57C398
57C1CC:  STR             R4, [SP,#0x178+var_164]
57C1CE:  VMOV.F32        S16, #1.0
57C1D2:  LDR             R3, [SP,#0x178+var_150]
57C1D4:  ADD             R1, SP, #0x178+var_40
57C1D6:  MOV.W           R11, #0
57C1DA:  MOVW            R10, #0x584
57C1DE:  ADDW            R0, R3, #0x9F8
57C1E2:  STR             R0, [SP,#0x178+var_168]
57C1E4:  ADDW            R0, R3, #0x914
57C1E8:  STR             R0, [SP,#0x178+var_158]
57C1EA:  ADD.W           R0, R3, #0x1C
57C1EE:  STR             R0, [SP,#0x178+var_15C]
57C1F0:  ADD.W           R0, R12, #0x1C
57C1F4:  STR             R0, [SP,#0x178+var_160]
57C1F6:  MOVS            R0, #0
57C1F8:  MOV.W           R9, #0
57C1FC:  MOVS            R5, #0
57C1FE:  STR             R0, [SP,#0x178+var_154]
57C200:  ADD.W           R0, R1, R11
57C204:  VLDR            S0, [R0]
57C208:  VCMPE.F32       S0, S16
57C20C:  VMRS            APSR_nzcv, FPSCR
57C210:  BGE             loc_57C30C
57C212:  ADD.W           R4, R3, R11
57C216:  ADD.W           R0, R4, #0x7E8
57C21A:  VLDR            S2, [R0]
57C21E:  VCMPE.F32       S0, S2
57C222:  VMRS            APSR_nzcv, FPSCR
57C226:  BGE             loc_57C30C
57C228:  ADD.W           R8, R3, R5
57C22C:  VSTR            S0, [R0]
57C230:  ADD             R0, SP, #0x178+var_148
57C232:  ADD.W           R6, R8, #0x738
57C236:  ADDS            R1, R0, R5
57C238:  MOV             R0, R6
57C23A:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
57C23E:  LDRD.W          R3, R12, [SP,#0x178+var_150]
57C242:  LDRB.W          R0, [R8,#0x75D]
57C246:  STRB.W          R0, [R3,R10]
57C24A:  LDRB.W          R0, [R12,#0x3A]
57C24E:  LDR             R1, [SP,#0x178+var_154]
57C250:  AND.W           R0, R0, #7
57C254:  CMP             R0, #4
57C256:  ADD.W           R1, R1, #1
57C25A:  STR             R1, [SP,#0x178+var_154]
57C25C:  IT NE
57C25E:  CMPNE           R0, #2
57C260:  BNE             loc_57C2CE
57C262:  STR.W           R12, [R4,#0x8FC]
57C266:  LDR             R4, [SP,#0x178+var_158]
57C268:  ADD.W           R0, R4, R11
57C26C:  SUB.W           R1, R0, #0x18; CEntity **
57C270:  MOV             R0, R12; this
57C272:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57C276:  LDRD.W          R3, R12, [SP,#0x178+var_150]
57C27A:  LDR.W           R0, [R12,#0x14]
57C27E:  VLDR            S0, [R6]
57C282:  ADD.W           R1, R0, #0x30 ; '0'
57C286:  CMP             R0, #0
57C288:  ADDW            R0, R8, #0x73C
57C28C:  IT EQ
57C28E:  ADDEQ.W         R1, R12, #4
57C292:  VLDR            S2, [R1]
57C296:  VLDR            S8, [R0]
57C29A:  ADD.W           R0, R8, #0x740
57C29E:  VLDR            S4, [R1,#4]
57C2A2:  VSUB.F32        S0, S0, S2
57C2A6:  VLDR            S6, [R1,#8]
57C2AA:  ADD.W           R1, R3, R9
57C2AE:  VSUB.F32        S2, S8, S4
57C2B2:  VLDR            S4, [R0]
57C2B6:  ADD.W           R0, R4, R9
57C2BA:  ADD.W           R1, R1, #0x910
57C2BE:  VSUB.F32        S4, S4, S6
57C2C2:  VSTR            S0, [R0,#-8]
57C2C6:  VSTR            S2, [R1]
57C2CA:  VSTR            S4, [R0]
57C2CE:  LDRB.W          R0, [R8,#0x75B]
57C2D2:  STRB.W          R0, [R3,#0xBE]
57C2D6:  LDRB.W          R0, [R12,#0x3A]
57C2DA:  AND.W           R0, R0, #7
57C2DE:  CMP             R0, #1
57C2E0:  BNE             loc_57C30A
57C2E2:  STR.W           R12, [R3,#0x490]
57C2E6:  LDR             R0, [SP,#0x178+var_160]
57C2E8:  LDR             R1, [SP,#0x178+var_15C]
57C2EA:  MOV             R4, R0
57C2EC:  LDR             R0, [R4]
57C2EE:  MOV             R6, R1
57C2F0:  LDRD.W          R1, R2, [R6]
57C2F4:  LSRS            R0, R0, #0x1E
57C2F6:  BFI.W           R1, R0, #0x1E, #1
57C2FA:  STRD.W          R1, R2, [R6]
57C2FE:  LDR             R0, [R4]
57C300:  LSRS            R0, R0, #0x1F
57C302:  BFI.W           R1, R0, #0x1F, #1
57C306:  STRD.W          R1, R2, [R6]
57C30A:  ADD             R1, SP, #0x178+var_40
57C30C:  ADDS            R5, #0x2C ; ','
57C30E:  ADD.W           R10, R10, #1
57C312:  ADD.W           R11, R11, #4
57C316:  ADD.W           R9, R9, #0xC
57C31A:  CMP             R5, #0xB0
57C31C:  BNE.W           loc_57C200
57C320:  VLDR            S0, [SP,#0x178+var_30]
57C324:  VCMPE.F32       S0, S16
57C328:  VMRS            APSR_nzcv, FPSCR
57C32C:  BGE             loc_57C35E
57C32E:  ADDW            R0, R3, #0x9F4
57C332:  VLDR            S2, [R0]
57C336:  VCMPE.F32       S0, S2
57C33A:  VMRS            APSR_nzcv, FPSCR
57C33E:  BGE             loc_57C35E
57C340:  ADD             R1, SP, #0x178+var_148
57C342:  VSTR            S0, [R0]
57C346:  ADDW            R0, R3, #0x99C
57C34A:  ADDS            R1, #0xB0
57C34C:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
57C350:  LDR.W           R12, [SP,#0x178+var_14C]
57C354:  LDRD.W          R5, R3, [SP,#0x178+var_154]
57C358:  LDR             R4, [SP,#0x178+var_164]
57C35A:  ADDS            R5, #1
57C35C:  B               loc_57C362
57C35E:  LDR             R4, [SP,#0x178+var_164]
57C360:  LDR             R5, [SP,#0x178+var_154]
57C362:  VLDR            S0, [SP,#0x178+var_2C]
57C366:  LDR             R0, [SP,#0x178+var_168]
57C368:  VCMPE.F32       S0, S16
57C36C:  VMRS            APSR_nzcv, FPSCR
57C370:  BGE             loc_57C3A2
57C372:  VLDR            S2, [R0]
57C376:  VCMPE.F32       S0, S2
57C37A:  VMRS            APSR_nzcv, FPSCR
57C37E:  BGE             loc_57C3A2
57C380:  ADD             R1, SP, #0x178+var_148
57C382:  VSTR            S0, [R0]
57C386:  ADDW            R0, R3, #0x9C8
57C38A:  ADDS            R1, #0xDC
57C38C:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
57C390:  LDRD.W          R3, R12, [SP,#0x178+var_150]
57C394:  ADDS            R5, #1
57C396:  B               loc_57C3A2
57C398:  MOVS            R0, #6
57C39A:  MOVS            R5, #0
57C39C:  STRB.W          R0, [R11,#6]
57C3A0:  LDR             R3, [SP,#0x178+var_150]
57C3A2:  CMP             R4, #0
57C3A4:  IT LE
57C3A6:  CMPLE           R5, #1
57C3A8:  BLT             loc_57C3EE
57C3AA:  MOV             R0, R3; this
57C3AC:  MOV             R1, R12; CEntity *
57C3AE:  BLX             j__ZN9CPhysical18AddCollisionRecordEP7CEntity; CPhysical::AddCollisionRecord(CEntity *)
57C3B2:  LDR             R0, [SP,#0x178+var_14C]; this
57C3B4:  LDRB.W          R1, [R0,#0x3A]
57C3B8:  AND.W           R1, R1, #7
57C3BC:  CMP             R1, #1
57C3BE:  BEQ             loc_57C3C8
57C3C0:  LDR             R1, [SP,#0x178+var_150]; CEntity *
57C3C2:  BLX             j__ZN9CPhysical18AddCollisionRecordEP7CEntity; CPhysical::AddCollisionRecord(CEntity *)
57C3C6:  LDR             R0, [SP,#0x178+var_14C]
57C3C8:  LDR             R1, [SP,#0x178+var_150]
57C3CA:  CMP             R4, #1
57C3CC:  BLT             loc_57C3EE
57C3CE:  LDRB.W          R2, [R0,#0x3A]
57C3D2:  AND.W           R2, R2, #7
57C3D6:  CMP             R2, #1
57C3D8:  BEQ             loc_57C3E6
57C3DA:  CMP             R2, #4
57C3DC:  BNE             loc_57C3EE
57C3DE:  LDRB.W          R0, [R0,#0x44]
57C3E2:  LSLS            R0, R0, #0x1D
57C3E4:  BPL             loc_57C3EE
57C3E6:  LDR             R0, [R1,#0x1C]
57C3E8:  ORR.W           R0, R0, #0x1000
57C3EC:  STR             R0, [R1,#0x1C]
57C3EE:  MOV             R0, R4
57C3F0:  ADD             SP, SP, #0x150
57C3F2:  VPOP            {D8}
57C3F6:  ADD             SP, SP, #4
57C3F8:  POP.W           {R8-R11}
57C3FC:  POP             {R4-R7,PC}
