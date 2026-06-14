; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler21ComputeDoDealResponseEP9CPedGroupP4CPedS3_
; Address            : 0x4B61F8 - 0x4B641A
; =========================================================

4B61F8:  PUSH            {R4-R7,LR}
4B61FA:  ADD             R7, SP, #0xC
4B61FC:  PUSH.W          {R8-R11}
4B6200:  SUB             SP, SP, #4
4B6202:  VPUSH           {D8-D9}
4B6206:  SUB             SP, SP, #0xB8
4B6208:  MOV             R11, R0
4B620A:  LDR             R0, =(__stack_chk_guard_ptr - 0x4B6214)
4B620C:  MOV             R4, R1
4B620E:  CMP             R4, #0
4B6210:  ADD             R0, PC; __stack_chk_guard_ptr
4B6212:  LDR             R0, [R0]; __stack_chk_guard
4B6214:  LDR             R0, [R0]
4B6216:  STR             R0, [SP,#0xE8+var_34]
4B6218:  BEQ.W           loc_4B63F6
4B621C:  LDR.W           R0, [R4,#0x440]
4B6220:  MOV.W           R1, #0x390; int
4B6224:  ADDS            R0, #4; this
4B6226:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4B622A:  CMP             R0, #0
4B622C:  ITT NE
4B622E:  LDRNE.W         R0, [R11,#0x28]
4B6232:  CMPNE           R0, #0
4B6234:  BEQ.W           loc_4B63F6
4B6238:  LDR.W           R0, [R0,#0x450]
4B623C:  CMP             R0, #1
4B623E:  BNE.W           loc_4B63F6
4B6242:  LDR.W           R0, [R4,#0x59C]
4B6246:  CMP             R0, #2
4B6248:  BCC.W           loc_4B63F6
4B624C:  VLDR            S0, =1000000.0
4B6250:  ADD.W           R9, R11, #0xC
4B6254:  MOVS            R0, #0
4B6256:  MOVS            R6, #0
4B6258:  LDR.W           R1, [R9,R0,LSL#2]
4B625C:  CBZ             R1, loc_4B62B2
4B625E:  LDR             R2, [R1,#0x14]
4B6260:  LDR             R3, [R4,#0x14]
4B6262:  ADD.W           R5, R2, #0x30 ; '0'
4B6266:  CMP             R2, #0
4B6268:  IT EQ
4B626A:  ADDEQ           R5, R1, #4
4B626C:  ADD.W           R2, R3, #0x30 ; '0'
4B6270:  CMP             R3, #0
4B6272:  VLDR            S2, [R5]
4B6276:  IT EQ
4B6278:  ADDEQ           R2, R4, #4
4B627A:  VLDR            D16, [R5,#4]
4B627E:  VLDR            S4, [R2]
4B6282:  VLDR            D17, [R2,#4]
4B6286:  VSUB.F32        S2, S4, S2
4B628A:  VSUB.F32        D16, D17, D16
4B628E:  VMUL.F32        D2, D16, D16
4B6292:  VMUL.F32        S2, S2, S2
4B6296:  VADD.F32        S2, S2, S4
4B629A:  VADD.F32        S2, S2, S5
4B629E:  VMIN.F32        D2, D1, D0
4B62A2:  VCMPE.F32       S2, S0
4B62A6:  VMRS            APSR_nzcv, FPSCR
4B62AA:  VMOV            D0, D2
4B62AE:  IT LT
4B62B0:  MOVLT           R6, R1
4B62B2:  ADDS            R0, #1
4B62B4:  CMP             R0, #7
4B62B6:  BNE             loc_4B6258
4B62B8:  CMP             R6, #0
4B62BA:  BEQ.W           loc_4B63F6
4B62BE:  VMOV.F32        S2, #16.0
4B62C2:  VCMPE.F32       S0, S2
4B62C6:  VMRS            APSR_nzcv, FPSCR
4B62CA:  BLT.W           loc_4B63F6
4B62CE:  VLDR            S2, =100.0
4B62D2:  VCMPE.F32       S0, S2
4B62D6:  VMRS            APSR_nzcv, FPSCR
4B62DA:  BGT.W           loc_4B63F6
4B62DE:  ADD.W           R8, SP, #0xE8+var_A8
4B62E2:  ADR             R1, aCompdodealresp; "CompDoDealResp"
4B62E4:  MOVS            R5, #0
4B62E6:  MOV             R2, R4
4B62E8:  MOV             R0, R8
4B62EA:  MOVS            R3, #1
4B62EC:  STRD.W          R5, R5, [SP,#0xE8+var_E8]
4B62F0:  STRD.W          R5, R5, [SP,#0xE8+var_E0]
4B62F4:  BLX             j__ZN23CTaskComplexPartnerDealC2EPcP4CPedhf7CVector; CTaskComplexPartnerDeal::CTaskComplexPartnerDeal(char *,CPed *,uchar,float,CVector)
4B62F8:  ADD.W           R10, SP, #0xE8+var_C4
4B62FC:  MOV             R0, R10; this
4B62FE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B6302:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B6310)
4B6304:  ADD.W           R3, R11, #0x3C ; '<'; CPedTaskPair *
4B6308:  MOV             R1, R6; CPed *
4B630A:  MOV             R2, R8; CTask *
4B630C:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B630E:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B6310:  ADDS            R0, #8
4B6312:  STR             R0, [SP,#0xE8+var_C4]
4B6314:  MOV.W           R0, #0xFFFFFFFF; this
4B6318:  STRD.W          R0, R5, [SP,#0xE8+var_E8]; int
4B631C:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B6320:  MOV             R0, R10; this
4B6322:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B6326:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4B632A:  LDR             R0, =(_ZTV23CEventCreatePartnerTask_ptr - 0x4B6336)
4B632C:  ADD.W           R1, R10, #0x10; CEntity **
4B6330:  STR             R5, [SP,#0xE8+var_B8]
4B6332:  ADD             R0, PC; _ZTV23CEventCreatePartnerTask_ptr
4B6334:  STR             R1, [SP,#0xE8+var_C8]
4B6336:  LDR             R0, [R0]; `vtable for'CEventCreatePartnerTask ...
4B6338:  ADDS            R0, #8
4B633A:  STR             R0, [SP,#0xE8+var_C4]
4B633C:  MOV             R0, R6; this
4B633E:  STR             R6, [SP,#0xE8+var_B4]
4B6340:  STRB.W          R5, [SP,#0xE8+var_B0]
4B6344:  STR             R5, [SP,#0xE8+var_AC]
4B6346:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4B634A:  LDR.W           R0, [R4,#0x440]
4B634E:  MOV             R1, R10; CEvent *
4B6350:  MOVS            R2, #0; bool
4B6352:  ADDS            R0, #0x68 ; 'h'; this
4B6354:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4B6358:  LDR             R0, =(g_ikChainMan_ptr - 0x4B6366)
4B635A:  MOV.W           R8, #0
4B635E:  VLDR            S16, =0.000015259
4B6362:  ADD             R0, PC; g_ikChainMan_ptr
4B6364:  VLDR            S18, =3000.0
4B6368:  LDR.W           R10, [R0]; g_ikChainMan
4B636C:  LDR.W           R5, [R9,R8,LSL#2]
4B6370:  CMP             R5, #0
4B6372:  IT NE
4B6374:  CMPNE           R5, R6
4B6376:  BEQ             loc_4B63C6
4B6378:  BLX             rand
4B637C:  UXTH            R0, R0
4B637E:  MOVS            R1, #3
4B6380:  VMOV            S0, R0
4B6384:  MOVS            R0, #0
4B6386:  MOV             R2, R5; CPed *
4B6388:  MOV             R3, R6; int
4B638A:  VCVT.F32.S32    S0, S0
4B638E:  STR             R0, [SP,#0xE8+var_CC]; int
4B6390:  STR             R1, [SP,#0xE8+var_D0]; int
4B6392:  MOV.W           R1, #0x1F4
4B6396:  STR             R1, [SP,#0xE8+var_D4]; int
4B6398:  MOV.W           R1, #0x3E800000
4B639C:  STR             R1, [SP,#0xE8+var_D8]; float
4B639E:  MOVS            R1, #1
4B63A0:  STRD.W          R0, R1, [SP,#0xE8+var_E0]; int
4B63A4:  MOVS            R0, #5
4B63A6:  STR             R0, [SP,#0xE8+var_E4]; int
4B63A8:  ADR             R1, aCompdodealresp; "CompDoDealResp"
4B63AA:  VMUL.F32        S0, S0, S16
4B63AE:  VMUL.F32        S0, S0, S18
4B63B2:  VCVT.S32.F32    S0, S0
4B63B6:  VMOV            R0, S0
4B63BA:  ADDW            R0, R0, #0xBB8
4B63BE:  STR             R0, [SP,#0xE8+var_E8]; int
4B63C0:  MOV             R0, R10; int
4B63C2:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
4B63C6:  ADD.W           R8, R8, #1
4B63CA:  CMP.W           R8, #8
4B63CE:  BNE             loc_4B636C
4B63D0:  LDR             R0, =(_ZTV23CEventCreatePartnerTask_ptr - 0x4B63DA)
4B63D2:  STR.W           R4, [R11]
4B63D6:  ADD             R0, PC; _ZTV23CEventCreatePartnerTask_ptr
4B63D8:  LDR             R1, [R0]; `vtable for'CEventCreatePartnerTask ...
4B63DA:  LDR             R0, [SP,#0xE8+var_B4]; this
4B63DC:  ADDS            R1, #8
4B63DE:  STR             R1, [SP,#0xE8+var_C4]
4B63E0:  CMP             R0, #0
4B63E2:  ITT NE
4B63E4:  LDRNE           R1, [SP,#0xE8+var_C8]; CEntity **
4B63E6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4B63EA:  ADD             R0, SP, #0xE8+var_C4; this
4B63EC:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
4B63F0:  ADD             R0, SP, #0xE8+var_A8; this
4B63F2:  BLX             j__ZN24CTaskComplexPartnerShoveD2Ev; CTaskComplexPartnerShove::~CTaskComplexPartnerShove()
4B63F6:  LDR             R0, =(__stack_chk_guard_ptr - 0x4B63FE)
4B63F8:  LDR             R1, [SP,#0xE8+var_34]
4B63FA:  ADD             R0, PC; __stack_chk_guard_ptr
4B63FC:  LDR             R0, [R0]; __stack_chk_guard
4B63FE:  LDR             R0, [R0]
4B6400:  SUBS            R0, R0, R1
4B6402:  ITTTT EQ
4B6404:  MOVEQ           R0, #0
4B6406:  ADDEQ           SP, SP, #0xB8
4B6408:  VPOPEQ          {D8-D9}
4B640C:  ADDEQ           SP, SP, #4
4B640E:  ITT EQ
4B6410:  POPEQ.W         {R8-R11}
4B6414:  POPEQ           {R4-R7,PC}
4B6416:  BLX             __stack_chk_fail
