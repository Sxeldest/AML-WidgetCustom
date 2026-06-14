; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun10ProcessPedEP4CPed
; Address            : 0x4DC0D0 - 0x4DCBE0
; =========================================================

4DC0D0:  PUSH            {R4-R7,LR}
4DC0D2:  ADD             R7, SP, #0xC
4DC0D4:  PUSH.W          {R8-R11}
4DC0D8:  SUB             SP, SP, #4
4DC0DA:  VPUSH           {D8-D10}
4DC0DE:  SUB             SP, SP, #0x48
4DC0E0:  MOV             R4, R0
4DC0E2:  MOV             R8, R1
4DC0E4:  LDRB.W          R0, [R4,#0x3A]
4DC0E8:  CBZ             R0, loc_4DC102
4DC0EA:  LDR.W           R0, =(g_ikChainMan_ptr - 0x4DC0F4)
4DC0EE:  MOV             R1, R8; CPed *
4DC0F0:  ADD             R0, PC; g_ikChainMan_ptr
4DC0F2:  LDR             R0, [R0]; g_ikChainMan ; this
4DC0F4:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
4DC0F8:  CMP             R0, #0
4DC0FA:  ITT EQ
4DC0FC:  MOVEQ           R0, #0
4DC0FE:  STRBEQ.W        R0, [R4,#0x3A]
4DC102:  LDRB.W          R0, [R4,#0x39]
4DC106:  CBZ             R0, loc_4DC122
4DC108:  LDR.W           R0, =(g_ikChainMan_ptr - 0x4DC116)
4DC10C:  MOVS            R1, #0; int
4DC10E:  MOV             R2, R8; CPed *
4DC110:  MOVS            R5, #0
4DC112:  ADD             R0, PC; g_ikChainMan_ptr
4DC114:  LDR             R0, [R0]; g_ikChainMan ; this
4DC116:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
4DC11A:  CMP             R0, #0
4DC11C:  IT EQ
4DC11E:  STRBEQ.W        R5, [R4,#0x39]
4DC122:  LDR             R5, [R4,#0x30]
4DC124:  MOVS            R0, #0
4DC126:  STRB            R0, [R4,#0xD]
4DC128:  CBZ             R5, loc_4DC19A
4DC12A:  LDRSB.W         R0, [R8,#0x71C]
4DC12E:  RSB.W           R0, R0, R0,LSL#3
4DC132:  ADD.W           R0, R8, R0,LSL#2
4DC136:  LDR.W           R6, [R0,#0x5A4]
4DC13A:  MOV             R0, R8; this
4DC13C:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4DC140:  MOV             R1, R0
4DC142:  MOV             R0, R6
4DC144:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4DC148:  CMP             R5, R0
4DC14A:  BEQ             loc_4DC15A
4DC14C:  LDR             R0, [R4]
4DC14E:  MOV             R1, R8
4DC150:  MOVS            R2, #1
4DC152:  MOVS            R3, #0
4DC154:  LDR             R6, [R0,#0x1C]
4DC156:  MOV             R0, R4
4DC158:  BLX             R6
4DC15A:  LDR             R0, [R4,#0x30]
4DC15C:  LDRB            R0, [R0,#0x18]
4DC15E:  LSLS            R0, R0, #0x1D
4DC160:  BPL             loc_4DC168
4DC162:  LDR.W           R0, [R8,#0x444]
4DC166:  CBNZ            R0, loc_4DC174
4DC168:  LDR.W           R0, [R8,#0x48C]
4DC16C:  ORR.W           R0, R0, #0x8000
4DC170:  STR.W           R0, [R8,#0x48C]
4DC174:  LDRB            R0, [R4,#8]
4DC176:  CBZ             R0, loc_4DC1B4
4DC178:  MOV             R0, R4; this
4DC17A:  MOV             R1, R8; CPed *
4DC17C:  BLX             j__ZN17CTaskSimpleUseGun17RemoveStanceAnimsEP4CPedf; CTaskSimpleUseGun::RemoveStanceAnims(CPed *,float)
4DC180:  MOV             R0, R4; this
4DC182:  MOV             R1, R8; CPed *
4DC184:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DC188:  LDR.W           R0, [R8,#0x444]
4DC18C:  CMP             R0, #0
4DC18E:  BEQ             loc_4DC248
4DC190:  MOVS            R1, #0
4DC192:  MOVS            R6, #1
4DC194:  STR             R1, [R0,#0x2C]
4DC196:  B.W             loc_4DCBB4
4DC19A:  LDR.W           R0, [R8,#0x444]
4DC19E:  CMP             R0, #0
4DC1A0:  BEQ             loc_4DC24E
4DC1A2:  LDRB.W          R0, [R0,#0x20]
4DC1A6:  LDRB.W          R1, [R8,#0x71C]
4DC1AA:  CMP             R0, R1
4DC1AC:  BEQ             loc_4DC252
4DC1AE:  MOVS            R6, #0
4DC1B0:  B.W             loc_4DCBB4
4DC1B4:  LDR.W           R6, [R8,#0x444]
4DC1B8:  CBZ             R6, loc_4DC1EC
4DC1BA:  VLDR            S16, [R6,#0x2C]
4DC1BE:  VCMPE.F32       S16, #0.0
4DC1C2:  VMRS            APSR_nzcv, FPSCR
4DC1C6:  BLE             loc_4DC1EC
4DC1C8:  LDR.W           R0, =(_ZN17CTaskSimpleUseGun18WEAPON_RE_AIM_RATEE_ptr - 0x4DC1D4)
4DC1CC:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4DC1D6)
4DC1D0:  ADD             R0, PC; _ZN17CTaskSimpleUseGun18WEAPON_RE_AIM_RATEE_ptr
4DC1D2:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4DC1D4:  LDR             R0, [R0]; CTaskSimpleUseGun::WEAPON_RE_AIM_RATE ...
4DC1D6:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4DC1D8:  LDR             R0, [R0]; x
4DC1DA:  LDR             R1, [R1]; y
4DC1DC:  BLX             powf
4DC1E0:  VMOV            S0, R0
4DC1E4:  VMUL.F32        S0, S16, S0
4DC1E8:  VSTR            S0, [R6,#0x2C]
4DC1EC:  LDRB            R0, [R4,#9]
4DC1EE:  CMP             R0, #0
4DC1F0:  BEQ             loc_4DC2A2
4DC1F2:  MOVS            R0, #0xFF
4DC1F4:  MOV.W           R2, #0x40000
4DC1F8:  STRB.W          R0, [R4,#0x38]
4DC1FC:  MOV.W           R9, #0x4000000
4DC200:  LDR.W           R0, [R8,#0x484]
4DC204:  ADDW            R11, R8, #0x484
4DC208:  LDR.W           R1, [R8,#0x48C]
4DC20C:  MOV.W           R10, #0x10000
4DC210:  BIC.W           R3, R9, R0
4DC214:  BICS            R2, R1
4DC216:  ORRS            R2, R3
4DC218:  BEQ             loc_4DC232
4DC21A:  AND.W           R1, R1, R10
4DC21E:  AND.W           R0, R0, R9
4DC222:  EOR.W           R1, R1, R10
4DC226:  ORRS            R0, R1
4DC228:  BNE             loc_4DC2DE
4DC22A:  LDR             R0, [R4,#0x30]
4DC22C:  LDRB            R0, [R0,#0x18]
4DC22E:  LSLS            R0, R0, #0x1E
4DC230:  BMI             loc_4DC2DE
4DC232:  LDRB            R0, [R4,#0x10]
4DC234:  CMP             R0, #5
4DC236:  BEQ.W           loc_4DC34A
4DC23A:  LDRB            R1, [R4,#0xF]
4DC23C:  LDR             R0, [R4,#0x2C]
4DC23E:  CMP             R1, #5
4DC240:  BNE             loc_4DC30C
4DC242:  CMP             R0, #0
4DC244:  BNE             loc_4DC30E
4DC246:  B               loc_4DC34A
4DC248:  MOVS            R6, #1
4DC24A:  B.W             loc_4DCBB4
4DC24E:  LDRB.W          R0, [R8,#0x71C]
4DC252:  SXTB            R0, R0
4DC254:  RSB.W           R0, R0, R0,LSL#3
4DC258:  ADD.W           R0, R8, R0,LSL#2
4DC25C:  LDR.W           R6, [R0,#0x5A4]
4DC260:  MOV             R0, R8; this
4DC262:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4DC266:  MOV             R1, R0
4DC268:  MOV             R0, R6
4DC26A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4DC26E:  STR             R0, [R4,#0x30]
4DC270:  LDR             R1, [R0]
4DC272:  CBZ             R1, loc_4DC282
4DC274:  LDRB            R0, [R0,#0x19]
4DC276:  LSLS            R0, R0, #0x1F
4DC278:  BNE             loc_4DC282
4DC27A:  MOVS            R0, #0
4DC27C:  STRD.W          R0, R0, [R4,#0x14]
4DC280:  B               loc_4DC15A
4DC282:  MOVS            R5, #0
4DC284:  MOVS            R6, #1
4DC286:  MOV             R0, R4; this
4DC288:  MOV             R1, R8; CPed *
4DC28A:  STR             R5, [R4,#0x30]
4DC28C:  STRB            R6, [R4,#8]
4DC28E:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DC292:  LDR.W           R0, [R8,#0x444]
4DC296:  CMP             R0, #0
4DC298:  ITT NE
4DC29A:  STRNE           R5, [R0,#0x2C]
4DC29C:  MOVNE           R6, #1
4DC29E:  B.W             loc_4DCBB4
4DC2A2:  LDRB.W          R0, [R4,#0x38]
4DC2A6:  MOVS            R6, #0
4DC2A8:  STRB            R6, [R4,#0xB]
4DC2AA:  CMP             R0, #0
4DC2AC:  STRD.W          R6, R6, [R4,#0x14]
4DC2B0:  SUB.W           R1, R0, #1
4DC2B4:  STRB.W          R1, [R4,#0x38]
4DC2B8:  BNE.W           loc_4DCBB4
4DC2BC:  MOVS            R6, #1
4DC2BE:  MOV             R0, R4; this
4DC2C0:  MOV             R1, R8; CPed *
4DC2C2:  STRB            R6, [R4,#8]
4DC2C4:  BLX             j__ZN17CTaskSimpleUseGun17RemoveStanceAnimsEP4CPedf; CTaskSimpleUseGun::RemoveStanceAnims(CPed *,float)
4DC2C8:  MOV             R0, R4; this
4DC2CA:  MOV             R1, R8; CPed *
4DC2CC:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DC2D0:  LDR.W           R0, [R8,#0x444]
4DC2D4:  CMP             R0, #0
4DC2D6:  BNE.W           loc_4DC190
4DC2DA:  B.W             loc_4DCBB4
4DC2DE:  LDRB            R0, [R4,#0xF]
4DC2E0:  CMP             R0, #5
4DC2E2:  BNE             loc_4DC34A
4DC2E4:  LDRSB.W         R0, [R4,#0x10]
4DC2E8:  CMP             R0, #3
4DC2EA:  BGT             loc_4DC34A
4DC2EC:  LDR             R0, [R4,#0x2C]; this
4DC2EE:  CBZ             R0, loc_4DC2FE
4DC2F0:  LDR.W           R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DC2FA)
4DC2F4:  MOVS            R2, #0; void *
4DC2F6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DC2F8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DC2FA:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DC2FE:  MOVS            R0, #0
4DC300:  MOV             R1, R8; CPed *
4DC302:  STR             R0, [R4,#0x2C]
4DC304:  MOV             R0, R4; this
4DC306:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DC30A:  B               loc_4DC34A
4DC30C:  CBZ             R0, loc_4DC342
4DC30E:  MOVS            R1, #0xC0800000
4DC314:  STR             R1, [R0,#0x1C]
4DC316:  LDR             R0, [R4,#0x2C]
4DC318:  LDRH            R1, [R0,#0x2E]
4DC31A:  BIC.W           R1, R1, #1
4DC31E:  STRH            R1, [R0,#0x2E]
4DC320:  LDR             R0, [R4,#0x2C]
4DC322:  LDRH            R1, [R0,#0x2E]
4DC324:  ORR.W           R1, R1, #4
4DC328:  STRH            R1, [R0,#0x2E]
4DC32A:  MOV             R0, R4; this
4DC32C:  MOV             R1, R8; CPed *
4DC32E:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DC332:  LDRB            R1, [R4,#0x10]
4DC334:  MOVS            R0, #1
4DC336:  STRB            R0, [R4,#0xC]
4DC338:  CMP             R1, #3
4DC33A:  IT EQ
4DC33C:  STRBEQ          R0, [R4,#0x10]
4DC33E:  B.W             loc_4DCB7A
4DC342:  SUBS            R0, R1, #1
4DC344:  UXTB            R0, R0
4DC346:  CMP             R0, #3
4DC348:  BCC             loc_4DC32A
4DC34A:  LDR             R0, [R4,#0x2C]
4DC34C:  CBZ             R0, loc_4DC382
4DC34E:  LDRB            R1, [R4,#0x10]
4DC350:  CMP             R1, #5
4DC352:  BEQ             loc_4DC394
4DC354:  CMP             R1, #4
4DC356:  BNE.W           loc_4DC4F6
4DC35A:  LDRSH.W         R1, [R0,#0x2C]
4DC35E:  BIC.W           R1, R1, #1
4DC362:  CMP             R1, #0xE2
4DC364:  BEQ.W           loc_4DC930
4DC368:  VLDR            S0, [R0,#0x1C]
4DC36C:  VCMPE.F32       S0, #0.0
4DC370:  VMRS            APSR_nzcv, FPSCR
4DC374:  BLT.W           loc_4DC930
4DC378:  MOVS            R1, #0xC0800000
4DC37E:  STR             R1, [R0,#0x1C]
4DC380:  B               loc_4DC930
4DC382:  MOV             R0, R4; this
4DC384:  MOV             R1, R8; CPed *
4DC386:  BLX             j__ZN17CTaskSimpleUseGun9StartAnimEP4CPed; CTaskSimpleUseGun::StartAnim(CPed *)
4DC38A:  LDR             R0, [R4,#0x2C]
4DC38C:  CMP             R0, #0
4DC38E:  BNE.W           loc_4DCB7A
4DC392:  B               loc_4DCB72
4DC394:  LDR.W           R1, [R11]
4DC398:  VLDR            S2, [R0,#0x18]
4DC39C:  VLDR            S0, =0.9
4DC3A0:  UBFX.W          R6, R1, #0x1A, #1
4DC3A4:  VCMPE.F32       S2, S0
4DC3A8:  VMRS            APSR_nzcv, FPSCR
4DC3AC:  BLE             loc_4DC4A4
4DC3AE:  VLDR            S0, [R0,#0x1C]
4DC3B2:  VCMPE.F32       S0, #0.0
4DC3B6:  VMRS            APSR_nzcv, FPSCR
4DC3BA:  BLT             loc_4DC4A4
4DC3BC:  LDR.W           R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DC3C8)
4DC3C0:  VLDR            S0, [R0,#0x20]
4DC3C4:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DC3C6:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DC3C8:  ADD.W           R1, R1, R6,LSL#2
4DC3CC:  ADD.W           R1, R1, #0x668
4DC3D0:  VLDR            S2, [R1]
4DC3D4:  VCMPE.F32       S0, S2
4DC3D8:  VMRS            APSR_nzcv, FPSCR
4DC3DC:  BLE             loc_4DC4A4
4DC3DE:  VLDR            S4, [R0,#0x28]
4DC3E2:  VSUB.F32        S0, S0, S4
4DC3E6:  VCMPE.F32       S0, S2
4DC3EA:  VMRS            APSR_nzcv, FPSCR
4DC3EE:  BGE             loc_4DC4A4
4DC3F0:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DC3FC)
4DC3F4:  LDR.W           R2, =(_ZN16CTaskSimpleFight12m_aHitOffsetE_ptr - 0x4DC402)
4DC3F8:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DC3FA:  LDR.W           R1, [R8,#0x14]
4DC3FE:  ADD             R2, PC; _ZN16CTaskSimpleFight12m_aHitOffsetE_ptr
4DC400:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4DC402:  LDR             R2, [R2]; CTaskSimpleFight::m_aHitOffset ...
4DC404:  ADD             R0, R6
4DC406:  LDRB.W          R0, [R0,#0x6B0]
4DC40A:  ADD.W           R0, R0, R0,LSL#1
4DC40E:  ADD.W           R2, R2, R0,LSL#2
4DC412:  ADD             R0, SP, #0x80+var_44
4DC414:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4DC418:  ADD             R0, SP, #0x80+var_70; this
4DC41A:  LDR             R5, [R4,#0x1C]
4DC41C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DC420:  LDR.W           R1, =(_ZTV16CTaskSimpleFight_ptr - 0x4DC42C)
4DC424:  MOVS            R2, #0
4DC426:  CMP             R5, #0
4DC428:  ADD             R1, PC; _ZTV16CTaskSimpleFight_ptr
4DC42A:  LDR             R1, [R1]; `vtable for'CTaskSimpleFight ...
4DC42C:  ADD.W           R1, R1, #8
4DC430:  STR             R1, [SP,#0x80+var_70]
4DC432:  MOV.W           R1, #0x100
4DC436:  STRH.W          R1, [SP,#0x80+var_68]
4DC43A:  MOV.W           R1, #0x21 ; '!'
4DC43E:  STRB.W          R2, [SP,#0x80+var_68+2]
4DC442:  STR             R1, [SP,#0x80+var_64]
4DC444:  MOV.W           R1, #0xFF
4DC448:  STR.W           R2, [SP,#0x80+var_5E]
4DC44C:  STRD.W          R5, R2, [SP,#0x80+var_58]
4DC450:  STR             R2, [SP,#0x80+var_50]
4DC452:  STRB.W          R1, [SP,#0x80+var_4C]
4DC456:  STRB.W          R1, [SP,#0x80+var_4B]
4DC45A:  MOV.W           R1, #0xB
4DC45E:  STRB.W          R1, [SP,#0x80+var_4A]
4DC462:  STRB.W          R2, [SP,#0x80+var_49]
4DC466:  BEQ             loc_4DC474
4DC468:  ADD.W           R1, R0, #0x18; CEntity **
4DC46C:  MOV             R0, R5; this
4DC46E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DC472:  MOVS            R1, #0xB
4DC474:  MOVS            R0, #0x10
4DC476:  ADD             R5, SP, #0x80+var_70
4DC478:  STRB.W          R0, [SP,#0x80+var_4C]
4DC47C:  MOVW            R0, #0x4E20
4DC480:  STRH.W          R0, [SP,#0x80+var_60]
4DC484:  ADD             R2, SP, #0x80+var_44; CVector *
4DC486:  STRB.W          R6, [SP,#0x80+var_4B]
4DC48A:  STRB.W          R1, [SP,#0x80+var_49]
4DC48E:  MOV             R1, R8; CPed *
4DC490:  LDR             R0, [R4,#0x2C]
4DC492:  STR             R0, [SP,#0x80+var_54]
4DC494:  MOV             R0, R5; this
4DC496:  BLX             j__ZN16CTaskSimpleFight11FightStrikeEP4CPedR7CVector; CTaskSimpleFight::FightStrike(CPed *,CVector &)
4DC49A:  MOVS            R0, #0
4DC49C:  STR             R0, [SP,#0x80+var_54]
4DC49E:  MOV             R0, R5; this
4DC4A0:  BLX             j__ZN16CTaskSimpleFightD2Ev_0; CTaskSimpleFight::~CTaskSimpleFight()
4DC4A4:  LDR             R0, [R4,#0x1C]
4DC4A6:  CMP             R0, #0
4DC4A8:  BEQ.W           loc_4DC930
4DC4AC:  LDR.W           R1, [R8,#0x14]
4DC4B0:  LDR             R2, [R0,#0x14]
4DC4B2:  ADD.W           R3, R1, #0x30 ; '0'
4DC4B6:  CMP             R1, #0
4DC4B8:  IT EQ
4DC4BA:  ADDEQ.W         R3, R8, #4
4DC4BE:  ADD.W           R1, R2, #0x30 ; '0'
4DC4C2:  CMP             R2, #0
4DC4C4:  VLDR            S0, [R3]
4DC4C8:  VLDR            S2, [R3,#4]
4DC4CC:  IT EQ
4DC4CE:  ADDEQ           R1, R0, #4
4DC4D0:  VLDR            S4, [R1]
4DC4D4:  VLDR            S6, [R1,#4]
4DC4D8:  VSUB.F32        S0, S4, S0
4DC4DC:  VSUB.F32        S2, S6, S2
4DC4E0:  VMOV            R0, S0
4DC4E4:  VMOV            R1, S2; x
4DC4E8:  EOR.W           R0, R0, #0x80000000; y
4DC4EC:  BLX             atan2f
4DC4F0:  STR.W           R0, [R8,#0x560]
4DC4F4:  B               loc_4DC930
4DC4F6:  SUBS            R2, R1, #1
4DC4F8:  UXTB            R2, R2
4DC4FA:  CMP             R2, #2
4DC4FC:  BHI             loc_4DC5AC
4DC4FE:  VLDR            S0, [R0,#0x1C]
4DC502:  VCMPE.F32       S0, #0.0
4DC506:  VMRS            APSR_nzcv, FPSCR
4DC50A:  BLT.W           loc_4DC930
4DC50E:  LDR             R2, [R4,#0x30]
4DC510:  AND.W           R1, R1, #0xFE
4DC514:  LDR.W           R3, [R11]
4DC518:  ADD.W           R6, R2, #0x40 ; '@'
4DC51C:  ADD.W           R5, R2, #0x44 ; 'D'
4DC520:  ANDS.W          R3, R3, #0x4000000
4DC524:  IT NE
4DC526:  ADDNE.W         R6, R2, #0x4C ; 'L'
4DC52A:  VLDR            S16, [R6]
4DC52E:  IT NE
4DC530:  ADDNE.W         R5, R2, #0x50 ; 'P'
4DC534:  ADD.W           R6, R2, #0x48 ; 'H'
4DC538:  CMP             R3, #0
4DC53A:  VLDR            S18, [R5]
4DC53E:  IT NE
4DC540:  ADDNE.W         R6, R2, #0x54 ; 'T'
4DC544:  VLDR            S20, [R6]
4DC548:  CMP             R1, #2
4DC54A:  BNE             loc_4DC5E0
4DC54C:  VLDR            S0, =0.99
4DC550:  VLDR            S2, [R0,#0x18]
4DC554:  VCMPE.F32       S2, S0
4DC558:  VMRS            APSR_nzcv, FPSCR
4DC55C:  BLT             loc_4DC572
4DC55E:  LDRSB.W         R1, [R8,#0x71C]
4DC562:  RSB.W           R1, R1, R1,LSL#3
4DC566:  ADD.W           R1, R8, R1,LSL#2
4DC56A:  LDR.W           R1, [R1,#0x5A8]
4DC56E:  CMP             R1, #2
4DC570:  BNE             loc_4DC5C4
4DC572:  LDRH            R2, [R0,#0x2E]
4DC574:  TST.W           R2, #1
4DC578:  BEQ             loc_4DC5E0
4DC57A:  VLDR            S0, [R0,#0x20]
4DC57E:  VCMPE.F32       S0, S16
4DC582:  VMRS            APSR_nzcv, FPSCR
4DC586:  BLT             loc_4DC5E0
4DC588:  VLDR            S2, [R0,#0x28]
4DC58C:  VSUB.F32        S0, S0, S2
4DC590:  VCMPE.F32       S0, S16
4DC594:  VMRS            APSR_nzcv, FPSCR
4DC598:  BGE             loc_4DC5E0
4DC59A:  VMOV            R1, S16; float
4DC59E:  BIC.W           R2, R2, #1
4DC5A2:  STRH            R2, [R0,#0x2E]
4DC5A4:  LDR             R0, [R4,#0x2C]; this
4DC5A6:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DC5AA:  B               loc_4DC5E0
4DC5AC:  CMP             R1, #0
4DC5AE:  BNE.W           loc_4DC930
4DC5B2:  VLDR            S0, [R0,#0x18]
4DC5B6:  VCMPE.F32       S0, #0.0
4DC5BA:  VMRS            APSR_nzcv, FPSCR
4DC5BE:  BGT.W           loc_4DC368
4DC5C2:  B               loc_4DC930
4DC5C4:  LDRH            R1, [R0,#0x2E]
4DC5C6:  TST.W           R1, #1
4DC5CA:  BNE             loc_4DC5E0
4DC5CC:  VLDR            S0, [R0,#0x20]
4DC5D0:  VCMP.F32        S0, S16
4DC5D4:  VMRS            APSR_nzcv, FPSCR
4DC5D8:  ITT EQ
4DC5DA:  ORREQ.W         R1, R1, #1
4DC5DE:  STRHEQ          R1, [R0,#0x2E]
4DC5E0:  LDR             R1, [R4,#0x30]
4DC5E2:  LDRB            R0, [R1,#0x19]
4DC5E4:  LSLS            R0, R0, #0x1D
4DC5E6:  BMI             loc_4DC6A4
4DC5E8:  LDR             R0, [R4,#0x2C]
4DC5EA:  LDRB.W          R2, [R0,#0x2E]
4DC5EE:  LSLS            R2, R2, #0x1F
4DC5F0:  BEQ.W           loc_4DC720
4DC5F4:  LDRB            R2, [R4,#0x10]
4DC5F6:  AND.W           R2, R2, #0xFE
4DC5FA:  CMP             R2, #2
4DC5FC:  BNE.W           loc_4DC720
4DC600:  VLDR            S0, =0.01
4DC604:  VLDR            S2, [R0,#0x20]
4DC608:  VADD.F32        S0, S20, S0
4DC60C:  VCMPE.F32       S2, S0
4DC610:  VMRS            APSR_nzcv, FPSCR
4DC614:  BLE             loc_4DC644
4DC616:  VLDR            S4, [R0,#0x28]
4DC61A:  VSUB.F32        S2, S2, S4
4DC61E:  VCMPE.F32       S2, S0
4DC622:  VMRS            APSR_nzcv, FPSCR
4DC626:  BGT             loc_4DC644
4DC628:  LDRB            R3, [R4,#0xD]
4DC62A:  MOVS            R6, #1
4DC62C:  LDRH            R2, [R4,#0x36]
4DC62E:  ORR.W           R3, R3, #1
4DC632:  STRB            R6, [R4,#0xB]
4DC634:  STRB            R3, [R4,#0xD]
4DC636:  SXTH            R3, R2
4DC638:  CMP             R3, #1
4DC63A:  ITTT GE
4DC63C:  MOVWGE          R3, #0xFFFF
4DC640:  ADDGE           R2, R3
4DC642:  STRHGE          R2, [R4,#0x36]
4DC644:  LDRB            R1, [R1,#0x19]
4DC646:  LSLS            R1, R1, #0x1C
4DC648:  BPL             loc_4DC720
4DC64A:  LDRB.W          R1, [R11,#0xA]
4DC64E:  LSLS            R1, R1, #0x1E
4DC650:  BMI             loc_4DC720
4DC652:  VMOV.F32        S2, #0.5
4DC656:  VSUB.F32        S4, S18, S16
4DC65A:  VMUL.F32        S2, S4, S2
4DC65E:  VADD.F32        S0, S0, S2
4DC662:  VLDR            S2, [R0,#0x20]
4DC666:  VCMPE.F32       S2, S0
4DC66A:  VMRS            APSR_nzcv, FPSCR
4DC66E:  BLE             loc_4DC720
4DC670:  VLDR            S4, [R0,#0x28]
4DC674:  VSUB.F32        S2, S2, S4
4DC678:  VCMPE.F32       S2, S0
4DC67C:  VMRS            APSR_nzcv, FPSCR
4DC680:  BGT             loc_4DC720
4DC682:  LDRB            R1, [R4,#0xD]
4DC684:  MOVS            R2, #1
4DC686:  LDRH            R0, [R4,#0x36]
4DC688:  ORR.W           R1, R1, #2
4DC68C:  STRB            R2, [R4,#0xB]
4DC68E:  STRB            R1, [R4,#0xD]
4DC690:  SXTH            R1, R0
4DC692:  CMP             R1, #1
4DC694:  BGE             loc_4DC718
4DC696:  B               loc_4DC720
4DC698:  DCFS 0.9
4DC69C:  DCFS 0.99
4DC6A0:  DCFS 0.01
4DC6A4:  LDRB            R1, [R4,#0x10]
4DC6A6:  AND.W           R0, R1, #0xFE
4DC6AA:  CMP             R0, #2
4DC6AC:  BNE             loc_4DC720
4DC6AE:  LDR             R0, [R4,#0x2C]
4DC6B0:  VLDR            S0, [R0,#0x20]
4DC6B4:  VCMPE.F32       S0, S16
4DC6B8:  VMRS            APSR_nzcv, FPSCR
4DC6BC:  BLE             loc_4DC720
4DC6BE:  VCMPE.F32       S0, S18
4DC6C2:  VMRS            APSR_nzcv, FPSCR
4DC6C6:  BGE             loc_4DC720
4DC6C8:  LDRH            R2, [R0,#0x2E]
4DC6CA:  TST.W           R2, #1
4DC6CE:  BEQ             loc_4DC720
4DC6D0:  LDRB            R3, [R4,#0xB]
4DC6D2:  SXTB            R1, R1
4DC6D4:  CBZ             R3, loc_4DC6EE
4DC6D6:  CMP             R1, #3
4DC6D8:  BNE             loc_4DC6E2
4DC6DA:  LDRSH.W         R3, [R4,#0x36]
4DC6DE:  CMP             R3, #0
4DC6E0:  BGT             loc_4DC6EE
4DC6E2:  LDRB            R3, [R4,#0xF]
4DC6E4:  AND.W           R3, R3, #0xFE
4DC6E8:  CMP             R3, #2
4DC6EA:  BNE.W           loc_4DCBCE
4DC6EE:  MOVS            R0, #1
4DC6F0:  LDRB            R2, [R4,#0xD]
4DC6F2:  STRB            R0, [R4,#0xB]
4DC6F4:  LDRSB.W         R0, [R4,#0xF]
4DC6F8:  ORR.W           R2, R2, #1
4DC6FC:  STRB            R2, [R4,#0xD]
4DC6FE:  CMP             R0, R1
4DC700:  ITT GT
4DC702:  STRBGT          R0, [R4,#0x10]
4DC704:  MOVGT           R1, R0
4DC706:  MOVS            R0, #0
4DC708:  STRB            R0, [R4,#0xF]
4DC70A:  CMP             R1, #3
4DC70C:  BNE             loc_4DC71E
4DC70E:  LDRSH.W         R1, [R4,#0x36]
4DC712:  CMP             R1, #1
4DC714:  BLT             loc_4DC71E
4DC716:  UXTH            R0, R1
4DC718:  MOVW            R1, #0xFFFF
4DC71C:  ADD             R0, R1
4DC71E:  STRH            R0, [R4,#0x36]
4DC720:  LDR             R0, [R4,#0x2C]
4DC722:  LDRSB.W         R3, [R4,#0x10]
4DC726:  LDRH            R2, [R0,#0x2E]
4DC728:  ANDS.W          R1, R2, #1
4DC72C:  BNE             loc_4DC75E
4DC72E:  CMP             R3, #1
4DC730:  BNE             loc_4DC73C
4DC732:  LDRSB.W         R6, [R4,#0xF]
4DC736:  CMP             R6, #2
4DC738:  BLT.W           loc_4DC84E
4DC73C:  LDR             R6, [R0,#0x14]
4DC73E:  VLDR            S0, [R0,#0x20]
4DC742:  VLDR            S2, [R6,#0x10]
4DC746:  VCMPE.F32       S0, S2
4DC74A:  VMRS            APSR_nzcv, FPSCR
4DC74E:  BLT             loc_4DC7B2
4DC750:  VLDR            S0, [R0,#0x1C]
4DC754:  VCMPE.F32       S0, #0.0
4DC758:  VMRS            APSR_nzcv, FPSCR
4DC75C:  BGE             loc_4DC7B2
4DC75E:  CMP             R3, #1
4DC760:  BNE             loc_4DC84E
4DC762:  CMP             R1, #0
4DC764:  BEQ             loc_4DC84E
4DC766:  VLDR            S0, [R0,#0x20]
4DC76A:  MOVS            R3, #0
4DC76C:  VLDR            S2, [R0,#0x28]
4DC770:  MOVS            R1, #0
4DC772:  VCMPE.F32       S0, S16
4DC776:  VMRS            APSR_nzcv, FPSCR
4DC77A:  VSUB.F32        S4, S0, S2
4DC77E:  VCMPE.F32       S4, S16
4DC782:  IT LT
4DC784:  MOVLT           R3, #1
4DC786:  VMRS            APSR_nzcv, FPSCR
4DC78A:  IT GE
4DC78C:  MOVGE           R1, #1
4DC78E:  ORRS            R1, R3
4DC790:  BEQ             loc_4DC7A0
4DC792:  VADD.F32        S0, S0, S2
4DC796:  VCMPE.F32       S0, S16
4DC79A:  VMRS            APSR_nzcv, FPSCR
4DC79E:  BLT             loc_4DC84E
4DC7A0:  VMOV            R1, S16; float
4DC7A4:  BIC.W           R2, R2, #1
4DC7A8:  STRH            R2, [R0,#0x2E]
4DC7AA:  LDR             R0, [R4,#0x2C]; this
4DC7AC:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DC7B0:  B               loc_4DC84E
4DC7B2:  CMP             R3, #4
4DC7B4:  ITT LE
4DC7B6:  LDRSBLE.W       R1, [R4,#0xF]
4DC7BA:  CMPLE           R1, #5
4DC7BC:  BLT             loc_4DC7F0
4DC7BE:  LDR             R1, [R4,#0x30]
4DC7C0:  LDRB            R1, [R1,#0x1A]
4DC7C2:  LSLS            R1, R1, #0x1D
4DC7C4:  BMI             loc_4DC7D0
4DC7C6:  MOVS            R1, #0xC0800000
4DC7CC:  STR             R1, [R0,#0x1C]
4DC7CE:  B               loc_4DC826
4DC7D0:  ORR.W           R1, R2, #1
4DC7D4:  STRH            R1, [R0,#0x2E]
4DC7D6:  LDR             R0, [R4,#0x2C]; this
4DC7D8:  VLDR            S0, [R0,#0x20]
4DC7DC:  VCMPE.F32       S0, S16
4DC7E0:  VMRS            APSR_nzcv, FPSCR
4DC7E4:  BGT             loc_4DC826
4DC7E6:  VMOV            R1, S18; float
4DC7EA:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DC7EE:  B               loc_4DC826
4DC7F0:  VLDR            S0, [R0,#0x18]
4DC7F4:  VCMPE.F32       S0, #0.0
4DC7F8:  VMRS            APSR_nzcv, FPSCR
4DC7FC:  BLE             loc_4DC826
4DC7FE:  VLDR            S0, [R0,#0x1C]
4DC802:  VCMPE.F32       S0, #0.0
4DC806:  VMRS            APSR_nzcv, FPSCR
4DC80A:  BLT             loc_4DC826
4DC80C:  LDRSB.W         R1, [R8,#0x71C]
4DC810:  RSB.W           R1, R1, R1,LSL#3
4DC814:  ADD.W           R1, R8, R1,LSL#2
4DC818:  LDR.W           R1, [R1,#0x5A8]
4DC81C:  CMP             R1, #2
4DC81E:  ITT NE
4DC820:  ORRNE.W         R1, R2, #1
4DC824:  STRHNE          R1, [R0,#0x2E]
4DC826:  LDRB            R0, [R4,#0xF]
4DC828:  AND.W           R1, R0, #0xFE
4DC82C:  CMP             R1, #2
4DC82E:  BNE             loc_4DC840
4DC830:  MOVS            R1, #0
4DC832:  CMP             R0, #3
4DC834:  STRB            R1, [R4,#0xF]
4DC836:  STRB            R0, [R4,#0x10]
4DC838:  ITT EQ
4DC83A:  LDRHEQ          R0, [R4,#0x34]
4DC83C:  STRHEQ          R0, [R4,#0x36]
4DC83E:  B               loc_4DC84E
4DC840:  CMP             R0, #1
4DC842:  BEQ             loc_4DC84E
4DC844:  LDRB            R0, [R4,#0x10]
4DC846:  CMP             R0, #1
4DC848:  ITT EQ
4DC84A:  MOVEQ           R0, #0
4DC84C:  STRBEQ          R0, [R4,#0x10]
4DC84E:  LDR             R0, [R4,#0x2C]; this
4DC850:  VLDR            S0, [R0,#0x20]
4DC854:  VCMPE.F32       S0, S18
4DC858:  VMRS            APSR_nzcv, FPSCR
4DC85C:  BLE             loc_4DC8FE
4DC85E:  VLDR            S2, [R0,#0x28]
4DC862:  VSUB.F32        S0, S0, S2
4DC866:  VCMPE.F32       S0, S18
4DC86A:  VMRS            APSR_nzcv, FPSCR
4DC86E:  BGT             loc_4DC8FE
4DC870:  LDRB            R1, [R4,#0xF]
4DC872:  AND.W           R2, R1, #0xFE
4DC876:  CMP             R2, #2
4DC878:  BNE             loc_4DC8CE
4DC87A:  VMOV            R1, S16; float
4DC87E:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DC882:  LDRSB.W         R1, [R8,#0x71C]
4DC886:  LDR             R0, [R4,#0x2C]
4DC888:  RSB.W           R1, R1, R1,LSL#3
4DC88C:  LDRH            R2, [R0,#0x2E]
4DC88E:  ADD.W           R1, R8, R1,LSL#2
4DC892:  ORR.W           R3, R2, #1
4DC896:  LDR.W           R1, [R1,#0x5A8]
4DC89A:  CMP             R1, #2
4DC89C:  IT EQ
4DC89E:  BICEQ.W         R3, R2, #1
4DC8A2:  STRH            R3, [R0,#0x2E]
4DC8A4:  LDRB            R0, [R4,#0xF]
4DC8A6:  AND.W           R1, R0, #0xFE
4DC8AA:  CMP             R1, #2
4DC8AC:  BNE             loc_4DC8FE
4DC8AE:  LDRSB.W         R1, [R4,#0x10]
4DC8B2:  SXTB            R0, R0
4DC8B4:  CMP             R0, R1
4DC8B6:  IT GT
4DC8B8:  STRBGT          R0, [R4,#0x10]
4DC8BA:  CMP             R0, #3
4DC8BC:  BNE             loc_4DC8C8
4DC8BE:  LDRH            R0, [R4,#0x36]
4DC8C0:  CMP             R0, #0
4DC8C2:  ITT EQ
4DC8C4:  LDRHEQ          R0, [R4,#0x34]
4DC8C6:  STRHEQ          R0, [R4,#0x36]
4DC8C8:  MOVS            R0, #0
4DC8CA:  STRB            R0, [R4,#0xF]
4DC8CC:  B               loc_4DC8FE
4DC8CE:  LDRB            R2, [R4,#0x10]
4DC8D0:  CMP             R2, #3
4DC8D2:  BNE             loc_4DC8E0
4DC8D4:  CMP             R1, #4
4DC8D6:  BEQ             loc_4DC8E0
4DC8D8:  LDRSH.W         R2, [R4,#0x36]
4DC8DC:  CMP             R2, #1
4DC8DE:  BGE             loc_4DC87A
4DC8E0:  CMP             R1, #1
4DC8E2:  BNE             loc_4DC8FE
4DC8E4:  VMOV            R1, S16; float
4DC8E8:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DC8EC:  LDR             R0, [R4,#0x2C]
4DC8EE:  LDRH            R1, [R0,#0x2E]
4DC8F0:  BIC.W           R1, R1, #1
4DC8F4:  STRH            R1, [R0,#0x2E]
4DC8F6:  MOV.W           R0, #0x100
4DC8FA:  STRH.W          R0, [R4,#0xF]
4DC8FE:  LDRD.W          R0, R1, [R4,#0x2C]
4DC902:  VLDR            S0, [R1,#0x58]
4DC906:  VLDR            S2, [R0,#0x20]
4DC90A:  VCMPE.F32       S2, S0
4DC90E:  VMRS            APSR_nzcv, FPSCR
4DC912:  BLE             loc_4DC930
4DC914:  LDRB            R1, [R4,#0xF]
4DC916:  CMP             R1, #7
4DC918:  BNE             loc_4DC930
4DC91A:  MOVS            R1, #1
4DC91C:  STRB            R1, [R4,#8]
4DC91E:  LDRB.W          R1, [R0,#0x2F]
4DC922:  LSLS            R1, R1, #0x1D
4DC924:  BPL.W           loc_4DC378
4DC928:  MOVS            R1, #0xBF800000
4DC92E:  B               loc_4DC37E
4DC930:  MOVS            R0, #0
4DC932:  STRB            R0, [R4,#0xE]
4DC934:  LDRB.W          R0, [R8,#0x534]
4DC938:  LSLS            R0, R0, #0x1D
4DC93A:  BPL.W           loc_4DCB64
4DC93E:  LDR             R0, [R4,#0x1C]; this
4DC940:  CBZ             R0, loc_4DC972
4DC942:  LDRB.W          R1, [R0,#0x3A]
4DC946:  AND.W           R1, R1, #7
4DC94A:  CMP             R1, #3
4DC94C:  BNE             loc_4DC9E0
4DC94E:  ADD             R1, SP, #0x80+var_70
4DC950:  MOVS            R2, #3
4DC952:  MOVS            R3, #0
4DC954:  MOVS            R6, #0
4DC956:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4DC95A:  LDR             R0, [R4,#0x1C]
4DC95C:  ADDW            R0, R0, #0x544
4DC960:  VLDR            S0, [R0]
4DC964:  VCMPE.F32       S0, #0.0
4DC968:  VMRS            APSR_nzcv, FPSCR
4DC96C:  IT LE
4DC96E:  MOVLE           R6, #1
4DC970:  B               loc_4DCA02
4DC972:  MOV             R0, R8; this
4DC974:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DC978:  CMP             R0, #1
4DC97A:  BNE             loc_4DC9F4
4DC97C:  LDR             R0, =(TheCamera_ptr - 0x4DC982)
4DC97E:  ADD             R0, PC; TheCamera_ptr
4DC980:  LDR             R0, [R0]; TheCamera
4DC982:  LDRH.W          R0, [R0,#(word_952126 - 0x951FA8)]
4DC986:  CMP             R0, #0x35 ; '5'
4DC988:  BNE             loc_4DC9F4
4DC98A:  LDR.W           R0, [R8,#0x14]
4DC98E:  ADD             R6, SP, #0x80+var_44
4DC990:  VLDR            S0, =0.0
4DC994:  ADD.W           R1, R0, #0x30 ; '0'
4DC998:  CMP             R0, #0
4DC99A:  IT EQ
4DC99C:  ADDEQ.W         R1, R8, #4
4DC9A0:  LDR             R0, =(TheCamera_ptr - 0x4DC9AE)
4DC9A2:  VLDR            S2, [R1]
4DC9A6:  VLDR            S4, [R1,#4]
4DC9AA:  ADD             R0, PC; TheCamera_ptr
4DC9AC:  VADD.F32        S2, S2, S0
4DC9B0:  VLDR            S6, [R1,#8]
4DC9B4:  VADD.F32        S0, S4, S0
4DC9B8:  ADD             R1, SP, #0x80+var_70
4DC9BA:  LDR             R0, [R0]; TheCamera
4DC9BC:  STRD.W          R6, R1, [SP,#0x80+var_7C]
4DC9C0:  MOVS            R1, #0x41A00000
4DC9C6:  VMOV            R2, S2
4DC9CA:  VMOV            R3, S0
4DC9CE:  VLDR            S0, =0.7
4DC9D2:  VADD.F32        S0, S6, S0
4DC9D6:  VSTR            S0, [SP,#0x80+var_80]
4DC9DA:  BLX             j__ZN7CCamera28Find3rdPersonCamTargetVectorEf7CVectorRS0_S1_; CCamera::Find3rdPersonCamTargetVector(float,CVector,CVector&,CVector&)
4DC9DE:  B               loc_4DCA00
4DC9E0:  LDR             R1, [R0,#0x14]
4DC9E2:  ADD.W           R2, R1, #0x30 ; '0'
4DC9E6:  CMP             R1, #0
4DC9E8:  IT EQ
4DC9EA:  ADDEQ           R2, R0, #4
4DC9EC:  VLDR            D16, [R2]
4DC9F0:  LDR             R0, [R2,#8]
4DC9F2:  B               loc_4DC9FA
4DC9F4:  LDR             R0, [R4,#0x28]
4DC9F6:  VLDR            D16, [R4,#0x20]
4DC9FA:  STR             R0, [SP,#0x80+var_68]
4DC9FC:  VSTR            D16, [SP,#0x80+var_70]
4DCA00:  MOVS            R6, #0
4DCA02:  VLDR            S0, [SP,#0x80+var_70+4]
4DCA06:  MOVS            R1, #0
4DCA08:  VLDR            S2, [SP,#0x80+var_70]
4DCA0C:  MOVS            R0, #0
4DCA0E:  VCMP.F32        S0, #0.0
4DCA12:  VMRS            APSR_nzcv, FPSCR
4DCA16:  VCMP.F32        S2, #0.0
4DCA1A:  IT NE
4DCA1C:  MOVNE           R1, #1
4DCA1E:  VMRS            APSR_nzcv, FPSCR
4DCA22:  IT NE
4DCA24:  MOVNE           R0, #1
4DCA26:  ORRS            R0, R1
4DCA28:  BEQ.W           loc_4DCB48
4DCA2C:  LDR.W           R0, [R8,#0x14]
4DCA30:  ADD.W           R1, R0, #0x30 ; '0'
4DCA34:  CMP             R0, #0
4DCA36:  IT EQ
4DCA38:  ADDEQ.W         R1, R8, #4
4DCA3C:  ADD             R0, SP, #0x80+var_70; this
4DCA3E:  VLDR            S4, [R1]
4DCA42:  VLDR            S6, [R1,#4]
4DCA46:  VSUB.F32        S2, S2, S4
4DCA4A:  VLDR            S8, [R1,#8]
4DCA4E:  VSUB.F32        S0, S0, S6
4DCA52:  VSTR            S2, [SP,#0x80+var_70]
4DCA56:  VLDR            S2, [SP,#0x80+var_68]
4DCA5A:  VSTR            S0, [SP,#0x80+var_70+4]
4DCA5E:  VSUB.F32        S0, S2, S8
4DCA62:  VSTR            S0, [SP,#0x80+var_68]
4DCA66:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4DCA6A:  VLDR            S16, [SP,#0x80+var_70]
4DCA6E:  VLDR            S18, [SP,#0x80+var_70+4]
4DCA72:  VMOV            R0, S16
4DCA76:  VMOV            R1, S18; x
4DCA7A:  EOR.W           R0, R0, #0x80000000; y
4DCA7E:  BLX             atan2f
4DCA82:  ADDW            R1, R8, #0x55C
4DCA86:  VMOV            S0, R0
4DCA8A:  VLDR            S2, [R1]
4DCA8E:  VSUB.F32        S0, S0, S2
4DCA92:  VLDR            S2, =3.1416
4DCA96:  VCMPE.F32       S0, S2
4DCA9A:  VMRS            APSR_nzcv, FPSCR
4DCA9E:  BLE             loc_4DCAA6
4DCAA0:  VLDR            S2, =-6.2832
4DCAA4:  B               loc_4DCAB8
4DCAA6:  VLDR            S2, =-3.1416
4DCAAA:  VCMPE.F32       S0, S2
4DCAAE:  VMRS            APSR_nzcv, FPSCR
4DCAB2:  BGE             loc_4DCABC
4DCAB4:  VLDR            S2, =6.2832
4DCAB8:  VADD.F32        S0, S0, S2
4DCABC:  VMOV            S2, R6
4DCAC0:  VLDR            S4, =0.69813
4DCAC4:  VCVT.F32.U32    S2, S2
4DCAC8:  VMUL.F32        S2, S2, S4
4DCACC:  VLDR            S4, =2.0071
4DCAD0:  VSUB.F32        S4, S4, S2
4DCAD4:  VCMPE.F32       S0, S4
4DCAD8:  VMRS            APSR_nzcv, FPSCR
4DCADC:  BGT             loc_4DCAF0
4DCADE:  VLDR            S4, =-2.2689
4DCAE2:  VADD.F32        S2, S2, S4
4DCAE6:  VCMPE.F32       S0, S2
4DCAEA:  VMRS            APSR_nzcv, FPSCR
4DCAEE:  BGE             loc_4DCAF4
4DCAF0:  MOVS            R0, #1
4DCAF2:  STRB            R0, [R4,#0xE]
4DCAF4:  LDR.W           R0, [R8,#0x14]
4DCAF8:  CBZ             R0, loc_4DCB08
4DCAFA:  VLDR            S4, [R0,#0x20]
4DCAFE:  VLDR            S2, [R0,#0x24]
4DCB02:  VLDR            S0, [R0,#0x28]
4DCB06:  B               loc_4DCB14
4DCB08:  VLDR            S2, =0.0
4DCB0C:  VMOV.F32        S0, #1.0
4DCB10:  VMOV.F32        S4, S2
4DCB14:  VMUL.F32        S2, S2, S18
4DCB18:  VLDR            S6, [SP,#0x80+var_68]
4DCB1C:  VMUL.F32        S4, S4, S16
4DCB20:  MOVS            R0, #0
4DCB22:  VMUL.F32        S0, S0, S6
4DCB26:  VADD.F32        S2, S4, S2
4DCB2A:  VADD.F32        S0, S2, S0
4DCB2E:  VLDR            S2, =-0.8
4DCB32:  VCMPE.F32       S0, S2
4DCB36:  VMRS            APSR_nzcv, FPSCR
4DCB3A:  IT LT
4DCB3C:  MOVLT           R0, #1
4DCB3E:  ANDS            R0, R6
4DCB40:  CMP             R0, #1
4DCB42:  ITT EQ
4DCB44:  MOVEQ           R0, #1
4DCB46:  STRBEQ          R0, [R4,#0xE]
4DCB48:  LDR.W           R1, [R11,#8]
4DCB4C:  LDR.W           R0, [R11]
4DCB50:  AND.W           R1, R1, R10
4DCB54:  AND.W           R0, R0, R9
4DCB58:  EOR.W           R1, R1, R10
4DCB5C:  ORRS            R0, R1
4DCB5E:  ITT EQ
4DCB60:  MOVEQ           R0, #1
4DCB62:  STRBEQ          R0, [R4,#0xE]
4DCB64:  LDRSB.W         R0, [R4,#0x10]
4DCB68:  CBZ             R0, loc_4DCB72
4DCB6A:  CMP             R0, #3
4DCB6C:  BGT             loc_4DCB72
4DCB6E:  LDRB            R0, [R4,#0xE]
4DCB70:  CBZ             R0, loc_4DCBC4
4DCB72:  MOV             R0, R4; this
4DCB74:  MOV             R1, R8; CPed *
4DCB76:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DCB7A:  LDR             R0, [R4,#0x30]
4DCB7C:  LDRB            R0, [R0,#0x18]
4DCB7E:  LSLS            R0, R0, #0x1E
4DCB80:  BPL             loc_4DCB8E
4DCB82:  LDRB.W          R0, [R11,#3]
4DCB86:  LSLS            R0, R0, #0x1D
4DCB88:  BMI             loc_4DCB8E
4DCB8A:  LDRB            R0, [R4,#0xA]
4DCB8C:  CBZ             R0, loc_4DCB96
4DCB8E:  MOV             R0, R4; this
4DCB90:  MOV             R1, R8; CPed *
4DCB92:  BLX             j__ZN17CTaskSimpleUseGun11SetMoveAnimEP4CPed; CTaskSimpleUseGun::SetMoveAnim(CPed *)
4DCB96:  LDRSB.W         R0, [R4,#0xF]
4DCB9A:  CMP             R0, #5
4DCB9C:  BGT             loc_4DCBB0
4DCB9E:  CMP             R0, #4
4DCBA0:  BNE             loc_4DCBAC
4DCBA2:  LDRB            R0, [R4,#0x10]
4DCBA4:  AND.W           R0, R0, #0xFE
4DCBA8:  CMP             R0, #2
4DCBAA:  BEQ             loc_4DCBB0
4DCBAC:  MOVS            R0, #0
4DCBAE:  STRB            R0, [R4,#0xF]
4DCBB0:  MOVS            R6, #0
4DCBB2:  STRB            R6, [R4,#9]
4DCBB4:  MOV             R0, R6
4DCBB6:  ADD             SP, SP, #0x48 ; 'H'
4DCBB8:  VPOP            {D8-D10}
4DCBBC:  ADD             SP, SP, #4
4DCBBE:  POP.W           {R8-R11}
4DCBC2:  POP             {R4-R7,PC}
4DCBC4:  MOV             R0, R4; this
4DCBC6:  MOV             R1, R8; CPed *
4DCBC8:  BLX             j__ZN17CTaskSimpleUseGun6AimGunEP4CPed; CTaskSimpleUseGun::AimGun(CPed *)
4DCBCC:  B               loc_4DCB7A
4DCBCE:  BIC.W           R1, R2, #1
4DCBD2:  STRH            R1, [R0,#0x2E]
4DCBD4:  LDR             R0, [R4,#0x2C]
4DCBD6:  MOVS            R1, #0xC0800000
4DCBDC:  STR             R1, [R0,#0x1C]
4DCBDE:  B               loc_4DC720
