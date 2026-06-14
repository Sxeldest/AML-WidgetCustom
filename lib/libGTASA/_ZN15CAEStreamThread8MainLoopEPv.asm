; =========================================================
; Game Engine Function: _ZN15CAEStreamThread8MainLoopEPv
; Address            : 0x3AA404 - 0x3AA45A
; =========================================================

3AA404:  PUSH            {R4,R5,R7,LR}
3AA406:  ADD             R7, SP, #8
3AA408:  MOV             R4, R0
3AA40A:  LDR             R0, [R4,#8]; sem
3AA40C:  BLX             j__Z16OS_SemaphoreWaitPv; OS_SemaphoreWait(void *)
3AA410:  B               loc_3AA450
3AA412:  BLX             j__ZN15CAEAudioUtility28GetCurrentTimeInMillisecondsEv; CAEAudioUtility::GetCurrentTimeInMilliseconds(void)
3AA416:  MOV             R5, R0
3AA418:  LDR             R0, [R4,#4]; mutex
3AA41A:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
3AA41E:  MOV             R0, R4; this
3AA420:  BLX             j__ZN15CAEStreamThread7ServiceEv; CAEStreamThread::Service(void)
3AA424:  LDR             R0, [R4,#0x10]
3AA426:  LDR             R1, [R0]
3AA428:  LDR             R1, [R1,#8]
3AA42A:  BLX             R1
3AA42C:  LDR             R0, [R4,#4]; mutex
3AA42E:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
3AA432:  BLX             j__ZN15CAEAudioUtility28GetCurrentTimeInMillisecondsEv; CAEAudioUtility::GetCurrentTimeInMilliseconds(void)
3AA436:  SUBS            R0, R0, R5
3AA438:  CMP             R0, #4
3AA43A:  ITT LS
3AA43C:  MOVWLS          R0, #0x1388; useconds
3AA440:  BLXLS           j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
3AA444:  LDR             R0, [R4,#0xC]; mutex
3AA446:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
3AA44A:  LDR             R0, [R4,#0xC]; mutex
3AA44C:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
3AA450:  LDRB            R0, [R4,#0x19]; this
3AA452:  CMP             R0, #0
3AA454:  BNE             loc_3AA412
3AA456:  MOVS            R0, #0
3AA458:  POP             {R4,R5,R7,PC}
