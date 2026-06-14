; =========================================================
; Game Engine Function: _ZN7CWanted29ClearWantedLevelAndGoOnParoleEv
; Address            : 0x422364 - 0x4223A8
; =========================================================

422364:  PUSH            {R4,R6,R7,LR}
422366:  ADD             R7, SP, #8
422368:  MOV             R4, R0
42236A:  LDR             R0, [R4,#0x2C]
42236C:  VMOV            S0, R0
422370:  MOVS            R0, #dword_84; this
422372:  VCVT.F32.U32    S0, S0
422376:  VMOV            R1, S0; unsigned __int16
42237A:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
42237E:  MOV.W           R0, #0xFFFFFFFF; int
422382:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
422386:  LDR             R0, [R0]
422388:  STR             R0, [R4,#4]
42238A:  MOV.W           R0, #0xFFFFFFFF; int
42238E:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
422392:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x42239C)
422394:  MOVS            R2, #0
422396:  LDR             R0, [R0,#0x2C]
422398:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
42239A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
42239C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
42239E:  STR             R2, [R4]
4223A0:  STR             R1, [R4,#0x10]
4223A2:  STRD.W          R2, R0, [R4,#0x2C]
4223A6:  POP             {R4,R6,R7,PC}
