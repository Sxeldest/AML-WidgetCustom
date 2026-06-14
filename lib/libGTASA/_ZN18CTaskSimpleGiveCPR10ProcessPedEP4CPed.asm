; =========================================================
; Game Engine Function: _ZN18CTaskSimpleGiveCPR10ProcessPedEP4CPed
; Address            : 0x5102C8 - 0x510358
; =========================================================

5102C8:  PUSH            {R4,R5,R7,LR}
5102CA:  ADD             R7, SP, #8
5102CC:  SUB             SP, SP, #0x10
5102CE:  MOV             R4, R0
5102D0:  LDRB            R0, [R4,#8]
5102D2:  TST.W           R0, #1
5102D6:  ITTTT NE
5102D8:  LDRNE.W         R2, [R1,#0x544]
5102DC:  ANDNE.W         R0, R0, #0xFE
5102E0:  STRBNE          R0, [R4,#8]
5102E2:  STRNE           R2, [R4,#0x14]
5102E4:  LSLS            R0, R0, #0x1E
5102E6:  BMI             loc_51030E
5102E8:  LDR             R0, [R4,#0x10]
5102EA:  CBNZ            R0, loc_51030A
5102EC:  LDR             R0, [R1,#0x18]; int
5102EE:  MOVS            R1, #0x2E ; '.'; int
5102F0:  MOV.W           R2, #0x104; unsigned int
5102F4:  MOV.W           R3, #0x40800000
5102F8:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5102FC:  LDR             R1, =(_ZN18CTaskSimpleGiveCPR19FinishGiveCPRAnimCBEP21CAnimBlendAssociationPv_ptr - 0x510306)
5102FE:  MOV             R2, R4; void *
510300:  STR             R0, [R4,#0x10]
510302:  ADD             R1, PC; _ZN18CTaskSimpleGiveCPR19FinishGiveCPRAnimCBEP21CAnimBlendAssociationPv_ptr
510304:  LDR             R1, [R1]; CTaskSimpleGiveCPR::FinishGiveCPRAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
510306:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51030A:  MOVS            R0, #0
51030C:  B               loc_510354
51030E:  LDR             R1, [R4,#0xC]
510310:  MOVS            R0, #1
510312:  LDR             R4, [R1]
510314:  CBZ             R4, loc_510354
510316:  STRB            R0, [R1,#5]
510318:  MOVS            R2, #0
51031A:  LDRB.W          R1, [R4,#0x485]
51031E:  CMP.W           R2, R1,LSR#7
510322:  BNE             loc_510354
510324:  LDR             R0, =(g_InterestingEvents_ptr - 0x51032E)
510326:  MOVS            R1, #0xB
510328:  MOV             R2, R4
51032A:  ADD             R0, PC; g_InterestingEvents_ptr
51032C:  LDR             R0, [R0]; g_InterestingEvents
51032E:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
510332:  ADD             R5, SP, #0x18+var_14
510334:  MOV             R0, R5; this
510336:  BLX             j__ZN13CEventRevivedC2Ev; CEventRevived::CEventRevived(void)
51033A:  LDR.W           R0, [R4,#0x440]
51033E:  MOV             R1, R5; CEvent *
510340:  MOVS            R2, #0; bool
510342:  ADDS            R0, #0x68 ; 'h'; this
510344:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
510348:  MOV             R0, R5; this
51034A:  BLX             j__ZN6CEventD2Ev_4; CEvent::~CEvent()
51034E:  MOVS            R0, #1
510350:  ADD             SP, SP, #0x10
510352:  POP             {R4,R5,R7,PC}
510354:  ADD             SP, SP, #0x10
510356:  POP             {R4,R5,R7,PC}
