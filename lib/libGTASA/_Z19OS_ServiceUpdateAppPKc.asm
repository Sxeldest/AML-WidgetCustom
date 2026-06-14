; =========================================================
; Game Engine Function: _Z19OS_ServiceUpdateAppPKc
; Address            : 0x26C544 - 0x26C5B4
; =========================================================

26C544:  PUSH            {R4,R5,R7,LR}
26C546:  ADD             R7, SP, #8
26C548:  SUB.W           SP, SP, #0x208
26C54C:  MOV             R3, R0
26C54E:  LDR             R0, =(__stack_chk_guard_ptr - 0x26C558)
26C550:  LDR             R2, =(aMarketDetailsI - 0x26C55E); "market://details?id=%s"
26C552:  ADD             R4, SP, #0x210+var_20C
26C554:  ADD             R0, PC; __stack_chk_guard_ptr
26C556:  MOV.W           R1, #0x200
26C55A:  ADD             R2, PC; "market://details?id=%s"
26C55C:  LDR             R0, [R0]; __stack_chk_guard
26C55E:  LDR             R0, [R0]
26C560:  STR             R0, [SP,#0x210+var_C]
26C562:  MOV             R0, R4
26C564:  BL              sub_5E6B74
26C568:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C56C:  MOV             R5, R0
26C56E:  MOV             R1, R4
26C570:  LDR             R0, [R5]
26C572:  LDR.W           R2, [R0,#0x29C]
26C576:  MOV             R0, R5
26C578:  BLX             R2
26C57A:  MOV             R4, R0
26C57C:  LDR             R0, =(s_OpenLink_ptr - 0x26C586)
26C57E:  LDR             R1, =(dword_6D81DC - 0x26C588)
26C580:  MOV             R3, R4
26C582:  ADD             R0, PC; s_OpenLink_ptr
26C584:  ADD             R1, PC; dword_6D81DC
26C586:  LDR             R0, [R0]; s_OpenLink
26C588:  LDR             R1, [R1]
26C58A:  LDR             R2, [R0]
26C58C:  MOV             R0, R5
26C58E:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26C592:  LDR             R0, [R5]
26C594:  MOV             R1, R4
26C596:  LDR             R2, [R0,#0x5C]
26C598:  MOV             R0, R5
26C59A:  BLX             R2
26C59C:  LDR             R0, =(__stack_chk_guard_ptr - 0x26C5A4)
26C59E:  LDR             R1, [SP,#0x210+var_C]
26C5A0:  ADD             R0, PC; __stack_chk_guard_ptr
26C5A2:  LDR             R0, [R0]; __stack_chk_guard
26C5A4:  LDR             R0, [R0]
26C5A6:  SUBS            R0, R0, R1
26C5A8:  ITT EQ
26C5AA:  ADDEQ.W         SP, SP, #0x208
26C5AE:  POPEQ           {R4,R5,R7,PC}
26C5B0:  BLX             __stack_chk_fail
