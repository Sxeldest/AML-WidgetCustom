; =========================================================
; Game Engine Function: _Z18OS_ApplicationTickf
; Address            : 0x5E53C8 - 0x5E5446
; =========================================================

5E53C8:  PUSH            {R4,R6,R7,LR}
5E53CA:  ADD             R7, SP, #8
5E53CC:  SUB             SP, SP, #8
5E53CE:  LDR             R0, =(mainThread_ptr - 0x5E53D4)
5E53D0:  ADD             R0, PC; mainThread_ptr
5E53D2:  LDR             R0, [R0]; mainThread
5E53D4:  LDR             R0, [R0]; void *
5E53D6:  CBZ             R0, loc_5E53E8
5E53D8:  BLX.W           j__Z18OS_ThreadIsRunningPv; OS_ThreadIsRunning(void *)
5E53DC:  CBZ             R0, loc_5E542E
5E53DE:  MOVW            R0, #0x1388; useconds
5E53E2:  BLX.W           j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
5E53E6:  B               loc_5E542A
5E53E8:  BLX.W           j__Z22OS_ThreadUnmakeCurrentv; OS_ThreadUnmakeCurrent(void)
5E53EC:  LDR             R0, =(_Z12MainGameFuncPv_ptr - 0x5E53F8)
5E53EE:  MOVS            R1, #2
5E53F0:  MOVS            R4, #1
5E53F2:  ADR             R3, aMainthread_0; "MainThread"
5E53F4:  ADD             R0, PC; _Z12MainGameFuncPv_ptr
5E53F6:  STRD.W          R4, R1, [SP,#0x10+var_10]
5E53FA:  MOVS            R1, #0
5E53FC:  MOVS            R2, #1
5E53FE:  LDR             R0, [R0]; MainGameFunc(void *)
5E5400:  BLX.W           j__Z15OS_ThreadLaunchPFjPvES_jPKci16OSThreadPriority; OS_ThreadLaunch(uint (*)(void *),void *,uint,char const*,int,OSThreadPriority)
5E5404:  LDR             R1, =(mainThread_ptr - 0x5E540A)
5E5406:  ADD             R1, PC; mainThread_ptr
5E5408:  LDR             R1, [R1]; mainThread
5E540A:  STR             R0, [R1]
5E540C:  BLX.W           j__Z18OS_ThreadIsRunningPv; OS_ThreadIsRunning(void *)
5E5410:  CBNZ            R0, loc_5E5440
5E5412:  LDR             R0, =(mainThread_ptr - 0x5E5418)
5E5414:  ADD             R0, PC; mainThread_ptr
5E5416:  LDR             R4, [R0]; mainThread
5E5418:  MOV.W           R0, #0x3E8; useconds
5E541C:  BLX.W           j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
5E5420:  LDR             R0, [R4]; void *
5E5422:  BLX.W           j__Z18OS_ThreadIsRunningPv; OS_ThreadIsRunning(void *)
5E5426:  CMP             R0, #0
5E5428:  BEQ             loc_5E5418
5E542A:  MOVS            R4, #1
5E542C:  B               loc_5E5440
5E542E:  LDR             R0, =(mainThread_ptr - 0x5E5434)
5E5430:  ADD             R0, PC; mainThread_ptr
5E5432:  LDR             R0, [R0]; mainThread
5E5434:  LDR             R0, [R0]; void *
5E5436:  BLX.W           j__Z14OS_ThreadClosePv; OS_ThreadClose(void *)
5E543A:  BLX.W           j_mpg123_exit
5E543E:  MOVS            R4, #0
5E5440:  MOV             R0, R4
5E5442:  ADD             SP, SP, #8
5E5444:  POP             {R4,R6,R7,PC}
