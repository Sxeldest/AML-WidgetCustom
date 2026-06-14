; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForPed18CreateFirstSubTaskEP4CPed
; Address            : 0x536378 - 0x5363C6
; =========================================================

536378:  MOV             R1, R0; unsigned int
53637A:  MOVS            R0, #0
53637C:  LDR             R2, [R1,#0xC]
53637E:  CMP             R2, #0
536380:  IT EQ
536382:  BXEQ            LR
536384:  PUSH            {R7,LR}
536386:  MOV             R7, SP
536388:  SUB             SP, SP, #8
53638A:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x536396)
53638C:  MOVS            R3, #1
53638E:  LDR.W           R12, [R1,#0x14]
536392:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
536394:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
536396:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
536398:  STRB.W          R3, [R1,#0x24]
53639C:  STRD.W          R2, R12, [R1,#0x1C]
5363A0:  STR             R0, [R1,#0x28]
5363A2:  MOVS            R0, #dword_20; this
5363A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5363A8:  MOV.W           R1, #0x41000000
5363AC:  MOVS            R2, #0; bool
5363AE:  STR             R1, [SP,#0x10+var_10]; float
5363B0:  MOV             R1, #0xF423F; int
5363B8:  MOVS            R3, #0; bool
5363BA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5363BE:  ADD             SP, SP, #8
5363C0:  POP.W           {R7,LR}
5363C4:  BX              LR
