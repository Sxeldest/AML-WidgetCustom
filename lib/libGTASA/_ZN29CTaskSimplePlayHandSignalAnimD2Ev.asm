; =========================================================
; Game Engine Function: _ZN29CTaskSimplePlayHandSignalAnimD2Ev
; Address            : 0x4D7548 - 0x4D75F6
; =========================================================

4D7548:  PUSH            {R4,R5,R7,LR}
4D754A:  ADD             R7, SP, #8
4D754C:  MOV             R4, R0
4D754E:  LDR             R0, =(_ZTV29CTaskSimplePlayHandSignalAnim_ptr - 0x4D7554)
4D7550:  ADD             R0, PC; _ZTV29CTaskSimplePlayHandSignalAnim_ptr
4D7552:  LDR             R1, [R0]; `vtable for'CTaskSimplePlayHandSignalAnim ...
4D7554:  LDR             R0, [R4,#0x1C]; this
4D7556:  ADDS            R1, #8; CEntity *
4D7558:  STR             R1, [R4]
4D755A:  CBZ             R0, loc_4D7578
4D755C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4D7560:  LDR             R0, [R4,#0x1C]
4D7562:  CMP             R0, #0
4D7564:  ITTT NE
4D7566:  LDRNE           R1, [R0]
4D7568:  LDRNE           R1, [R1,#4]
4D756A:  BLXNE           R1
4D756C:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4D7572)
4D756E:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4D7570:  LDR             R0, [R0]; CObject::nNoTempObjects ...
4D7572:  LDRH            R1, [R0]; CObject::nNoTempObjects
4D7574:  SUBS            R1, #1; CEntity *
4D7576:  STRH            R1, [R0]; CObject::nNoTempObjects
4D7578:  LDR             R0, [R4,#0x20]; this
4D757A:  CBZ             R0, loc_4D7598
4D757C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4D7580:  LDR             R0, [R4,#0x20]
4D7582:  CMP             R0, #0
4D7584:  ITTT NE
4D7586:  LDRNE           R1, [R0]
4D7588:  LDRNE           R1, [R1,#4]
4D758A:  BLXNE           R1
4D758C:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4D7592)
4D758E:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4D7590:  LDR             R0, [R0]; CObject::nNoTempObjects ...
4D7592:  LDRH            R1, [R0]; CObject::nNoTempObjects
4D7594:  SUBS            R1, #1
4D7596:  STRH            R1, [R0]; CObject::nNoTempObjects
4D7598:  LDR             R0, =(_ZTV15CTaskSimpleAnim_ptr - 0x4D759E)
4D759A:  ADD             R0, PC; _ZTV15CTaskSimpleAnim_ptr
4D759C:  LDR             R1, [R0]; `vtable for'CTaskSimpleAnim ...
4D759E:  LDR             R0, [R4,#8]; this
4D75A0:  ADDS            R1, #8
4D75A2:  STR             R1, [R4]
4D75A4:  CBZ             R0, loc_4D75EC
4D75A6:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D75B0)
4D75A8:  MOVS            R2, #0; void *
4D75AA:  MOVS            R5, #0
4D75AC:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D75AE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D75B0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D75B4:  LDR             R0, [R4,#8]
4D75B6:  LDRH            R1, [R0,#0x2E]
4D75B8:  ORR.W           R1, R1, #4
4D75BC:  STRH            R1, [R0,#0x2E]
4D75BE:  LDRB            R0, [R4,#0xC]
4D75C0:  LSLS            R0, R0, #0x1D
4D75C2:  BMI             loc_4D75EA
4D75C4:  LDR             R0, [R4,#8]
4D75C6:  VLDR            S0, [R0,#0x18]
4D75CA:  VCMPE.F32       S0, #0.0
4D75CE:  VMRS            APSR_nzcv, FPSCR
4D75D2:  BLE             loc_4D75EA
4D75D4:  VLDR            S0, [R0,#0x1C]
4D75D8:  VCMPE.F32       S0, #0.0
4D75DC:  VMRS            APSR_nzcv, FPSCR
4D75E0:  ITTT GE
4D75E2:  MOVGE           R1, #0
4D75E4:  MOVTGE          R1, #0xC080
4D75E8:  STRGE           R1, [R0,#0x1C]
4D75EA:  STR             R5, [R4,#8]
4D75EC:  MOV             R0, R4; this
4D75EE:  POP.W           {R4,R5,R7,LR}
4D75F2:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
