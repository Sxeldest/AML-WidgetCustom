; =========================================================
; Game Engine Function: _ZN13CEventHandler21ComputeDamageResponseEP6CEventP5CTaskS3_S3_
; Address            : 0x37EFCC - 0x37F7C6
; =========================================================

37EFCC:  PUSH            {R4-R7,LR}
37EFCE:  ADD             R7, SP, #0xC
37EFD0:  PUSH.W          {R8-R11}
37EFD4:  SUB             SP, SP, #4
37EFD6:  VPUSH           {D8-D9}
37EFDA:  SUB             SP, SP, #0x48; float
37EFDC:  MOV             R8, R0
37EFDE:  MOV             R6, R3
37EFE0:  LDR.W           R0, [R8]; this
37EFE4:  MOV             R10, R2
37EFE6:  MOV             R5, R1
37EFE8:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
37EFEC:  CMP             R0, #1
37EFEE:  BNE.W           loc_37F614
37EFF2:  LDRB            R0, [R5,#9]
37EFF4:  LDR.W           R9, [R5,#0x10]
37EFF8:  CMP             R0, #0
37EFFA:  BEQ.W           loc_37F1B6
37EFFE:  LDR.W           R1, [R8]; CPed *
37F002:  MOV             R0, R5; this
37F004:  LDR             R4, [R5,#0x18]
37F006:  BLX             j__ZNK12CEventDamage13ProcessDamageEP4CPed; CEventDamage::ProcessDamage(CPed *)
37F00A:  MOVS            R0, #0
37F00C:  STRB.W          R0, [R7,#var_31]
37F010:  STR             R0, [SP,#0x78+var_38]
37F012:  STR             R4, [SP,#0x78+var_60]
37F014:  SUBS            R4, #0x31 ; '1'
37F016:  CMP             R4, #1
37F018:  BHI             loc_37F02C
37F01A:  LDR.W           R0, =(g_InterestingEvents_ptr - 0x37F028)
37F01E:  MOVS            R1, #0xF
37F020:  LDR.W           R2, [R8]
37F024:  ADD             R0, PC; g_InterestingEvents_ptr
37F026:  LDR             R0, [R0]; g_InterestingEvents
37F028:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
37F02C:  LDR.W           R1, [R8]; unsigned int
37F030:  LDR.W           R0, [R1,#0x484]
37F034:  ANDS.W          R0, R0, #0x100
37F038:  ITT NE
37F03A:  LDRNE.W         R2, [R1,#0x590]
37F03E:  CMPNE           R2, #0
37F040:  BNE.W           loc_37F1E8
37F044:  LDRB.W          R2, [R5,#0x3C]
37F048:  CMP             R2, #0
37F04A:  ITT NE
37F04C:  LDRBNE          R2, [R5,#9]
37F04E:  CMPNE           R2, #0
37F050:  BNE             loc_37F06A
37F052:  VMOV.F32        S0, #1.0
37F056:  ADDW            R2, R1, #0x544
37F05A:  VLDR            S2, [R2]
37F05E:  VCMPE.F32       S2, S0
37F062:  VMRS            APSR_nzcv, FPSCR
37F066:  BGE.W           loc_37F27C
37F06A:  CBZ             R0, loc_37F084
37F06C:  LDR.W           R0, [R1,#0x590]
37F070:  CBZ             R0, loc_37F084
37F072:  LDR.W           R1, [R0,#0x5A0]
37F076:  CMP             R1, #9
37F078:  ITT NE
37F07A:  LDRNE.W         R0, [R0,#0x5A4]
37F07E:  CMPNE           R0, #2
37F080:  BEQ.W           loc_37F212
37F084:  LDR             R0, [R5,#0x28]
37F086:  SUBS            R0, #0xBF
37F088:  CMP             R0, #1
37F08A:  BHI.W           loc_37F532
37F08E:  CMP             R6, #0
37F090:  BEQ.W           loc_37F4B8
37F094:  LDR             R0, [R6]
37F096:  LDR             R1, [R0,#0x14]
37F098:  MOV             R0, R6
37F09A:  BLX             R1
37F09C:  CMP             R0, #0xCF
37F09E:  BNE.W           loc_37F392
37F0A2:  LDR             R0, [R5,#0x18]
37F0A4:  CMP             R0, #0x36 ; '6'
37F0A6:  BNE             loc_37F15A
37F0A8:  VLDR            S0, [R5,#0x34]
37F0AC:  VMOV.F32        S4, #20.0
37F0B0:  VLDR            S2, [R5,#0x38]
37F0B4:  VADD.F32        S0, S0, S2
37F0B8:  VCMPE.F32       S0, S4
37F0BC:  VMRS            APSR_nzcv, FPSCR
37F0C0:  BLE             loc_37F15A
37F0C2:  MOVS            R0, #0
37F0C4:  VMOV.F32        S18, #-0.5
37F0C8:  STRD.W          R0, R0, [SP,#0x78+var_5C]
37F0CC:  MOV.W           R0, #0x40000000
37F0D0:  STR             R0, [SP,#0x78+var_54]
37F0D2:  MOVS            R4, #0xA
37F0D4:  LDR.W           R0, =(g_fx_ptr - 0x37F0E0)
37F0D8:  VLDR            S16, =4.6566e-10
37F0DC:  ADD             R0, PC; g_fx_ptr
37F0DE:  LDR.W           R11, [R0]; g_fx
37F0E2:  LDR.W           R0, [R8]
37F0E6:  LDR             R1, [R0,#0x14]
37F0E8:  ADD.W           R2, R1, #0x30 ; '0'
37F0EC:  CMP             R1, #0
37F0EE:  IT EQ
37F0F0:  ADDEQ           R2, R0, #4
37F0F2:  VLDR            D16, [R2]
37F0F6:  LDR             R0, [R2,#8]
37F0F8:  STR             R0, [SP,#0x78+var_40]
37F0FA:  VSTR            D16, [SP,#0x78+var_48]
37F0FE:  BLX             rand
37F102:  VMOV            S0, R0
37F106:  VCVT.F32.S32    S0, S0
37F10A:  VLDR            S2, [SP,#0x78+var_48]
37F10E:  VMUL.F32        S0, S0, S16
37F112:  VADD.F32        S0, S0, S18
37F116:  VADD.F32        S0, S2, S0
37F11A:  VSTR            S0, [SP,#0x78+var_48]
37F11E:  BLX             rand
37F122:  VMOV            S0, R0
37F126:  ADD             R1, SP, #0x78+var_48; CVector *
37F128:  ADD             R2, SP, #0x78+var_5C; CVector *
37F12A:  MOVS            R3, #0xA; int
37F12C:  VCVT.F32.S32    S0, S0
37F130:  VLDR            S2, [SP,#0x78+var_48+4]
37F134:  VMUL.F32        S0, S0, S16
37F138:  VADD.F32        S0, S0, S18
37F13C:  VADD.F32        S0, S2, S0
37F140:  VSTR            S0, [SP,#0x78+var_48+4]
37F144:  LDR.W           R0, [R8]
37F148:  VLDR            S0, [R0,#0x130]
37F14C:  MOV             R0, R11; this
37F14E:  VSTR            S0, [SP,#0x78+var_78]
37F152:  BLX             j__ZN4Fx_c8AddBloodER7CVectorS1_if; Fx_c::AddBlood(CVector &,CVector &,int,float)
37F156:  SUBS            R4, #1
37F158:  BNE             loc_37F0E2
37F15A:  LDR             R0, [R6,#0x14]
37F15C:  CMP             R0, #0
37F15E:  BEQ.W           loc_37F3D6
37F162:  VMOV.F32        S0, #0.5
37F166:  VLDR            S2, [R0,#0x18]
37F16A:  VCMPE.F32       S2, S0
37F16E:  VMRS            APSR_nzcv, FPSCR
37F172:  BLE.W           loc_37F3D6
37F176:  VLDR            S0, [R0,#0x1C]
37F17A:  VCMPE.F32       S0, #0.0
37F17E:  VMRS            APSR_nzcv, FPSCR
37F182:  BLT.W           loc_37F3D6
37F186:  LDR             R1, [R0,#0x14]
37F188:  VLDR            S0, [R0,#0x20]
37F18C:  VLDR            S2, [R1,#0x10]
37F190:  VCMPE.F32       S0, S2
37F194:  VMRS            APSR_nzcv, FPSCR
37F198:  BGE.W           loc_37F3D6
37F19C:  LDRSH.W         R1, [R0,#0xE]
37F1A0:  MOV.W           R2, #0x40800000
37F1A4:  LDRSH.W         R0, [R0,#0x2C]
37F1A8:  MOV.W           R3, #0x3F800000
37F1AC:  STRD.W          R1, R0, [R5,#0x24]
37F1B0:  STRD.W          R2, R3, [R5,#0x2C]
37F1B4:  B               loc_37F4BA
37F1B6:  LDR.W           R0, [R8,#0xC]
37F1BA:  CMP             R0, #0
37F1BC:  ITT EQ
37F1BE:  LDREQ.W         R0, [R8,#8]
37F1C2:  CMPEQ           R0, #0
37F1C4:  BEQ             loc_37F21C
37F1C6:  LDR             R1, [R0]
37F1C8:  LDR             R1, [R1,#8]
37F1CA:  BLX             R1
37F1CC:  CMP             R0, #9
37F1CE:  BNE             loc_37F21C
37F1D0:  LDR.W           R1, [R8,#0xC]
37F1D4:  MOV             R0, R5; this
37F1D6:  CMP             R1, #0
37F1D8:  IT EQ
37F1DA:  LDREQ.W         R1, [R8,#8]; CEventDamage *
37F1DE:  BLX             j__ZN12CEventDamage16IsSameEventForAIEPS_; CEventDamage::IsSameEventForAI(CEventDamage*)
37F1E2:  EOR.W           R4, R0, #1
37F1E6:  B               loc_37F21E
37F1E8:  LDR.W           R3, [R2,#0x5A0]; CTask *
37F1EC:  CMP             R3, #9
37F1EE:  ITT NE
37F1F0:  LDRNE.W         R2, [R2,#0x5A4]; CTask *
37F1F4:  CMPNE           R2, #2
37F1F6:  BNE.W           loc_37F044
37F1FA:  LDRB.W          R0, [R5,#0x21]
37F1FE:  LSLS            R0, R0, #0x1E
37F200:  BMI             loc_37F212
37F202:  LDRB.W          R0, [R5,#0x3C]
37F206:  CMP             R0, #0
37F208:  ITT NE
37F20A:  LDRBNE          R0, [R5,#9]
37F20C:  CMPNE           R0, #0
37F20E:  BEQ.W           loc_37F370
37F212:  MOV             R0, R8; this
37F214:  MOV             R1, R5; CEvent *
37F216:  BLX             j__ZN13CEventHandler27ComputeKnockOffBikeResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeKnockOffBikeResponse(CEvent *,CTask *,CTask *)
37F21A:  B               loc_37F614
37F21C:  MOVS            R4, #1
37F21E:  LDR.W           R0, [R8]
37F222:  MOVW            R1, #0x3EE; int
37F226:  LDR.W           R0, [R0,#0x440]
37F22A:  ADDS            R0, #4; this
37F22C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37F230:  CMP             R0, #0
37F232:  BNE.W           loc_37F614
37F236:  CMP.W           R9, #0
37F23A:  MOV             R1, R9
37F23C:  IT NE
37F23E:  MOVNE           R1, #1
37F240:  LDR.W           R0, [R8]; this
37F244:  ANDS            R4, R1
37F246:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37F24A:  CMP             R4, #1
37F24C:  BNE.W           loc_37F614
37F250:  CMP             R0, #0
37F252:  ITTT EQ
37F254:  LDRBEQ.W        R0, [R9,#0x3A]
37F258:  ANDEQ.W         R0, R0, #7
37F25C:  CMPEQ           R0, #3
37F25E:  BNE.W           loc_37F614
37F262:  MOV             R0, R8; this
37F264:  MOV             R1, R5; CEventDamage *
37F266:  MOV             R2, R9; CEntity *
37F268:  ADD             SP, SP, #0x48 ; 'H'
37F26A:  VPOP            {D8-D9}
37F26E:  ADD             SP, SP, #4
37F270:  POP.W           {R8-R11}
37F274:  POP.W           {R4-R7,LR}
37F278:  B.W             _ZN13CEventHandler34ComputePersonalityResponseToDamageEP12CEventDamageP7CEntity; float
37F27C:  CBZ             R0, loc_37F288
37F27E:  LDRB.W          R2, [R5,#0x21]
37F282:  LSLS            R2, R2, #0x1E
37F284:  BMI.W           loc_37F06C
37F288:  LDR             R6, [SP,#0x78+var_60]
37F28A:  CMP.W           R9, #0
37F28E:  BEQ             loc_37F30A
37F290:  CMP             R6, #0x2E ; '.'
37F292:  BGT             loc_37F30A
37F294:  CMP             R0, #0
37F296:  BNE.W           loc_37F6A8
37F29A:  LDRB.W          R0, [R9,#0x3A]
37F29E:  AND.W           R0, R0, #7
37F2A2:  CMP             R0, #3
37F2A4:  IT NE
37F2A6:  MOVNE.W         R9, #0
37F2AA:  CMP.W           R9, #0
37F2AE:  BEQ.W           loc_37F408
37F2B2:  LDR.W           R0, [R9,#(elf_hash_bucket+0x344)]
37F2B6:  ADDS            R0, #4; this
37F2B8:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37F2BC:  CMP             R0, #0
37F2BE:  BEQ.W           loc_37F408
37F2C2:  LDR.W           R0, [R9,#(elf_hash_bucket+0x344)]
37F2C6:  ADDS            R0, #4; this
37F2C8:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37F2CC:  LDR             R1, [R0]
37F2CE:  LDR             R1, [R1,#0x14]
37F2D0:  BLX             R1
37F2D2:  MOVW            R1, #0x403; unsigned int
37F2D6:  CMP             R0, R1
37F2D8:  BNE.W           loc_37F408
37F2DC:  MOVS            R0, #dword_20; this
37F2DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F2E2:  MOV             R5, R0
37F2E4:  LDR.W           R0, [R9,#(elf_hash_bucket+0x344)]
37F2E8:  ADDS            R0, #4; this
37F2EA:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37F2EE:  LDR             R3, [R0,#0x10]
37F2F0:  MOV             R0, R5
37F2F2:  MOVS            R1, #0
37F2F4:  MOV             R2, R9
37F2F6:  BLX             j__ZN22CTaskSimpleStealthKillC2EbP4CPed12AssocGroupId; CTaskSimpleStealthKill::CTaskSimpleStealthKill(bool,CPed *,AssocGroupId)
37F2FA:  LDR.W           R0, [R8]; CPed *
37F2FE:  MOVS            R1, #0x38 ; '8'
37F300:  STR.W           R5, [R8,#0x20]
37F304:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
37F308:  B               loc_37F614
37F30A:  CMP.W           R9, #0
37F30E:  BEQ.W           loc_37F614
37F312:  CMP             R0, #0
37F314:  BNE.W           loc_37F614
37F318:  LDR             R0, [R5,#0x28]
37F31A:  SUBS            R0, #0xBF
37F31C:  CMP             R0, #2
37F31E:  BCC.W           loc_37F614
37F322:  CMP             R4, #5
37F324:  BHI.W           loc_37F614
37F328:  MOVS            R0, #1
37F32A:  LSLS            R0, R4
37F32C:  TST.W           R0, #0x23
37F330:  BEQ.W           loc_37F614
37F334:  MOVS            R0, #off_18; this
37F336:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F33A:  LDR.W           R1, [R8]
37F33E:  MOV.W           R3, #0x3E8
37F342:  LDR.W           R6, [R1,#0x444]
37F346:  LDRD.W          R2, R1, [R5,#0x24]
37F34A:  CMP             R6, #0
37F34C:  IT NE
37F34E:  MOVNE.W         R3, #0x1F4
37F352:  BLX             j__ZN24CTaskComplexFallAndGetUpC2E11AnimationId12AssocGroupIdi; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(AnimationId,AssocGroupId,int)
37F356:  STR.W           R0, [R8,#0x20]
37F35A:  LDRB.W          R0, [R9,#0x3A]
37F35E:  AND.W           R0, R0, #7
37F362:  CMP             R0, #3
37F364:  BEQ.W           loc_37F734
37F368:  CMP             R0, #2
37F36A:  BEQ.W           loc_37F742
37F36E:  B               loc_37F614
37F370:  CMP.W           R9, #0
37F374:  BEQ.W           loc_37F614
37F378:  LDRB.W          R0, [R9,#0x3A]
37F37C:  AND.W           R0, R0, #7
37F380:  CMP             R0, #3
37F382:  BNE.W           loc_37F614
37F386:  MOV             R0, R8; this
37F388:  MOV             R1, R5; CEventDamage *
37F38A:  MOV             R2, R9; CEntity *
37F38C:  BLX             j__ZN13CEventHandler34ComputePersonalityResponseToDamageEP12CEventDamageP7CEntity; CEventHandler::ComputePersonalityResponseToDamage(CEventDamage *,CEntity *)
37F390:  B               loc_37F614
37F392:  LDR             R0, [R6]
37F394:  LDR             R1, [R0,#0x14]
37F396:  MOV             R0, R6
37F398:  BLX             R1
37F39A:  CMP             R0, #0xCD
37F39C:  BNE.W           loc_37F4B8
37F3A0:  LDR             R0, [R6,#0xC]
37F3A2:  CMP             R0, #0
37F3A4:  BEQ.W           loc_37F4B2
37F3A8:  LDR             R1, [R0,#0x14]
37F3AA:  VLDR            S0, [R0,#0x20]
37F3AE:  VLDR            S2, [R1,#0x10]
37F3B2:  VDIV.F32        S0, S0, S2
37F3B6:  VMOV.F32        S2, #0.5
37F3BA:  VCMPE.F32       S0, S2
37F3BE:  VMRS            APSR_nzcv, FPSCR
37F3C2:  BGE             loc_37F4B2
37F3C4:  LDRH            R0, [R0,#0x2C]
37F3C6:  MOVS            R1, #0
37F3C8:  STR             R1, [R5,#0x24]
37F3CA:  CMP             R0, #0x73 ; 's'
37F3CC:  BEQ             loc_37F3F2
37F3CE:  MOV.W           R0, #0x40800000
37F3D2:  MOVS            R1, #0x24 ; '$'
37F3D4:  B               loc_37F3F8
37F3D6:  LDRB            R0, [R6,#8]
37F3D8:  CMP             R0, #0
37F3DA:  BEQ             loc_37F4B8
37F3DC:  LDR.W           R0, [R8]
37F3E0:  MOV.W           R1, #0x800
37F3E4:  LDR             R0, [R0,#0x18]
37F3E6:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
37F3EA:  MOVS            R1, #0
37F3EC:  CMP             R0, #0
37F3EE:  STR             R1, [R5,#0x24]
37F3F0:  BEQ             loc_37F3CE
37F3F2:  MOV.W           R0, #0x40800000
37F3F6:  MOVS            R1, #0x27 ; '''
37F3F8:  MOV.W           R2, #0x3F800000
37F3FC:  STR             R1, [R5,#0x28]
37F3FE:  STR             R0, [R5,#0x2C]
37F400:  STR             R2, [R5,#0x30]
37F402:  B               loc_37F4CC
37F404:  DCFS 4.6566e-10
37F408:  LDR             R0, [R5,#0x28]
37F40A:  CMP             R0, #0xBF
37F40C:  BNE             loc_37F41A
37F40E:  LDR.W           R1, [R8]; CPed *
37F412:  MOV             R0, R5; this
37F414:  MOVS            R2, #0; bool
37F416:  BLX             j__ZN12CEventDamage17ComputeDamageAnimEP4CPedb; CEventDamage::ComputeDamageAnim(CPed *,bool)
37F41A:  SUB.W           R0, R6, #0x11
37F41E:  CMP             R0, #0x19
37F420:  BHI             loc_37F450
37F422:  MOVS            R1, #1
37F424:  LSL.W           R0, R1, R0
37F428:  MOVS            R1, #0x3000001
37F42E:  TST             R0, R1
37F430:  BEQ             loc_37F450
37F432:  LDR.W           R0, [R9,#(elf_hash_bucket+0x344)]; this
37F436:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
37F43A:  CMP             R0, #0
37F43C:  BEQ.W           loc_37F622
37F440:  LDR.W           R0, [R9,#(elf_hash_bucket+0x344)]; this
37F444:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
37F448:  LDRB            R0, [R0,#0x10]
37F44A:  CMP             R0, #5
37F44C:  BNE.W           loc_37F622
37F450:  LDRB.W          R0, [R5,#0x21]
37F454:  LSLS            R0, R0, #0x1E
37F456:  BMI.W           loc_37F66E
37F45A:  LDR             R1, [R5,#0x28]
37F45C:  SUB.W           R0, R1, #0xBF
37F460:  CMP             R0, #2
37F462:  BCC.W           loc_37F6A8
37F466:  LDR             R0, [R5,#0x24]
37F468:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
37F46C:  LDRB            R0, [R0,#0xB]
37F46E:  LSLS            R0, R0, #0x1D
37F470:  BMI.W           loc_37F76E
37F474:  MOVS            R0, #word_28; this
37F476:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F47A:  VLDR            S0, [R5,#0x34]
37F47E:  MOV             R1, R9
37F480:  VLDR            S2, [R5,#0x38]
37F484:  LDRB.W          R3, [R5,#0x20]
37F488:  VADD.F32        S0, S0, S2
37F48C:  LDR             R2, [R5,#0x1C]
37F48E:  VCVT.S32.F32    S0, S0
37F492:  VSTR            S0, [SP,#0x78+var_78]
37F496:  BLX             j__ZN16CTaskSimpleBeHitC2EP4CPed14ePedPieceTypesii; CTaskSimpleBeHit::CTaskSimpleBeHit(CPed *,ePedPieceTypes,int,int)
37F49A:  STR.W           R0, [R8,#0x20]
37F49E:  LDRB.W          R1, [R5,#0x21]
37F4A2:  LDRD.W          R2, R3, [R5,#0x24]
37F4A6:  STRD.W          R3, R2, [R0,#0x10]
37F4AA:  UBFX.W          R1, R1, #2, #1
37F4AE:  STRB            R1, [R0,#0xD]
37F4B0:  B               loc_37F6A8
37F4B2:  LDRB            R0, [R6,#8]
37F4B4:  CMP             R0, #0
37F4B6:  BEQ             loc_37F3DC
37F4B8:  LDR             R0, [R5,#0x28]
37F4BA:  SUBS            R0, #0xBF
37F4BC:  CMP             R0, #1
37F4BE:  BHI             loc_37F4CC
37F4C0:  LDR.W           R1, [R8]; CPed *
37F4C4:  MOV             R0, R5; this
37F4C6:  MOVS            R2, #0; bool
37F4C8:  BLX             j__ZN12CEventDamage16ComputeDeathAnimEP4CPedb; CEventDamage::ComputeDeathAnim(CPed *,bool)
37F4CC:  LDR             R1, [R5,#0x18]
37F4CE:  MOVS            R4, #0
37F4D0:  LDR.W           R0, [R8]; this
37F4D4:  MOVS            R6, #0
37F4D6:  CMP             R1, #0x26 ; '&'
37F4D8:  SUB.W           R1, R1, #0x16
37F4DC:  IT NE
37F4DE:  MOVNE           R4, #1
37F4E0:  CMP             R1, #0xB
37F4E2:  MOV.W           R11, #0
37F4E6:  IT HI
37F4E8:  MOVHI           R6, #1
37F4EA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37F4EE:  CMP.W           R9, #0
37F4F2:  BEQ             loc_37F544
37F4F4:  CMP             R0, #0
37F4F6:  IT EQ
37F4F8:  ANDSEQ.W        R0, R4, R6
37F4FC:  BNE             loc_37F544
37F4FE:  LDRB.W          R0, [R9,#0x3A]
37F502:  AND.W           R0, R0, #7
37F506:  CMP             R0, #3
37F508:  BNE             loc_37F540
37F50A:  MOV             R0, R9; this
37F50C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37F510:  CBNZ            R0, loc_37F51A
37F512:  LDRB.W          R0, [R9,#0x448]
37F516:  CMP             R0, #2
37F518:  BNE             loc_37F532
37F51A:  LDR.W           R0, [R8]; this
37F51E:  ADD             R1, SP, #0x78+var_38; CPed *
37F520:  SUB.W           R2, R7, #-var_31; int *
37F524:  BLX             j__ZN23CTaskComplexFallToDeath8CalcFallEP4CPedRiRb; CTaskComplexFallToDeath::CalcFall(CPed *,int &,bool &)
37F528:  MOV             R11, R0
37F52A:  CMP.W           R10, #0
37F52E:  BNE             loc_37F54A
37F530:  B               loc_37F53C
37F532:  MOV.W           R11, #0
37F536:  CMP.W           R10, #0
37F53A:  BNE             loc_37F54A
37F53C:  MOVS            R4, #0
37F53E:  B               loc_37F568
37F540:  MOV.W           R11, #0
37F544:  CMP.W           R10, #0
37F548:  BEQ             loc_37F53C
37F54A:  LDR.W           R0, [R10]
37F54E:  LDR             R1, [R0,#0x14]
37F550:  MOV             R0, R10
37F552:  BLX             R1
37F554:  MOVW            R1, #0x403; unsigned int
37F558:  MOVS            R4, #0
37F55A:  CMP             R0, R1
37F55C:  BNE             loc_37F568
37F55E:  LDRB.W          R0, [R10,#8]
37F562:  CMP             R0, #0
37F564:  IT EQ
37F566:  MOVEQ           R4, #1
37F568:  MOVS            R0, #word_28; this
37F56A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F56E:  VLDR            S0, [R5,#0x2C]
37F572:  VLDR            S2, [R5,#0x30]
37F576:  LDRD.W          R2, R3, [R5,#0x24]; int
37F57A:  LDRB.W          R6, [R7,#var_31]
37F57E:  LDR             R1, [SP,#0x78+var_38]
37F580:  STRD.W          R4, R11, [SP,#0x78+var_70]; int
37F584:  STRD.W          R1, R6, [SP,#0x78+var_68]; int
37F588:  VSTR            S0, [SP,#0x78+var_78]
37F58C:  VSTR            S2, [SP,#0x78+var_74]
37F590:  LDR             R4, [SP,#0x78+var_60]
37F592:  MOV             R1, R4; int
37F594:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
37F598:  LDR             R1, =(g_InterestingEvents_ptr - 0x37F5A2)
37F59A:  LDR.W           R2, [R8]
37F59E:  ADD             R1, PC; g_InterestingEvents_ptr
37F5A0:  STR.W           R0, [R8,#0x24]
37F5A4:  LDR             R1, [R1]; g_InterestingEvents
37F5A6:  MOV             R0, R1
37F5A8:  MOVS            R1, #0x1C
37F5AA:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
37F5AE:  LDR.W           R0, [R8]
37F5B2:  LDR.W           R0, [R0,#0x440]
37F5B6:  LDR             R0, [R0,#4]
37F5B8:  CBZ             R0, loc_37F5F0
37F5BA:  LDR             R1, [R0]
37F5BC:  LDR             R1, [R1,#0x14]
37F5BE:  BLX             R1
37F5C0:  MOVW            R1, #0x107
37F5C4:  CMP             R0, R1
37F5C6:  BNE             loc_37F5E0
37F5C8:  SUB.W           R0, R4, #0x11
37F5CC:  CMP             R0, #0x19
37F5CE:  BHI             loc_37F5E0
37F5D0:  MOVS            R1, #1
37F5D2:  LSL.W           R0, R1, R0
37F5D6:  MOVS            R1, #0x3000001
37F5DC:  TST             R0, R1
37F5DE:  BNE             loc_37F5F0
37F5E0:  LDR.W           R0, [R8]
37F5E4:  MOVS            R1, #0; CTask *
37F5E6:  MOVS            R2, #0; bool
37F5E8:  LDR.W           R0, [R0,#0x440]; this
37F5EC:  BLX             j__ZN16CPedIntelligence19AddTaskPhysResponseEP5CTaskb; CPedIntelligence::AddTaskPhysResponse(CTask *,bool)
37F5F0:  MOVS            R0, #0
37F5F2:  ADD             R1, SP, #0x78+var_5C; bool *
37F5F4:  STRB.W          R0, [SP,#0x78+var_5C]
37F5F8:  MOV             R0, R5; this
37F5FA:  BLX             j__ZNK12CEventDamage15ComputeHeadShotERb; CEventDamage::ComputeHeadShot(bool &)
37F5FE:  CMP.W           R9, #0
37F602:  BEQ             loc_37F614
37F604:  LDRB.W          R3, [SP,#0x78+var_5C]
37F608:  MOV             R1, R9; this
37F60A:  LDR.W           R0, [R8]; int
37F60E:  MOV             R2, R4
37F610:  BLX             j__ZN13CEventHandler12RegisterKillEPK4CPedPK7CEntity11eWeaponTypeb; CEventHandler::RegisterKill(CPed const*,CEntity const*,eWeaponType,bool)
37F614:  ADD             SP, SP, #0x48 ; 'H'
37F616:  VPOP            {D8-D9}
37F61A:  ADD             SP, SP, #4
37F61C:  POP.W           {R8-R11}
37F620:  POP             {R4-R7,PC}
37F622:  LDR.W           R0, [R8]
37F626:  LDR.W           R0, [R0,#0x440]
37F62A:  LDR             R0, [R0,#4]
37F62C:  CBZ             R0, loc_37F656
37F62E:  LDR             R1, [R0]
37F630:  LDR             R1, [R1,#0x14]
37F632:  BLX             R1
37F634:  MOVW            R1, #0x107
37F638:  CMP             R0, R1
37F63A:  BNE             loc_37F656
37F63C:  LDR.W           R1, [R8]; CPed *
37F640:  MOVS            R3, #0
37F642:  CMP             R6, #0x11
37F644:  MOV             R2, R9; CPed *
37F646:  LDR.W           R0, [R1,#0x440]
37F64A:  LDR             R0, [R0,#4]; this
37F64C:  IT EQ
37F64E:  MOVEQ           R3, #1; unsigned __int8
37F650:  BLX             j__ZN18CTaskSimpleChoking11UpdateChokeEP4CPedS1_h; CTaskSimpleChoking::UpdateChoke(CPed *,CPed *,uchar)
37F654:  B               loc_37F6A8
37F656:  MOVS            R0, #dword_1C; this
37F658:  MOVS            R4, #0
37F65A:  CMP             R6, #0x11
37F65C:  IT EQ
37F65E:  MOVEQ           R4, #1
37F660:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F664:  MOV             R1, R9; CPed *
37F666:  MOV             R2, R4; unsigned __int8
37F668:  BLX             j__ZN18CTaskSimpleChokingC2EP4CPedh; CTaskSimpleChoking::CTaskSimpleChoking(CPed *,uchar)
37F66C:  B               loc_37F6A4
37F66E:  MOVS            R0, #off_18; this
37F670:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37F674:  LDR.W           R1, [R8]
37F678:  VLDR            S2, =40.0
37F67C:  LDRB.W          R1, [R1,#0x71D]
37F680:  VMOV            S0, R1
37F684:  VCVT.F32.U32    S0, S0
37F688:  LDRD.W          R2, R1, [R5,#0x24]
37F68C:  VDIV.F32        S0, S0, S2
37F690:  VLDR            S2, =1000.0
37F694:  VDIV.F32        S0, S2, S0
37F698:  VCVT.S32.F32    S0, S0
37F69C:  VMOV            R3, S0
37F6A0:  BLX             j__ZN24CTaskComplexFallAndGetUpC2E11AnimationId12AssocGroupIdi; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(AnimationId,AssocGroupId,int)
37F6A4:  STR.W           R0, [R8,#0x20]
37F6A8:  LDR.W           R0, [R8,#0xC]
37F6AC:  CMP             R0, #0
37F6AE:  ITT EQ
37F6B0:  LDREQ.W         R0, [R8,#8]
37F6B4:  CMPEQ           R0, #0
37F6B6:  BEQ             loc_37F6D8
37F6B8:  LDR             R1, [R0]
37F6BA:  LDR             R1, [R1,#8]
37F6BC:  BLX             R1
37F6BE:  CMP             R0, #9
37F6C0:  BNE             loc_37F6D8
37F6C2:  LDR.W           R1, [R8,#0xC]
37F6C6:  MOV             R0, R5; this
37F6C8:  CMP             R1, #0
37F6CA:  IT EQ
37F6CC:  LDREQ.W         R1, [R8,#8]; CEventDamage *
37F6D0:  BLX             j__ZN12CEventDamage16IsSameEventForAIEPS_; CEventDamage::IsSameEventForAI(CEventDamage*)
37F6D4:  MOV             R6, R0
37F6D6:  B               loc_37F6DA
37F6D8:  MOVS            R6, #0
37F6DA:  LDR.W           R0, [R8]
37F6DE:  MOVW            R1, #0x3EE; int
37F6E2:  LDR.W           R0, [R0,#0x440]
37F6E6:  ADDS            R0, #4; this
37F6E8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37F6EC:  CMP             R0, #0
37F6EE:  BNE             loc_37F614
37F6F0:  LDR.W           R0, [R8]; this
37F6F4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37F6F8:  ORRS            R0, R6
37F6FA:  BNE             loc_37F614
37F6FC:  LDR             R0, [R5]
37F6FE:  LDR             R1, [R0,#0x2C]
37F700:  MOV             R0, R5
37F702:  BLX             R1
37F704:  CMP             R0, #0
37F706:  BEQ.W           loc_37F614
37F70A:  LDR             R0, [R5]
37F70C:  LDR             R1, [R0,#0x2C]
37F70E:  MOV             R0, R5
37F710:  BLX             R1
37F712:  LDRB.W          R0, [R0,#0x3A]
37F716:  AND.W           R0, R0, #7
37F71A:  CMP             R0, #3
37F71C:  BNE.W           loc_37F614
37F720:  LDR             R0, [R5]
37F722:  LDR             R1, [R0,#0x2C]
37F724:  MOV             R0, R5
37F726:  BLX             R1
37F728:  MOV             R2, R0; CEntity *
37F72A:  MOV             R0, R8; this
37F72C:  MOV             R1, R5; CEventDamage *
37F72E:  BLX             j__ZN13CEventHandler34ComputePersonalityResponseToDamageEP12CEventDamageP7CEntity; CEventHandler::ComputePersonalityResponseToDamage(CEventDamage *,CEntity *)
37F732:  B               loc_37F614
37F734:  LDRB.W          R0, [R9,#0x485]
37F738:  LSLS            R0, R0, #0x1F
37F73A:  BEQ.W           loc_37F614
37F73E:  LDR.W           R9, [R9,#0x590]
37F742:  CMP.W           R9, #0
37F746:  BEQ.W           loc_37F614
37F74A:  ADD             R5, SP, #0x78+var_5C
37F74C:  MOV             R1, R9; CVehicle *
37F74E:  MOV             R0, R5; this
37F750:  BLX             j__ZN25CEventGotKnockedOverByCarC2EP8CVehicle; CEventGotKnockedOverByCar::CEventGotKnockedOverByCar(CVehicle *)
37F754:  LDR.W           R0, [R8]
37F758:  MOV             R1, R5; CEvent *
37F75A:  MOVS            R2, #0; bool
37F75C:  LDR.W           R0, [R0,#0x440]
37F760:  ADDS            R0, #0x68 ; 'h'; this
37F762:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
37F766:  MOV             R0, R5; this
37F768:  BLX             j__ZN25CEventGotKnockedOverByCarD2Ev; CEventGotKnockedOverByCar::~CEventGotKnockedOverByCar()
37F76C:  B               loc_37F614
37F76E:  LDRB.W          R0, [R5,#0x21]
37F772:  LSLS            R0, R0, #0x1D
37F774:  BMI             loc_37F6A8
37F776:  LDR.W           R0, [R8]
37F77A:  LDR             R2, [R5,#0x28]; unsigned int
37F77C:  LDR             R0, [R0,#0x18]; int
37F77E:  BIC.W           R1, R2, #3
37F782:  CMP             R1, #0x1C
37F784:  BNE             loc_37F7A6
37F786:  MOV             R1, R2
37F788:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
37F78C:  CBNZ            R0, loc_37F79C
37F78E:  LDR.W           R0, [R8]
37F792:  LDRD.W          R1, R2, [R5,#0x24]; unsigned int
37F796:  LDR             R0, [R0,#0x18]; int
37F798:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
37F79C:  MOVS            R1, #0
37F79E:  STR             R1, [R0,#0x18]
37F7A0:  LDR             R1, [R5,#0x2C]
37F7A2:  STR             R1, [R0,#0x1C]
37F7A4:  B               loc_37F7AE
37F7A6:  LDR             R1, [R5,#0x24]; int
37F7A8:  LDR             R3, [R5,#0x2C]
37F7AA:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
37F7AE:  LDR             R1, [R5,#0x30]
37F7B0:  STR             R1, [R0,#0x24]
37F7B2:  MOVS            R1, #0; float
37F7B4:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
37F7B8:  LDRB.W          R0, [R5,#0x21]
37F7BC:  ORR.W           R0, R0, #4
37F7C0:  STRB.W          R0, [R5,#0x21]
37F7C4:  B               loc_37F6A8
