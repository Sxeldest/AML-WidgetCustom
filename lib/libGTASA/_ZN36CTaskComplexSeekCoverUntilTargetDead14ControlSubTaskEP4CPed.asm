; =========================================================
; Game Engine Function: _ZN36CTaskComplexSeekCoverUntilTargetDead14ControlSubTaskEP4CPed
; Address            : 0x4E91A0 - 0x4E9370
; =========================================================

4E91A0:  PUSH            {R4-R7,LR}
4E91A2:  ADD             R7, SP, #0xC
4E91A4:  PUSH.W          {R8-R10}
4E91A8:  SUB             SP, SP, #8
4E91AA:  MOV             R5, R0
4E91AC:  MOV             R8, R1
4E91AE:  MOV             R9, R5
4E91B0:  LDR.W           R0, [R9,#0x10]!; this
4E91B4:  CBZ             R0, loc_4E91CA
4E91B6:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4E91BA:  CBNZ            R0, loc_4E91F4
4E91BC:  LDR.W           R0, [R9]; this
4E91C0:  CMP             R0, #0
4E91C2:  ITT NE
4E91C4:  MOVNE           R1, R9; CEntity **
4E91C6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E91CA:  MOV             R0, R5; this
4E91CC:  BLX             j__ZNK36CTaskComplexSeekCoverUntilTargetDead12GetTargetPedEv; CTaskComplexSeekCoverUntilTargetDead::GetTargetPed(void)
4E91D0:  CMP             R0, #0
4E91D2:  STR             R0, [R5,#0x10]
4E91D4:  BEQ             loc_4E91E2
4E91D6:  MOV             R1, R9; CEntity **
4E91D8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E91DC:  LDR.W           R0, [R9]
4E91E0:  CBNZ            R0, loc_4E91F4
4E91E2:  LDR             R0, [R5,#8]
4E91E4:  MOVS            R2, #1
4E91E6:  MOVS            R3, #0
4E91E8:  LDR             R1, [R0]
4E91EA:  LDR             R6, [R1,#0x1C]
4E91EC:  MOV             R1, R8
4E91EE:  BLX             R6
4E91F0:  CMP             R0, #1
4E91F2:  BEQ             loc_4E9252
4E91F4:  MOV             R10, R5
4E91F6:  LDR.W           R0, [R10,#0x14]!; this
4E91FA:  CBZ             R0, loc_4E9216
4E91FC:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4E9200:  CMP             R0, #1
4E9202:  BNE             loc_4E9208
4E9204:  ADDS            R5, #8
4E9206:  B               loc_4E9362
4E9208:  LDR.W           R0, [R10]; this
4E920C:  CMP             R0, #0
4E920E:  ITT NE
4E9210:  MOVNE           R1, R10; CEntity **
4E9212:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E9216:  MOV             R0, R5; this
4E9218:  BLX             j__ZNK36CTaskComplexSeekCoverUntilTargetDead12GetTargetPedEv; CTaskComplexSeekCoverUntilTargetDead::GetTargetPed(void)
4E921C:  CMP             R0, #0
4E921E:  STR             R0, [R5,#0x14]
4E9220:  BEQ             loc_4E9236
4E9222:  MOV             R1, R10; CEntity **
4E9224:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E9228:  LDR.W           R0, [R10]
4E922C:  MOVS            R4, #0
4E922E:  CMP             R0, #0
4E9230:  IT EQ
4E9232:  MOVEQ           R4, #1
4E9234:  B               loc_4E9238
4E9236:  MOVS            R4, #1
4E9238:  LDR.W           R0, [R5,#8]!
4E923C:  MOVS            R2, #1
4E923E:  MOVS            R3, #0
4E9240:  LDR             R1, [R0]
4E9242:  LDR             R6, [R1,#0x1C]
4E9244:  MOV             R1, R8
4E9246:  BLX             R6
4E9248:  CMP             R4, #1
4E924A:  BNE             loc_4E9270
4E924C:  CMP             R0, #1
4E924E:  BNE.W           loc_4E9362
4E9252:  MOVS            R0, #dword_20; this
4E9254:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E9258:  MOV             R8, R0
4E925A:  MOV.W           R0, #0x41000000
4E925E:  STR             R0, [SP,#0x20+var_20]; float
4E9260:  MOV             R0, R8; this
4E9262:  MOV.W           R1, #0xFFFFFFFF; int
4E9266:  MOVS            R2, #0; bool
4E9268:  MOVS            R3, #0; bool
4E926A:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E926E:  B               loc_4E9366
4E9270:  CMP             R0, #1
4E9272:  BNE             loc_4E9362
4E9274:  MOVS            R0, #dword_40; this
4E9276:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E927A:  MOV             R8, R0
4E927C:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
4E9280:  MOVS            R0, #dword_54; this
4E9282:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E9286:  MOV             R5, R0
4E9288:  LDR.W           R6, [R10]
4E928C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E9290:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE_ptr - 0x4E929C)
4E9292:  ADR             R2, dword_4E9370
4E9294:  LDR             R0, =(_ZTV41CEntitySeekPosCalculatorRadiusAngleOffset_ptr - 0x4E92A6)
4E9296:  MOVS            R3, #6
4E9298:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE_ptr
4E929A:  VLD1.64         {D16-D17}, [R2@128]
4E929E:  ADD.W           R2, R5, #0x18
4E92A2:  ADD             R0, PC; _ZTV41CEntitySeekPosCalculatorRadiusAngleOffset_ptr
4E92A4:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorRadiusAngleOffset> ...
4E92A6:  CMP             R6, #0
4E92A8:  VST1.32         {D16-D17}, [R2]
4E92AC:  MOV.W           R2, #0x3E8
4E92B0:  ADD.W           R1, R1, #8
4E92B4:  STR             R1, [R5]
4E92B6:  MOVW            R1, #0xC350
4E92BA:  STRD.W          R1, R2, [R5,#0x10]
4E92BE:  MOV.W           R1, #0
4E92C2:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorRadiusAngleOffset ...
4E92C4:  STRH            R1, [R5,#0x30]
4E92C6:  STRH            R1, [R5,#0x3C]
4E92C8:  ADD.W           R0, R0, #8
4E92CC:  STRD.W          R1, R1, [R5,#0x28]
4E92D0:  STRD.W          R1, R1, [R5,#0x34]
4E92D4:  LDRB.W          R2, [R5,#0x50]
4E92D8:  STRD.W          R0, R1, [R5,#0x40]
4E92DC:  AND.W           R0, R2, #0xF0
4E92E0:  STRD.W          R1, R3, [R5,#0x48]
4E92E4:  MOV             R1, R5
4E92E6:  ORR.W           R0, R0, #3
4E92EA:  STRB.W          R0, [R5,#0x50]
4E92EE:  STR.W           R6, [R1,#0xC]!; CEntity **
4E92F2:  ITT NE
4E92F4:  MOVNE           R0, R6; this
4E92F6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E92FA:  MOVW            R0, #0xFDB
4E92FE:  MOV.W           R1, #0x3FC00000
4E9302:  MOVT            R0, #0x4049
4E9306:  STRD.W          R1, R0, [R5,#0x44]
4E930A:  MOV             R0, R8; this
4E930C:  MOV             R1, R5; CTask *
4E930E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4E9312:  MOVS            R0, #word_28; this
4E9314:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E9318:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x4E9322)
4E931A:  MOV             R5, R0
4E931C:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x4E9324)
4E931E:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
4E9320:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
4E9322:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
4E9324:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
4E9326:  LDR.W           R1, [R9]; CEntity *
4E932A:  LDR             R3, [R3]; float
4E932C:  LDR             R2, [R0]; float
4E932E:  MOV             R0, R5; this
4E9330:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
4E9334:  MOV             R0, R8; this
4E9336:  MOV             R1, R5; CTask *
4E9338:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4E933C:  MOVS            R0, #dword_20; this
4E933E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E9342:  MOV             R4, R0
4E9344:  MOV.W           R0, #0x41000000
4E9348:  STR             R0, [SP,#0x20+var_20]; float
4E934A:  MOV             R0, R4; this
4E934C:  MOV.W           R1, #0x7D0; int
4E9350:  MOVS            R2, #0; bool
4E9352:  MOVS            R3, #0; bool
4E9354:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E9358:  MOV             R0, R8; this
4E935A:  MOV             R1, R4; CTask *
4E935C:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4E9360:  B               loc_4E9366
4E9362:  LDR.W           R8, [R5]
4E9366:  MOV             R0, R8
4E9368:  ADD             SP, SP, #8
4E936A:  POP.W           {R8-R10}
4E936E:  POP             {R4-R7,PC}
