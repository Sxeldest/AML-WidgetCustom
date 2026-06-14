; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler20ComputeGreetResponseEP9CPedGroupP4CPedS3_
; Address            : 0x4B6454 - 0x4B66A2
; =========================================================

4B6454:  PUSH            {R4-R7,LR}
4B6456:  ADD             R7, SP, #0xC
4B6458:  PUSH.W          {R8-R11}
4B645C:  SUB             SP, SP, #4
4B645E:  VPUSH           {D8-D9}
4B6462:  SUB             SP, SP, #0xC0
4B6464:  MOV             R11, R0
4B6466:  LDR             R0, =(__stack_chk_guard_ptr - 0x4B6470)
4B6468:  MOV             R4, R1
4B646A:  CMP             R4, #0
4B646C:  ADD             R0, PC; __stack_chk_guard_ptr
4B646E:  LDR             R0, [R0]; __stack_chk_guard
4B6470:  LDR             R0, [R0]
4B6472:  STR             R0, [SP,#0xF0+var_34]
4B6474:  BEQ.W           loc_4B667E
4B6478:  LDR.W           R0, [R4,#0x440]
4B647C:  MOV.W           R1, #0x390; int
4B6480:  ADDS            R0, #4; this
4B6482:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4B6486:  CMP             R0, #0
4B6488:  ITT NE
4B648A:  LDRNE.W         R0, [R11,#0x28]
4B648E:  CMPNE           R0, #0
4B6490:  BEQ.W           loc_4B667E
4B6494:  LDR.W           R0, [R0,#0x450]
4B6498:  CMP             R0, #1
4B649A:  BNE.W           loc_4B667E
4B649E:  LDR.W           R0, [R4,#0x59C]
4B64A2:  CMP             R0, #2
4B64A4:  BCC.W           loc_4B667E
4B64A8:  VLDR            S0, =1000000.0
4B64AC:  ADD.W           R9, R11, #0xC
4B64B0:  MOVS            R0, #0
4B64B2:  MOVS            R6, #0
4B64B4:  LDR.W           R1, [R9,R0,LSL#2]
4B64B8:  CBZ             R1, loc_4B650E
4B64BA:  LDR             R2, [R1,#0x14]
4B64BC:  LDR             R3, [R4,#0x14]
4B64BE:  ADD.W           R5, R2, #0x30 ; '0'
4B64C2:  CMP             R2, #0
4B64C4:  IT EQ
4B64C6:  ADDEQ           R5, R1, #4
4B64C8:  ADD.W           R2, R3, #0x30 ; '0'
4B64CC:  CMP             R3, #0
4B64CE:  VLDR            S2, [R5]
4B64D2:  IT EQ
4B64D4:  ADDEQ           R2, R4, #4
4B64D6:  VLDR            D16, [R5,#4]
4B64DA:  VLDR            S4, [R2]
4B64DE:  VLDR            D17, [R2,#4]
4B64E2:  VSUB.F32        S2, S4, S2
4B64E6:  VSUB.F32        D16, D17, D16
4B64EA:  VMUL.F32        D2, D16, D16
4B64EE:  VMUL.F32        S2, S2, S2
4B64F2:  VADD.F32        S2, S2, S4
4B64F6:  VADD.F32        S2, S2, S5
4B64FA:  VMIN.F32        D2, D1, D0
4B64FE:  VCMPE.F32       S2, S0
4B6502:  VMRS            APSR_nzcv, FPSCR
4B6506:  VMOV            D0, D2
4B650A:  IT LT
4B650C:  MOVLT           R6, R1
4B650E:  ADDS            R0, #1
4B6510:  CMP             R0, #7
4B6512:  BNE             loc_4B64B4
4B6514:  CMP             R6, #0
4B6516:  BEQ.W           loc_4B667E
4B651A:  VMOV.F32        S2, #16.0
4B651E:  VCMPE.F32       S0, S2
4B6522:  VMRS            APSR_nzcv, FPSCR
4B6526:  BLT.W           loc_4B667E
4B652A:  VLDR            S2, =100.0
4B652E:  VCMPE.F32       S0, S2
4B6532:  VMRS            APSR_nzcv, FPSCR
4B6536:  BGT.W           loc_4B667E
4B653A:  BLX             rand
4B653E:  UXTH            R0, R0
4B6540:  VLDR            S16, =0.000015259
4B6544:  VMOV            S0, R0
4B6548:  ADD.W           R8, SP, #0xF0+var_AC
4B654C:  VMOV.F32        S2, #6.0
4B6550:  ADR             R1, aCompgreetresp; "CompGreetResp"
4B6552:  VCVT.F32.S32    S0, S0
4B6556:  MOVS            R5, #0
4B6558:  MOV             R0, R8
4B655A:  MOV             R2, R4
4B655C:  MOVS            R3, #1
4B655E:  VMUL.F32        S0, S0, S16
4B6562:  VMUL.F32        S18, S0, S2
4B6566:  VCVT.S32.F32    S0, S18
4B656A:  STRD.W          R5, R5, [SP,#0xF0+var_E8]
4B656E:  STR             R5, [SP,#0xF0+var_E0]
4B6570:  STR             R5, [SP,#0xF0+var_F0]
4B6572:  VSTR            S0, [SP,#0xF0+var_EC]
4B6576:  BLX             j__ZN24CTaskComplexPartnerGreetC2EPcP4CPedhfi7CVector; CTaskComplexPartnerGreet::CTaskComplexPartnerGreet(char *,CPed *,uchar,float,int,CVector)
4B657A:  ADD.W           R10, SP, #0xF0+var_C8
4B657E:  MOV             R0, R10; this
4B6580:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B6584:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B6592)
4B6586:  ADD.W           R3, R11, #0x3C ; '<'; CPedTaskPair *
4B658A:  MOV             R1, R6; CPed *
4B658C:  MOV             R2, R8; CTask *
4B658E:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B6590:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B6592:  ADDS            R0, #8
4B6594:  STR             R0, [SP,#0xF0+var_C8]
4B6596:  MOV.W           R0, #0xFFFFFFFF; this
4B659A:  STRD.W          R0, R5, [SP,#0xF0+var_F0]; int
4B659E:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B65A2:  MOV             R0, R10; this
4B65A4:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B65A8:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4B65AC:  VCVT.S32.F32    S0, S18
4B65B0:  LDR             R0, =(_ZTV23CEventCreatePartnerTask_ptr - 0x4B65B6)
4B65B2:  ADD             R0, PC; _ZTV23CEventCreatePartnerTask_ptr
4B65B4:  LDR             R0, [R0]; `vtable for'CEventCreatePartnerTask ...
4B65B6:  ADDS            R0, #8
4B65B8:  VMOV            R1, S0
4B65BC:  ADDS            R1, #1
4B65BE:  STR             R1, [SP,#0xF0+var_BC]
4B65C0:  ADD.W           R1, R10, #0x10; CEntity **
4B65C4:  STR             R0, [SP,#0xF0+var_C8]
4B65C6:  MOV             R0, R6; this
4B65C8:  STR             R6, [SP,#0xF0+var_B8]
4B65CA:  STRB.W          R5, [SP,#0xF0+var_B4]
4B65CE:  STR             R5, [SP,#0xF0+var_B0]
4B65D0:  STR             R1, [SP,#0xF0+var_CC]
4B65D2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4B65D6:  LDR.W           R0, [R4,#0x440]
4B65DA:  MOV             R1, R10; CEvent *
4B65DC:  MOVS            R2, #0; bool
4B65DE:  ADDS            R0, #0x68 ; 'h'; this
4B65E0:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4B65E4:  LDR             R0, =(g_ikChainMan_ptr - 0x4B65F2)
4B65E6:  MOV.W           R8, #0
4B65EA:  VLDR            S18, =3000.0
4B65EE:  ADD             R0, PC; g_ikChainMan_ptr
4B65F0:  LDR.W           R10, [R0]; g_ikChainMan
4B65F4:  LDR.W           R5, [R9,R8,LSL#2]
4B65F8:  CMP             R5, #0
4B65FA:  IT NE
4B65FC:  CMPNE           R5, R6
4B65FE:  BEQ             loc_4B664E
4B6600:  BLX             rand
4B6604:  UXTH            R0, R0
4B6606:  MOVS            R1, #3
4B6608:  VMOV            S0, R0
4B660C:  MOVS            R0, #0
4B660E:  MOV             R2, R5; CPed *
4B6610:  MOV             R3, R6; int
4B6612:  VCVT.F32.S32    S0, S0
4B6616:  STR             R0, [SP,#0xF0+var_D4]; int
4B6618:  STR             R1, [SP,#0xF0+var_D8]; int
4B661A:  MOV.W           R1, #0x1F4
4B661E:  STR             R1, [SP,#0xF0+var_DC]; int
4B6620:  MOV.W           R1, #0x3E800000
4B6624:  STR             R1, [SP,#0xF0+var_E0]; float
4B6626:  MOVS            R1, #1
4B6628:  STRD.W          R0, R1, [SP,#0xF0+var_E8]; int
4B662C:  MOVS            R0, #5
4B662E:  STR             R0, [SP,#0xF0+var_EC]; int
4B6630:  ADR             R1, aCompgreetresp; "CompGreetResp"
4B6632:  VMUL.F32        S0, S0, S16
4B6636:  VMUL.F32        S0, S0, S18
4B663A:  VCVT.S32.F32    S0, S0
4B663E:  VMOV            R0, S0
4B6642:  ADDW            R0, R0, #0xBB8
4B6646:  STR             R0, [SP,#0xF0+var_F0]; int
4B6648:  MOV             R0, R10; int
4B664A:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
4B664E:  ADD.W           R8, R8, #1
4B6652:  CMP.W           R8, #8
4B6656:  BNE             loc_4B65F4
4B6658:  LDR             R0, =(_ZTV23CEventCreatePartnerTask_ptr - 0x4B6662)
4B665A:  STR.W           R4, [R11]
4B665E:  ADD             R0, PC; _ZTV23CEventCreatePartnerTask_ptr
4B6660:  LDR             R1, [R0]; `vtable for'CEventCreatePartnerTask ...
4B6662:  LDR             R0, [SP,#0xF0+var_B8]; this
4B6664:  ADDS            R1, #8
4B6666:  STR             R1, [SP,#0xF0+var_C8]
4B6668:  CMP             R0, #0
4B666A:  ITT NE
4B666C:  LDRNE           R1, [SP,#0xF0+var_CC]; CEntity **
4B666E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4B6672:  ADD             R0, SP, #0xF0+var_C8; this
4B6674:  BLX             j__ZN6CEventD2Ev_3; CEvent::~CEvent()
4B6678:  ADD             R0, SP, #0xF0+var_AC; this
4B667A:  BLX             j__ZN24CTaskComplexPartnerShoveD2Ev_0; CTaskComplexPartnerShove::~CTaskComplexPartnerShove()
4B667E:  LDR             R0, =(__stack_chk_guard_ptr - 0x4B6686)
4B6680:  LDR             R1, [SP,#0xF0+var_34]
4B6682:  ADD             R0, PC; __stack_chk_guard_ptr
4B6684:  LDR             R0, [R0]; __stack_chk_guard
4B6686:  LDR             R0, [R0]
4B6688:  SUBS            R0, R0, R1
4B668A:  ITTTT EQ
4B668C:  MOVEQ           R0, #0
4B668E:  ADDEQ           SP, SP, #0xC0
4B6690:  VPOPEQ          {D8-D9}
4B6694:  ADDEQ           SP, SP, #4
4B6696:  ITT EQ
4B6698:  POPEQ.W         {R8-R11}
4B669C:  POPEQ           {R4-R7,PC}
4B669E:  BLX             __stack_chk_fail
