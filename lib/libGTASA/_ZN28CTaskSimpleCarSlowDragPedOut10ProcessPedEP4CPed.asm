; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarSlowDragPedOut10ProcessPedEP4CPed
; Address            : 0x504230 - 0x50442A
; =========================================================

504230:  PUSH            {R4-R7,LR}
504232:  ADD             R7, SP, #0xC
504234:  PUSH.W          {R8-R10}
504238:  SUB             SP, SP, #0x10
50423A:  MOV             R5, R0
50423C:  MOV             R4, R1
50423E:  LDRB            R0, [R5,#8]
504240:  CBZ             R0, loc_50424C
504242:  MOVS            R0, #1
504244:  ADD             SP, SP, #0x10
504246:  POP.W           {R8-R10}
50424A:  POP             {R4-R7,PC}
50424C:  LDR             R0, [R5,#0x10]
50424E:  CMP             R0, #0
504250:  BEQ             loc_504242
504252:  LDR.W           R0, [R0,#0x388]
504256:  LDRB.W          R1, [R0,#0xDE]
50425A:  MOVS            R0, #1
50425C:  CMP             R1, #0xF
50425E:  IT NE
504260:  CMPNE           R1, #0x18
504262:  BEQ             loc_504244
504264:  LDR             R0, [R5,#0x14]
504266:  CMP             R1, #0x10
504268:  IT EQ
50426A:  CMPEQ           R0, #8
50426C:  BEQ             loc_504242
50426E:  LDR             R2, [R5,#0xC]
504270:  CBZ             R2, loc_5042C8
504272:  LDR             R0, [R5,#0x14]
504274:  SUB.W           R1, R0, #0xA
504278:  CMP             R1, #2
50427A:  BCS             loc_504282
50427C:  MOV.W           R6, #0x16C
504280:  B               loc_50428E
504282:  CMP             R0, #0x12
504284:  ITE EQ
504286:  MOVEQ.W         R6, #0x16E
50428A:  MOVWNE          R6, #0x16D
50428E:  LDR             R0, [R5,#0x10]
504290:  MOVS            R2, #0x94
504292:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50429C)
504294:  LDR.W           R0, [R0,#0x388]
504298:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50429A:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
50429C:  LDRB.W          R0, [R0,#0xDE]
5042A0:  SMLABB.W        R0, R0, R2, R1; this
5042A4:  MOV             R1, R6; int
5042A6:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5042AA:  MOV             R3, R0
5042AC:  LDRD.W          R1, R0, [R5,#0xC]
5042B0:  LDR             R2, [R5,#0x14]
5042B2:  LDR             R5, [R0]
5042B4:  VLDR            S0, [R1,#0x20]
5042B8:  MOV             R1, R4
5042BA:  LDR             R5, [R5,#0x74]
5042BC:  VSTR            S0, [SP,#0x28+var_24]
5042C0:  STR             R6, [SP,#0x28+var_28]
5042C2:  BLX             R5
5042C4:  MOVS            R0, #0
5042C6:  B               loc_504244
5042C8:  SUB.W           R2, R0, #0xA
5042CC:  CMP             R2, #2
5042CE:  BCS             loc_5042D6
5042D0:  MOV.W           R6, #0x16C
5042D4:  B               loc_5042E2
5042D6:  CMP             R0, #0x12
5042D8:  ITE EQ
5042DA:  MOVEQ.W         R6, #0x16E
5042DE:  MOVWNE          R6, #0x16D
5042E2:  LDR             R0, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5042EA)
5042E4:  MOVS            R2, #0x94
5042E6:  ADD             R0, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5042E8:  LDR             R0, [R0]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5042EA:  SMLABB.W        R0, R1, R2, R0; this
5042EE:  MOV             R1, R6; int
5042F0:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5042F4:  MOV             R1, R0; int
5042F6:  LDR             R0, [R4,#0x18]; int
5042F8:  MOVS            R3, #0
5042FA:  MOV             R2, R6; unsigned int
5042FC:  MOVT            R3, #0x447A
504300:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
504304:  LDR             R1, =(_ZN28CTaskSimpleCarSlowDragPedOut29FinishAnimCarSlowDragPedOutCBEP21CAnimBlendAssociationPv_ptr - 0x50430E)
504306:  MOV             R2, R5; void *
504308:  STR             R0, [R5,#0xC]
50430A:  ADD             R1, PC; _ZN28CTaskSimpleCarSlowDragPedOut29FinishAnimCarSlowDragPedOutCBEP21CAnimBlendAssociationPv_ptr
50430C:  LDR             R1, [R1]; CTaskSimpleCarSlowDragPedOut::FinishAnimCarSlowDragPedOutCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50430E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
504312:  LDR             R0, [R5,#0x10]; this
504314:  CMP             R0, #0
504316:  BEQ             loc_504272
504318:  LDR             R1, [R5,#0x14]; CVehicle *
50431A:  CMP             R1, #0xA
50431C:  BNE             loc_504324
50431E:  ADDW            R0, R0, #0x464
504322:  B               loc_504332
504324:  BLX             j__ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei; CCarEnterExit::ComputePassengerIndexFromCarDoor(CVehicle const&,int)
504328:  LDR             R1, [R5,#0x10]
50432A:  ADD.W           R0, R1, R0,LSL#2
50432E:  ADD.W           R0, R0, #0x468
504332:  LDR.W           R8, [R0]
504336:  CMP.W           R8, #0
50433A:  BEQ             loc_504272
50433C:  BLX             rand
504340:  MOV             R6, R0
504342:  LDR             R0, [R5,#0x10]
504344:  BFC.W           R6, #0xA, #0x16
504348:  ADD.W           R9, R0, #0x13C
50434C:  MOV             R0, R9; this
50434E:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
504352:  MOVW            R10, #0xFFFF
504356:  CMP.W           R6, #0x200
50435A:  BLS             loc_504364
50435C:  CMP             R0, #1
50435E:  BNE             loc_50439E
504360:  MOVS            R1, #0x79 ; 'y'
504362:  B               loc_5043C6
504364:  MOVS            R1, #0
504366:  CMP             R0, #0
504368:  STRD.W          R1, R1, [SP,#0x28+var_28]; unsigned __int8
50436C:  MOV             R0, R8; this
50436E:  STR             R1, [SP,#0x28+var_20]; unsigned __int8
504370:  MOV.W           R1, #0x77 ; 'w'
504374:  IT EQ
504376:  MOVEQ           R1, #0x76 ; 'v'; unsigned __int16
504378:  MOVS            R2, #0; unsigned int
50437A:  MOV.W           R3, #0x3F800000; float
50437E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
504382:  UXTH            R0, R0
504384:  CMP             R0, R10
504386:  BNE.W           loc_504272
50438A:  LDR             R0, [R5,#0x10]
50438C:  ADD.W           R6, R0, #0x13C
504390:  MOV             R0, R6; this
504392:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
504396:  CMP             R0, #1
504398:  BNE             loc_5043AA
50439A:  MOVS            R1, #0x79 ; 'y'
50439C:  B               loc_504412
50439E:  MOV             R0, R9; this
5043A0:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5043A4:  CBZ             R0, loc_5043B6
5043A6:  MOVS            R1, #0x7C ; '|'
5043A8:  B               loc_5043C6
5043AA:  MOV             R0, R6; this
5043AC:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5043B0:  CBZ             R0, loc_504402
5043B2:  MOVS            R1, #0x7C ; '|'
5043B4:  B               loc_504412
5043B6:  ADD.W           R0, R8, #0x298; this
5043BA:  BLX             j__ZN23CAEPedSpeechAudioEntity19IsPedFemaleForAudioEv; CAEPedSpeechAudioEntity::IsPedFemaleForAudio(void)
5043BE:  MOVS            R1, #0x7A ; 'z'
5043C0:  CMP             R0, #0
5043C2:  IT EQ
5043C4:  MOVEQ           R1, #0x7B ; '{'
5043C6:  MOVS            R6, #0
5043C8:  UXTH            R1, R1; unsigned __int16
5043CA:  MOV             R0, R4; this
5043CC:  MOVS            R2, #0; unsigned int
5043CE:  MOV.W           R3, #0x3F800000; float
5043D2:  STRD.W          R6, R6, [SP,#0x28+var_28]; unsigned __int8
5043D6:  STR             R6, [SP,#0x28+var_20]; unsigned __int8
5043D8:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5043DC:  UXTH            R0, R0
5043DE:  CMP             R0, R10
5043E0:  BNE.W           loc_504272
5043E4:  LDR             R0, [R5,#0x10]
5043E6:  ADD.W           R0, R0, #0x13C; this
5043EA:  BLX             j__ZN21CAEVehicleAudioEntity22GetVehicleTypeForAudioEv; CAEVehicleAudioEntity::GetVehicleTypeForAudio(void)
5043EE:  CMP             R0, #0
5043F0:  MOV.W           R1, #0x77 ; 'w'
5043F4:  STRD.W          R6, R6, [SP,#0x28+var_28]
5043F8:  MOV             R0, R8
5043FA:  STR             R6, [SP,#0x28+var_20]
5043FC:  IT EQ
5043FE:  MOVEQ           R1, #0x76 ; 'v'
504400:  B               loc_50441E
504402:  ADD.W           R0, R8, #0x298; this
504406:  BLX             j__ZN23CAEPedSpeechAudioEntity19IsPedFemaleForAudioEv; CAEPedSpeechAudioEntity::IsPedFemaleForAudio(void)
50440A:  MOVS            R1, #0x7A ; 'z'
50440C:  CMP             R0, #0
50440E:  IT EQ
504410:  MOVEQ           R1, #0x7B ; '{'
504412:  MOVS            R0, #0
504414:  UXTH            R1, R1; unsigned __int16
504416:  STRD.W          R0, R0, [SP,#0x28+var_28]; unsigned __int8
50441A:  STR             R0, [SP,#0x28+var_20]; unsigned __int8
50441C:  MOV             R0, R4; this
50441E:  MOVS            R2, #0; unsigned int
504420:  MOV.W           R3, #0x3F800000; float
504424:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
504428:  B               loc_504272
