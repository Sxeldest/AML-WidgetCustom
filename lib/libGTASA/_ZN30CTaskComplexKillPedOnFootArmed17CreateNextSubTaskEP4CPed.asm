; =========================================================
; Game Engine Function: _ZN30CTaskComplexKillPedOnFootArmed17CreateNextSubTaskEP4CPed
; Address            : 0x4E3080 - 0x4E3B28
; =========================================================

4E3080:  PUSH            {R4-R7,LR}
4E3082:  ADD             R7, SP, #0xC
4E3084:  PUSH.W          {R8-R11}
4E3088:  SUB             SP, SP, #4
4E308A:  VPUSH           {D8-D14}
4E308E:  SUB             SP, SP, #0x48; CVector *
4E3090:  MOV             R9, R0
4E3092:  MOV             R5, R1
4E3094:  LDR.W           R0, [R9,#0xC]
4E3098:  CMP             R0, #0
4E309A:  BEQ.W           loc_4E31B2
4E309E:  LDRSB.W         R1, [R0,#0x71C]
4E30A2:  RSB.W           R1, R1, R1,LSL#3
4E30A6:  ADD.W           R0, R0, R1,LSL#2
4E30AA:  ADDW            R0, R0, #0x5A4; this
4E30AE:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4E30B2:  MOV             R8, R0
4E30B4:  LDRSB.W         R0, [R5,#0x71C]
4E30B8:  RSB.W           R0, R0, R0,LSL#3
4E30BC:  ADD.W           R0, R5, R0,LSL#2
4E30C0:  LDR.W           R4, [R0,#0x5A4]
4E30C4:  MOV             R0, R5; this
4E30C6:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4E30CA:  MOV             R1, R0
4E30CC:  MOV             R0, R4
4E30CE:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4E30D2:  MOV             R4, R0
4E30D4:  LDRD.W          R0, R1, [R9,#8]
4E30D8:  LDR             R2, [R5,#0x14]
4E30DA:  ADD.W           R11, R5, #4
4E30DE:  LDR             R3, [R1,#0x14]
4E30E0:  CMP             R2, #0
4E30E2:  MOV             R6, R11
4E30E4:  IT NE
4E30E6:  ADDNE.W         R6, R2, #0x30 ; '0'
4E30EA:  ADD.W           R2, R3, #0x30 ; '0'
4E30EE:  CMP             R3, #0
4E30F0:  VLDR            S16, [R6]
4E30F4:  VLDR            S22, [R6,#4]
4E30F8:  VLDR            S20, [R6,#8]
4E30FC:  IT EQ
4E30FE:  ADDEQ           R2, R1, #4
4E3100:  LDR             R1, [R0]
4E3102:  VLDR            S24, [R2]
4E3106:  VLDR            S28, [R2,#4]
4E310A:  LDR             R1, [R1,#0x14]
4E310C:  VLDR            S26, [R2,#8]
4E3110:  VLDR            S18, [R4,#4]
4E3114:  BLX             R1
4E3116:  MOVS            R6, #0
4E3118:  CMP.W           R0, #0x384
4E311C:  BLT             loc_4E31B8
4E311E:  SUB.W           R1, R0, #0x384; switch 8 cases
4E3122:  CMP             R1, #7
4E3124:  BHI.W           def_4E3128; jumptable 004E3128 default case
4E3128:  TBH.W           [PC,R1,LSL#1]; switch jump
4E312C:  DCW 0xE2; jump table for switch statement
4E312E:  DCW 0x9A
4E3130:  DCW 0x4F1
4E3132:  DCW 8
4E3134:  DCW 0x4F1
4E3136:  DCW 0x4F1
4E3138:  DCW 0x4F1
4E313A:  DCW 8
4E313C:  MOV             R0, R9; jumptable 004E3128 cases 903,907
4E313E:  MOV             R1, R5; CPed *
4E3140:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed25LineOfSightClearForAttackEP4CPed; CTaskComplexKillPedOnFootArmed::LineOfSightClearForAttack(CPed *)
4E3144:  CMP             R0, #1
4E3146:  BEQ.W           loc_4E32FC
4E314A:  LDRSB.W         R0, [R5,#0x71C]
4E314E:  RSB.W           R0, R0, R0,LSL#3
4E3152:  ADD.W           R0, R5, R0,LSL#2
4E3156:  LDR.W           R4, [R0,#0x5A4]
4E315A:  MOV             R0, R5; this
4E315C:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4E3160:  MOV             R1, R0
4E3162:  MOV             R0, R4
4E3164:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4E3168:  ADD             R4, SP, #0xA0+var_78
4E316A:  MOV.W           R0, #0x41000000
4E316E:  STR             R0, [SP,#0xA0+var_A0]; float
4E3170:  MOVS            R1, #0; int
4E3172:  MOV             R0, R4; this
4E3174:  MOVS            R2, #0; bool
4E3176:  MOVS            R3, #0; bool
4E3178:  MOV.W           R8, #0
4E317C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E3180:  MOV             R1, R5; CPed *
4E3182:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4E3186:  MOV             R0, R4; this
4E3188:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
4E318C:  MOVS            R0, #off_18; this
4E318E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E3192:  MOV             R6, R0
4E3194:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E3198:  LDR.W           R0, =(_ZTV16CTaskSimplePause_ptr - 0x4E31A4)
4E319C:  STRH.W          R8, [R6,#0x10]
4E31A0:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
4E31A2:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
4E31A4:  ADDS            R0, #8
4E31A6:  STR             R0, [R6]
4E31A8:  MOVS            R0, #0x64 ; 'd'
4E31AA:  STR             R0, [R6,#0x14]
4E31AC:  STRD.W          R8, R8, [R6,#8]
4E31B0:  B               loc_4E3332
4E31B2:  MOVS            R6, #0
4E31B4:  B.W             loc_4E3B18
4E31B8:  SUB.W           R1, R0, #0xCA
4E31BC:  CMP             R1, #2
4E31BE:  BCS             loc_4E32B8
4E31C0:  LDRB.W          R0, [R5,#0x486]
4E31C4:  TST.W           R0, #0x60
4E31C8:  BEQ.W           loc_4E330E
4E31CC:  LDRSB.W         R0, [R5,#0x71C]
4E31D0:  RSB.W           R0, R0, R0,LSL#3
4E31D4:  ADD.W           R0, R5, R0,LSL#2
4E31D8:  LDR.W           R4, [R0,#0x5A4]
4E31DC:  MOV             R0, R5; this
4E31DE:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4E31E2:  MOV             R1, R0
4E31E4:  MOV             R0, R4
4E31E6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4E31EA:  LDR.W           R1, [R9,#0xC]
4E31EE:  MOVS            R4, #0xCA
4E31F0:  LDR             R2, [R5,#0x14]
4E31F2:  LDR             R3, [R1,#0x14]
4E31F4:  CMP             R2, #0
4E31F6:  IT NE
4E31F8:  ADDNE.W         R11, R2, #0x30 ; '0'
4E31FC:  ADD.W           R2, R3, #0x30 ; '0'
4E3200:  CMP             R3, #0
4E3202:  VLDR            S0, [R11]
4E3206:  IT EQ
4E3208:  ADDEQ           R2, R1, #4
4E320A:  VLDR            S2, [R2]
4E320E:  VLDR            D16, [R11,#4]
4E3212:  VSUB.F32        S0, S2, S0
4E3216:  VLDR            D17, [R2,#4]
4E321A:  VSUB.F32        D16, D17, D16
4E321E:  VLDR            S4, [R0,#4]
4E3222:  VMUL.F32        S4, S4, S4
4E3226:  VMUL.F32        D1, D16, D16
4E322A:  VMUL.F32        S0, S0, S0
4E322E:  VADD.F32        S0, S0, S2
4E3232:  VADD.F32        S0, S0, S3
4E3236:  VCMPE.F32       S0, S4
4E323A:  VMRS            APSR_nzcv, FPSCR
4E323E:  BGE             loc_4E3250
4E3240:  MOV             R0, R9; this
4E3242:  MOV             R1, R5; CPed *
4E3244:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed25LineOfSightClearForAttackEP4CPed; CTaskComplexKillPedOnFootArmed::LineOfSightClearForAttack(CPed *)
4E3248:  CMP             R0, #0
4E324A:  IT NE
4E324C:  MOVNE.W         R4, #0x3FC
4E3250:  MOV             R0, R9
4E3252:  MOV             R1, R4
4E3254:  B               loc_4E3302
4E3256:  SUB.W           R0, R0, #0x3FC; jumptable 004E3128 default case
4E325A:  CMP             R0, #2
4E325C:  BCS.W           loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E3260:  LDR.W           R0, [R5,#0x484]; jumptable 004E3128 case 901
4E3264:  ADDW            R10, R5, #0x484
4E3268:  TST.W           R0, #0x200000
4E326C:  BNE.W           loc_4E3A68
4E3270:  VSUB.F32        S0, S28, S22
4E3274:  VSUB.F32        S2, S24, S16
4E3278:  VSUB.F32        S4, S26, S20
4E327C:  VMUL.F32        S0, S0, S0
4E3280:  VMUL.F32        S2, S2, S2
4E3284:  VMUL.F32        S4, S4, S4
4E3288:  VADD.F32        S0, S2, S0
4E328C:  VADD.F32        S0, S0, S4
4E3290:  VSQRT.F32       S16, S0
4E3294:  VMOV.F32        S0, #3.0
4E3298:  VCMPE.F32       S16, S0
4E329C:  VMRS            APSR_nzcv, FPSCR
4E32A0:  BGE             loc_4E3348
4E32A2:  MOV             R0, R9; this
4E32A4:  MOV.W           R1, #0x3FC; int
4E32A8:  MOV             R2, R5; CPed *
4E32AA:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed13CreateSubTaskEiP4CPed; CTaskComplexKillPedOnFootArmed::CreateSubTask(int,CPed *)
4E32AE:  MOV             R6, R0
4E32B0:  CMP             R6, #0
4E32B2:  BNE.W           loc_4E3AD8
4E32B6:  B               loc_4E3A68
4E32B8:  MOVW            R1, #0x19F
4E32BC:  CMP             R0, R1
4E32BE:  BNE.W           loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E32C2:  MOV             R0, R9; this
4E32C4:  MOV             R1, R5; CPed *
4E32C6:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed25LineOfSightClearForAttackEP4CPed; CTaskComplexKillPedOnFootArmed::LineOfSightClearForAttack(CPed *)
4E32CA:  CMP             R0, #0
4E32CC:  MOV.W           R1, #0xCA
4E32D0:  IT NE
4E32D2:  MOVNE.W         R1, #0x3FC; int
4E32D6:  MOV             R0, R9; this
4E32D8:  MOV             R2, R5; CPed *
4E32DA:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed13CreateSubTaskEiP4CPed; CTaskComplexKillPedOnFootArmed::CreateSubTask(int,CPed *)
4E32DE:  MOV             R6, R0
4E32E0:  LDR.W           R0, [R5,#0x484]
4E32E4:  BIC.W           R0, R0, #0x4000000
4E32E8:  STR.W           R0, [R5,#0x484]
4E32EC:  B.W             loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E32F0:  MOV             R0, R9; jumptable 004E3128 case 900
4E32F2:  MOV             R1, R5; CPed *
4E32F4:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed25LineOfSightClearForAttackEP4CPed; CTaskComplexKillPedOnFootArmed::LineOfSightClearForAttack(CPed *)
4E32F8:  CMP             R0, #1
4E32FA:  BNE             loc_4E33F6
4E32FC:  MOV             R0, R9; this
4E32FE:  MOV.W           R1, #0x3FC; int
4E3302:  MOV             R2, R5; CPed *
4E3304:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed13CreateSubTaskEiP4CPed; CTaskComplexKillPedOnFootArmed::CreateSubTask(int,CPed *)
4E3308:  MOV             R6, R0
4E330A:  B.W             loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E330E:  MOVS            R0, #0
4E3310:  MOVS            R1, #0x90; unsigned __int16
4E3312:  STRD.W          R0, R0, [SP,#0xA0+var_A0]; unsigned __int8
4E3316:  MOVS            R2, #0; unsigned int
4E3318:  STR             R0, [SP,#0xA0+var_98]; unsigned __int8
4E331A:  MOV             R0, R5; this
4E331C:  MOV.W           R3, #0x3F800000; float
4E3320:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4E3324:  MOV             R0, R9; this
4E3326:  MOVW            R1, #0x38B; int
4E332A:  MOV             R2, R5; CPed *
4E332C:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed13CreateSubTaskEiP4CPed; CTaskComplexKillPedOnFootArmed::CreateSubTask(int,CPed *)
4E3330:  MOV             R6, R0
4E3332:  LDR.W           R0, [R9,#0x58]!
4E3336:  CMP             R0, #0
4E3338:  BNE.W           loc_4E3B18
4E333C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E3344)
4E3340:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E3342:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E3344:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E3346:  B               loc_4E3B14
4E3348:  VLDR            S0, =0.8
4E334C:  VMOV.F32        S2, #23.0
4E3350:  VMUL.F32        S0, S18, S0
4E3354:  VMIN.F32        D0, D0, D1
4E3358:  VCMPE.F32       S16, S0
4E335C:  VMRS            APSR_nzcv, FPSCR
4E3360:  BLE             loc_4E345E
4E3362:  LSLS            R0, R0, #9
4E3364:  BMI.W           loc_4E3A68
4E3368:  MOVS            R0, #dword_4C; this
4E336A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E336E:  MOV             R6, R0
4E3370:  LDR.W           R4, [R9,#0xC]
4E3374:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E3378:  VLDR            S0, =0.6
4E337C:  VMOV.F32        S2, #20.0
4E3380:  LDR.W           R0, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x4E3394)
4E3384:  MOVW            R2, #0xC350
4E3388:  VMUL.F32        S0, S18, S0
4E338C:  LDR.W           R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x4E339A)
4E3390:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
4E3392:  MOV.W           R3, #0x3E8
4E3396:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
4E3398:  STRD.W          R2, R3, [R6,#0x10]
4E339C:  MOV.W           R2, #0x40000000
4E33A0:  MOVS            R3, #0
4E33A2:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorStandard ...
4E33A4:  CMP             R4, #0
4E33A6:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
4E33A8:  VMIN.F32        D0, D0, D1
4E33AC:  ADD.W           R0, R0, #8
4E33B0:  ADD.W           R1, R1, #8
4E33B4:  VSTR            S0, [R6,#0x18]
4E33B8:  STR             R2, [R6,#0x1C]
4E33BA:  STRD.W          R3, R2, [R6,#0x20]
4E33BE:  MOV.W           R2, #6
4E33C2:  STRH            R3, [R6,#0x30]
4E33C4:  STRH            R3, [R6,#0x3C]
4E33C6:  STRD.W          R3, R3, [R6,#0x28]
4E33CA:  STRD.W          R3, R3, [R6,#0x34]
4E33CE:  LDRB.W          R3, [R6,#0x48]
4E33D2:  STR             R1, [R6]
4E33D4:  MOV             R1, R6
4E33D6:  STRD.W          R0, R2, [R6,#0x40]
4E33DA:  AND.W           R0, R3, #0xF0
4E33DE:  ORR.W           R0, R0, #3
4E33E2:  STRB.W          R0, [R6,#0x48]
4E33E6:  STR.W           R4, [R1,#0xC]!; CEntity **
4E33EA:  BEQ.W           loc_4E32B0
4E33EE:  MOV             R0, R4; this
4E33F0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E33F4:  B               loc_4E32B0
4E33F6:  LDRSB.W         R0, [R5,#0x71C]
4E33FA:  RSB.W           R0, R0, R0,LSL#3
4E33FE:  ADD.W           R0, R5, R0,LSL#2
4E3402:  LDR.W           R4, [R0,#0x5A4]
4E3406:  MOV             R0, R5; this
4E3408:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4E340C:  MOV             R1, R0
4E340E:  MOV             R0, R4
4E3410:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4E3414:  ADD             R4, SP, #0xA0+var_78
4E3416:  MOV.W           R0, #0x41000000
4E341A:  STR             R0, [SP,#0xA0+var_A0]; float
4E341C:  MOVS            R1, #0; int
4E341E:  MOV             R0, R4; this
4E3420:  MOVS            R2, #0; bool
4E3422:  MOVS            R3, #0; bool
4E3424:  MOV.W           R8, #0
4E3428:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E342C:  MOV             R1, R5; CPed *
4E342E:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4E3432:  MOV             R0, R4; this
4E3434:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
4E3438:  MOVS            R0, #off_18; this
4E343A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E343E:  MOV             R6, R0
4E3440:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E3444:  LDR.W           R0, =(_ZTV16CTaskSimplePause_ptr - 0x4E3450)
4E3448:  STRH.W          R8, [R6,#0x10]
4E344C:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
4E344E:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
4E3450:  ADDS            R0, #8
4E3452:  STR             R0, [R6]
4E3454:  MOVS            R0, #0x64 ; 'd'
4E3456:  STR             R0, [R6,#0x14]
4E3458:  STRD.W          R8, R8, [R6,#8]
4E345C:  B               loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E345E:  LDR.W           R0, [R9,#8]
4E3462:  LDR             R1, [R0]
4E3464:  LDR             R1, [R1,#0x14]
4E3466:  BLX             R1
4E3468:  CMP.W           R0, #0x3FC
4E346C:  BNE             loc_4E3484
4E346E:  LDR.W           R0, [R9,#8]
4E3472:  LDRB.W          R0, [R0,#0x39]
4E3476:  CBZ             R0, loc_4E3484
4E3478:  LDRB.W          R0, [R10,#2]
4E347C:  TST.W           R0, #0x60
4E3480:  BEQ.W           loc_4E35E6
4E3484:  CMP.W           R8, #0
4E3488:  BNE.W           loc_4E3836
4E348C:  LDR.W           R0, [R5,#0x790]
4E3490:  CMP             R0, #0
4E3492:  BEQ.W           loc_4E36EE
4E3496:  LDR.W           R1, [R9,#0xC]
4E349A:  LDR             R2, [R1,#0x14]
4E349C:  ADD.W           R3, R2, #0x30 ; '0'
4E34A0:  CMP             R2, #0
4E34A2:  IT EQ
4E34A4:  ADDEQ           R3, R1, #4
4E34A6:  LDM             R3, {R1-R3}
4E34A8:  BLX             j__ZN6CCover31DoesCoverPointStillProvideCoverEP11CCoverPoint7CVector; CCover::DoesCoverPointStillProvideCover(CCoverPoint *,CVector)
4E34AC:  CMP             R0, #1
4E34AE:  BNE.W           loc_4E36EE
4E34B2:  LDR.W           R1, [R9,#0xC]
4E34B6:  LDR.W           R0, [R5,#0x790]; this
4E34BA:  LDR             R3, [R1,#0x14]
4E34BC:  ADD.W           R2, R3, #0x30 ; '0'
4E34C0:  CMP             R3, #0
4E34C2:  ADD             R3, SP, #0xA0+var_78; CVector *
4E34C4:  IT EQ
4E34C6:  ADDEQ           R2, R1, #4; CPed *
4E34C8:  MOV             R1, R5; CCoverPoint *
4E34CA:  BLX             j__ZN6CCover25FindCoordinatesCoverPointEP11CCoverPointP4CPedR7CVectorS5_; CCover::FindCoordinatesCoverPoint(CCoverPoint *,CPed *,CVector &,CVector &)
4E34CE:  CMP             R0, #1
4E34D0:  BNE.W           loc_4E36E6
4E34D4:  LDR             R0, [R5,#0x14]
4E34D6:  MOV             R1, R11
4E34D8:  VLDR            D16, [SP,#0xA0+var_78]
4E34DC:  VMOV.F32        S2, #0.75
4E34E0:  CMP             R0, #0
4E34E2:  IT NE
4E34E4:  ADDNE.W         R1, R0, #0x30 ; '0'
4E34E8:  VLDR            D17, [R1]
4E34EC:  VSUB.F32        D16, D17, D16
4E34F0:  VMUL.F32        D0, D16, D16
4E34F4:  VADD.F32        S0, S0, S1
4E34F8:  VSQRT.F32       S0, S0
4E34FC:  VCMPE.F32       S0, S2
4E3500:  VMRS            APSR_nzcv, FPSCR
4E3504:  BGE.W           loc_4E36E0
4E3508:  LDR.W           R0, [R5,#0x790]
4E350C:  LDRB            R0, [R0,#1]
4E350E:  CMP             R0, #0
4E3510:  BEQ.W           loc_4E3684
4E3514:  BLX             rand
4E3518:  TST.W           R0, #1
4E351C:  ITT EQ
4E351E:  LDRBEQ          R0, [R4,#0x19]
4E3520:  MOVSEQ.W        R0, R0,LSL#31
4E3524:  BNE.W           loc_4E36E0
4E3528:  MOVS            R0, #off_3C; this
4E352A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E352E:  MOV             R6, R0
4E3530:  LDR.W           R4, [R9,#0xC]
4E3534:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E3538:  LDR.W           R0, =(_ZTV21CTaskSimpleGunControl_ptr - 0x4E354A)
4E353C:  VMOV.I32        Q8, #0
4E3540:  ADD.W           R1, R6, #0x10
4E3544:  CMP             R4, #0
4E3546:  ADD             R0, PC; _ZTV21CTaskSimpleGunControl_ptr
4E3548:  VST1.32         {D16-D17}, [R1]
4E354C:  MOV.W           R1, #0
4E3550:  LDR             R0, [R0]; `vtable for'CTaskSimpleGunControl ...
4E3552:  STRB            R1, [R6,#8]
4E3554:  STRD.W          R1, R1, [R6,#0x20]
4E3558:  MOV             R1, R6
4E355A:  ADD.W           R0, R0, #8
4E355E:  STR             R0, [R6]
4E3560:  STR.W           R4, [R1,#0xC]!; CEntity **
4E3564:  ITT NE
4E3566:  MOVNE           R0, R4; this
4E3568:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E356C:  MOVS            R1, #5
4E356E:  MOVS            R2, #0
4E3570:  STRH            R1, [R6,#0x2C]
4E3572:  MOVS            R1, #3
4E3574:  STRB.W          R1, [R6,#0x2E]
4E3578:  MOV.W           R1, #0x3F800000
4E357C:  STR             R1, [R6,#0x30]
4E357E:  MOV.W           R1, #0xFFFFFFFF
4E3582:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E3594)
4E3586:  STR             R2, [R6,#0x34]
4E3588:  STR             R1, [R6,#0x28]
4E358A:  MOVS            R1, #1
4E358C:  STRB.W          R1, [R6,#0x38]
4E3590:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E3592:  STRB.W          R2, [R6,#0x39]
4E3596:  LDRB.W          R1, [R9,#0x35]
4E359A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E359C:  CMP             R1, #0
4E359E:  IT NE
4E35A0:  MOVNE           R1, #1
4E35A2:  STRB.W          R1, [R6,#0x3A]
4E35A6:  MOVW            R1, #0x101
4E35AA:  STRB.W          R2, [R9,#0x35]
4E35AE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E35B0:  STRH.W          R1, [R9,#0x31]
4E35B4:  MOVW            R1, #0x1388
4E35B8:  ADD             R1, R0
4E35BA:  STRD.W          R1, R0, [R9,#0x10]
4E35BE:  ADDW            R0, R0, #0x9C4
4E35C2:  STR.W           R0, [R9,#0x2C]
4E35C6:  LDR.W           R0, [R5,#0x790]
4E35CA:  LDRB            R0, [R0,#1]
4E35CC:  CMP             R0, #1
4E35CE:  ITT EQ
4E35D0:  MOVEQ           R0, #0
4E35D2:  STRBEQ.W        R0, [R9,#0x31]
4E35D6:  LDR.W           R0, [R5,#0x440]; this
4E35DA:  BLX             j__ZN16CPedIntelligence22ClearTaskDuckSecondaryEv; CPedIntelligence::ClearTaskDuckSecondary(void)
4E35DE:  CMP             R6, #0
4E35E0:  BNE.W           loc_4E3AD8
4E35E4:  B               loc_4E36EE
4E35E6:  MOVS            R4, #0
4E35E8:  MOV             R0, R5; this
4E35EA:  MOVS            R1, #0x90; unsigned __int16
4E35EC:  MOVS            R2, #0; unsigned int
4E35EE:  MOV.W           R3, #0x3F800000; float
4E35F2:  STRD.W          R4, R4, [SP,#0xA0+var_A0]; unsigned __int8
4E35F6:  STR             R4, [SP,#0xA0+var_98]; unsigned __int8
4E35F8:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4E35FC:  MOVS            R0, #dword_4C; this
4E35FE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E3602:  MOV             R6, R0
4E3604:  LDR.W           R0, [R9,#0xC]
4E3608:  STR             R0, [SP,#0xA0+var_88]
4E360A:  MOV             R0, R6; this
4E360C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E3610:  LDR.W           R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x4E3620)
4E3614:  ADR.W           R2, dword_4E3B30
4E3618:  LDR.W           R0, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x4E362A)
4E361C:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
4E361E:  VLD1.64         {D16-D17}, [R2@128]
4E3622:  ADD.W           R2, R6, #0x18
4E3626:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
4E3628:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
4E362A:  VST1.32         {D16-D17}, [R2]
4E362E:  MOV.W           R2, #0x3E8
4E3632:  ADDS            R1, #8
4E3634:  STR             R1, [R6]
4E3636:  MOVW            R1, #0xC350
4E363A:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorStandard ...
4E363C:  STRD.W          R1, R2, [R6,#0x10]
4E3640:  MOVS            R2, #6
4E3642:  STRH            R4, [R6,#0x30]
4E3644:  ADDS            R0, #8
4E3646:  STRH            R4, [R6,#0x3C]
4E3648:  STRD.W          R4, R4, [R6,#0x28]
4E364C:  STRD.W          R4, R4, [R6,#0x34]
4E3650:  LDRB.W          R1, [R6,#0x48]
4E3654:  STRD.W          R0, R2, [R6,#0x40]
4E3658:  AND.W           R0, R1, #0xF0
4E365C:  MOV             R1, R6
4E365E:  ORR.W           R0, R0, #3
4E3662:  STRB.W          R0, [R6,#0x48]
4E3666:  LDR             R0, [SP,#0xA0+var_88]; this
4E3668:  STR.W           R0, [R1,#0xC]!; CEntity **
4E366C:  CBZ             R0, loc_4E36E8
4E366E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E3672:  CMP             R6, #0
4E3674:  BNE.W           loc_4E3AD8
4E3678:  B               loc_4E36EE
4E367A:  ALIGN 4
4E367C:  DCFS 0.8
4E3680:  DCFS 0.6
4E3684:  VMOV.F32        S0, #12.0
4E3688:  VCMPE.F32       S16, S0
4E368C:  VMRS            APSR_nzcv, FPSCR
4E3690:  BGE             loc_4E36E0
4E3692:  LDRB.W          R0, [R10,#3]
4E3696:  LSLS            R0, R0, #0x1F
4E3698:  BNE             loc_4E36E0
4E369A:  BLX             rand
4E369E:  TST.W           R0, #3
4E36A2:  BNE             loc_4E36E0
4E36A4:  LDR.W           R0, [R5,#0x440]
4E36A8:  MOVS            R1, #1; int
4E36AA:  ADDS            R0, #4; this
4E36AC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4E36B0:  CBNZ            R0, loc_4E36E0
4E36B2:  MOVS            R0, #0
4E36B4:  MOVS            R1, #0x55 ; 'U'; unsigned __int16
4E36B6:  STRD.W          R0, R0, [SP,#0xA0+var_A0]; CVector *
4E36BA:  MOVS            R2, #0; unsigned int
4E36BC:  STR             R0, [SP,#0xA0+var_98]; unsigned __int8
4E36BE:  MOV             R0, R5; this
4E36C0:  MOV.W           R3, #0x3F800000; float
4E36C4:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4E36C8:  MOVS            R0, #word_28; this
4E36CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E36CE:  MOVS            R1, #0; unsigned __int8
4E36D0:  MOVW            R2, #0x9C4; unsigned __int16
4E36D4:  MOV.W           R3, #0xFFFFFFFF; __int16
4E36D8:  MOV             R6, R0
4E36DA:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
4E36DE:  CBNZ            R6, loc_4E36E8
4E36E0:  MOV             R0, R5; this
4E36E2:  BLX             j__ZN4CPed17ReleaseCoverPointEv; CPed::ReleaseCoverPoint(void)
4E36E6:  MOVS            R6, #0
4E36E8:  CMP             R6, #0
4E36EA:  BNE.W           loc_4E3AD8
4E36EE:  VMOV.F32        S0, #6.0
4E36F2:  LDRSB.W         R0, [R9,#0x30]
4E36F6:  MOVS            R2, #0
4E36F8:  MOVS            R1, #0
4E36FA:  VCMPE.F32       S16, S0
4E36FE:  VMRS            APSR_nzcv, FPSCR
4E3702:  IT LE
4E3704:  MOVLE           R2, #1
4E3706:  CMP             R0, #1
4E3708:  IT LT
4E370A:  MOVLT           R1, #1
4E370C:  ORR.W           R0, R2, R1
4E3710:  ORRS.W          R0, R0, R8
4E3714:  BNE.W           loc_4E3836
4E3718:  BLX             rand
4E371C:  TST.W           R0, #1
4E3720:  BEQ.W           loc_4E3836
4E3724:  MOV             R0, R5; this
4E3726:  BLX             j__ZN4CPed17ReleaseCoverPointEv; CPed::ReleaseCoverPoint(void)
4E372A:  LDR.W           R0, [R9,#0xC]
4E372E:  LDRB.W          R3, [R9,#0x30]; bool
4E3732:  LDR             R2, [R0,#0x14]
4E3734:  ADD.W           R1, R2, #0x30 ; '0'
4E3738:  CMP             R2, #0
4E373A:  IT EQ
4E373C:  ADDEQ           R1, R0, #4; CPed *
4E373E:  MOVS            R2, #0
4E3740:  CMP             R3, #2
4E3742:  MOV             R0, R5; this
4E3744:  IT EQ
4E3746:  MOVEQ           R2, #(stderr+1); CVector *
4E3748:  BLX             j__ZN6CCover24FindAndReserveCoverPointEP4CPedR7CVectorb; CCover::FindAndReserveCoverPoint(CPed *,CVector &,bool)
4E374C:  CMP             R0, #0
4E374E:  STR.W           R0, [R5,#0x790]
4E3752:  BEQ             loc_4E3836
4E3754:  LDR.W           R1, [R9,#0xC]
4E3758:  LDR             R3, [R1,#0x14]
4E375A:  ADD.W           R2, R3, #0x30 ; '0'
4E375E:  CMP             R3, #0
4E3760:  ADD             R3, SP, #0xA0+var_78; CVector *
4E3762:  IT EQ
4E3764:  ADDEQ           R2, R1, #4; CPed *
4E3766:  MOV             R1, R5; CCoverPoint *
4E3768:  BLX             j__ZN6CCover25FindCoordinatesCoverPointEP11CCoverPointP4CPedR7CVectorS5_; CCover::FindCoordinatesCoverPoint(CCoverPoint *,CPed *,CVector &,CVector &)
4E376C:  VMOV.F32        S0, #1.0
4E3770:  VLDR            S2, [SP,#0xA0+var_70]
4E3774:  CMP             R0, #1
4E3776:  VADD.F32        S0, S2, S0
4E377A:  VSTR            S0, [SP,#0xA0+var_70]
4E377E:  BNE             loc_4E3830
4E3780:  LDR.W           R0, [R9,#0xC]
4E3784:  VMOV.F32        S2, #0.75
4E3788:  VLDR            D16, [SP,#0xA0+var_78]
4E378C:  LDR             R1, [R0,#0x14]
4E378E:  ADD.W           R2, R1, #0x30 ; '0'
4E3792:  CMP             R1, #0
4E3794:  IT EQ
4E3796:  ADDEQ           R2, R0, #4
4E3798:  VLDR            D17, [R2]
4E379C:  VMUL.F32        S2, S18, S2
4E37A0:  VSUB.F32        D16, D16, D17
4E37A4:  VMUL.F32        D0, D16, D16
4E37A8:  VADD.F32        S0, S0, S1
4E37AC:  VSQRT.F32       S0, S0
4E37B0:  VCMPE.F32       S0, S2
4E37B4:  VMRS            APSR_nzcv, FPSCR
4E37B8:  BGE             loc_4E3830
4E37BA:  LDR             R0, [R5,#0x14]
4E37BC:  MOVS            R1, #0
4E37BE:  STRD.W          R1, R1, [SP,#0xA0+var_A0]; bool
4E37C2:  MOVS            R2, #(stderr+1); CVector *
4E37C4:  STRD.W          R1, R1, [SP,#0xA0+var_98]; bool
4E37C8:  CMP             R0, #0
4E37CA:  STR             R1, [SP,#0xA0+var_90]; bool
4E37CC:  MOV             R1, R11
4E37CE:  IT NE
4E37D0:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
4E37D4:  ADD             R0, SP, #0xA0+var_78; this
4E37D6:  MOVS            R3, #1; bool
4E37D8:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4E37DC:  CMP             R0, #1
4E37DE:  BNE             loc_4E3830
4E37E0:  MOV             R0, R5; this
4E37E2:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4E37E6:  CBZ             R0, loc_4E37FE
4E37E8:  MOVS            R0, #0
4E37EA:  MOVS            R1, #0x41 ; 'A'; unsigned __int16
4E37EC:  STRD.W          R0, R0, [SP,#0xA0+var_A0]; unsigned __int8
4E37F0:  MOVS            R2, #0; unsigned int
4E37F2:  STR             R0, [SP,#0xA0+var_98]; unsigned __int8
4E37F4:  MOV             R0, R5; this
4E37F6:  MOV.W           R3, #0x3F800000; float
4E37FA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4E37FE:  LDR.W           R0, [R5,#0x440]; this
4E3802:  MOVW            R1, #0x1770; unsigned __int16
4E3806:  BLX             j__ZN16CPedIntelligence20SetTaskDuckSecondaryEt; CPedIntelligence::SetTaskDuckSecondary(ushort)
4E380A:  MOVS            R0, #word_2C; this
4E380C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E3810:  MOV             R6, R0
4E3812:  MOVS            R0, #0
4E3814:  MOVS            R1, #1
4E3816:  ADD             R2, SP, #0xA0+var_78; CVector *
4E3818:  STRD.W          R1, R0, [SP,#0xA0+var_A0]; bool
4E381C:  MOV             R0, R6; this
4E381E:  MOVS            R1, #6; int
4E3820:  MOV.W           R3, #0x3F000000; float
4E3824:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
4E3828:  CMP             R6, #0
4E382A:  BNE.W           loc_4E3AD8
4E382E:  B               loc_4E3836
4E3830:  MOV             R0, R5; this
4E3832:  BLX             j__ZN4CPed17ReleaseCoverPointEv; CPed::ReleaseCoverPoint(void)
4E3836:  VMOV.F32        S0, #10.0
4E383A:  VCMPE.F32       S16, S0
4E383E:  VMRS            APSR_nzcv, FPSCR
4E3842:  BLE             loc_4E38F4
4E3844:  BLX             rand
4E3848:  AND.W           R0, R0, #3
4E384C:  CMP             R0, #1
4E384E:  BEQ             loc_4E392E
4E3850:  CMP             R0, #0
4E3852:  BNE             loc_4E38F4
4E3854:  LDRB.W          R0, [R10,#2]
4E3858:  MOVS            R6, #0
4E385A:  LSLS            R0, R0, #0x19
4E385C:  BMI             loc_4E38F6
4E385E:  MOV             R0, R5; this
4E3860:  MOVS            R1, #0x90; unsigned __int16
4E3862:  MOVS            R2, #0; unsigned int
4E3864:  MOV.W           R3, #0x3F800000; float
4E3868:  STRD.W          R6, R6, [SP,#0xA0+var_A0]; unsigned __int8
4E386C:  STR             R6, [SP,#0xA0+var_98]; unsigned __int8
4E386E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4E3872:  MOVS            R0, #dword_4C; this
4E3874:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E3878:  MOV             R4, R0
4E387A:  LDR.W           R8, [R9,#0xC]
4E387E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E3882:  VMOV.F32        S0, #-4.0
4E3886:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x4E3892)
4E3888:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x4E3898)
4E388A:  MOV.W           R2, #0x3E8
4E388E:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
4E3890:  CMP.W           R8, #0
4E3894:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
4E3896:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
4E3898:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
4E389A:  ADD.W           R0, R0, #8
4E389E:  STR             R0, [R4]
4E38A0:  VADD.F32        S0, S16, S0
4E38A4:  MOVW            R0, #0xC350
4E38A8:  STRD.W          R0, R2, [R4,#0x10]
4E38AC:  MOV.W           R0, #0x40000000
4E38B0:  STRD.W          R0, R6, [R4,#0x1C]
4E38B4:  MOV.W           R2, #6
4E38B8:  STR             R0, [R4,#0x24]
4E38BA:  ADD.W           R0, R1, #8
4E38BE:  STRH            R6, [R4,#0x30]
4E38C0:  STRH            R6, [R4,#0x3C]
4E38C2:  STRD.W          R6, R6, [R4,#0x28]
4E38C6:  STRD.W          R6, R6, [R4,#0x34]
4E38CA:  LDRB.W          R1, [R4,#0x48]
4E38CE:  STRD.W          R0, R2, [R4,#0x40]
4E38D2:  AND.W           R0, R1, #0xF0
4E38D6:  MOV             R1, R4
4E38D8:  ORR.W           R0, R0, #3
4E38DC:  STRB.W          R0, [R4,#0x48]
4E38E0:  VSTR            S0, [R4,#0x18]
4E38E4:  STR.W           R8, [R1,#0xC]!; CEntity **
4E38E8:  ITT NE
4E38EA:  MOVNE           R0, R8; this
4E38EC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E38F0:  MOV             R6, R4
4E38F2:  B               loc_4E38F6
4E38F4:  MOVS            R6, #0
4E38F6:  VMOV.F32        S0, #5.0
4E38FA:  VCMPE.F32       S16, S0
4E38FE:  VMRS            APSR_nzcv, FPSCR
4E3902:  BLE.W           loc_4E3A2A
4E3906:  BLX             rand
4E390A:  TST.W           R0, #3
4E390E:  BNE.W           loc_4E3A2A
4E3912:  MOVS            R0, #0
4E3914:  STRB.W          R0, [R9,#0x31]
4E3918:  BLX             rand
4E391C:  TST.W           R0, #1
4E3920:  BNE             loc_4E3954
4E3922:  LDRB.W          R0, [R9,#0x31]
4E3926:  CMP             R0, #1
4E3928:  IT NE
4E392A:  MOVNE           R0, #0
4E392C:  B               loc_4E395A
4E392E:  LDRB.W          R0, [R10,#2]
4E3932:  MOVS            R6, #0
4E3934:  LSLS            R0, R0, #0x19
4E3936:  BMI             loc_4E38F6
4E3938:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E3944)
4E393A:  MOVS            R1, #2
4E393C:  STRB.W          R1, [R9,#0x31]
4E3940:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E3942:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E3944:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E3946:  STRB.W          R6, [R9,#0x32]
4E394A:  ADD.W           R0, R0, #0x7D0
4E394E:  STR.W           R0, [R9,#0x2C]
4E3952:  B               loc_4E38F6
4E3954:  MOVS            R0, #1
4E3956:  STRB.W          R0, [R9,#0x31]
4E395A:  LDR             R1, [R5,#0x14]
4E395C:  VMOV.F32        S0, #2.5
4E3960:  CMP             R1, #0
4E3962:  IT NE
4E3964:  ADDNE.W         R11, R1, #0x30 ; '0'
4E3968:  CMP             R0, #0
4E396A:  VLDR            D16, [R11]
4E396E:  LDR.W           R2, [R11,#8]
4E3972:  STR             R2, [SP,#0xA0+var_70]
4E3974:  VSTR            D16, [SP,#0xA0+var_78]
4E3978:  VLDR            S2, [R1]
4E397C:  VLDR            S6, [R1,#4]
4E3980:  VLDR            S8, [R1,#8]
4E3984:  VMUL.F32        S4, S2, S0
4E3988:  VMUL.F32        S2, S6, S0
4E398C:  VLDR            S6, [SP,#0xA0+var_78]
4E3990:  VMUL.F32        S0, S8, S0
4E3994:  VSTR            S4, [SP,#0xA0+var_84]
4E3998:  VSTR            S2, [SP,#0xA0+var_80]
4E399C:  VSTR            S0, [SP,#0xA0+var_7C]
4E39A0:  BEQ             loc_4E39D2
4E39A2:  VLDR            S8, [SP,#0xA0+var_78+4]
4E39A6:  VADD.F32        S4, S6, S4
4E39AA:  VLDR            S10, [SP,#0xA0+var_70]
4E39AE:  MOVS            R4, #0
4E39B0:  VADD.F32        S2, S8, S2
4E39B4:  MOVS            R0, #1
4E39B6:  VADD.F32        S0, S0, S10
4E39BA:  VSTR            S4, [SP,#0xA0+var_84]
4E39BE:  VSTR            S2, [SP,#0xA0+var_80]
4E39C2:  VSTR            S0, [SP,#0xA0+var_7C]
4E39C6:  STRD.W          R4, R0, [SP,#0xA0+var_A0]
4E39CA:  STRD.W          R4, R4, [SP,#0xA0+var_98]
4E39CE:  STR             R4, [SP,#0xA0+var_90]
4E39D0:  B               loc_4E3A00
4E39D2:  VLDR            S8, [SP,#0xA0+var_78+4]
4E39D6:  VSUB.F32        S4, S6, S4
4E39DA:  VLDR            S10, [SP,#0xA0+var_70]
4E39DE:  MOVS            R4, #1
4E39E0:  VSUB.F32        S2, S8, S2
4E39E4:  MOVS            R0, #0
4E39E6:  VSUB.F32        S0, S10, S0
4E39EA:  VSTR            S4, [SP,#0xA0+var_84]
4E39EE:  VSTR            S2, [SP,#0xA0+var_80]
4E39F2:  VSTR            S0, [SP,#0xA0+var_7C]
4E39F6:  STRD.W          R0, R4, [SP,#0xA0+var_A0]; bool
4E39FA:  STRD.W          R0, R0, [SP,#0xA0+var_98]; bool
4E39FE:  STR             R0, [SP,#0xA0+var_90]; bool
4E3A00:  ADD             R0, SP, #0xA0+var_78; this
4E3A02:  ADD             R1, SP, #0xA0+var_84; CVector *
4E3A04:  MOVS            R2, #(stderr+1); CVector *
4E3A06:  MOVS            R3, #1; bool
4E3A08:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4E3A0C:  CMP             R0, #0
4E3A0E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E3A1C)
4E3A10:  IT EQ
4E3A12:  STRBEQ.W        R4, [R9,#0x31]
4E3A16:  MOVS            R1, #0
4E3A18:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E3A1A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E3A1C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E3A1E:  STRB.W          R1, [R9,#0x32]
4E3A22:  ADD.W           R0, R0, #0x7D0
4E3A26:  STR.W           R0, [R9,#0x2C]
4E3A2A:  CMP             R6, #0
4E3A2C:  BNE             loc_4E3AD8
4E3A2E:  MOV             R0, R9; this
4E3A30:  MOV             R1, R5; CPed *
4E3A32:  BLX             j__ZN30CTaskComplexKillPedOnFootArmed25LineOfSightClearForAttackEP4CPed; CTaskComplexKillPedOnFootArmed::LineOfSightClearForAttack(CPed *)
4E3A36:  CMP             R0, #1
4E3A38:  BEQ.W           loc_4E32A2
4E3A3C:  BLX             rand
4E3A40:  TST.W           R0, #3
4E3A44:  BNE             loc_4E3A68
4E3A46:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E3A4C)
4E3A48:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E3A4A:  LDR             R4, [R0]; CTimer::m_snTimeInMilliseconds ...
4E3A4C:  BLX             rand
4E3A50:  AND.W           R0, R0, #1
4E3A54:  STRB.W          R0, [R9,#0x31]
4E3A58:  LDR             R0, [R4]; CTimer::m_snTimeInMilliseconds
4E3A5A:  MOVS            R1, #0
4E3A5C:  STRB.W          R1, [R9,#0x32]
4E3A60:  ADD.W           R0, R0, #0x7D0
4E3A64:  STR.W           R0, [R9,#0x2C]
4E3A68:  LDRSB.W         R0, [R5,#0x71C]
4E3A6C:  RSB.W           R0, R0, R0,LSL#3
4E3A70:  ADD.W           R0, R5, R0,LSL#2
4E3A74:  LDR.W           R4, [R0,#0x5A4]
4E3A78:  MOV             R0, R5; this
4E3A7A:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4E3A7E:  MOV             R1, R0
4E3A80:  MOV             R0, R4
4E3A82:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4E3A86:  ADD             R4, SP, #0xA0+var_78
4E3A88:  MOV.W           R0, #0x41000000
4E3A8C:  STR             R0, [SP,#0xA0+var_A0]; float
4E3A8E:  MOVS            R1, #0; int
4E3A90:  MOV             R0, R4; this
4E3A92:  MOVS            R2, #0; bool
4E3A94:  MOVS            R3, #0; bool
4E3A96:  MOV.W           R8, #0
4E3A9A:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E3A9E:  MOV             R1, R5; CPed *
4E3AA0:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4E3AA4:  MOV             R0, R4; this
4E3AA6:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
4E3AAA:  MOVS            R0, #off_18; this
4E3AAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E3AB0:  MOV             R6, R0
4E3AB2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E3AB6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4E3AC0)
4E3AB8:  MOVS            R2, #0x64 ; 'd'
4E3ABA:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x4E3AC6)
4E3ABC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4E3ABE:  STRH.W          R8, [R6,#0x10]
4E3AC2:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
4E3AC4:  STR             R2, [R6,#0x14]
4E3AC6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4E3AC8:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
4E3ACA:  STRD.W          R8, R8, [R6,#8]
4E3ACE:  ADDS            R1, #8
4E3AD0:  STR             R1, [R6]
4E3AD2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4E3AD4:  STR.W           R0, [R9,#0x14]
4E3AD8:  BLX             rand
4E3ADC:  TST.W           R0, #1
4E3AE0:  BEQ             loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E3AE2:  LDRSB.W         R0, [R9,#0x30]
4E3AE6:  CMP             R0, #1
4E3AE8:  BLT             loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E3AEA:  LDRB.W          R0, [R10,#3]
4E3AEE:  LSLS            R0, R0, #0x1F
4E3AF0:  BNE             loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E3AF2:  LDR.W           R0, [R5,#0x790]
4E3AF6:  CBZ             R0, loc_4E3B02
4E3AF8:  LDRB            R0, [R0,#1]
4E3AFA:  SUBS            R0, #1
4E3AFC:  UXTB            R0, R0
4E3AFE:  CMP             R0, #2
4E3B00:  BCC             loc_4E3B0E; jumptable 004E3128 cases 902,904-906
4E3B02:  LDR.W           R0, [R5,#0x440]; this
4E3B06:  MOVW            R1, #0x1770; unsigned __int16
4E3B0A:  BLX             j__ZN16CPedIntelligence20SetTaskDuckSecondaryEt; CPedIntelligence::SetTaskDuckSecondary(ushort)
4E3B0E:  ADD.W           R9, R9, #0x58 ; 'X'; jumptable 004E3128 cases 902,904-906
4E3B12:  MOVS            R0, #0
4E3B14:  STR.W           R0, [R9]
4E3B18:  MOV             R0, R6
4E3B1A:  ADD             SP, SP, #0x48 ; 'H'
4E3B1C:  VPOP            {D8-D14}
4E3B20:  ADD             SP, SP, #4
4E3B22:  POP.W           {R8-R11}
4E3B26:  POP             {R4-R7,PC}
