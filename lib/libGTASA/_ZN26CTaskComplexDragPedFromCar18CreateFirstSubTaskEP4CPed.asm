; =========================================================
; Game Engine Function: _ZN26CTaskComplexDragPedFromCar18CreateFirstSubTaskEP4CPed
; Address            : 0x4F7270 - 0x4F733C
; =========================================================

4F7270:  PUSH            {R4-R7,LR}
4F7272:  ADD             R7, SP, #0xC
4F7274:  PUSH.W          {R11}
4F7278:  MOV             R5, R0
4F727A:  MOV             R4, R1
4F727C:  LDR             R1, [R5,#0x50]; CPed *
4F727E:  CBZ             R1, loc_4F7292
4F7280:  LDR.W           R0, [R1,#0x590]; this
4F7284:  CMP             R0, #0
4F7286:  ITT NE
4F7288:  LDRBNE.W        R2, [R1,#0x485]
4F728C:  MOVSNE.W        R2, R2,LSL#31
4F7290:  BNE             loc_4F72AC
4F7292:  MOVS            R0, #byte_8; this
4F7294:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F7298:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F729C:  LDR             R1, =(_ZTV15CTaskSimpleNone_ptr - 0x4F72A2)
4F729E:  ADD             R1, PC; _ZTV15CTaskSimpleNone_ptr
4F72A0:  LDR             R1, [R1]; `vtable for'CTaskSimpleNone ...
4F72A2:  ADDS            R1, #8
4F72A4:  STR             R1, [R0]
4F72A6:  POP.W           {R11}
4F72AA:  POP             {R4-R7,PC}
4F72AC:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
4F72B0:  CBNZ            R0, loc_4F72C0
4F72B2:  LDR             R1, [R5,#0x50]; CPed *
4F72B4:  LDR.W           R0, [R1,#0x590]; this
4F72B8:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4F72BC:  CMP             R0, #1
4F72BE:  BNE             loc_4F7292
4F72C0:  MOV             R6, R5
4F72C2:  LDR.W           R0, [R6,#0xC]!; this
4F72C6:  CMP             R0, #0
4F72C8:  ITT NE
4F72CA:  MOVNE           R1, R6; CEntity **
4F72CC:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F72D0:  LDR             R0, [R5,#0x50]
4F72D2:  MOV             R1, R6; CEntity **
4F72D4:  LDR.W           R0, [R0,#0x590]; this
4F72D8:  STR             R0, [R5,#0xC]
4F72DA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F72DE:  LDR             R0, [R5,#0xC]; this
4F72E0:  LDRB            R2, [R5,#0x10]
4F72E2:  LDR             R1, [R5,#0x50]; CVehicle *
4F72E4:  LDR.W           R3, [R0,#0x464]
4F72E8:  AND.W           R6, R2, #0xF8
4F72EC:  CMP             R3, R1
4F72EE:  IT EQ
4F72F0:  ORREQ.W         R6, R2, #1
4F72F4:  CMP             R0, #0
4F72F6:  AND.W           R2, R6, #0xF9
4F72FA:  ORR.W           R2, R2, #4
4F72FE:  STRB            R2, [R5,#0x10]
4F7300:  BEQ             loc_4F7326
4F7302:  LDR.W           R2, [R0,#0x388]
4F7306:  LDRB.W          R2, [R2,#0xCD]
4F730A:  LSLS            R2, R2, #0x1E
4F730C:  BMI             loc_4F7322
4F730E:  LDR.W           R2, [R1,#0x590]
4F7312:  LDR.W           R3, [R2,#0x5A0]
4F7316:  CMP             R3, #9
4F7318:  BEQ             loc_4F7322
4F731A:  LDR.W           R2, [R2,#0x5A4]; CPed *
4F731E:  CMP             R2, #2
4F7320:  BNE             loc_4F7336
4F7322:  MOVS            R0, #0
4F7324:  STR             R0, [R5,#0x1C]
4F7326:  MOV             R0, R5; this
4F7328:  MOV             R1, R4; CPed *
4F732A:  POP.W           {R11}
4F732E:  POP.W           {R4-R7,LR}
4F7332:  B.W             _ZN20CTaskComplexEnterCar18CreateFirstSubTaskEP4CPed; CTaskComplexEnterCar::CreateFirstSubTask(CPed *)
4F7336:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4F733A:  B               loc_4F7324
