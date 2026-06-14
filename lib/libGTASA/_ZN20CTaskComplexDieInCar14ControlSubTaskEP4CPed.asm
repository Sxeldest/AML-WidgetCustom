; =========================================================
; Game Engine Function: _ZN20CTaskComplexDieInCar14ControlSubTaskEP4CPed
; Address            : 0x4EB2C0 - 0x4EB3AE
; =========================================================

4EB2C0:  PUSH            {R4-R7,LR}
4EB2C2:  ADD             R7, SP, #0xC
4EB2C4:  PUSH.W          {R11}
4EB2C8:  SUB             SP, SP, #8
4EB2CA:  MOV             R6, R0
4EB2CC:  MOV             R5, R1
4EB2CE:  LDR             R4, [R6,#8]
4EB2D0:  LDR             R0, [R4]
4EB2D2:  LDR             R1, [R0,#0x14]
4EB2D4:  MOV             R0, R4
4EB2D6:  BLX             R1
4EB2D8:  MOVW            R1, #0x2C5
4EB2DC:  CMP             R0, R1
4EB2DE:  BNE             loc_4EB3A4
4EB2E0:  LDRB            R0, [R6,#0x18]
4EB2E2:  CMP             R0, #0
4EB2E4:  BEQ             loc_4EB3A4
4EB2E6:  LDRB            R0, [R6,#0x19]
4EB2E8:  CBZ             R0, loc_4EB2FC
4EB2EA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EB2F2)
4EB2EC:  MOVS            R1, #0
4EB2EE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EB2F0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EB2F2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EB2F4:  STRB            R1, [R6,#0x19]
4EB2F6:  STR             R0, [R6,#0x10]
4EB2F8:  MOV             R1, R0
4EB2FA:  B               loc_4EB306
4EB2FC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EB304)
4EB2FE:  LDR             R1, [R6,#0x10]
4EB300:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EB302:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EB304:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EB306:  LDR             R2, [R6,#0x14]
4EB308:  ADD             R1, R2
4EB30A:  CMP             R1, R0
4EB30C:  BHI             loc_4EB3A4
4EB30E:  LDRB.W          R0, [R5,#0x448]
4EB312:  CMP             R0, #2
4EB314:  BEQ             loc_4EB32A
4EB316:  LDR.W           R0, [R5,#0x590]
4EB31A:  MOVS            R6, #0
4EB31C:  LDR             R1, [R0]
4EB31E:  LDR.W           R2, [R1,#0xE8]
4EB322:  MOVS            R1, #0
4EB324:  BLX             R2
4EB326:  CMP             R0, #1
4EB328:  BNE             loc_4EB352
4EB32A:  MOVS            R0, #dword_34; this
4EB32C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB330:  LDR.W           R1, [R5,#0x590]; CVehicle *
4EB334:  MOV             R4, R0
4EB336:  MOVS            R5, #1
4EB338:  MOVS            R0, #0
4EB33A:  STRD.W          R0, R5, [SP,#0x18+var_18]; bool
4EB33E:  MOV             R0, R4; this
4EB340:  MOVS            R2, #0; int
4EB342:  MOVS            R3, #0; int
4EB344:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
4EB348:  LDR             R0, =(_ZTV26CTaskComplexLeaveCarAndDie_ptr - 0x4EB350)
4EB34A:  STRB            R5, [R4,#0x1A]
4EB34C:  ADD             R0, PC; _ZTV26CTaskComplexLeaveCarAndDie_ptr
4EB34E:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCarAndDie ...
4EB350:  B               loc_4EB3A0
4EB352:  LDR.W           R0, [R5,#0x590]; this
4EB356:  MOV             R1, R5; CPed *
4EB358:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4EB35C:  MOV             R5, R0
4EB35E:  MOVS            R0, #word_28; this
4EB360:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB364:  MOV             R4, R0
4EB366:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EB36A:  CMP             R5, #1
4EB36C:  STR             R6, [R4,#8]
4EB36E:  BNE             loc_4EB37A
4EB370:  LDR             R0, =(_ZTV19CTaskSimpleDieInCar_ptr - 0x4EB37A)
4EB372:  MOVS            R1, #0
4EB374:  MOVS            R2, #0xBB
4EB376:  ADD             R0, PC; _ZTV19CTaskSimpleDieInCar_ptr
4EB378:  B               loc_4EB382
4EB37A:  LDR             R0, =(_ZTV19CTaskSimpleDieInCar_ptr - 0x4EB384)
4EB37C:  MOVS            R1, #0
4EB37E:  MOVS            R2, #0xBC
4EB380:  ADD             R0, PC; _ZTV19CTaskSimpleDieInCar_ptr
4EB382:  LDR             R0, [R0]; `vtable for'CTaskSimpleDieInCar ...
4EB384:  MOV.W           R6, #0x40800000
4EB388:  LDRB.W          R3, [R4,#0x20]
4EB38C:  STR             R2, [R4,#0xC]
4EB38E:  STR             R1, [R4,#0x10]
4EB390:  STR             R1, [R4,#0x14]
4EB392:  STR             R6, [R4,#0x18]
4EB394:  STR             R1, [R4,#0x1C]
4EB396:  STR             R1, [R4,#0x24]
4EB398:  AND.W           R1, R3, #0xFC
4EB39C:  STRB.W          R1, [R4,#0x20]
4EB3A0:  ADDS            R0, #8
4EB3A2:  STR             R0, [R4]
4EB3A4:  MOV             R0, R4
4EB3A6:  ADD             SP, SP, #8
4EB3A8:  POP.W           {R11}
4EB3AC:  POP             {R4-R7,PC}
