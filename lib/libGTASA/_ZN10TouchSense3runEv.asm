; =========================================================
; Game Engine Function: _ZN10TouchSense3runEv
; Address            : 0x2704BC - 0x270620
; =========================================================

2704BC:  PUSH            {R4-R7,LR}
2704BE:  ADD             R7, SP, #0xC
2704C0:  PUSH.W          {R8-R11}
2704C4:  SUB             SP, SP, #0x2C
2704C6:  MOV             R4, R0
2704C8:  LDR             R0, =(UseTouchSense_ptr - 0x2704CE)
2704CA:  ADD             R0, PC; UseTouchSense_ptr
2704CC:  LDR             R0, [R0]; UseTouchSense
2704CE:  LDRB            R0, [R0]
2704D0:  CMP             R0, #0
2704D2:  BEQ.W           loc_270618
2704D6:  LDR             R0, =(g_accessMutex_ptr - 0x2704DC)
2704D8:  ADD             R0, PC; g_accessMutex_ptr
2704DA:  LDR             R0, [R0]; g_accessMutex ; mutex
2704DC:  BLX             pthread_mutex_lock
2704E0:  LDRB            R0, [R4,#0x1C]
2704E2:  CMP             R0, #0
2704E4:  BNE.W           loc_270602
2704E8:  ADD.W           R0, R4, #0x28 ; '('
2704EC:  STR             R0, [SP,#0x48+var_40]
2704EE:  LDR             R0, =(g_cond_ptr - 0x2704FE)
2704F0:  MOVW            R11, #0xCA00
2704F4:  LDR             R1, =(g_accessMutex_ptr - 0x270504)
2704F6:  ADD.W           R8, SP, #0x48+var_28
2704FA:  ADD             R0, PC; g_cond_ptr
2704FC:  MOVW            R10, #0x3D09
270500:  ADD             R1, PC; g_accessMutex_ptr
270502:  MOV.W           R9, #0x3E8
270506:  LDR             R0, [R0]; g_cond
270508:  MOVT            R11, #0x3B9A
27050C:  STR             R0, [SP,#0x48+var_34]
27050E:  LDR             R0, [R1]; g_accessMutex
270510:  STR             R0, [SP,#0x48+var_38]
270512:  LDR             R0, =(g_cond_ptr - 0x27051A)
270514:  LDR             R1, =(g_accessMutex_ptr - 0x27051C)
270516:  ADD             R0, PC; g_cond_ptr
270518:  ADD             R1, PC; g_accessMutex_ptr
27051A:  LDR             R5, [R0]; g_cond
27051C:  LDR             R0, =(UseTouchSense_ptr - 0x270524)
27051E:  LDR             R6, [R1]; g_accessMutex
270520:  ADD             R0, PC; UseTouchSense_ptr
270522:  LDR             R0, [R0]; UseTouchSense
270524:  STR             R0, [SP,#0x48+var_3C]
270526:  B               loc_270598
270528:  LDRB            R0, [R4,#0x1C]
27052A:  CMP             R0, #0
27052C:  BNE             loc_270602
27052E:  CMP             R3, #0x6E ; 'n'
270530:  BNE             loc_2705F2
270532:  LDR             R0, [R4,#0x10]
270534:  CMP             R0, #0
270536:  BGE             loc_270592
270538:  LDR             R3, [R4,#0x14]
27053A:  CMP             R3, #0
27053C:  BLT             loc_270598
27053E:  LDR             R0, [SP,#0x48+var_3C]
270540:  LDRB            R0, [R0]
270542:  CBZ             R0, loc_270586
270544:  LDR             R0, [R4]
270546:  CMP             R0, #1
270548:  BLT             loc_270586
27054A:  LDR             R2, [SP,#0x48+var_40]
27054C:  LDR             R1, [R2]
27054E:  ADDS            R0, R1, #1
270550:  BEQ             loc_27057A
270552:  STR             R3, [SP,#0x48+var_44]
270554:  ADD             R2, SP, #0x48+var_20
270556:  LDR             R0, [R4,#0x24]
270558:  BLX             ImmVibeGetEffectState
27055C:  LDR             R0, [SP,#0x48+var_20]
27055E:  CMP             R0, #1
270560:  BNE             loc_270570
270562:  LDR             R0, [R4,#8]
270564:  CMP             R0, #0x14
270566:  BLT             loc_270586
270568:  LDRD.W          R0, R1, [R4,#0x24]
27056C:  BLX             ImmVibeStopPlayingEffect
270570:  LDR             R2, [SP,#0x48+var_40]
270572:  MOV.W           R0, #0xFFFFFFFF
270576:  STR             R0, [R2]
270578:  LDR             R3, [SP,#0x48+var_44]
27057A:  LDR             R0, [R4,#0x24]
27057C:  MOV             R1, R3
27057E:  BLX             ImmVibePlayUHLEffect
270582:  MOVS            R0, #0x14
270584:  STR             R0, [R4,#8]
270586:  LDRB            R0, [R4,#0x1C]
270588:  MOV.W           R1, #0xFFFFFFFF
27058C:  STR             R1, [R4,#0x14]
27058E:  CBZ             R0, loc_270598
270590:  B               loc_270602
270592:  MOV.W           R0, #0xFFFFFFFF
270596:  STR             R0, [R4,#0x10]
270598:  LDRD.W          R1, R0, [SP,#0x48+var_38]; mutex
27059C:  BLX             pthread_cond_wait
2705A0:  LDR             R0, [R4,#0x10]
2705A2:  CMP.W           R0, #0xFFFFFFFF
2705A6:  ITT LE
2705A8:  LDRLE           R0, [R4,#0x14]
2705AA:  CMPLE           R0, #0
2705AC:  BLT             loc_2705FE
2705AE:  ADD             R0, SP, #0x48+tv; tv
2705B0:  MOVS            R1, #0; tz
2705B2:  BLX             gettimeofday
2705B6:  LDRD.W          R0, R1, [SP,#0x48+tv]
2705BA:  STR             R0, [SP,#0x48+var_28]
2705BC:  MUL.W           R1, R1, R9
2705C0:  LDR             R2, [R4,#0x18]
2705C2:  MUL.W           R2, R2, R10
2705C6:  ADD.W           R1, R1, R2,LSL#6
2705CA:  STR             R1, [SP,#0x48+var_24]
2705CC:  CMP             R1, R11
2705CE:  BLT             loc_2705E0
2705D0:  MOVW            R2, #0x3600
2705D4:  ADDS            R0, #1
2705D6:  MOVT            R2, #0xC465
2705DA:  ADD             R1, R2
2705DC:  STR             R1, [SP,#0x48+var_24]
2705DE:  STR             R0, [SP,#0x48+var_28]
2705E0:  MOV             R0, R5; cond
2705E2:  MOV             R1, R6; mutex
2705E4:  MOV             R2, R8; abstime
2705E6:  BLX             pthread_cond_timedwait
2705EA:  MOV             R3, R0
2705EC:  CMP             R3, #0
2705EE:  BEQ             loc_2705AE
2705F0:  B               loc_270528
2705F2:  LDR             R1, =(aTouchsenseGta3 - 0x2705FC); "TouchSense-GTA3"
2705F4:  ADR             R2, aPthreadCondTim_0; "pthread_cond_timedwait error %d"
2705F6:  MOVS            R0, #6; prio
2705F8:  ADD             R1, PC; "TouchSense-GTA3"
2705FA:  BLX             __android_log_print
2705FE:  MOVS            R0, #1
270600:  STRB            R0, [R4,#0x1C]
270602:  LDR             R1, =(aTouchsenseGta3 - 0x27060C); "TouchSense-GTA3"
270604:  ADR             R2, aHapticsThreadE; "haptics thread exiting"
270606:  MOVS            R0, #3; prio
270608:  ADD             R1, PC; "TouchSense-GTA3"
27060A:  BLX             __android_log_print
27060E:  LDR             R0, =(g_accessMutex_ptr - 0x270614)
270610:  ADD             R0, PC; g_accessMutex_ptr
270612:  LDR             R0, [R0]; g_accessMutex ; mutex
270614:  BLX             pthread_mutex_unlock
270618:  ADD             SP, SP, #0x2C ; ','
27061A:  POP.W           {R8-R11}
27061E:  POP             {R4-R7,PC}
