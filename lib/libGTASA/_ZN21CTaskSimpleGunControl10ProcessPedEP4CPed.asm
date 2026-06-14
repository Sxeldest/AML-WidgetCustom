; =========================================================
; Game Engine Function: _ZN21CTaskSimpleGunControl10ProcessPedEP4CPed
; Address            : 0x4DE0F8 - 0x4DE88E
; =========================================================

4DE0F8:  PUSH            {R4-R7,LR}
4DE0FA:  ADD             R7, SP, #0xC
4DE0FC:  PUSH.W          {R8-R11}
4DE100:  SUB             SP, SP, #4
4DE102:  VPUSH           {D8-D11}
4DE106:  SUB             SP, SP, #0x18
4DE108:  MOV             R11, R0
4DE10A:  MOV             R4, R1
4DE10C:  LDRB.W          R0, [R11,#8]
4DE110:  CBZ             R0, loc_4DE134
4DE112:  LDR.W           R0, [R4,#0x440]; this
4DE116:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4DE11A:  CMP             R0, #0
4DE11C:  BEQ.W           loc_4DE804
4DE120:  LDRB.W          R2, [R0,#0x38]
4DE124:  MOVS            R1, #0
4DE126:  STRB            R1, [R0,#0xB]
4DE128:  CMP             R2, #4
4DE12A:  IT CS
4DE12C:  MOVCS           R2, #4
4DE12E:  STRB.W          R2, [R0,#0x38]
4DE132:  B               loc_4DE804
4DE134:  MOV             R0, R4
4DE136:  MOVS            R1, #1
4DE138:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4DE13C:  LDRSB.W         R0, [R11,#0x2E]
4DE140:  CMP             R0, #5
4DE142:  BGT.W           loc_4DE292
4DE146:  LDR.W           R0, [R4,#0x440]
4DE14A:  MOVS            R1, #0; int
4DE14C:  MOV.W           R9, #0
4DE150:  ADDS            R0, #4; this
4DE152:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DE156:  LDR.W           R10, [R4,#0x440]
4DE15A:  CMP             R0, #0
4DE15C:  BEQ             loc_4DE1EC
4DE15E:  ADD.W           R0, R10, #4; this
4DE162:  MOVS            R1, #0; int
4DE164:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DE168:  LDR             R1, [R0]
4DE16A:  LDR             R1, [R1,#0x14]
4DE16C:  BLX             R1
4DE16E:  MOVW            R1, #0x3F9
4DE172:  CMP             R0, R1
4DE174:  BNE.W           loc_4DE382
4DE178:  LDRB.W          R0, [R11,#0x38]
4DE17C:  CMP             R0, #0
4DE17E:  BEQ.W           loc_4DE292
4DE182:  MOVS            R5, #0
4DE184:  MOVS            R1, #0; int
4DE186:  STRB.W          R5, [R11,#0x38]
4DE18A:  STR.W           R5, [R11,#0x34]
4DE18E:  LDR.W           R0, [R4,#0x440]
4DE192:  ADDS            R0, #4; this
4DE194:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DE198:  MOV             R6, R0
4DE19A:  LDRH.W          R0, [R11,#0x2C]
4DE19E:  LDRD.W          R8, R1, [R11,#0xC]
4DE1A2:  ADD.W           R12, R6, #0x20 ; ' '
4DE1A6:  LDRD.W          R2, R3, [R11,#0x14]
4DE1AA:  STM.W           R12, {R1-R3}
4DE1AE:  MOV             R1, R4; CPed *
4DE1B0:  STRH            R0, [R6,#0x34]
4DE1B2:  MOVS            R0, #0xFF
4DE1B4:  STRB.W          R0, [R6,#0x38]
4DE1B8:  MOV             R0, R6; this
4DE1BA:  STRH            R5, [R6,#0x36]
4DE1BC:  STRB            R5, [R6,#0xC]
4DE1BE:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DE1C2:  LDR.W           R0, [R6,#0x1C]!; this
4DE1C6:  CMP             R0, R8
4DE1C8:  STRH.W          R5, [R6,#0x1D]
4DE1CC:  BEQ             loc_4DE292
4DE1CE:  CMP             R0, #0
4DE1D0:  ITT NE
4DE1D2:  MOVNE           R1, R6; CEntity **
4DE1D4:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DE1D8:  CMP.W           R8, #0
4DE1DC:  STR.W           R8, [R6]
4DE1E0:  ITTT NE
4DE1E2:  MOVNE           R0, R8; this
4DE1E4:  MOVNE           R1, R6; CEntity **
4DE1E6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DE1EA:  B               loc_4DE292
4DE1EC:  MOVS            R0, #off_3C; this
4DE1EE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4DE1F2:  MOV             R6, R0
4DE1F4:  LDRD.W          R8, R0, [R11,#0xC]
4DE1F8:  STR             R0, [SP,#0x58+var_4C]
4DE1FA:  LDR.W           R0, [R11,#0x14]
4DE1FE:  STR             R0, [SP,#0x58+var_50]
4DE200:  LDR.W           R0, [R11,#0x18]
4DE204:  STR             R0, [SP,#0x58+var_54]
4DE206:  LDRH.W          R0, [R11,#0x2C]
4DE20A:  STR             R0, [SP,#0x58+var_48]
4DE20C:  LDRB.W          R0, [R11,#0x3A]
4DE210:  STR             R0, [SP,#0x58+var_44]
4DE212:  MOV             R0, R6; this
4DE214:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DE218:  MOV.W           R0, #0x100
4DE21C:  MOV             R1, R6
4DE21E:  STRH            R0, [R6,#8]
4DE220:  MOVW            R0, #0xFF01
4DE224:  STRB.W          R9, [R6,#0xE]
4DE228:  CMP.W           R8, #0
4DE22C:  STRD.W          R9, R9, [R6,#0x14]
4DE230:  STR.W           R9, [R6,#0xA]
4DE234:  STRH.W          R0, [R6,#0xF]
4DE238:  LDR.W           R0, =(_ZTV17CTaskSimpleUseGun_ptr - 0x4DE240)
4DE23C:  ADD             R0, PC; _ZTV17CTaskSimpleUseGun_ptr
4DE23E:  LDR             R0, [R0]; `vtable for'CTaskSimpleUseGun ...
4DE240:  ADD.W           R0, R0, #8
4DE244:  STR             R0, [R6]
4DE246:  STR.W           R8, [R1,#0x1C]!; CEntity **
4DE24A:  ITT NE
4DE24C:  MOVNE           R0, R8; this
4DE24E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DE252:  LDR             R0, [SP,#0x58+var_4C]
4DE254:  MOVS            R5, #0
4DE256:  STR             R0, [R6,#0x20]
4DE258:  MOV             R1, R6; CTask *
4DE25A:  LDR             R0, [SP,#0x58+var_50]
4DE25C:  MOVS            R2, #0; int
4DE25E:  STR             R0, [R6,#0x24]
4DE260:  LDR             R0, [SP,#0x58+var_54]
4DE262:  STRD.W          R0, R5, [R6,#0x28]
4DE266:  STR             R5, [R6,#0x30]
4DE268:  LDR             R0, [SP,#0x58+var_48]
4DE26A:  STRH            R0, [R6,#0x34]
4DE26C:  MOV.W           R0, #0xFF0000
4DE270:  STR.W           R0, [R6,#0x36]
4DE274:  STRB.W          R5, [R6,#0x3A]
4DE278:  LDR             R0, [SP,#0x58+var_44]
4DE27A:  STRB.W          R0, [R6,#0x3B]
4DE27E:  ADD.W           R0, R10, #4; this
4DE282:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
4DE286:  STRB.W          R5, [R11,#0x38]
4DE28A:  STR.W           R5, [R11,#0x34]
4DE28E:  STRB.W          R5, [R11,#0x3A]
4DE292:  LDR.W           R0, [R4,#0x440]; this
4DE296:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4DE29A:  MOV             R6, R0
4DE29C:  LDR.W           R0, [R4,#0x59C]
4DE2A0:  CMP             R0, #7
4DE2A2:  BLT             loc_4DE2E8
4DE2A4:  CMP             R0, #0x10
4DE2A6:  BGE             loc_4DE2F4
4DE2A8:  LDR             R0, [R4,#0x18]
4DE2AA:  MOVS            R1, #0xBE
4DE2AC:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DE2B0:  CBZ             R0, loc_4DE2D2
4DE2B2:  VMOV.F32        S0, #1.0
4DE2B6:  VLDR            S2, [R0,#0x18]
4DE2BA:  VCMPE.F32       S2, S0
4DE2BE:  VMRS            APSR_nzcv, FPSCR
4DE2C2:  BGE             loc_4DE2F4
4DE2C4:  VLDR            S0, [R0,#0x1C]
4DE2C8:  VCMPE.F32       S0, #0.0
4DE2CC:  VMRS            APSR_nzcv, FPSCR
4DE2D0:  BGT             loc_4DE2F4
4DE2D2:  LDR             R0, [R4,#0x18]; int
4DE2D4:  MOVS            R1, #0; int
4DE2D6:  MOVS            R2, #0xBE; unsigned int
4DE2D8:  MOV.W           R3, #0x40800000
4DE2DC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DE2E0:  CBNZ            R6, loc_4DE2F8
4DE2E2:  MOV.W           R9, #0
4DE2E6:  B               loc_4DE310
4DE2E8:  CMP             R0, #6
4DE2EA:  ITT EQ
4DE2EC:  LDREQ.W         R0, [R4,#0x450]
4DE2F0:  CMPEQ           R0, #1
4DE2F2:  BEQ             loc_4DE39E
4DE2F4:  CMP             R6, #0
4DE2F6:  BEQ             loc_4DE2E2
4DE2F8:  ADD.W           R0, R6, #0x30 ; '0'
4DE2FC:  LDRB            R1, [R6,#0xC]
4DE2FE:  MOV.W           R9, #1
4DE302:  STRB.W          R1, [R11,#0x39]
4DE306:  LDR.W           R8, [R0]
4DE30A:  CMP.W           R8, #0
4DE30E:  BNE             loc_4DE330
4DE310:  LDRSB.W         R0, [R4,#0x71C]
4DE314:  RSB.W           R0, R0, R0,LSL#3
4DE318:  ADD.W           R0, R4, R0,LSL#2
4DE31C:  LDR.W           R5, [R0,#0x5A4]
4DE320:  MOV             R0, R4; this
4DE322:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4DE326:  MOV             R1, R0
4DE328:  MOV             R0, R5
4DE32A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4DE32E:  MOV             R8, R0
4DE330:  LDRSB.W         R0, [R4,#0x71C]
4DE334:  RSB.W           R0, R0, R0,LSL#3
4DE338:  ADD.W           R0, R4, R0,LSL#2
4DE33C:  LDR.W           R0, [R0,#0x5A8]
4DE340:  CMP             R0, #2
4DE342:  BNE             loc_4DE34C
4DE344:  LDRB.W          R0, [R8,#0x19]
4DE348:  LSLS            R0, R0, #0x1B
4DE34A:  BMI             loc_4DE37E
4DE34C:  LDRSB.W         R0, [R11,#0x2E]
4DE350:  CMP             R0, #6; switch 7 cases
4DE352:  BHI             def_4DE354; jumptable 004DE354 default case
4DE354:  TBB.W           [PC,R0]; switch jump
4DE358:  DCB 0x36; jump table for switch statement
4DE359:  DCB 4
4DE35A:  DCB 4
4DE35B:  DCB 0x46
4DE35C:  DCB 0x38
4DE35D:  DCB 0xAB
4DE35E:  DCB 0x43
4DE35F:  ALIGN 2
4DE360:  LDR.W           R1, [R11,#0x34]; jumptable 004DE354 cases 1,2
4DE364:  MOVS            R5, #1
4DE366:  UXTB            R0, R0
4DE368:  CMP             R1, #0
4DE36A:  IT EQ
4DE36C:  MOVEQ           R5, #3
4DE36E:  CMP             R0, #1
4DE370:  IT NE
4DE372:  MOVNE           R0, #0
4DE374:  CMP             R1, #0
4DE376:  IT NE
4DE378:  MOVNE           R1, #1
4DE37A:  ANDS            R0, R1
4DE37C:  B               loc_4DE4B2
4DE37E:  MOVS            R5, #4
4DE380:  B               loc_4DE4B0
4DE382:  LDR.W           R0, [R4,#0x440]
4DE386:  MOVS            R1, #0; int
4DE388:  MOVS            R6, #0
4DE38A:  ADDS            R0, #4; this
4DE38C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DE390:  LDR             R1, [R0]
4DE392:  MOVS            R2, #1
4DE394:  MOVS            R3, #0
4DE396:  LDR             R5, [R1,#0x1C]
4DE398:  MOV             R1, R4
4DE39A:  BLX             R5
4DE39C:  B               loc_4DE87E
4DE39E:  CMP             R6, #0
4DE3A0:  BEQ             loc_4DE2F4
4DE3A2:  LDR.W           R0, [R4,#0x53C]
4DE3A6:  CMP             R0, #1
4DE3A8:  BNE             loc_4DE2F4
4DE3AA:  MOV             R0, R6
4DE3AC:  LDR.W           R1, [R0,#0x30]!
4DE3B0:  CMP             R1, #0
4DE3B2:  BEQ             loc_4DE2FC
4DE3B4:  LDRB            R1, [R1,#0x18]
4DE3B6:  LSLS            R1, R1, #0x1E
4DE3B8:  BMI.W           loc_4DE2A8
4DE3BC:  B               loc_4DE2FC
4DE3BE:  MOVS            R0, #0; jumptable 004DE354 default case
4DE3C0:  MOVS            R5, #0
4DE3C2:  B               loc_4DE4B2
4DE3C4:  MOVS            R5, #1; jumptable 004DE354 case 0
4DE3C6:  B               loc_4DE4B0
4DE3C8:  CMP.W           R9, #1; jumptable 004DE354 case 4
4DE3CC:  ITT EQ
4DE3CE:  LDRBEQ          R0, [R6,#0x10]
4DE3D0:  CMPEQ           R0, #4
4DE3D2:  BNE             loc_4DE4AE; jumptable 004DE354 case 5
4DE3D4:  MOVS            R5, #6
4DE3D6:  MOVS            R0, #0
4DE3D8:  STRB.W          R5, [R11,#0x2E]
4DE3DC:  B               loc_4DE4B2
4DE3DE:  MOVS            R5, #6; jumptable 004DE354 case 6
4DE3E0:  MOVS            R0, #1
4DE3E2:  B               loc_4DE4B2
4DE3E4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DE3EC); jumptable 004DE354 case 3
4DE3E8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DE3EA:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
4DE3EC:  LDR.W           R0, [R11,#0x34]
4DE3F0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4DE3F2:  CMP             R1, R0
4DE3F4:  BCS             loc_4DE41A
4DE3F6:  ADDS            R0, #1
4DE3F8:  MOV.W           R1, #0
4DE3FC:  IT EQ
4DE3FE:  MOVEQ           R1, #1
4DE400:  MOVS            R0, #0
4DE402:  AND.W           R1, R1, R9
4DE406:  CMP             R1, #1
4DE408:  BNE             loc_4DE49C
4DE40A:  LDRB            R1, [R6,#0x10]
4DE40C:  MOVS            R0, #0
4DE40E:  MOVS            R5, #1
4DE410:  CMP             R1, #3
4DE412:  IT NE
4DE414:  STRNE.W         R0, [R11,#0x34]
4DE418:  B               loc_4DE4B2
4DE41A:  MOV.W           R0, #0xFFFFFFFF
4DE41E:  STR.W           R0, [R11,#0x34]
4DE422:  LDRSH.W         R0, [R8,#0x20]
4DE426:  STRH.W          R0, [R11,#0x2C]
4DE42A:  CMP             R0, #2
4DE42C:  BLT             loc_4DE4A6
4DE42E:  LDRB.W          R1, [R4,#0x71D]
4DE432:  CMP             R1, #0x63 ; 'c'
4DE434:  BHI             loc_4DE4A6
4DE436:  MOVW            R2, #0x8889
4DE43A:  LSLS            R1, R1, #2
4DE43C:  MOVT            R2, #0x8888
4DE440:  UMULL.W         R1, R2, R1, R2
4DE444:  LSRS            R5, R2, #4
4DE446:  CMP             R5, R0
4DE448:  IT GT
4DE44A:  MOVGT           R5, R0
4DE44C:  STRH.W          R5, [R11,#0x2C]
4DE450:  BLX             rand
4DE454:  UXTH            R0, R0
4DE456:  VLDR            S16, =0.000015259
4DE45A:  VMOV            S0, R0
4DE45E:  VCVT.F32.S32    S0, S0
4DE462:  VMUL.F32        S0, S0, S16
4DE466:  VADD.F32        S0, S0, S0
4DE46A:  VCVT.S32.F32    S0, S0
4DE46E:  VMOV            R0, S0
4DE472:  CMP             R5, R0
4DE474:  BLE             loc_4DE4A0
4DE476:  LDRSH.W         R5, [R11,#0x2C]
4DE47A:  BLX             rand
4DE47E:  UXTH            R0, R0
4DE480:  VMOV            S0, R0
4DE484:  VCVT.F32.S32    S0, S0
4DE488:  VMUL.F32        S0, S0, S16
4DE48C:  VADD.F32        S0, S0, S0
4DE490:  VCVT.S32.F32    S0, S0
4DE494:  VMOV            R0, S0
4DE498:  SUBS            R0, R5, R0
4DE49A:  B               loc_4DE4A2
4DE49C:  MOVS            R5, #1
4DE49E:  B               loc_4DE4B2
4DE4A0:  MOVS            R0, #1
4DE4A2:  STRH.W          R0, [R11,#0x2C]
4DE4A6:  CMP.W           R9, #1
4DE4AA:  IT EQ
4DE4AC:  STRHEQ          R0, [R6,#0x34]
4DE4AE:  MOVS            R5, #3; jumptable 004DE354 case 5
4DE4B0:  MOVS            R0, #0
4DE4B2:  LDR.W           R1, [R11,#0x28]
4DE4B6:  CMP             R1, #0
4DE4B8:  BLT             loc_4DE4E8
4DE4BA:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4DE4C6)
4DE4BE:  VLDR            S0, =50.0
4DE4C2:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4DE4C4:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4DE4C6:  VLDR            S2, [R2]
4DE4CA:  VDIV.F32        S0, S2, S0
4DE4CE:  VLDR            S2, =1000.0
4DE4D2:  VMUL.F32        S0, S0, S2
4DE4D6:  VCVT.U32.F32    S0, S0
4DE4DA:  VMOV            R2, S0
4DE4DE:  SUBS            R1, R1, R2
4DE4E0:  IT LT
4DE4E2:  MOVLT           R1, #0
4DE4E4:  STR.W           R1, [R11,#0x28]
4DE4E8:  MOVS            R2, #0
4DE4EA:  CMP             R1, #0
4DE4EC:  IT EQ
4DE4EE:  MOVEQ           R2, #1
4DE4F0:  ORRS            R0, R2
4DE4F2:  BEQ             loc_4DE592
4DE4F4:  CMP             R6, #0
4DE4F6:  BEQ.W           loc_4DE7FE
4DE4FA:  LDRB.W          R0, [R11,#0x2E]
4DE4FE:  CMP             R0, #6
4DE500:  BNE             loc_4DE50A
4DE502:  LDRB            R0, [R6,#8]
4DE504:  CMP             R0, #0
4DE506:  BNE.W           loc_4DE7FE
4DE50A:  LDRB            R0, [R6,#0xB]
4DE50C:  CMP             R0, #0
4DE50E:  ITTT NE
4DE510:  LDRBNE          R0, [R6,#0x10]
4DE512:  ANDNE.W         R0, R0, #0xFE
4DE516:  CMPNE           R0, #2
4DE518:  BNE.W           loc_4DE7F4
4DE51C:  LDRB.W          R0, [R11,#8]
4DE520:  CMP             R0, #0
4DE522:  BNE.W           loc_4DE804
4DE526:  MOVS            R0, #0
4DE528:  CMP             R1, #0
4DE52A:  IT EQ
4DE52C:  MOVEQ           R0, #1
4DE52E:  AND.W           R0, R0, R9
4DE532:  CMP             R0, #1
4DE534:  BNE             loc_4DE592
4DE536:  MOV             R0, R9
4DE538:  MOV             R9, R5
4DE53A:  STR             R0, [SP,#0x58+var_48]
4DE53C:  MOVS            R0, #6
4DE53E:  STRB.W          R0, [R11,#0x2E]
4DE542:  MOV             R5, R6
4DE544:  LDR.W           R0, [R5,#0x1C]!; this
4DE548:  MOVS            R1, #1
4DE54A:  LDR.W           R10, [R11,#0xC]
4DE54E:  STRB.W          R1, [R5,#-0x13]
4DE552:  CMP             R0, R10
4DE554:  BEQ             loc_4DE580
4DE556:  CMP             R0, #0
4DE558:  ITT NE
4DE55A:  MOVNE           R1, R5; CEntity **
4DE55C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DE560:  CMP.W           R10, #0
4DE564:  STR.W           R10, [R5]
4DE568:  ITTT NE
4DE56A:  MOVNE           R0, R10; this
4DE56C:  MOVNE           R1, R5; CEntity **
4DE56E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DE572:  MOV             R0, R6; this
4DE574:  MOV             R1, R4; CPed *
4DE576:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DE57A:  MOVS            R0, #0
4DE57C:  STRH.W          R0, [R6,#0x39]
4DE580:  LDRSB.W         R0, [R6,#0xF]
4DE584:  MOV             R5, R9
4DE586:  CMP             R0, #5
4DE588:  LDR             R0, [SP,#0x58+var_48]
4DE58A:  MOV             R9, R0
4DE58C:  ITT LE
4DE58E:  MOVLE           R0, #6
4DE590:  STRBLE          R0, [R6,#0xF]
4DE592:  LDR.W           R0, [R11,#0x34]
4DE596:  CBZ             R0, loc_4DE59E
4DE598:  CMP             R5, #3
4DE59A:  BEQ             loc_4DE62A
4DE59C:  B               loc_4DE63C
4DE59E:  LDR             R0, =(_ZN21CTaskSimpleGunControl25DEFAULT_GUN_ATTACK_PERIODE_ptr - 0x4DE5A8)
4DE5A0:  MOV             R10, R9
4DE5A2:  MOV             R9, R5
4DE5A4:  ADD             R0, PC; _ZN21CTaskSimpleGunControl25DEFAULT_GUN_ATTACK_PERIODE_ptr
4DE5A6:  LDR             R0, [R0]; CTaskSimpleGunControl::DEFAULT_GUN_ATTACK_PERIOD ...
4DE5A8:  LDR             R5, [R0]; CTaskSimpleGunControl::DEFAULT_GUN_ATTACK_PERIOD
4DE5AA:  STR.W           R5, [R11,#0x34]
4DE5AE:  LDR.W           R0, [R8]
4DE5B2:  CMP             R0, #2
4DE5B4:  ITT EQ
4DE5B6:  LSLEQ           R5, R5, #1
4DE5B8:  STREQ.W         R5, [R11,#0x34]
4DE5BC:  BLX             rand
4DE5C0:  VMOV            S0, R0
4DE5C4:  VLDR            S4, =4.6566e-10
4DE5C8:  VMOV.F32        S6, #0.5
4DE5CC:  VCVT.F32.S32    S0, S0
4DE5D0:  LDRB.W          R0, [R4,#0x71D]
4DE5D4:  VMOV            S2, R0
4DE5D8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DE5E6)
4DE5DA:  VCVT.F32.U32    S2, S2
4DE5DE:  VLDR            S8, [R11,#0x30]
4DE5E2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DE5E4:  VMUL.F32        S0, S0, S4
4DE5E8:  VMOV.F32        S4, #25.0
4DE5EC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DE5EE:  VMUL.F32        S2, S8, S2
4DE5F2:  VMOV.F32        S8, #0.75
4DE5F6:  VMUL.F32        S0, S0, S6
4DE5FA:  VDIV.F32        S2, S2, S4
4DE5FE:  VMOV            S4, R5
4DE602:  MOV             R5, R9
4DE604:  VADD.F32        S0, S0, S8
4DE608:  MOV             R9, R10
4DE60A:  VCVT.F32.U32    S4, S4
4DE60E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4DE610:  VMUL.F32        S0, S0, S4
4DE614:  VDIV.F32        S0, S0, S2
4DE618:  VCVT.U32.F32    S0, S0
4DE61C:  VMOV            R1, S0
4DE620:  ADD             R0, R1
4DE622:  STR.W           R0, [R11,#0x34]
4DE626:  CMP             R5, #3
4DE628:  BNE             loc_4DE63C
4DE62A:  LDR.W           R1, [R11,#0xC]; CPed *
4DE62E:  MOV             R0, R4; this
4DE630:  BLX             j__ZN17CTaskSimpleUseGun17RequirePistolWhipEP4CPedP7CEntity; CTaskSimpleUseGun::RequirePistolWhip(CPed *,CEntity *)
4DE634:  CBZ             R0, loc_4DE63C
4DE636:  MOVS            R0, #0
4DE638:  MOVS            R5, #5
4DE63A:  B               loc_4DE66E
4DE63C:  LDR.W           R0, [R4,#0x484]
4DE640:  MOV.W           R3, #0x4000000
4DE644:  LDR.W           R1, [R4,#0x48C]
4DE648:  MOV.W           R2, #0x40000
4DE64C:  BICS            R3, R0
4DE64E:  BICS            R2, R1
4DE650:  ORRS            R2, R3
4DE652:  ITTTT NE
4DE654:  MOVNE.W         R2, #0x10000
4DE658:  BICNE.W         R1, R2, R1
4DE65C:  ANDNE.W         R0, R0, #0x4000000
4DE660:  ORRSNE.W        R0, R0, R1
4DE664:  BNE             loc_4DE66C
4DE666:  MOVS            R5, #1
4DE668:  MOVS            R0, #1
4DE66A:  B               loc_4DE66E
4DE66C:  MOVS            R0, #0
4DE66E:  STR             R0, [SP,#0x58+var_44]
4DE670:  CMP.W           R9, #1
4DE674:  BNE             loc_4DE6C8
4DE676:  MOV             R0, R9
4DE678:  MOV             R10, R5
4DE67A:  STR             R0, [SP,#0x58+var_48]
4DE67C:  MOV             R9, R6
4DE67E:  LDR.W           R0, [R6,#0x1C]!; this
4DE682:  MOVS            R1, #1
4DE684:  LDR.W           R5, [R11,#0xC]
4DE688:  STRB.W          R1, [R6,#-0x13]
4DE68C:  CMP             R0, R5
4DE68E:  BEQ             loc_4DE6B6
4DE690:  CMP             R0, #0
4DE692:  ITT NE
4DE694:  MOVNE           R1, R6; CEntity **
4DE696:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DE69A:  CMP             R5, #0
4DE69C:  STR             R5, [R6]
4DE69E:  ITTT NE
4DE6A0:  MOVNE           R0, R5; this
4DE6A2:  MOVNE           R1, R6; CEntity **
4DE6A4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DE6A8:  MOV             R0, R9; this
4DE6AA:  MOV             R1, R4; CPed *
4DE6AC:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DE6B0:  MOVS            R0, #0
4DE6B2:  STRH.W          R0, [R9,#0x39]
4DE6B6:  LDRSB.W         R0, [R9,#0xF]
4DE6BA:  MOV             R6, R9
4DE6BC:  CMP             R0, R10
4DE6BE:  LDR             R0, [SP,#0x58+var_48]
4DE6C0:  IT LT
4DE6C2:  STRBLT.W        R10, [R6,#0xF]
4DE6C6:  MOV             R9, R0
4DE6C8:  LDR.W           R1, [R11,#0xC]
4DE6CC:  CBZ             R1, loc_4DE6DC
4DE6CE:  LDR             R2, [R1,#0x14]
4DE6D0:  ADD.W           R0, R2, #0x30 ; '0'
4DE6D4:  CMP             R2, #0
4DE6D6:  IT EQ
4DE6D8:  ADDEQ           R0, R1, #4
4DE6DA:  B               loc_4DE6FE
4DE6DC:  VLDR            S0, [R11,#0x10]
4DE6E0:  VCMP.F32        S0, #0.0
4DE6E4:  VMRS            APSR_nzcv, FPSCR
4DE6E8:  BNE             loc_4DE6FA
4DE6EA:  VLDR            S0, [R11,#0x14]
4DE6EE:  VCMP.F32        S0, #0.0
4DE6F2:  VMRS            APSR_nzcv, FPSCR
4DE6F6:  BEQ.W           loc_4DE87C
4DE6FA:  ADD.W           R0, R11, #0x10
4DE6FE:  LDR             R1, [R4,#0x14]
4DE700:  VLDR            S0, [R0]
4DE704:  VLDR            S2, [R0,#4]
4DE708:  CMP             R1, #0
4DE70A:  VLDR            S16, [R0,#8]
4DE70E:  ADD.W           R0, R1, #0x30 ; '0'
4DE712:  IT EQ
4DE714:  ADDEQ           R0, R4, #4
4DE716:  VLDR            S4, [R0]
4DE71A:  VLDR            S6, [R0,#4]
4DE71E:  VSUB.F32        S20, S0, S4
4DE722:  VLDR            S18, [R0,#8]
4DE726:  VSUB.F32        S22, S2, S6
4DE72A:  VMOV            R0, S20
4DE72E:  VMOV            R1, S22; x
4DE732:  EOR.W           R0, R0, #0x80000000; y
4DE736:  BLX             atan2f
4DE73A:  VSUB.F32        S0, S16, S18
4DE73E:  CMP.W           R9, #1
4DE742:  VMUL.F32        S2, S22, S22
4DE746:  STR.W           R0, [R4,#0x560]
4DE74A:  VMUL.F32        S4, S20, S20
4DE74E:  VMUL.F32        S0, S0, S0
4DE752:  VADD.F32        S2, S4, S2
4DE756:  VADD.F32        S0, S2, S0
4DE75A:  BNE             loc_4DE7BE
4DE75C:  VMOV.F32        S2, #6.0
4DE760:  VCMPE.F32       S0, S2
4DE764:  VMRS            APSR_nzcv, FPSCR
4DE768:  BGE             loc_4DE782
4DE76A:  LDRB            R0, [R6,#0x10]
4DE76C:  CMP             R0, #3
4DE76E:  BNE             loc_4DE788
4DE770:  LDRB.W          R0, [R8,#0x18]
4DE774:  LDR             R1, [SP,#0x58+var_44]
4DE776:  AND.W           R0, R0, #0x20 ; ' '
4DE77A:  ORR.W           R0, R1, R0,LSR#5
4DE77E:  CBNZ            R0, loc_4DE788
4DE780:  B               loc_4DE7BE
4DE782:  LDR             R0, [SP,#0x58+var_44]
4DE784:  CMP             R0, #1
4DE786:  BNE             loc_4DE7BE
4DE788:  LDRB.W          R0, [R4,#0x486]
4DE78C:  LSLS            R0, R0, #0x1A
4DE78E:  BMI             loc_4DE7BE
4DE790:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4DE79E)
4DE792:  VMOV.F32        S2, #1.0
4DE796:  VLDR            S4, [R6,#0x18]
4DE79A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4DE79C:  VLDR            S0, =0.07
4DE7A0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4DE7A2:  VLDR            S8, [R0]
4DE7A6:  VSUB.F32        S6, S2, S4
4DE7AA:  VMUL.F32        S0, S8, S0
4DE7AE:  VCMPE.F32       S6, S0
4DE7B2:  VMRS            APSR_nzcv, FPSCR
4DE7B6:  BLE             loc_4DE830
4DE7B8:  VADD.F32        S2, S0, S4
4DE7BC:  B               loc_4DE842
4DE7BE:  LDR.W           R0, [R11,#0xC]
4DE7C2:  CMP             R0, #0
4DE7C4:  BEQ             loc_4DE87C
4DE7C6:  LDRB.W          R0, [R4,#0x491]
4DE7CA:  LSLS            R0, R0, #0x1E
4DE7CC:  BMI             loc_4DE87C
4DE7CE:  VLDR            S2, [R8,#8]
4DE7D2:  MOVS            R6, #0
4DE7D4:  VMUL.F32        S2, S2, S2
4DE7D8:  VCMPE.F32       S0, S2
4DE7DC:  VMRS            APSR_nzcv, FPSCR
4DE7E0:  IT GT
4DE7E2:  STRGT.W         R6, [R11,#0x28]
4DE7E6:  B               loc_4DE87E
4DE7E8:  DCFS 0.000015259
4DE7EC:  DCFS 50.0
4DE7F0:  DCFS 1000.0
4DE7F4:  MOVS            R0, #0
4DE7F6:  STRB            R0, [R6,#0xB]
4DE7F8:  MOVS            R0, #2
4DE7FA:  STRB.W          R0, [R6,#0x38]
4DE7FE:  MOVS            R0, #1
4DE800:  STRB.W          R0, [R11,#8]
4DE804:  LDRB.W          R0, [R4,#0x487]
4DE808:  LSLS            R0, R0, #0x1D
4DE80A:  BMI             loc_4DE810
4DE80C:  MOVS            R6, #1
4DE80E:  B               loc_4DE87E
4DE810:  LDR.W           R0, [R4,#0x440]; this
4DE814:  MOVS            R1, #1; bool
4DE816:  MOVS            R6, #1
4DE818:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4DE81C:  CBZ             R0, loc_4DE87E
4DE81E:  LDR.W           R0, [R4,#0x440]; this
4DE822:  MOVS            R1, #1; bool
4DE824:  MOVS            R6, #1
4DE826:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4DE82A:  BLX             j__ZN15CTaskSimpleDuck13ForceStopMoveEv; CTaskSimpleDuck::ForceStopMove(void)
4DE82E:  B               loc_4DE87E
4DE830:  VNEG.F32        S8, S0
4DE834:  VCMPE.F32       S6, S8
4DE838:  VMRS            APSR_nzcv, FPSCR
4DE83C:  IT LT
4DE83E:  VSUBLT.F32      S2, S4, S0
4DE842:  VLDR            S6, [R6,#0x14]
4DE846:  VLDR            S4, =0.0
4DE84A:  VSTR            S2, [R6,#0x18]
4DE84E:  VSUB.F32        S8, S4, S6
4DE852:  VCMPE.F32       S8, S0
4DE856:  VMRS            APSR_nzcv, FPSCR
4DE85A:  BLE             loc_4DE862
4DE85C:  VADD.F32        S4, S0, S6
4DE860:  B               loc_4DE874
4DE862:  VNEG.F32        S2, S0
4DE866:  VCMPE.F32       S8, S2
4DE86A:  VMRS            APSR_nzcv, FPSCR
4DE86E:  IT LT
4DE870:  VSUBLT.F32      S4, S6, S0
4DE874:  MOVS            R0, #1
4DE876:  STRB            R0, [R6,#0xA]
4DE878:  VSTR            S4, [R6,#0x14]
4DE87C:  MOVS            R6, #0
4DE87E:  MOV             R0, R6
4DE880:  ADD             SP, SP, #0x18
4DE882:  VPOP            {D8-D11}
4DE886:  ADD             SP, SP, #4
4DE888:  POP.W           {R8-R11}
4DE88C:  POP             {R4-R7,PC}
