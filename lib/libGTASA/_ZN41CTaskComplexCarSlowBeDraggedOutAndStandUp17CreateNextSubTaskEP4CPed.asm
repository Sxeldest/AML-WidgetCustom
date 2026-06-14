; =========================================================
; Game Engine Function: _ZN41CTaskComplexCarSlowBeDraggedOutAndStandUp17CreateNextSubTaskEP4CPed
; Address            : 0x505404 - 0x505482
; =========================================================

505404:  PUSH            {R4-R7,LR}
505406:  ADD             R7, SP, #0xC
505408:  PUSH.W          {R11}
50540C:  SUB             SP, SP, #0x10
50540E:  LDR             R0, [R0,#8]
505410:  MOV             R4, R1
505412:  LDR             R1, [R0]
505414:  LDR             R1, [R1,#0x14]
505416:  BLX             R1
505418:  CMP             R0, #0xCE
50541A:  BEQ             loc_50544E
50541C:  MOVW            R1, #0x337
505420:  CMP             R0, R1
505422:  BNE             loc_505454
505424:  MOV             R0, R4; this
505426:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
50542A:  CMP             R0, #1
50542C:  BNE             loc_505458
50542E:  ADDW            R0, R4, #0x544
505432:  VLDR            S0, [R0]
505436:  VCMPE.F32       S0, #0.0
50543A:  VMRS            APSR_nzcv, FPSCR
50543E:  BLE             loc_505458
505440:  MOVS            R0, #(byte_9+3); this
505442:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
505446:  MOV             R5, R0
505448:  BLX             j__ZN30CTaskComplexGetUpAndStandStillC2Ev; CTaskComplexGetUpAndStandStill::CTaskComplexGetUpAndStandStill(void)
50544C:  B               loc_505478
50544E:  MOV             R0, R4; this
505450:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
505454:  MOVS            R5, #0
505456:  B               loc_505478
505458:  MOV             R6, SP
50545A:  MOVS            R1, #0; bool
50545C:  MOV             R0, R6; this
50545E:  MOVS            R5, #0
505460:  BLX             j__ZN11CEventDeathC2Eb; CEventDeath::CEventDeath(bool)
505464:  LDR.W           R0, [R4,#0x440]
505468:  MOV             R1, R6; CEvent *
50546A:  MOVS            R2, #0; bool
50546C:  ADDS            R0, #0x68 ; 'h'; this
50546E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
505472:  MOV             R0, R6; this
505474:  BLX             j__ZN6CEventD2Ev_1; CEvent::~CEvent()
505478:  MOV             R0, R5
50547A:  ADD             SP, SP, #0x10
50547C:  POP.W           {R11}
505480:  POP             {R4-R7,PC}
