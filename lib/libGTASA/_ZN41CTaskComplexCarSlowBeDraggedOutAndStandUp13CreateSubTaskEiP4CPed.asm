; =========================================================
; Game Engine Function: _ZN41CTaskComplexCarSlowBeDraggedOutAndStandUp13CreateSubTaskEiP4CPed
; Address            : 0x5052FC - 0x5053FA
; =========================================================

5052FC:  PUSH            {R4-R7,LR}
5052FE:  ADD             R7, SP, #0xC
505300:  PUSH.W          {R11}
505304:  SUB             SP, SP, #8
505306:  MOV             R5, R2
505308:  MOV             R6, R0
50530A:  MOVS            R4, #0
50530C:  CMP.W           R1, #0x330
505310:  BGE             loc_505354
505312:  CMP             R1, #0xCE
505314:  BEQ             loc_505388
505316:  CMP.W           R1, #0x2C0
50531A:  BNE             loc_5053F0
50531C:  LDR             R0, [R6,#0xC]
50531E:  LDR.W           R0, [R0,#0x388]
505322:  LDRB.W          R0, [R0,#0xDE]
505326:  CMP             R0, #0x18
505328:  BEQ             loc_5053D2
50532A:  CMP             R0, #0xF
50532C:  BEQ             loc_50533A
50532E:  MOVS            R4, #0
505330:  CMP             R0, #0x10
505332:  BNE             loc_5053F0
505334:  LDR             R0, [R6,#0x10]
505336:  CMP             R0, #8
505338:  BNE             loc_5053F0
50533A:  MOVS            R0, #dword_34; this
50533C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
505340:  LDR.W           R1, [R5,#0x590]; unsigned int
505344:  MOV             R4, R0
505346:  MOVS            R0, #1
505348:  MOVS            R2, #0
50534A:  STRD.W          R2, R0, [SP,#0x18+var_18]
50534E:  MOV             R0, R4
505350:  MOVS            R2, #8
505352:  B               loc_5053EA
505354:  BEQ             loc_505396
505356:  MOVW            R0, #0x337
50535A:  CMP             R1, R0
50535C:  BNE             loc_5053F0
50535E:  MOVS            R0, #dword_1C; this
505360:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
505364:  MOV             R4, R0
505366:  LDRD.W          R5, R6, [R6,#0xC]
50536A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50536E:  LDR             R0, =(_ZTV31CTaskComplexCarSlowBeDraggedOut_ptr - 0x505378)
505370:  MOVS            R1, #0
505372:  STR             R6, [R4,#0x10]
505374:  ADD             R0, PC; _ZTV31CTaskComplexCarSlowBeDraggedOut_ptr
505376:  STRB            R1, [R4,#0x14]
505378:  STR             R1, [R4,#0x18]
50537A:  MOV             R1, R4
50537C:  LDR             R0, [R0]; `vtable for'CTaskComplexCarSlowBeDraggedOut ...
50537E:  ADDS            R0, #8
505380:  STR             R0, [R4]
505382:  STR.W           R5, [R1,#0xC]!; unsigned int
505386:  B               loc_5053C6
505388:  MOVS            R0, #(byte_9+3); this
50538A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50538E:  MOV             R4, R0
505390:  BLX             j__ZN30CTaskComplexGetUpAndStandStillC2Ev; CTaskComplexGetUpAndStandStill::CTaskComplexGetUpAndStandStill(void)
505394:  B               loc_5053F0
505396:  MOVS            R0, #off_18; this
505398:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50539C:  MOV             R4, R0
50539E:  LDR.W           R5, [R5,#0x590]
5053A2:  LDR             R6, [R6,#0x10]
5053A4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5053A8:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x5053B2)
5053AA:  MOVS            R1, #1
5053AC:  STR             R6, [R4,#0xC]
5053AE:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
5053B0:  STRB            R1, [R4,#0x10]
5053B2:  MOVS            R1, #0
5053B4:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
5053B6:  STRB            R1, [R4,#0x15]
5053B8:  STR.W           R1, [R4,#0x11]
5053BC:  MOV             R1, R4
5053BE:  ADDS            R0, #8
5053C0:  STR             R0, [R4]
5053C2:  STR.W           R5, [R1,#8]!; CEntity **
5053C6:  CMP             R5, #0
5053C8:  ITT NE
5053CA:  MOVNE           R0, R5; this
5053CC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5053D0:  B               loc_5053F0
5053D2:  MOVS            R0, #dword_34; this
5053D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5053D8:  MOV             R4, R0
5053DA:  MOVS            R0, #1
5053DC:  MOVS            R2, #0
5053DE:  LDR.W           R1, [R5,#0x590]; CVehicle *
5053E2:  STRD.W          R2, R0, [SP,#0x18+var_18]; bool
5053E6:  MOV             R0, R4; this
5053E8:  MOVS            R2, #0xA; int
5053EA:  MOVS            R3, #0; int
5053EC:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
5053F0:  MOV             R0, R4
5053F2:  ADD             SP, SP, #8
5053F4:  POP.W           {R11}
5053F8:  POP             {R4-R7,PC}
