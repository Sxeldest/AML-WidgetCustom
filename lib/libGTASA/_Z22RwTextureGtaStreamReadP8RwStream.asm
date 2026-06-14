; =========================================================
; Game Engine Function: _Z22RwTextureGtaStreamReadP8RwStream
; Address            : 0x5D33CC - 0x5D34B2
; =========================================================

5D33CC:  PUSH            {R4-R7,LR}
5D33CE:  ADD             R7, SP, #0xC
5D33D0:  PUSH.W          {R8}
5D33D4:  VPUSH           {D8-D9}
5D33D8:  SUB             SP, SP, #0x10
5D33DA:  ADD             R2, SP, #0x30+var_24
5D33DC:  ADD             R3, SP, #0x30+var_28
5D33DE:  MOVS            R1, #0x15
5D33E0:  MOV             R4, R0
5D33E2:  BLX.W           j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
5D33E6:  CMP             R0, #0
5D33E8:  BEQ             loc_5D3498
5D33EA:  LDR             R0, =(RwEngineInstance_ptr - 0x5D33F0)
5D33EC:  ADD             R0, PC; RwEngineInstance_ptr ; this
5D33EE:  LDR             R5, [R0]; RwEngineInstance
5D33F0:  BLX.W           j__ZN6CTimer22GetCurrentTimeInCyclesEv; CTimer::GetCurrentTimeInCycles(void)
5D33F4:  MOV             R8, R0
5D33F6:  BLX.W           j__ZN6CTimer23GetCyclesPerMillisecondEv; CTimer::GetCyclesPerMillisecond(void)
5D33FA:  MOV             R6, R0
5D33FC:  LDR             R0, [R5]
5D33FE:  LDR             R2, [SP,#0x30+var_24]
5D3400:  ADD             R1, SP, #0x30+var_2C
5D3402:  LDR.W           R3, [R0,#0xB0]
5D3406:  MOV             R0, R4
5D3408:  BLX             R3
5D340A:  VMOV            S0, R8
5D340E:  CMP             R0, #0
5D3410:  VMOV            S2, R6
5D3414:  VCVT.F32.U32    S0, S0
5D3418:  VCVT.F32.U32    S2, S2
5D341C:  BEQ             loc_5D3498
5D341E:  LDR             R0, =(gGameState_ptr - 0x5D3424)
5D3420:  ADD             R0, PC; gGameState_ptr
5D3422:  LDR             R0, [R0]; gGameState
5D3424:  LDR             R0, [R0]; this
5D3426:  CMP             R0, #8
5D3428:  BNE             loc_5D3484
5D342A:  VDIV.F32        S16, S0, S2
5D342E:  BLX.W           j__ZN6CTimer22GetCurrentTimeInCyclesEv; CTimer::GetCurrentTimeInCycles(void)
5D3432:  VMOV            S0, R0; this
5D3436:  VCVT.F32.U32    S18, S0
5D343A:  BLX.W           j__ZN6CTimer23GetCyclesPerMillisecondEv; CTimer::GetCyclesPerMillisecond(void)
5D343E:  VMOV            S0, R0
5D3442:  LDR             R0, =(texNumLoaded_ptr - 0x5D344E)
5D3444:  LDR             R1, =(texLoadTime_ptr - 0x5D3450)
5D3446:  VCVT.F32.U32    S0, S0
5D344A:  ADD             R0, PC; texNumLoaded_ptr
5D344C:  ADD             R1, PC; texLoadTime_ptr
5D344E:  LDR             R0, [R0]; texNumLoaded
5D3450:  LDR             R1, [R1]; texLoadTime
5D3452:  LDR             R2, [R0]
5D3454:  VDIV.F32        S0, S18, S0
5D3458:  VMOV            S2, R2
5D345C:  ADDS            R2, #1
5D345E:  VSUB.F32        S0, S0, S16
5D3462:  VCVT.F32.S32    S2, S2
5D3466:  VLDR            S4, [R1]
5D346A:  VMUL.F32        S2, S4, S2
5D346E:  VMOV            S4, R2
5D3472:  VCVT.F32.S32    S4, S4
5D3476:  STR             R2, [R0]
5D3478:  VADD.F32        S0, S0, S2
5D347C:  VDIV.F32        S0, S0, S4
5D3480:  VSTR            S0, [R1]
5D3484:  LDR             R0, [SP,#0x30+var_2C]
5D3486:  CBZ             R0, loc_5D3498
5D3488:  LDR             R1, [R0,#0x50]
5D348A:  UXTB            R2, R1
5D348C:  CMP             R2, #3
5D348E:  BEQ             loc_5D34A6
5D3490:  CMP             R2, #1
5D3492:  BNE             loc_5D349A
5D3494:  MOVS            R2, #2
5D3496:  B               loc_5D34A8
5D3498:  MOVS            R0, #0
5D349A:  ADD             SP, SP, #0x10
5D349C:  VPOP            {D8-D9}
5D34A0:  POP.W           {R8}
5D34A4:  POP             {R4-R7,PC}
5D34A6:  MOVS            R2, #4
5D34A8:  BIC.W           R1, R1, #0xFF
5D34AC:  ORRS            R1, R2
5D34AE:  STR             R1, [R0,#0x50]
5D34B0:  B               loc_5D349A
